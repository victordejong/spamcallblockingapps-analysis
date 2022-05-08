package androidx.media2.exoplayer.external.extractor.mp3;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.C0463C;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.extractor.Extractor;
import androidx.media2.exoplayer.external.extractor.ExtractorInput;
import androidx.media2.exoplayer.external.extractor.ExtractorOutput;
import androidx.media2.exoplayer.external.extractor.ExtractorsFactory;
import androidx.media2.exoplayer.external.extractor.GaplessInfoHolder;
import androidx.media2.exoplayer.external.extractor.Id3Peeker;
import androidx.media2.exoplayer.external.extractor.MpegAudioHeader;
import androidx.media2.exoplayer.external.extractor.PositionHolder;
import androidx.media2.exoplayer.external.extractor.SeekMap;
import androidx.media2.exoplayer.external.extractor.TrackOutput;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.metadata.id3.Id3Decoder;
import androidx.media2.exoplayer.external.metadata.id3.MlltFrame;
import androidx.media2.exoplayer.external.util.ParsableByteArray;
import java.io.EOFException;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor.class */
public final class Mp3Extractor implements Extractor {
    public static final int FLAG_DISABLE_ID3_METADATA = 2;
    public static final int FLAG_ENABLE_CONSTANT_BITRATE_SEEKING = 1;
    public static final int MAX_SNIFF_BYTES = 16384;
    public static final int MAX_SYNC_BYTES = 131072;
    public static final int MPEG_AUDIO_HEADER_MASK = -128000;
    public static final int SCRATCH_LENGTH = 10;
    public static final int SEEK_HEADER_INFO = 1231971951;
    public static final int SEEK_HEADER_UNSET = 0;
    public static final int SEEK_HEADER_VBRI = 1447187017;
    public static final int SEEK_HEADER_XING = 1483304551;
    public long basisTimeUs;
    public ExtractorOutput extractorOutput;
    public final int flags;
    public final long forcedFirstSampleTimestampUs;
    public final GaplessInfoHolder gaplessInfoHolder;
    public final Id3Peeker id3Peeker;
    public Metadata metadata;
    public int sampleBytesRemaining;
    public long samplesRead;
    public final ParsableByteArray scratch;
    public Seeker seeker;
    public final MpegAudioHeader synchronizedHeader;
    public int synchronizedHeaderData;
    public TrackOutput trackOutput;
    public static final ExtractorsFactory FACTORY = Mp3Extractor$$Lambda$0.$instance;
    public static final Id3Decoder.FramePredicate REQUIRED_ID3_FRAME_PREDICATE = Mp3Extractor$$Lambda$1.$instance;

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$Flags.class */
    public @interface Flags {
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$Seeker.class */
    public interface Seeker extends SeekMap {
        long getDataEndPosition();

        long getTimeUs(long j);
    }

    public Mp3Extractor() {
        this(0);
    }

    public Mp3Extractor(int i) {
        this(i, C0463C.TIME_UNSET);
    }

    public Mp3Extractor(int i, long j) {
        this.flags = i;
        this.forcedFirstSampleTimestampUs = j;
        this.scratch = new ParsableByteArray(10);
        this.synchronizedHeader = new MpegAudioHeader();
        this.gaplessInfoHolder = new GaplessInfoHolder();
        this.basisTimeUs = C0463C.TIME_UNSET;
        this.id3Peeker = new Id3Peeker();
    }

    private Seeker getConstantBitrateSeeker(ExtractorInput extractorInput) throws IOException, InterruptedException {
        extractorInput.peekFully(this.scratch.data, 0, 4);
        this.scratch.setPosition(0);
        MpegAudioHeader.populateHeader(this.scratch.readInt(), this.synchronizedHeader);
        return new ConstantBitrateSeeker(extractorInput.getLength(), extractorInput.getPosition(), this.synchronizedHeader);
    }

    public static int getSeekFrameHeader(ParsableByteArray parsableByteArray, int i) {
        if (parsableByteArray.limit() >= i + 4) {
            parsableByteArray.setPosition(i);
            int readInt = parsableByteArray.readInt();
            if (readInt == 1483304551 || readInt == 1231971951) {
                return readInt;
            }
        }
        if (parsableByteArray.limit() < 40) {
            return 0;
        }
        parsableByteArray.setPosition(36);
        if (parsableByteArray.readInt() == 1447187017) {
            return SEEK_HEADER_VBRI;
        }
        return 0;
    }

    public static boolean headersMatch(int i, long j) {
        return ((long) (i & MPEG_AUDIO_HEADER_MASK)) == (j & (-128000));
    }

    public static final /* synthetic */ Extractor[] lambda$static$0$Mp3Extractor() {
        return new Extractor[]{new Mp3Extractor()};
    }

    public static final /* synthetic */ boolean lambda$static$1$Mp3Extractor(int i, int i2, int i3, int i4, int i5) {
        return (i2 == 67 && i3 == 79 && i4 == 77 && (i5 == 77 || i == 2)) || (i2 == 77 && i3 == 76 && i4 == 76 && (i5 == 84 || i == 2));
    }

    @Nullable
    public static MlltSeeker maybeHandleSeekMetadata(Metadata metadata, long j) {
        if (metadata == null) {
            return null;
        }
        int length = metadata.length();
        for (int i = 0; i < length; i++) {
            Metadata.Entry entry = metadata.get(i);
            if (entry instanceof MlltFrame) {
                return MlltSeeker.create(j, (MlltFrame) entry);
            }
        }
        return null;
    }

    private Seeker maybeReadSeekFrame(ExtractorInput extractorInput) throws IOException, InterruptedException {
        int i;
        Seeker seeker;
        ParsableByteArray parsableByteArray = new ParsableByteArray(this.synchronizedHeader.frameSize);
        extractorInput.peekFully(parsableByteArray.data, 0, this.synchronizedHeader.frameSize);
        MpegAudioHeader mpegAudioHeader = this.synchronizedHeader;
        if ((mpegAudioHeader.version & 1) != 0) {
            if (mpegAudioHeader.channels != 1) {
                i = 36;
            }
            i = 21;
        } else {
            if (mpegAudioHeader.channels == 1) {
                i = 13;
            }
            i = 21;
        }
        int seekFrameHeader = getSeekFrameHeader(parsableByteArray, i);
        if (seekFrameHeader == 1483304551 || seekFrameHeader == 1231971951) {
            XingSeeker create = XingSeeker.create(extractorInput.getLength(), extractorInput.getPosition(), this.synchronizedHeader, parsableByteArray);
            if (create != null && !this.gaplessInfoHolder.hasGaplessInfo()) {
                extractorInput.resetPeekPosition();
                extractorInput.advancePeekPosition(i + 141);
                extractorInput.peekFully(this.scratch.data, 0, 3);
                this.scratch.setPosition(0);
                this.gaplessInfoHolder.setFromXingHeaderValue(this.scratch.readUnsignedInt24());
            }
            extractorInput.skipFully(this.synchronizedHeader.frameSize);
            seeker = create;
            if (create != null) {
                seeker = create;
                if (!create.isSeekable()) {
                    seeker = create;
                    if (seekFrameHeader == 1231971951) {
                        return getConstantBitrateSeeker(extractorInput);
                    }
                }
            }
        } else if (seekFrameHeader == 1447187017) {
            seeker = VbriSeeker.create(extractorInput.getLength(), extractorInput.getPosition(), this.synchronizedHeader, parsableByteArray);
            extractorInput.skipFully(this.synchronizedHeader.frameSize);
        } else {
            seeker = null;
            extractorInput.resetPeekPosition();
        }
        return seeker;
    }

    private boolean peekEndOfStreamOrHeader(ExtractorInput extractorInput) throws IOException, InterruptedException {
        Seeker seeker = this.seeker;
        if (seeker != null) {
            long dataEndPosition = seeker.getDataEndPosition();
            if (dataEndPosition != -1 && extractorInput.getPeekPosition() > dataEndPosition - 4) {
                return true;
            }
        }
        try {
            return !extractorInput.peekFully(this.scratch.data, 0, 4, true);
        } catch (EOFException e) {
            return true;
        }
    }

    private int readSample(ExtractorInput extractorInput) throws IOException, InterruptedException {
        MpegAudioHeader mpegAudioHeader;
        if (this.sampleBytesRemaining == 0) {
            extractorInput.resetPeekPosition();
            if (peekEndOfStreamOrHeader(extractorInput)) {
                return -1;
            }
            this.scratch.setPosition(0);
            int readInt = this.scratch.readInt();
            if (!headersMatch(readInt, this.synchronizedHeaderData) || MpegAudioHeader.getFrameSize(readInt) == -1) {
                extractorInput.skipFully(1);
                this.synchronizedHeaderData = 0;
                return 0;
            }
            MpegAudioHeader.populateHeader(readInt, this.synchronizedHeader);
            if (this.basisTimeUs == C0463C.TIME_UNSET) {
                this.basisTimeUs = this.seeker.getTimeUs(extractorInput.getPosition());
                if (this.forcedFirstSampleTimestampUs != C0463C.TIME_UNSET) {
                    this.basisTimeUs += this.forcedFirstSampleTimestampUs - this.seeker.getTimeUs(0L);
                }
            }
            this.sampleBytesRemaining = this.synchronizedHeader.frameSize;
        }
        int sampleData = this.trackOutput.sampleData(extractorInput, this.sampleBytesRemaining, true);
        if (sampleData == -1) {
            return -1;
        }
        this.sampleBytesRemaining -= sampleData;
        if (this.sampleBytesRemaining > 0) {
            return 0;
        }
        this.trackOutput.sampleMetadata(this.basisTimeUs + ((this.samplesRead * 1000000) / mpegAudioHeader.sampleRate), 1, this.synchronizedHeader.frameSize, 0, null);
        this.samplesRead += this.synchronizedHeader.samplesPerFrame;
        this.sampleBytesRemaining = 0;
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x0148, code lost:
        if (r7 == false) goto L_0x0159;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x014b, code lost:
        r6.skipFully(r11 + r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0159, code lost:
        r6.resetPeekPosition();
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x015f, code lost:
        r5.synchronizedHeaderData = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0166, code lost:
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean synchronize(androidx.media2.exoplayer.external.extractor.ExtractorInput r6, boolean r7) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 380
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.mp3.Mp3Extractor.synchronize(androidx.media2.exoplayer.external.extractor.ExtractorInput, boolean):boolean");
    }

    @Override // androidx.media2.exoplayer.external.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        this.extractorOutput = extractorOutput;
        this.trackOutput = this.extractorOutput.track(0, 1);
        this.extractorOutput.endTracks();
    }

    @Override // androidx.media2.exoplayer.external.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException, InterruptedException {
        if (this.synchronizedHeaderData == 0) {
            try {
                synchronize(extractorInput, false);
            } catch (EOFException e) {
                return -1;
            }
        }
        if (this.seeker == null) {
            Seeker maybeReadSeekFrame = maybeReadSeekFrame(extractorInput);
            MlltSeeker maybeHandleSeekMetadata = maybeHandleSeekMetadata(this.metadata, extractorInput.getPosition());
            if (maybeHandleSeekMetadata != null) {
                this.seeker = maybeHandleSeekMetadata;
            } else if (maybeReadSeekFrame != null) {
                this.seeker = maybeReadSeekFrame;
            }
            Seeker seeker = this.seeker;
            if (seeker == null || (!seeker.isSeekable() && (this.flags & 1) != 0)) {
                this.seeker = getConstantBitrateSeeker(extractorInput);
            }
            this.extractorOutput.seekMap(this.seeker);
            TrackOutput trackOutput = this.trackOutput;
            MpegAudioHeader mpegAudioHeader = this.synchronizedHeader;
            String str = mpegAudioHeader.mimeType;
            int i = mpegAudioHeader.channels;
            int i2 = mpegAudioHeader.sampleRate;
            GaplessInfoHolder gaplessInfoHolder = this.gaplessInfoHolder;
            trackOutput.format(Format.createAudioSampleFormat(null, str, null, -1, 4096, i, i2, -1, gaplessInfoHolder.encoderDelay, gaplessInfoHolder.encoderPadding, null, null, 0, null, (this.flags & 2) != 0 ? null : this.metadata));
        }
        return readSample(extractorInput);
    }

    @Override // androidx.media2.exoplayer.external.extractor.Extractor
    public void release() {
    }

    @Override // androidx.media2.exoplayer.external.extractor.Extractor
    public void seek(long j, long j2) {
        this.synchronizedHeaderData = 0;
        this.basisTimeUs = C0463C.TIME_UNSET;
        this.samplesRead = 0L;
        this.sampleBytesRemaining = 0;
    }

    @Override // androidx.media2.exoplayer.external.extractor.Extractor
    public boolean sniff(ExtractorInput extractorInput) throws IOException, InterruptedException {
        return synchronize(extractorInput, true);
    }
}
