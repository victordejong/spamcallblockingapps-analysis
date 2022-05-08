package androidx.media2.exoplayer.external.extractor.ogg;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.extractor.ExtractorInput;
import androidx.media2.exoplayer.external.extractor.SeekMap;
import androidx.media2.exoplayer.external.extractor.SeekPoint;
import androidx.media2.exoplayer.external.extractor.ogg.StreamReader;
import androidx.media2.exoplayer.external.extractor.p007ts.PsExtractor;
import androidx.media2.exoplayer.external.util.FlacStreamInfo;
import androidx.media2.exoplayer.external.util.MimeTypes;
import androidx.media2.exoplayer.external.util.ParsableByteArray;
import androidx.media2.exoplayer.external.util.Util;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/ogg/FlacReader.class */
public final class FlacReader extends StreamReader {
    public static final byte AUDIO_PACKET_TYPE = -1;
    public static final int FRAME_HEADER_SAMPLE_NUMBER_OFFSET = 4;
    public static final byte SEEKTABLE_PACKET_TYPE = 3;
    public FlacOggSeeker flacOggSeeker;
    public FlacStreamInfo streamInfo;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker.class */
    public class FlacOggSeeker implements OggSeeker, SeekMap {
        public static final int METADATA_LENGTH_OFFSET = 1;
        public static final int SEEK_POINT_SIZE = 18;
        public long firstFrameOffset = -1;
        public long pendingSeekGranule = -1;
        public long[] seekPointGranules;
        public long[] seekPointOffsets;

        public FlacOggSeeker() {
        }

        @Override // androidx.media2.exoplayer.external.extractor.ogg.OggSeeker
        public SeekMap createSeekMap() {
            return this;
        }

        @Override // androidx.media2.exoplayer.external.extractor.SeekMap
        public long getDurationUs() {
            return FlacReader.this.streamInfo.durationUs();
        }

        @Override // androidx.media2.exoplayer.external.extractor.SeekMap
        public SeekMap.SeekPoints getSeekPoints(long j) {
            int binarySearchFloor = Util.binarySearchFloor(this.seekPointGranules, FlacReader.this.convertTimeToGranule(j), true, true);
            long convertGranuleToTime = FlacReader.this.convertGranuleToTime(this.seekPointGranules[binarySearchFloor]);
            SeekPoint seekPoint = new SeekPoint(convertGranuleToTime, this.firstFrameOffset + this.seekPointOffsets[binarySearchFloor]);
            if (convertGranuleToTime < j) {
                long[] jArr = this.seekPointGranules;
                if (binarySearchFloor != jArr.length - 1) {
                    int i = binarySearchFloor + 1;
                    return new SeekMap.SeekPoints(seekPoint, new SeekPoint(FlacReader.this.convertGranuleToTime(jArr[i]), this.firstFrameOffset + this.seekPointOffsets[i]));
                }
            }
            return new SeekMap.SeekPoints(seekPoint);
        }

        @Override // androidx.media2.exoplayer.external.extractor.SeekMap
        public boolean isSeekable() {
            return true;
        }

        public void parseSeekTable(ParsableByteArray parsableByteArray) {
            parsableByteArray.skipBytes(1);
            int readUnsignedInt24 = parsableByteArray.readUnsignedInt24() / 18;
            this.seekPointGranules = new long[readUnsignedInt24];
            this.seekPointOffsets = new long[readUnsignedInt24];
            for (int i = 0; i < readUnsignedInt24; i++) {
                this.seekPointGranules[i] = parsableByteArray.readLong();
                this.seekPointOffsets[i] = parsableByteArray.readLong();
                parsableByteArray.skipBytes(2);
            }
        }

        @Override // androidx.media2.exoplayer.external.extractor.ogg.OggSeeker
        public long read(ExtractorInput extractorInput) throws IOException, InterruptedException {
            long j = this.pendingSeekGranule;
            if (j < 0) {
                return -1L;
            }
            long j2 = -(j + 2);
            this.pendingSeekGranule = -1L;
            return j2;
        }

        public void setFirstFrameOffset(long j) {
            this.firstFrameOffset = j;
        }

        @Override // androidx.media2.exoplayer.external.extractor.ogg.OggSeeker
        public long startSeek(long j) {
            long convertTimeToGranule = FlacReader.this.convertTimeToGranule(j);
            this.pendingSeekGranule = this.seekPointGranules[Util.binarySearchFloor(this.seekPointGranules, convertTimeToGranule, true, true)];
            return convertTimeToGranule;
        }
    }

    private int getFlacFrameBlockSize(ParsableByteArray parsableByteArray) {
        int i;
        int i2;
        int i3 = (parsableByteArray.data[2] & 255) >> 4;
        switch (i3) {
            case 1:
                return PsExtractor.AUDIO_STREAM;
            case 2:
            case 3:
            case 4:
            case 5:
                i = 576;
                i2 = i3 - 2;
                break;
            case 6:
            case 7:
                parsableByteArray.skipBytes(4);
                parsableByteArray.readUtf8EncodedLong();
                int readUnsignedByte = i3 == 6 ? parsableByteArray.readUnsignedByte() : parsableByteArray.readUnsignedShort();
                parsableByteArray.setPosition(0);
                return readUnsignedByte + 1;
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                i = 256;
                i2 = i3 - 8;
                break;
            default:
                return -1;
        }
        return i << i2;
    }

    public static boolean isAudioPacket(byte[] bArr) {
        boolean z = false;
        if (bArr[0] == -1) {
            z = true;
        }
        return z;
    }

    public static boolean verifyBitstreamType(ParsableByteArray parsableByteArray) {
        return parsableByteArray.bytesLeft() >= 5 && parsableByteArray.readUnsignedByte() == 127 && parsableByteArray.readUnsignedInt() == 1179402563;
    }

    @Override // androidx.media2.exoplayer.external.extractor.ogg.StreamReader
    public long preparePayload(ParsableByteArray parsableByteArray) {
        if (!isAudioPacket(parsableByteArray.data)) {
            return -1L;
        }
        return getFlacFrameBlockSize(parsableByteArray);
    }

    @Override // androidx.media2.exoplayer.external.extractor.ogg.StreamReader
    public boolean readHeaders(ParsableByteArray parsableByteArray, long j, StreamReader.SetupData setupData) throws IOException, InterruptedException {
        byte[] bArr = parsableByteArray.data;
        if (this.streamInfo == null) {
            this.streamInfo = new FlacStreamInfo(bArr, 17);
            byte[] copyOfRange = Arrays.copyOfRange(bArr, 9, parsableByteArray.limit());
            copyOfRange[4] = (byte) (-128);
            List singletonList = Collections.singletonList(copyOfRange);
            int bitRate = this.streamInfo.bitRate();
            FlacStreamInfo flacStreamInfo = this.streamInfo;
            setupData.format = Format.createAudioSampleFormat(null, MimeTypes.AUDIO_FLAC, null, -1, bitRate, flacStreamInfo.channels, flacStreamInfo.sampleRate, singletonList, null, 0, null);
            return true;
        } else if ((bArr[0] & Byte.MAX_VALUE) == 3) {
            this.flacOggSeeker = new FlacOggSeeker();
            this.flacOggSeeker.parseSeekTable(parsableByteArray);
            return true;
        } else if (!isAudioPacket(bArr)) {
            return true;
        } else {
            FlacOggSeeker flacOggSeeker = this.flacOggSeeker;
            if (flacOggSeeker == null) {
                return false;
            }
            flacOggSeeker.setFirstFrameOffset(j);
            setupData.oggSeeker = this.flacOggSeeker;
            return false;
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.ogg.StreamReader
    public void reset(boolean z) {
        super.reset(z);
        if (z) {
            this.streamInfo = null;
            this.flacOggSeeker = null;
        }
    }
}
