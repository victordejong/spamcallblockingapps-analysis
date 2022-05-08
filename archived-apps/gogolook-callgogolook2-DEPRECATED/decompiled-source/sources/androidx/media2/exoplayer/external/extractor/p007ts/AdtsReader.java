package androidx.media2.exoplayer.external.extractor.p007ts;

import android.util.Pair;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.C0463C;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.extractor.DummyTrackOutput;
import androidx.media2.exoplayer.external.extractor.ExtractorOutput;
import androidx.media2.exoplayer.external.extractor.TrackOutput;
import androidx.media2.exoplayer.external.extractor.p007ts.TsPayloadReader;
import androidx.media2.exoplayer.external.util.CodecSpecificDataUtil;
import androidx.media2.exoplayer.external.util.Log;
import androidx.media2.exoplayer.external.util.MimeTypes;
import androidx.media2.exoplayer.external.util.ParsableBitArray;
import androidx.media2.exoplayer.external.util.ParsableByteArray;
import java.util.Arrays;
import java.util.Collections;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: androidx.media2.exoplayer.external.extractor.ts.AdtsReader */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/ts/AdtsReader.class */
public final class AdtsReader implements ElementaryStreamReader {
    public static final int CRC_SIZE = 2;
    public static final int HEADER_SIZE = 5;
    public static final int ID3_HEADER_SIZE = 10;
    public static final byte[] ID3_IDENTIFIER = {73, 68, 51};
    public static final int ID3_SIZE_OFFSET = 6;
    public static final int MATCH_STATE_FF = 512;
    public static final int MATCH_STATE_I = 768;
    public static final int MATCH_STATE_ID = 1024;
    public static final int MATCH_STATE_START = 256;
    public static final int MATCH_STATE_VALUE_SHIFT = 8;
    public static final int STATE_CHECKING_ADTS_HEADER = 1;
    public static final int STATE_FINDING_SAMPLE = 0;
    public static final int STATE_READING_ADTS_HEADER = 3;
    public static final int STATE_READING_ID3_HEADER = 2;
    public static final int STATE_READING_SAMPLE = 4;
    public static final String TAG = "AdtsReader";
    public static final int VERSION_UNSET = -1;
    public final ParsableBitArray adtsScratch;
    public int bytesRead;
    public int currentFrameVersion;
    public TrackOutput currentOutput;
    public long currentSampleDuration;
    public final boolean exposeId3;
    public int firstFrameSampleRateIndex;
    public int firstFrameVersion;
    public String formatId;
    public boolean foundFirstFrame;
    public boolean hasCrc;
    public boolean hasOutputFormat;
    public final ParsableByteArray id3HeaderBuffer;
    public TrackOutput id3Output;
    public final String language;
    public int matchState;
    public TrackOutput output;
    public long sampleDurationUs;
    public int sampleSize;
    public int state;
    public long timeUs;

    public AdtsReader(boolean z) {
        this(z, null);
    }

    public AdtsReader(boolean z, String str) {
        this.adtsScratch = new ParsableBitArray(new byte[7]);
        this.id3HeaderBuffer = new ParsableByteArray(Arrays.copyOf(ID3_IDENTIFIER, 10));
        setFindingSampleState();
        this.firstFrameVersion = -1;
        this.firstFrameSampleRateIndex = -1;
        this.sampleDurationUs = C0463C.TIME_UNSET;
        this.exposeId3 = z;
        this.language = str;
    }

    private void checkAdtsHeader(ParsableByteArray parsableByteArray) {
        if (parsableByteArray.bytesLeft() != 0) {
            this.adtsScratch.data[0] = parsableByteArray.data[parsableByteArray.getPosition()];
            this.adtsScratch.setPosition(2);
            int readBits = this.adtsScratch.readBits(4);
            int i = this.firstFrameSampleRateIndex;
            if (i == -1 || readBits == i) {
                if (!this.foundFirstFrame) {
                    this.foundFirstFrame = true;
                    this.firstFrameVersion = this.currentFrameVersion;
                    this.firstFrameSampleRateIndex = readBits;
                }
                setReadingAdtsHeaderState();
                return;
            }
            resetSync();
        }
    }

    private boolean checkSyncPositionValid(ParsableByteArray parsableByteArray, int i) {
        boolean z;
        parsableByteArray.setPosition(i + 1);
        if (!tryRead(parsableByteArray, this.adtsScratch.data, 1)) {
            return false;
        }
        this.adtsScratch.setPosition(4);
        int readBits = this.adtsScratch.readBits(1);
        int i2 = this.firstFrameVersion;
        if (i2 != -1 && readBits != i2) {
            return false;
        }
        if (this.firstFrameSampleRateIndex != -1) {
            if (!tryRead(parsableByteArray, this.adtsScratch.data, 1)) {
                return true;
            }
            this.adtsScratch.setPosition(2);
            if (this.adtsScratch.readBits(4) != this.firstFrameSampleRateIndex) {
                return false;
            }
            parsableByteArray.setPosition(i + 2);
        }
        if (!tryRead(parsableByteArray, this.adtsScratch.data, 4)) {
            return true;
        }
        this.adtsScratch.setPosition(14);
        int readBits2 = this.adtsScratch.readBits(13);
        if (readBits2 <= 6) {
            return false;
        }
        int i3 = i + readBits2;
        int i4 = i3 + 1;
        if (i4 >= parsableByteArray.limit()) {
            return true;
        }
        byte[] bArr = parsableByteArray.data;
        if (isAdtsSyncBytes(bArr[i3], bArr[i4])) {
            z = true;
            if (this.firstFrameVersion != -1) {
                if (((parsableByteArray.data[i4] & 8) >> 3) == readBits) {
                    z = true;
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    private boolean continueRead(ParsableByteArray parsableByteArray, byte[] bArr, int i) {
        int min = Math.min(parsableByteArray.bytesLeft(), i - this.bytesRead);
        parsableByteArray.readBytes(bArr, this.bytesRead, min);
        this.bytesRead += min;
        return this.bytesRead == i;
    }

    private void findNextSample(ParsableByteArray parsableByteArray) {
        byte[] bArr = parsableByteArray.data;
        int position = parsableByteArray.getPosition();
        int limit = parsableByteArray.limit();
        while (position < limit) {
            int i = position + 1;
            int i2 = bArr[position] & 255;
            if (this.matchState != 512 || !isAdtsSyncBytes((byte) -1, (byte) i2) || (!this.foundFirstFrame && !checkSyncPositionValid(parsableByteArray, i - 2))) {
                int i3 = this.matchState;
                int i4 = i2 | i3;
                if (i4 == 329) {
                    this.matchState = MATCH_STATE_I;
                    position = i;
                } else if (i4 == 511) {
                    this.matchState = 512;
                    position = i;
                } else if (i4 == 836) {
                    this.matchState = 1024;
                    position = i;
                } else if (i4 != 1075) {
                    position = i;
                    if (i3 != 256) {
                        this.matchState = 256;
                        position = i - 1;
                    }
                } else {
                    setReadingId3HeaderState();
                    parsableByteArray.setPosition(i);
                    return;
                }
            } else {
                this.currentFrameVersion = (i2 & 8) >> 3;
                boolean z = true;
                if ((i2 & 1) != 0) {
                    z = false;
                }
                this.hasCrc = z;
                if (!this.foundFirstFrame) {
                    setCheckingAdtsHeaderState();
                } else {
                    setReadingAdtsHeaderState();
                }
                parsableByteArray.setPosition(i);
                return;
            }
        }
        parsableByteArray.setPosition(position);
    }

    private boolean isAdtsSyncBytes(byte b, byte b2) {
        return isAdtsSyncWord(((b & 255) << 8) | (b2 & 255));
    }

    public static boolean isAdtsSyncWord(int i) {
        return (i & 65526) == 65520;
    }

    private void parseAdtsHeader() throws ParserException {
        this.adtsScratch.setPosition(0);
        if (!this.hasOutputFormat) {
            int readBits = this.adtsScratch.readBits(2) + 1;
            int i = readBits;
            if (readBits != 2) {
                StringBuilder sb = new StringBuilder(61);
                sb.append("Detected audio object type: ");
                sb.append(readBits);
                sb.append(", but assuming AAC LC.");
                Log.m37483w(TAG, sb.toString());
                i = 2;
            }
            this.adtsScratch.skipBits(5);
            byte[] buildAacAudioSpecificConfig = CodecSpecificDataUtil.buildAacAudioSpecificConfig(i, this.firstFrameSampleRateIndex, this.adtsScratch.readBits(3));
            Pair<Integer, Integer> parseAacAudioSpecificConfig = CodecSpecificDataUtil.parseAacAudioSpecificConfig(buildAacAudioSpecificConfig);
            Format createAudioSampleFormat = Format.createAudioSampleFormat(this.formatId, MimeTypes.AUDIO_AAC, null, -1, -1, ((Integer) parseAacAudioSpecificConfig.second).intValue(), ((Integer) parseAacAudioSpecificConfig.first).intValue(), Collections.singletonList(buildAacAudioSpecificConfig), null, 0, this.language);
            this.sampleDurationUs = 1024000000 / createAudioSampleFormat.sampleRate;
            this.output.format(createAudioSampleFormat);
            this.hasOutputFormat = true;
        } else {
            this.adtsScratch.skipBits(10);
        }
        this.adtsScratch.skipBits(4);
        int readBits2 = (this.adtsScratch.readBits(13) - 2) - 5;
        int i2 = readBits2;
        if (this.hasCrc) {
            i2 = readBits2 - 2;
        }
        setReadingSampleState(this.output, this.sampleDurationUs, 0, i2);
    }

    private void parseId3Header() {
        this.id3Output.sampleData(this.id3HeaderBuffer, 10);
        this.id3HeaderBuffer.setPosition(6);
        setReadingSampleState(this.id3Output, 0L, 10, this.id3HeaderBuffer.readSynchSafeInt() + 10);
    }

    private void readSample(ParsableByteArray parsableByteArray) {
        int min = Math.min(parsableByteArray.bytesLeft(), this.sampleSize - this.bytesRead);
        this.currentOutput.sampleData(parsableByteArray, min);
        this.bytesRead += min;
        int i = this.bytesRead;
        int i2 = this.sampleSize;
        if (i == i2) {
            this.currentOutput.sampleMetadata(this.timeUs, 1, i2, 0, null);
            this.timeUs += this.currentSampleDuration;
            setFindingSampleState();
        }
    }

    private void resetSync() {
        this.foundFirstFrame = false;
        setFindingSampleState();
    }

    private void setCheckingAdtsHeaderState() {
        this.state = 1;
        this.bytesRead = 0;
    }

    private void setFindingSampleState() {
        this.state = 0;
        this.bytesRead = 0;
        this.matchState = 256;
    }

    private void setReadingAdtsHeaderState() {
        this.state = 3;
        this.bytesRead = 0;
    }

    private void setReadingId3HeaderState() {
        this.state = 2;
        this.bytesRead = ID3_IDENTIFIER.length;
        this.sampleSize = 0;
        this.id3HeaderBuffer.setPosition(0);
    }

    private void setReadingSampleState(TrackOutput trackOutput, long j, int i, int i2) {
        this.state = 4;
        this.bytesRead = i;
        this.currentOutput = trackOutput;
        this.currentSampleDuration = j;
        this.sampleSize = i2;
    }

    private boolean tryRead(ParsableByteArray parsableByteArray, byte[] bArr, int i) {
        if (parsableByteArray.bytesLeft() < i) {
            return false;
        }
        parsableByteArray.readBytes(bArr, 0, i);
        return true;
    }

    @Override // androidx.media2.exoplayer.external.extractor.p007ts.ElementaryStreamReader
    public void consume(ParsableByteArray parsableByteArray) throws ParserException {
        while (parsableByteArray.bytesLeft() > 0) {
            int i = this.state;
            if (i == 0) {
                findNextSample(parsableByteArray);
            } else if (i == 1) {
                checkAdtsHeader(parsableByteArray);
            } else if (i != 2) {
                if (i == 3) {
                    if (continueRead(parsableByteArray, this.adtsScratch.data, this.hasCrc ? 7 : 5)) {
                        parseAdtsHeader();
                    }
                } else if (i == 4) {
                    readSample(parsableByteArray);
                } else {
                    throw new IllegalStateException();
                }
            } else if (continueRead(parsableByteArray, this.id3HeaderBuffer.data, 10)) {
                parseId3Header();
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.p007ts.ElementaryStreamReader
    public void createTracks(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.generateNewId();
        this.formatId = trackIdGenerator.getFormatId();
        this.output = extractorOutput.track(trackIdGenerator.getTrackId(), 1);
        if (this.exposeId3) {
            trackIdGenerator.generateNewId();
            this.id3Output = extractorOutput.track(trackIdGenerator.getTrackId(), 4);
            this.id3Output.format(Format.createSampleFormat(trackIdGenerator.getFormatId(), MimeTypes.APPLICATION_ID3, null, -1, null));
            return;
        }
        this.id3Output = new DummyTrackOutput();
    }

    public long getSampleDurationUs() {
        return this.sampleDurationUs;
    }

    @Override // androidx.media2.exoplayer.external.extractor.p007ts.ElementaryStreamReader
    public void packetFinished() {
    }

    @Override // androidx.media2.exoplayer.external.extractor.p007ts.ElementaryStreamReader
    public void packetStarted(long j, int i) {
        this.timeUs = j;
    }

    @Override // androidx.media2.exoplayer.external.extractor.p007ts.ElementaryStreamReader
    public void seek() {
        resetSync();
    }
}
