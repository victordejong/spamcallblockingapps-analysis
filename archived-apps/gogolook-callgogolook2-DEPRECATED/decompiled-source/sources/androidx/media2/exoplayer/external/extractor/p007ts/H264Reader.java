package androidx.media2.exoplayer.external.extractor.p007ts;

import android.util.SparseArray;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.extractor.ExtractorOutput;
import androidx.media2.exoplayer.external.extractor.TrackOutput;
import androidx.media2.exoplayer.external.extractor.p007ts.TsPayloadReader;
import androidx.media2.exoplayer.external.util.CodecSpecificDataUtil;
import androidx.media2.exoplayer.external.util.MimeTypes;
import androidx.media2.exoplayer.external.util.NalUnitUtil;
import androidx.media2.exoplayer.external.util.ParsableByteArray;
import androidx.media2.exoplayer.external.util.ParsableNalUnitBitArray;
import java.util.ArrayList;
import java.util.Arrays;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: androidx.media2.exoplayer.external.extractor.ts.H264Reader */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/ts/H264Reader.class */
public final class H264Reader implements ElementaryStreamReader {
    public static final int NAL_UNIT_TYPE_PPS = 8;
    public static final int NAL_UNIT_TYPE_SEI = 6;
    public static final int NAL_UNIT_TYPE_SPS = 7;
    public final boolean allowNonIdrKeyframes;
    public final boolean detectAccessUnits;
    public String formatId;
    public boolean hasOutputFormat;
    public TrackOutput output;
    public long pesTimeUs;
    public boolean randomAccessIndicator;
    public SampleReader sampleReader;
    public final SeiReader seiReader;
    public long totalBytesWritten;
    public final boolean[] prefixFlags = new boolean[3];
    public final NalUnitTargetBuffer sps = new NalUnitTargetBuffer(7, 128);
    public final NalUnitTargetBuffer pps = new NalUnitTargetBuffer(8, 128);
    public final NalUnitTargetBuffer sei = new NalUnitTargetBuffer(6, 128);
    public final ParsableByteArray seiWrapper = new ParsableByteArray();

    /* renamed from: androidx.media2.exoplayer.external.extractor.ts.H264Reader$SampleReader */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader.class */
    public static final class SampleReader {
        public static final int DEFAULT_BUFFER_SIZE = 128;
        public static final int NAL_UNIT_TYPE_AUD = 9;
        public static final int NAL_UNIT_TYPE_IDR = 5;
        public static final int NAL_UNIT_TYPE_NON_IDR = 1;
        public static final int NAL_UNIT_TYPE_PARTITION_A = 2;
        public final boolean allowNonIdrKeyframes;
        public int bufferLength;
        public final boolean detectAccessUnits;
        public boolean isFilling;
        public long nalUnitStartPosition;
        public long nalUnitTimeUs;
        public int nalUnitType;
        public final TrackOutput output;
        public boolean readingSample;
        public boolean sampleIsKeyframe;
        public long samplePosition;
        public long sampleTimeUs;
        public final SparseArray<NalUnitUtil.SpsData> sps = new SparseArray<>();
        public final SparseArray<NalUnitUtil.PpsData> pps = new SparseArray<>();
        public SliceHeaderData previousSliceHeader = new SliceHeaderData();
        public SliceHeaderData sliceHeader = new SliceHeaderData();
        public byte[] buffer = new byte[128];
        public final ParsableNalUnitBitArray bitArray = new ParsableNalUnitBitArray(this.buffer, 0, 0);

        /* renamed from: androidx.media2.exoplayer.external.extractor.ts.H264Reader$SampleReader$SliceHeaderData */
        /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData.class */
        public static final class SliceHeaderData {
            public static final int SLICE_TYPE_ALL_I = 7;
            public static final int SLICE_TYPE_I = 2;
            public boolean bottomFieldFlag;
            public boolean bottomFieldFlagPresent;
            public int deltaPicOrderCnt0;
            public int deltaPicOrderCnt1;
            public int deltaPicOrderCntBottom;
            public boolean fieldPicFlag;
            public int frameNum;
            public boolean hasSliceType;
            public boolean idrPicFlag;
            public int idrPicId;
            public boolean isComplete;
            public int nalRefIdc;
            public int picOrderCntLsb;
            public int picParameterSetId;
            public int sliceType;
            public NalUnitUtil.SpsData spsData;

            public SliceHeaderData() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* JADX WARN: Code restructure failed: missing block: B:17:0x0053, code lost:
                if (r3.bottomFieldFlag == r4.bottomFieldFlag) goto L_0x0056;
             */
            /* JADX WARN: Code restructure failed: missing block: B:23:0x0074, code lost:
                if (r0 != 0) goto L_0x0077;
             */
            /* JADX WARN: Code restructure failed: missing block: B:31:0x00a2, code lost:
                if (r3.deltaPicOrderCntBottom == r4.deltaPicOrderCntBottom) goto L_0x00a5;
             */
            /* JADX WARN: Code restructure failed: missing block: B:39:0x00d2, code lost:
                if (r3.deltaPicOrderCnt1 == r4.deltaPicOrderCnt1) goto L_0x00d5;
             */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public boolean isFirstVclNalUnitOfPicture(androidx.media2.exoplayer.external.extractor.p007ts.H264Reader.SampleReader.SliceHeaderData r4) {
                /*
                    Method dump skipped, instructions count: 264
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.p007ts.H264Reader.SampleReader.SliceHeaderData.isFirstVclNalUnitOfPicture(androidx.media2.exoplayer.external.extractor.ts.H264Reader$SampleReader$SliceHeaderData):boolean");
            }

            public void clear() {
                this.hasSliceType = false;
                this.isComplete = false;
            }

            public boolean isISlice() {
                int i;
                return this.hasSliceType && ((i = this.sliceType) == 7 || i == 2);
            }

            public void setAll(NalUnitUtil.SpsData spsData, int i, int i2, int i3, int i4, boolean z, boolean z2, boolean z3, boolean z4, int i5, int i6, int i7, int i8, int i9) {
                this.spsData = spsData;
                this.nalRefIdc = i;
                this.sliceType = i2;
                this.frameNum = i3;
                this.picParameterSetId = i4;
                this.fieldPicFlag = z;
                this.bottomFieldFlagPresent = z2;
                this.bottomFieldFlag = z3;
                this.idrPicFlag = z4;
                this.idrPicId = i5;
                this.picOrderCntLsb = i6;
                this.deltaPicOrderCntBottom = i7;
                this.deltaPicOrderCnt0 = i8;
                this.deltaPicOrderCnt1 = i9;
                this.isComplete = true;
                this.hasSliceType = true;
            }

            public void setSliceType(int i) {
                this.sliceType = i;
                this.hasSliceType = true;
            }
        }

        public SampleReader(TrackOutput trackOutput, boolean z, boolean z2) {
            this.output = trackOutput;
            this.allowNonIdrKeyframes = z;
            this.detectAccessUnits = z2;
            reset();
        }

        private void outputSample(int i) {
            boolean z = this.sampleIsKeyframe;
            this.output.sampleMetadata(this.sampleTimeUs, z ? 1 : 0, (int) (this.nalUnitStartPosition - this.samplePosition), i, null);
        }

        /* JADX WARN: Removed duplicated region for block: B:52:0x018d  */
        /* JADX WARN: Removed duplicated region for block: B:53:0x0193  */
        /* JADX WARN: Removed duplicated region for block: B:56:0x019b  */
        /* JADX WARN: Removed duplicated region for block: B:60:0x01b2  */
        /* JADX WARN: Removed duplicated region for block: B:63:0x01be  */
        /* JADX WARN: Removed duplicated region for block: B:74:0x01ff  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void appendToNalUnit(byte[] r17, int r18, int r19) {
            /*
                Method dump skipped, instructions count: 638
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.p007ts.H264Reader.SampleReader.appendToNalUnit(byte[], int, int):void");
        }

        /* JADX WARN: Code restructure failed: missing block: B:22:0x0088, code lost:
            if (r0 == 1) goto L_0x008b;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean endNalUnit(long r8, int r10, boolean r11, boolean r12) {
            /*
                r7 = this;
                r0 = r7
                int r0 = r0.nalUnitType
                r13 = r0
                r0 = 0
                r14 = r0
                r0 = r13
                r1 = 9
                if (r0 == r1) goto L_0x0025
                r0 = r7
                boolean r0 = r0.detectAccessUnits
                if (r0 == 0) goto L_0x0058
                r0 = r7
                androidx.media2.exoplayer.external.extractor.ts.H264Reader$SampleReader$SliceHeaderData r0 = r0.sliceHeader
                r1 = r7
                androidx.media2.exoplayer.external.extractor.ts.H264Reader$SampleReader$SliceHeaderData r1 = r1.previousSliceHeader
                boolean r0 = androidx.media2.exoplayer.external.extractor.p007ts.H264Reader.SampleReader.SliceHeaderData.access$100(r0, r1)
                if (r0 == 0) goto L_0x0058
            L_0x0025:
                r0 = r11
                if (r0 == 0) goto L_0x003e
                r0 = r7
                boolean r0 = r0.readingSample
                if (r0 == 0) goto L_0x003e
                r0 = r7
                r1 = r10
                r2 = r8
                r3 = r7
                long r3 = r3.nalUnitStartPosition
                long r2 = r2 - r3
                int r2 = (int) r2
                int r1 = r1 + r2
                r0.outputSample(r1)
            L_0x003e:
                r0 = r7
                r1 = r7
                long r1 = r1.nalUnitStartPosition
                r0.samplePosition = r1
                r0 = r7
                r1 = r7
                long r1 = r1.nalUnitTimeUs
                r0.sampleTimeUs = r1
                r0 = r7
                r1 = 0
                r0.sampleIsKeyframe = r1
                r0 = r7
                r1 = 1
                r0.readingSample = r1
            L_0x0058:
                r0 = r7
                boolean r0 = r0.allowNonIdrKeyframes
                if (r0 == 0) goto L_0x0068
                r0 = r7
                androidx.media2.exoplayer.external.extractor.ts.H264Reader$SampleReader$SliceHeaderData r0 = r0.sliceHeader
                boolean r0 = r0.isISlice()
                r12 = r0
            L_0x0068:
                r0 = r7
                boolean r0 = r0.sampleIsKeyframe
                r11 = r0
                r0 = r7
                int r0 = r0.nalUnitType
                r13 = r0
                r0 = r13
                r1 = 5
                if (r0 == r1) goto L_0x008b
                r0 = r14
                r10 = r0
                r0 = r12
                if (r0 == 0) goto L_0x008d
                r0 = r14
                r10 = r0
                r0 = r13
                r1 = 1
                if (r0 != r1) goto L_0x008d
            L_0x008b:
                r0 = 1
                r10 = r0
            L_0x008d:
                r0 = r7
                r1 = r11
                r2 = r10
                r1 = r1 | r2
                r0.sampleIsKeyframe = r1
                r0 = r7
                boolean r0 = r0.sampleIsKeyframe
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.p007ts.H264Reader.SampleReader.endNalUnit(long, int, boolean, boolean):boolean");
        }

        public boolean needsSpsPps() {
            return this.detectAccessUnits;
        }

        public void putPps(NalUnitUtil.PpsData ppsData) {
            this.pps.append(ppsData.picParameterSetId, ppsData);
        }

        public void putSps(NalUnitUtil.SpsData spsData) {
            this.sps.append(spsData.seqParameterSetId, spsData);
        }

        public void reset() {
            this.isFilling = false;
            this.readingSample = false;
            this.sliceHeader.clear();
        }

        public void startNalUnit(long j, int i, long j2) {
            this.nalUnitType = i;
            this.nalUnitTimeUs = j2;
            this.nalUnitStartPosition = j;
            if (!this.allowNonIdrKeyframes || this.nalUnitType != 1) {
                if (this.detectAccessUnits) {
                    int i2 = this.nalUnitType;
                    if (!(i2 == 5 || i2 == 1 || i2 == 2)) {
                        return;
                    }
                } else {
                    return;
                }
            }
            SliceHeaderData sliceHeaderData = this.previousSliceHeader;
            this.previousSliceHeader = this.sliceHeader;
            this.sliceHeader = sliceHeaderData;
            this.sliceHeader.clear();
            this.bufferLength = 0;
            this.isFilling = true;
        }
    }

    public H264Reader(SeiReader seiReader, boolean z, boolean z2) {
        this.seiReader = seiReader;
        this.allowNonIdrKeyframes = z;
        this.detectAccessUnits = z2;
    }

    private void endNalUnit(long j, int i, int i2, long j2) {
        if (!this.hasOutputFormat || this.sampleReader.needsSpsPps()) {
            this.sps.endNalUnit(i2);
            this.pps.endNalUnit(i2);
            if (!this.hasOutputFormat) {
                if (this.sps.isCompleted() && this.pps.isCompleted()) {
                    ArrayList arrayList = new ArrayList();
                    NalUnitTargetBuffer nalUnitTargetBuffer = this.sps;
                    arrayList.add(Arrays.copyOf(nalUnitTargetBuffer.nalData, nalUnitTargetBuffer.nalLength));
                    NalUnitTargetBuffer nalUnitTargetBuffer2 = this.pps;
                    arrayList.add(Arrays.copyOf(nalUnitTargetBuffer2.nalData, nalUnitTargetBuffer2.nalLength));
                    NalUnitTargetBuffer nalUnitTargetBuffer3 = this.sps;
                    NalUnitUtil.SpsData parseSpsNalUnit = NalUnitUtil.parseSpsNalUnit(nalUnitTargetBuffer3.nalData, 3, nalUnitTargetBuffer3.nalLength);
                    NalUnitTargetBuffer nalUnitTargetBuffer4 = this.pps;
                    NalUnitUtil.PpsData parsePpsNalUnit = NalUnitUtil.parsePpsNalUnit(nalUnitTargetBuffer4.nalData, 3, nalUnitTargetBuffer4.nalLength);
                    this.output.format(Format.createVideoSampleFormat(this.formatId, MimeTypes.VIDEO_H264, CodecSpecificDataUtil.buildAvcCodecString(parseSpsNalUnit.profileIdc, parseSpsNalUnit.constraintsFlagsAndReservedZero2Bits, parseSpsNalUnit.levelIdc), -1, -1, parseSpsNalUnit.width, parseSpsNalUnit.height, -1.0f, arrayList, -1, parseSpsNalUnit.pixelWidthAspectRatio, null));
                    this.hasOutputFormat = true;
                    this.sampleReader.putSps(parseSpsNalUnit);
                    this.sampleReader.putPps(parsePpsNalUnit);
                    this.sps.reset();
                    this.pps.reset();
                }
            } else if (this.sps.isCompleted()) {
                NalUnitTargetBuffer nalUnitTargetBuffer5 = this.sps;
                this.sampleReader.putSps(NalUnitUtil.parseSpsNalUnit(nalUnitTargetBuffer5.nalData, 3, nalUnitTargetBuffer5.nalLength));
                this.sps.reset();
            } else if (this.pps.isCompleted()) {
                NalUnitTargetBuffer nalUnitTargetBuffer6 = this.pps;
                this.sampleReader.putPps(NalUnitUtil.parsePpsNalUnit(nalUnitTargetBuffer6.nalData, 3, nalUnitTargetBuffer6.nalLength));
                this.pps.reset();
            }
        }
        if (this.sei.endNalUnit(i2)) {
            NalUnitTargetBuffer nalUnitTargetBuffer7 = this.sei;
            this.seiWrapper.reset(this.sei.nalData, NalUnitUtil.unescapeStream(nalUnitTargetBuffer7.nalData, nalUnitTargetBuffer7.nalLength));
            this.seiWrapper.setPosition(4);
            this.seiReader.consume(j2, this.seiWrapper);
        }
        if (this.sampleReader.endNalUnit(j, i, this.hasOutputFormat, this.randomAccessIndicator)) {
            this.randomAccessIndicator = false;
        }
    }

    private void nalUnitData(byte[] bArr, int i, int i2) {
        if (!this.hasOutputFormat || this.sampleReader.needsSpsPps()) {
            this.sps.appendToNalUnit(bArr, i, i2);
            this.pps.appendToNalUnit(bArr, i, i2);
        }
        this.sei.appendToNalUnit(bArr, i, i2);
        this.sampleReader.appendToNalUnit(bArr, i, i2);
    }

    private void startNalUnit(long j, int i, long j2) {
        if (!this.hasOutputFormat || this.sampleReader.needsSpsPps()) {
            this.sps.startNalUnit(i);
            this.pps.startNalUnit(i);
        }
        this.sei.startNalUnit(i);
        this.sampleReader.startNalUnit(j, i, j2);
    }

    @Override // androidx.media2.exoplayer.external.extractor.p007ts.ElementaryStreamReader
    public void consume(ParsableByteArray parsableByteArray) {
        int position = parsableByteArray.getPosition();
        int limit = parsableByteArray.limit();
        byte[] bArr = parsableByteArray.data;
        this.totalBytesWritten += parsableByteArray.bytesLeft();
        this.output.sampleData(parsableByteArray, parsableByteArray.bytesLeft());
        while (true) {
            int findNalUnit = NalUnitUtil.findNalUnit(bArr, position, limit, this.prefixFlags);
            if (findNalUnit == limit) {
                nalUnitData(bArr, position, limit);
                return;
            }
            int nalUnitType = NalUnitUtil.getNalUnitType(bArr, findNalUnit);
            int i = findNalUnit - position;
            if (i > 0) {
                nalUnitData(bArr, position, findNalUnit);
            }
            int i2 = limit - findNalUnit;
            long j = this.totalBytesWritten - i2;
            endNalUnit(j, i2, i < 0 ? -i : 0, this.pesTimeUs);
            startNalUnit(j, nalUnitType, this.pesTimeUs);
            position = findNalUnit + 3;
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.p007ts.ElementaryStreamReader
    public void createTracks(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.generateNewId();
        this.formatId = trackIdGenerator.getFormatId();
        this.output = extractorOutput.track(trackIdGenerator.getTrackId(), 2);
        this.sampleReader = new SampleReader(this.output, this.allowNonIdrKeyframes, this.detectAccessUnits);
        this.seiReader.createTracks(extractorOutput, trackIdGenerator);
    }

    @Override // androidx.media2.exoplayer.external.extractor.p007ts.ElementaryStreamReader
    public void packetFinished() {
    }

    @Override // androidx.media2.exoplayer.external.extractor.p007ts.ElementaryStreamReader
    public void packetStarted(long j, int i) {
        this.pesTimeUs = j;
        this.randomAccessIndicator |= (i & 2) != 0;
    }

    @Override // androidx.media2.exoplayer.external.extractor.p007ts.ElementaryStreamReader
    public void seek() {
        NalUnitUtil.clearPrefixFlags(this.prefixFlags);
        this.sps.reset();
        this.pps.reset();
        this.sei.reset();
        this.sampleReader.reset();
        this.totalBytesWritten = 0L;
        this.randomAccessIndicator = false;
    }
}
