package androidx.media2.exoplayer.external.extractor.mp4;

import android.util.Pair;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.C0463C;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.extractor.ChunkIndex;
import androidx.media2.exoplayer.external.extractor.Extractor;
import androidx.media2.exoplayer.external.extractor.ExtractorInput;
import androidx.media2.exoplayer.external.extractor.ExtractorOutput;
import androidx.media2.exoplayer.external.extractor.ExtractorsFactory;
import androidx.media2.exoplayer.external.extractor.PositionHolder;
import androidx.media2.exoplayer.external.extractor.SeekMap;
import androidx.media2.exoplayer.external.extractor.TrackOutput;
import androidx.media2.exoplayer.external.extractor.mp4.Atom;
import androidx.media2.exoplayer.external.util.Assertions;
import androidx.media2.exoplayer.external.util.Log;
import androidx.media2.exoplayer.external.util.MimeTypes;
import androidx.media2.exoplayer.external.util.NalUnitUtil;
import androidx.media2.exoplayer.external.util.ParsableByteArray;
import androidx.media2.exoplayer.external.util.TimestampAdjuster;
import androidx.media2.exoplayer.external.util.Util;
import gogolook.callgogolook2.gson.UserProfile;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor.class */
public class FragmentedMp4Extractor implements Extractor {
    public static final int FLAG_ENABLE_EMSG_TRACK = 4;
    public static final int FLAG_SIDELOADED = 8;
    public static final int FLAG_WORKAROUND_EVERY_VIDEO_FRAME_IS_SYNC_FRAME = 1;
    public static final int FLAG_WORKAROUND_IGNORE_EDIT_LISTS = 16;
    public static final int FLAG_WORKAROUND_IGNORE_TFDT_BOX = 2;
    public static final int SAMPLE_GROUP_TYPE_seig = 1936025959;
    public static final int STATE_READING_ATOM_HEADER = 0;
    public static final int STATE_READING_ATOM_PAYLOAD = 1;
    public static final int STATE_READING_ENCRYPTION_DATA = 2;
    public static final int STATE_READING_SAMPLE_CONTINUE = 4;
    public static final int STATE_READING_SAMPLE_START = 3;
    public static final String TAG = "FragmentedMp4Extractor";
    @Nullable
    public final TrackOutput additionalEmsgTrackOutput;
    public ParsableByteArray atomData;
    public final ParsableByteArray atomHeader;
    public int atomHeaderBytesRead;
    public long atomSize;
    public int atomType;
    public TrackOutput[] cea608TrackOutputs;
    public final List<Format> closedCaptionFormats;
    public final ArrayDeque<Atom.ContainerAtom> containerAtoms;
    public TrackBundle currentTrackBundle;
    public long durationUs;
    public TrackOutput[] emsgTrackOutputs;
    public long endOfMdatPosition;
    public ExtractorOutput extractorOutput;
    public final int flags;
    public boolean haveOutputSeekMap;
    public boolean isAc4HeaderRequired;
    public final ParsableByteArray nalBuffer;
    public final ParsableByteArray nalPrefix;
    public final ParsableByteArray nalStartCode;
    public int parserState;
    public int pendingMetadataSampleBytes;
    public final ArrayDeque<MetadataSampleInfo> pendingMetadataSampleInfos;
    public long pendingSeekTimeUs;
    public boolean processSeiNalUnitPayload;
    public int sampleBytesWritten;
    public int sampleCurrentNalBytesRemaining;
    public int sampleSize;
    public final ParsableByteArray scratch;
    public final byte[] scratchBytes;
    public long segmentIndexEarliestPresentationTimeUs;
    @Nullable
    public final DrmInitData sideloadedDrmInitData;
    @Nullable
    public final Track sideloadedTrack;
    @Nullable
    public final TimestampAdjuster timestampAdjuster;
    public final SparseArray<TrackBundle> trackBundles;
    public static final ExtractorsFactory FACTORY = FragmentedMp4Extractor$$Lambda$0.$instance;
    public static final byte[] PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE = {-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};
    public static final Format EMSG_FORMAT = Format.createSampleFormat(null, MimeTypes.APPLICATION_EMSG, Long.MAX_VALUE);

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$Flags.class */
    public @interface Flags {
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo.class */
    public static final class MetadataSampleInfo {
        public final long presentationTimeDeltaUs;
        public final int size;

        public MetadataSampleInfo(long j, int i) {
            this.presentationTimeDeltaUs = j;
            this.size = i;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle.class */
    public static final class TrackBundle {
        public int currentSampleInTrackRun;
        public int currentSampleIndex;
        public int currentTrackRunIndex;
        public DefaultSampleValues defaultSampleValues;
        public int firstSampleToOutputIndex;
        public final TrackOutput output;
        public Track track;
        public final TrackFragment fragment = new TrackFragment();
        public final ParsableByteArray encryptionSignalByte = new ParsableByteArray(1);
        public final ParsableByteArray defaultInitializationVector = new ParsableByteArray();

        public TrackBundle(TrackOutput trackOutput) {
            this.output = trackOutput;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public TrackEncryptionBox getEncryptionBoxIfEncrypted() {
            TrackFragment trackFragment = this.fragment;
            int i = trackFragment.header.sampleDescriptionIndex;
            TrackEncryptionBox trackEncryptionBox = trackFragment.trackEncryptionBox;
            if (trackEncryptionBox == null) {
                trackEncryptionBox = this.track.getSampleDescriptionEncryptionBox(i);
            }
            if (trackEncryptionBox == null || !trackEncryptionBox.isEncrypted) {
                trackEncryptionBox = null;
            }
            return trackEncryptionBox;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void skipSampleEncryptionData() {
            TrackEncryptionBox encryptionBoxIfEncrypted = getEncryptionBoxIfEncrypted();
            if (encryptionBoxIfEncrypted != null) {
                ParsableByteArray parsableByteArray = this.fragment.sampleEncryptionData;
                int i = encryptionBoxIfEncrypted.perSampleIvSize;
                if (i != 0) {
                    parsableByteArray.skipBytes(i);
                }
                if (this.fragment.sampleHasSubsampleEncryptionTable(this.currentSampleIndex)) {
                    parsableByteArray.skipBytes(parsableByteArray.readUnsignedShort() * 6);
                }
            }
        }

        public void init(Track track, DefaultSampleValues defaultSampleValues) {
            this.track = (Track) Assertions.checkNotNull(track);
            this.defaultSampleValues = (DefaultSampleValues) Assertions.checkNotNull(defaultSampleValues);
            this.output.format(track.format);
            reset();
        }

        public boolean next() {
            this.currentSampleIndex++;
            this.currentSampleInTrackRun++;
            int i = this.currentSampleInTrackRun;
            int[] iArr = this.fragment.trunLength;
            int i2 = this.currentTrackRunIndex;
            if (i != iArr[i2]) {
                return true;
            }
            this.currentTrackRunIndex = i2 + 1;
            this.currentSampleInTrackRun = 0;
            return false;
        }

        public int outputSampleEncryptionData() {
            ParsableByteArray parsableByteArray;
            TrackEncryptionBox encryptionBoxIfEncrypted = getEncryptionBoxIfEncrypted();
            if (encryptionBoxIfEncrypted == null) {
                return 0;
            }
            int i = encryptionBoxIfEncrypted.perSampleIvSize;
            if (i != 0) {
                parsableByteArray = this.fragment.sampleEncryptionData;
            } else {
                byte[] bArr = encryptionBoxIfEncrypted.defaultInitializationVector;
                this.defaultInitializationVector.reset(bArr, bArr.length);
                parsableByteArray = this.defaultInitializationVector;
                i = bArr.length;
            }
            boolean sampleHasSubsampleEncryptionTable = this.fragment.sampleHasSubsampleEncryptionTable(this.currentSampleIndex);
            this.encryptionSignalByte.data[0] = (byte) ((sampleHasSubsampleEncryptionTable ? 128 : 0) | i);
            this.encryptionSignalByte.setPosition(0);
            this.output.sampleData(this.encryptionSignalByte, 1);
            this.output.sampleData(parsableByteArray, i);
            if (!sampleHasSubsampleEncryptionTable) {
                return i + 1;
            }
            ParsableByteArray parsableByteArray2 = this.fragment.sampleEncryptionData;
            int readUnsignedShort = parsableByteArray2.readUnsignedShort();
            parsableByteArray2.skipBytes(-2);
            int i2 = (readUnsignedShort * 6) + 2;
            this.output.sampleData(parsableByteArray2, i2);
            return i + 1 + i2;
        }

        public void reset() {
            this.fragment.reset();
            this.currentSampleIndex = 0;
            this.currentTrackRunIndex = 0;
            this.currentSampleInTrackRun = 0;
            this.firstSampleToOutputIndex = 0;
        }

        public void seek(long j) {
            long usToMs = C0463C.usToMs(j);
            int i = this.currentSampleIndex;
            while (true) {
                TrackFragment trackFragment = this.fragment;
                if (i < trackFragment.sampleCount && trackFragment.getSamplePresentationTime(i) < usToMs) {
                    if (this.fragment.sampleIsSyncFrameTable[i]) {
                        this.firstSampleToOutputIndex = i;
                    }
                    i++;
                } else {
                    return;
                }
            }
        }

        public void updateDrmInitData(DrmInitData drmInitData) {
            TrackEncryptionBox sampleDescriptionEncryptionBox = this.track.getSampleDescriptionEncryptionBox(this.fragment.header.sampleDescriptionIndex);
            this.output.format(this.track.format.copyWithDrmInitData(drmInitData.copyWithSchemeType(sampleDescriptionEncryptionBox != null ? sampleDescriptionEncryptionBox.schemeType : null)));
        }
    }

    public FragmentedMp4Extractor() {
        this(0);
    }

    public FragmentedMp4Extractor(int i) {
        this(i, null);
    }

    public FragmentedMp4Extractor(int i, @Nullable TimestampAdjuster timestampAdjuster) {
        this(i, timestampAdjuster, null, null);
    }

    public FragmentedMp4Extractor(int i, @Nullable TimestampAdjuster timestampAdjuster, @Nullable Track track, @Nullable DrmInitData drmInitData) {
        this(i, timestampAdjuster, track, drmInitData, Collections.emptyList());
    }

    public FragmentedMp4Extractor(int i, @Nullable TimestampAdjuster timestampAdjuster, @Nullable Track track, @Nullable DrmInitData drmInitData, List<Format> list) {
        this(i, timestampAdjuster, track, drmInitData, list, null);
    }

    public FragmentedMp4Extractor(int i, @Nullable TimestampAdjuster timestampAdjuster, @Nullable Track track, @Nullable DrmInitData drmInitData, List<Format> list, @Nullable TrackOutput trackOutput) {
        this.flags = i | (track != null ? 8 : 0);
        this.timestampAdjuster = timestampAdjuster;
        this.sideloadedTrack = track;
        this.sideloadedDrmInitData = drmInitData;
        this.closedCaptionFormats = Collections.unmodifiableList(list);
        this.additionalEmsgTrackOutput = trackOutput;
        this.atomHeader = new ParsableByteArray(16);
        this.nalStartCode = new ParsableByteArray(NalUnitUtil.NAL_START_CODE);
        this.nalPrefix = new ParsableByteArray(5);
        this.nalBuffer = new ParsableByteArray();
        this.scratchBytes = new byte[16];
        this.scratch = new ParsableByteArray(this.scratchBytes);
        this.containerAtoms = new ArrayDeque<>();
        this.pendingMetadataSampleInfos = new ArrayDeque<>();
        this.trackBundles = new SparseArray<>();
        this.durationUs = C0463C.TIME_UNSET;
        this.pendingSeekTimeUs = C0463C.TIME_UNSET;
        this.segmentIndexEarliestPresentationTimeUs = C0463C.TIME_UNSET;
        enterReadingAtomHeaderState();
    }

    private void enterReadingAtomHeaderState() {
        this.parserState = 0;
        this.atomHeaderBytesRead = 0;
    }

    private DefaultSampleValues getDefaultSampleValues(SparseArray<DefaultSampleValues> sparseArray, int i) {
        return sparseArray.size() == 1 ? sparseArray.valueAt(0) : (DefaultSampleValues) Assertions.checkNotNull(sparseArray.get(i));
    }

    public static DrmInitData getDrmInitDataFromAtoms(List<Atom.LeafAtom> list) {
        int size = list.size();
        DrmInitData drmInitData = null;
        ArrayList arrayList = null;
        for (int i = 0; i < size; i++) {
            Atom.LeafAtom leafAtom = list.get(i);
            arrayList = arrayList;
            if (leafAtom.type == 1886614376) {
                arrayList = arrayList;
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                byte[] bArr = leafAtom.data.data;
                UUID parseUuid = PsshAtomUtil.parseUuid(bArr);
                if (parseUuid == null) {
                    Log.m37483w(TAG, "Skipped pssh atom (failed to extract uuid)");
                } else {
                    arrayList.add(new DrmInitData.SchemeData(parseUuid, MimeTypes.VIDEO_MP4, bArr));
                }
            }
        }
        if (arrayList != null) {
            drmInitData = new DrmInitData(arrayList);
        }
        return drmInitData;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17, types: [long[]] */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.media2.exoplayer.external.extractor.mp4.FragmentedMp4Extractor.TrackBundle getNextFragmentRun(android.util.SparseArray<androidx.media2.exoplayer.external.extractor.mp4.FragmentedMp4Extractor.TrackBundle> r5) {
        /*
            r0 = r5
            int r0 = r0.size()
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r8 = r0
            r0 = 0
            r10 = r0
        L_0x000e:
            r0 = r10
            r1 = r6
            if (r0 >= r1) goto L_0x0061
            r0 = r5
            r1 = r10
            java.lang.Object r0 = r0.valueAt(r1)
            androidx.media2.exoplayer.external.extractor.mp4.FragmentedMp4Extractor$TrackBundle r0 = (androidx.media2.exoplayer.external.extractor.mp4.FragmentedMp4Extractor.TrackBundle) r0
            r11 = r0
            r0 = r11
            int r0 = r0.currentTrackRunIndex
            r12 = r0
            r0 = r11
            androidx.media2.exoplayer.external.extractor.mp4.TrackFragment r0 = r0.fragment
            r13 = r0
            r0 = r12
            r1 = r13
            int r1 = r1.trunCount
            if (r0 != r1) goto L_0x003d
            r0 = r8
            r14 = r0
            goto L_0x0058
        L_0x003d:
            r0 = r13
            long[] r0 = r0.trunDataPosition
            r1 = r12
            r0 = r0[r1]
            r16 = r0
            r0 = r8
            r14 = r0
            r0 = r16
            r1 = r8
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0058
            r0 = r11
            r7 = r0
            r0 = r16
            r14 = r0
        L_0x0058:
            int r10 = r10 + 1
            r0 = r14
            r8 = r0
            goto L_0x000e
        L_0x0061:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.mp4.FragmentedMp4Extractor.getNextFragmentRun(android.util.SparseArray):androidx.media2.exoplayer.external.extractor.mp4.FragmentedMp4Extractor$TrackBundle");
    }

    @Nullable
    public static TrackBundle getTrackBundle(SparseArray<TrackBundle> sparseArray, int i) {
        return sparseArray.size() == 1 ? sparseArray.valueAt(0) : sparseArray.get(i);
    }

    public static final /* synthetic */ Extractor[] lambda$static$0$FragmentedMp4Extractor() {
        return new Extractor[]{new FragmentedMp4Extractor()};
    }

    private void maybeInitExtraTracks() {
        int i;
        if (this.emsgTrackOutputs == null) {
            this.emsgTrackOutputs = new TrackOutput[2];
            TrackOutput trackOutput = this.additionalEmsgTrackOutput;
            if (trackOutput != null) {
                this.emsgTrackOutputs[0] = trackOutput;
                i = 1;
            } else {
                i = 0;
            }
            int i2 = i;
            if ((this.flags & 4) != 0) {
                this.emsgTrackOutputs[i] = this.extractorOutput.track(this.trackBundles.size(), 4);
                i2 = i + 1;
            }
            this.emsgTrackOutputs = (TrackOutput[]) Arrays.copyOf(this.emsgTrackOutputs, i2);
            for (TrackOutput trackOutput2 : this.emsgTrackOutputs) {
                trackOutput2.format(EMSG_FORMAT);
            }
        }
        if (this.cea608TrackOutputs == null) {
            this.cea608TrackOutputs = new TrackOutput[this.closedCaptionFormats.size()];
            for (int i3 = 0; i3 < this.cea608TrackOutputs.length; i3++) {
                TrackOutput track = this.extractorOutput.track(this.trackBundles.size() + 1 + i3, 3);
                track.format(this.closedCaptionFormats.get(i3));
                this.cea608TrackOutputs[i3] = track;
            }
        }
    }

    private void onContainerAtomRead(Atom.ContainerAtom containerAtom) throws ParserException {
        int i = containerAtom.type;
        if (i == 1836019574) {
            onMoovContainerAtomRead(containerAtom);
        } else if (i == 1836019558) {
            onMoofContainerAtomRead(containerAtom);
        } else if (!this.containerAtoms.isEmpty()) {
            this.containerAtoms.peek().add(containerAtom);
        }
    }

    private void onEmsgLeafAtomRead(ParsableByteArray parsableByteArray) {
        TrackOutput[] trackOutputArr;
        TrackOutput[] trackOutputArr2 = this.emsgTrackOutputs;
        if (!(trackOutputArr2 == null || trackOutputArr2.length == 0)) {
            parsableByteArray.setPosition(12);
            int bytesLeft = parsableByteArray.bytesLeft();
            parsableByteArray.readNullTerminatedString();
            parsableByteArray.readNullTerminatedString();
            long scaleLargeTimestamp = Util.scaleLargeTimestamp(parsableByteArray.readUnsignedInt(), 1000000L, parsableByteArray.readUnsignedInt());
            int position = parsableByteArray.getPosition();
            byte[] bArr = parsableByteArray.data;
            bArr[position - 4] = (byte) 0;
            bArr[position - 3] = (byte) 0;
            bArr[position - 2] = (byte) 0;
            bArr[position - 1] = (byte) 0;
            for (TrackOutput trackOutput : this.emsgTrackOutputs) {
                parsableByteArray.setPosition(12);
                trackOutput.sampleData(parsableByteArray, bytesLeft);
            }
            long j = this.segmentIndexEarliestPresentationTimeUs;
            if (j != C0463C.TIME_UNSET) {
                long j2 = j + scaleLargeTimestamp;
                TimestampAdjuster timestampAdjuster = this.timestampAdjuster;
                if (timestampAdjuster != null) {
                    j2 = timestampAdjuster.adjustSampleTimestamp(j2);
                }
                for (TrackOutput trackOutput2 : this.emsgTrackOutputs) {
                    trackOutput2.sampleMetadata(j2, 1, bytesLeft, 0, null);
                }
                return;
            }
            this.pendingMetadataSampleInfos.addLast(new MetadataSampleInfo(scaleLargeTimestamp, bytesLeft));
            this.pendingMetadataSampleBytes += bytesLeft;
        }
    }

    private void onLeafAtomRead(Atom.LeafAtom leafAtom, long j) throws ParserException {
        if (!this.containerAtoms.isEmpty()) {
            this.containerAtoms.peek().add(leafAtom);
            return;
        }
        int i = leafAtom.type;
        if (i == 1936286840) {
            Pair<Long, ChunkIndex> parseSidx = parseSidx(leafAtom.data, j);
            this.segmentIndexEarliestPresentationTimeUs = ((Long) parseSidx.first).longValue();
            this.extractorOutput.seekMap((SeekMap) parseSidx.second);
            this.haveOutputSeekMap = true;
        } else if (i == 1701671783) {
            onEmsgLeafAtomRead(leafAtom.data);
        }
    }

    private void onMoofContainerAtomRead(Atom.ContainerAtom containerAtom) throws ParserException {
        parseMoof(containerAtom, this.trackBundles, this.flags, this.scratchBytes);
        DrmInitData drmInitDataFromAtoms = this.sideloadedDrmInitData != null ? null : getDrmInitDataFromAtoms(containerAtom.leafChildren);
        if (drmInitDataFromAtoms != null) {
            int size = this.trackBundles.size();
            for (int i = 0; i < size; i++) {
                this.trackBundles.valueAt(i).updateDrmInitData(drmInitDataFromAtoms);
            }
        }
        if (this.pendingSeekTimeUs != C0463C.TIME_UNSET) {
            int size2 = this.trackBundles.size();
            for (int i2 = 0; i2 < size2; i2++) {
                this.trackBundles.valueAt(i2).seek(this.pendingSeekTimeUs);
            }
            this.pendingSeekTimeUs = C0463C.TIME_UNSET;
        }
    }

    private void onMoovContainerAtomRead(Atom.ContainerAtom containerAtom) throws ParserException {
        boolean z = true;
        Assertions.checkState(this.sideloadedTrack == null, "Unexpected moov box.");
        DrmInitData drmInitData = this.sideloadedDrmInitData;
        if (drmInitData == null) {
            drmInitData = getDrmInitDataFromAtoms(containerAtom.leafChildren);
        }
        Atom.ContainerAtom containerAtomOfType = containerAtom.getContainerAtomOfType(Atom.TYPE_mvex);
        SparseArray<DefaultSampleValues> sparseArray = new SparseArray<>();
        int size = containerAtomOfType.leafChildren.size();
        long j = C0463C.TIME_UNSET;
        for (int i = 0; i < size; i++) {
            Atom.LeafAtom leafAtom = containerAtomOfType.leafChildren.get(i);
            int i2 = leafAtom.type;
            if (i2 == 1953654136) {
                Pair<Integer, DefaultSampleValues> parseTrex = parseTrex(leafAtom.data);
                sparseArray.put(((Integer) parseTrex.first).intValue(), (DefaultSampleValues) parseTrex.second);
            } else if (i2 == 1835362404) {
                j = parseMehd(leafAtom.data);
            }
        }
        SparseArray sparseArray2 = new SparseArray();
        int size2 = containerAtom.containerChildren.size();
        for (int i3 = 0; i3 < size2; i3++) {
            Atom.ContainerAtom containerAtom2 = containerAtom.containerChildren.get(i3);
            if (containerAtom2.type == 1953653099) {
                Track modifyTrack = modifyTrack(AtomParsers.parseTrak(containerAtom2, containerAtom.getLeafAtomOfType(Atom.TYPE_mvhd), j, drmInitData, (this.flags & 16) != 0, false));
                if (modifyTrack != null) {
                    sparseArray2.put(modifyTrack.f84id, modifyTrack);
                }
            }
        }
        int size3 = sparseArray2.size();
        if (this.trackBundles.size() == 0) {
            for (int i4 = 0; i4 < size3; i4++) {
                Track track = (Track) sparseArray2.valueAt(i4);
                TrackBundle trackBundle = new TrackBundle(this.extractorOutput.track(i4, track.type));
                trackBundle.init(track, getDefaultSampleValues(sparseArray, track.f84id));
                this.trackBundles.put(track.f84id, trackBundle);
                this.durationUs = Math.max(this.durationUs, track.durationUs);
            }
            maybeInitExtraTracks();
            this.extractorOutput.endTracks();
            return;
        }
        if (this.trackBundles.size() != size3) {
            z = false;
        }
        Assertions.checkState(z);
        for (int i5 = 0; i5 < size3; i5++) {
            Track track2 = (Track) sparseArray2.valueAt(i5);
            this.trackBundles.get(track2.f84id).init(track2, getDefaultSampleValues(sparseArray, track2.f84id));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r0v12, types: [androidx.media2.exoplayer.external.util.TimestampAdjuster] */
    /* JADX WARN: Type inference failed for: r0v16, types: [androidx.media2.exoplayer.external.extractor.TrackOutput[]] */
    /* JADX WARN: Type inference failed for: r0v22, types: [androidx.media2.exoplayer.external.extractor.TrackOutput] */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1, types: [long] */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Unknown variable types count: 3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void outputPendingMetadataSamples(long r9) {
        /*
            r8 = this;
        L_0x0000:
            r0 = r8
            java.util.ArrayDeque<androidx.media2.exoplayer.external.extractor.mp4.FragmentedMp4Extractor$MetadataSampleInfo> r0 = r0.pendingMetadataSampleInfos
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L_0x0073
            r0 = r8
            java.util.ArrayDeque<androidx.media2.exoplayer.external.extractor.mp4.FragmentedMp4Extractor$MetadataSampleInfo> r0 = r0.pendingMetadataSampleInfos
            java.lang.Object r0 = r0.removeFirst()
            androidx.media2.exoplayer.external.extractor.mp4.FragmentedMp4Extractor$MetadataSampleInfo r0 = (androidx.media2.exoplayer.external.extractor.mp4.FragmentedMp4Extractor.MetadataSampleInfo) r0
            r11 = r0
            r0 = r8
            r1 = r8
            int r1 = r1.pendingMetadataSampleBytes
            r2 = r11
            int r2 = r2.size
            int r1 = r1 - r2
            r0.pendingMetadataSampleBytes = r1
            r0 = r11
            long r0 = r0.presentationTimeDeltaUs
            r1 = r9
            long r0 = r0 + r1
            r12 = r0
            r0 = r8
            androidx.media2.exoplayer.external.util.TimestampAdjuster r0 = r0.timestampAdjuster
            r14 = r0
            r0 = r12
            r15 = r0
            r0 = r14
            if (r0 == 0) goto L_0x0042
            r0 = r14
            r1 = r12
            long r0 = r0.adjustSampleTimestamp(r1)
            r15 = r0
        L_0x0042:
            r0 = r8
            androidx.media2.exoplayer.external.extractor.TrackOutput[] r0 = r0.emsgTrackOutputs
            r14 = r0
            r0 = r14
            int r0 = r0.length
            r17 = r0
            r0 = 0
            r18 = r0
        L_0x0050:
            r0 = r18
            r1 = r17
            if (r0 >= r1) goto L_0x0000
            r0 = r14
            r1 = r18
            r0 = r0[r1]
            r1 = r15
            r2 = 1
            r3 = r11
            int r3 = r3.size
            r4 = r8
            int r4 = r4.pendingMetadataSampleBytes
            r5 = 0
            r0.sampleMetadata(r1, r2, r3, r4, r5)
            int r18 = r18 + 1
            goto L_0x0050
        L_0x0073:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.mp4.FragmentedMp4Extractor.outputPendingMetadataSamples(long):void");
    }

    public static long parseMehd(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(8);
        return Atom.parseFullAtomVersion(parsableByteArray.readInt()) == 0 ? parsableByteArray.readUnsignedInt() : parsableByteArray.readUnsignedLongToLong();
    }

    public static void parseMoof(Atom.ContainerAtom containerAtom, SparseArray<TrackBundle> sparseArray, int i, byte[] bArr) throws ParserException {
        int size = containerAtom.containerChildren.size();
        for (int i2 = 0; i2 < size; i2++) {
            Atom.ContainerAtom containerAtom2 = containerAtom.containerChildren.get(i2);
            if (containerAtom2.type == 1953653094) {
                parseTraf(containerAtom2, sparseArray, i, bArr);
            }
        }
    }

    public static void parseSaio(ParsableByteArray parsableByteArray, TrackFragment trackFragment) throws ParserException {
        parsableByteArray.setPosition(8);
        int readInt = parsableByteArray.readInt();
        if ((Atom.parseFullAtomFlags(readInt) & 1) == 1) {
            parsableByteArray.skipBytes(8);
        }
        int readUnsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
        if (readUnsignedIntToInt == 1) {
            trackFragment.auxiliaryDataPosition += Atom.parseFullAtomVersion(readInt) == 0 ? parsableByteArray.readUnsignedInt() : parsableByteArray.readUnsignedLongToLong();
            return;
        }
        StringBuilder sb = new StringBuilder(40);
        sb.append("Unexpected saio entry count: ");
        sb.append(readUnsignedIntToInt);
        throw new ParserException(sb.toString());
    }

    public static void parseSaiz(TrackEncryptionBox trackEncryptionBox, ParsableByteArray parsableByteArray, TrackFragment trackFragment) throws ParserException {
        int i;
        int i2 = trackEncryptionBox.perSampleIvSize;
        parsableByteArray.setPosition(8);
        boolean z = true;
        if ((Atom.parseFullAtomFlags(parsableByteArray.readInt()) & 1) == 1) {
            parsableByteArray.skipBytes(8);
        }
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        int readUnsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
        int i3 = trackFragment.sampleCount;
        if (readUnsignedIntToInt == i3) {
            if (readUnsignedByte == 0) {
                boolean[] zArr = trackFragment.sampleHasSubsampleEncryptionTable;
                int i4 = 0;
                int i5 = 0;
                while (true) {
                    i = i5;
                    if (i4 >= readUnsignedIntToInt) {
                        break;
                    }
                    int readUnsignedByte2 = parsableByteArray.readUnsignedByte();
                    i5 += readUnsignedByte2;
                    zArr[i4] = readUnsignedByte2 > i2;
                    i4++;
                }
            } else {
                if (readUnsignedByte <= i2) {
                    z = false;
                }
                i = (readUnsignedByte * readUnsignedIntToInt) + 0;
                Arrays.fill(trackFragment.sampleHasSubsampleEncryptionTable, 0, readUnsignedIntToInt, z);
            }
            trackFragment.initEncryptionData(i);
            return;
        }
        StringBuilder sb = new StringBuilder(41);
        sb.append("Length mismatch: ");
        sb.append(readUnsignedIntToInt);
        sb.append(UserProfile.CARD_CATE_SEPARATOR);
        sb.append(i3);
        throw new ParserException(sb.toString());
    }

    public static void parseSenc(ParsableByteArray parsableByteArray, int i, TrackFragment trackFragment) throws ParserException {
        parsableByteArray.setPosition(i + 8);
        int parseFullAtomFlags = Atom.parseFullAtomFlags(parsableByteArray.readInt());
        if ((parseFullAtomFlags & 1) == 0) {
            boolean z = (parseFullAtomFlags & 2) != 0;
            int readUnsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
            int i2 = trackFragment.sampleCount;
            if (readUnsignedIntToInt == i2) {
                Arrays.fill(trackFragment.sampleHasSubsampleEncryptionTable, 0, readUnsignedIntToInt, z);
                trackFragment.initEncryptionData(parsableByteArray.bytesLeft());
                trackFragment.fillEncryptionData(parsableByteArray);
                return;
            }
            StringBuilder sb = new StringBuilder(41);
            sb.append("Length mismatch: ");
            sb.append(readUnsignedIntToInt);
            sb.append(UserProfile.CARD_CATE_SEPARATOR);
            sb.append(i2);
            throw new ParserException(sb.toString());
        }
        throw new ParserException("Overriding TrackEncryptionBox parameters is unsupported.");
    }

    public static void parseSenc(ParsableByteArray parsableByteArray, TrackFragment trackFragment) throws ParserException {
        parseSenc(parsableByteArray, 0, trackFragment);
    }

    public static void parseSgpd(ParsableByteArray parsableByteArray, ParsableByteArray parsableByteArray2, String str, TrackFragment trackFragment) throws ParserException {
        byte[] bArr;
        parsableByteArray.setPosition(8);
        int readInt = parsableByteArray.readInt();
        if (parsableByteArray.readInt() == 1936025959) {
            if (Atom.parseFullAtomVersion(readInt) == 1) {
                parsableByteArray.skipBytes(4);
            }
            if (parsableByteArray.readInt() == 1) {
                parsableByteArray2.setPosition(8);
                int readInt2 = parsableByteArray2.readInt();
                if (parsableByteArray2.readInt() == 1936025959) {
                    int parseFullAtomVersion = Atom.parseFullAtomVersion(readInt2);
                    if (parseFullAtomVersion == 1) {
                        if (parsableByteArray2.readUnsignedInt() == 0) {
                            throw new ParserException("Variable length description in sgpd found (unsupported)");
                        }
                    } else if (parseFullAtomVersion >= 2) {
                        parsableByteArray2.skipBytes(4);
                    }
                    if (parsableByteArray2.readUnsignedInt() == 1) {
                        parsableByteArray2.skipBytes(1);
                        int readUnsignedByte = parsableByteArray2.readUnsignedByte();
                        boolean z = parsableByteArray2.readUnsignedByte() == 1;
                        if (z) {
                            int readUnsignedByte2 = parsableByteArray2.readUnsignedByte();
                            byte[] bArr2 = new byte[16];
                            parsableByteArray2.readBytes(bArr2, 0, bArr2.length);
                            if (readUnsignedByte2 == 0) {
                                int readUnsignedByte3 = parsableByteArray2.readUnsignedByte();
                                bArr = new byte[readUnsignedByte3];
                                parsableByteArray2.readBytes(bArr, 0, readUnsignedByte3);
                            } else {
                                bArr = null;
                            }
                            trackFragment.definesEncryptionData = true;
                            trackFragment.trackEncryptionBox = new TrackEncryptionBox(z, str, readUnsignedByte2, bArr2, (readUnsignedByte & 240) >> 4, readUnsignedByte & 15, bArr);
                            return;
                        }
                        return;
                    }
                    throw new ParserException("Entry count in sgpd != 1 (unsupported).");
                }
                return;
            }
            throw new ParserException("Entry count in sbgp != 1 (unsupported).");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r16v6 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair<java.lang.Long, androidx.media2.exoplayer.external.extractor.ChunkIndex> parseSidx(androidx.media2.exoplayer.external.util.ParsableByteArray r8, long r9) throws androidx.media2.exoplayer.external.ParserException {
        /*
            Method dump skipped, instructions count: 246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.mp4.FragmentedMp4Extractor.parseSidx(androidx.media2.exoplayer.external.util.ParsableByteArray, long):android.util.Pair");
    }

    public static long parseTfdt(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(8);
        return Atom.parseFullAtomVersion(parsableByteArray.readInt()) == 1 ? parsableByteArray.readUnsignedLongToLong() : parsableByteArray.readUnsignedInt();
    }

    public static TrackBundle parseTfhd(ParsableByteArray parsableByteArray, SparseArray<TrackBundle> sparseArray) {
        parsableByteArray.setPosition(8);
        int parseFullAtomFlags = Atom.parseFullAtomFlags(parsableByteArray.readInt());
        TrackBundle trackBundle = getTrackBundle(sparseArray, parsableByteArray.readInt());
        if (trackBundle == null) {
            return null;
        }
        if ((parseFullAtomFlags & 1) != 0) {
            long readUnsignedLongToLong = parsableByteArray.readUnsignedLongToLong();
            TrackFragment trackFragment = trackBundle.fragment;
            trackFragment.dataPosition = readUnsignedLongToLong;
            trackFragment.auxiliaryDataPosition = readUnsignedLongToLong;
        }
        DefaultSampleValues defaultSampleValues = trackBundle.defaultSampleValues;
        trackBundle.fragment.header = new DefaultSampleValues((parseFullAtomFlags & 2) != 0 ? parsableByteArray.readUnsignedIntToInt() - 1 : defaultSampleValues.sampleDescriptionIndex, (parseFullAtomFlags & 8) != 0 ? parsableByteArray.readUnsignedIntToInt() : defaultSampleValues.duration, (parseFullAtomFlags & 16) != 0 ? parsableByteArray.readUnsignedIntToInt() : defaultSampleValues.size, (parseFullAtomFlags & 32) != 0 ? parsableByteArray.readUnsignedIntToInt() : defaultSampleValues.flags);
        return trackBundle;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [long] */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void parseTraf(androidx.media2.exoplayer.external.extractor.mp4.Atom.ContainerAtom r6, android.util.SparseArray<androidx.media2.exoplayer.external.extractor.mp4.FragmentedMp4Extractor.TrackBundle> r7, int r8, byte[] r9) throws androidx.media2.exoplayer.external.ParserException {
        /*
            Method dump skipped, instructions count: 299
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.mp4.FragmentedMp4Extractor.parseTraf(androidx.media2.exoplayer.external.extractor.mp4.Atom$ContainerAtom, android.util.SparseArray, int, byte[]):void");
    }

    public static Pair<Integer, DefaultSampleValues> parseTrex(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(12);
        return Pair.create(Integer.valueOf(parsableByteArray.readInt()), new DefaultSampleValues(parsableByteArray.readUnsignedIntToInt() - 1, parsableByteArray.readUnsignedIntToInt(), parsableByteArray.readUnsignedIntToInt(), parsableByteArray.readInt()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r27v0 */
    /* JADX WARN: Type inference failed for: r27v1, types: [long] */
    /* JADX WARN: Type inference failed for: r27v2 */
    /* JADX WARN: Type inference failed for: r27v3 */
    /* JADX WARN: Type inference failed for: r27v5 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int parseTrun(androidx.media2.exoplayer.external.extractor.mp4.FragmentedMp4Extractor.TrackBundle r9, int r10, long r11, int r13, androidx.media2.exoplayer.external.util.ParsableByteArray r14, int r15) {
        /*
            Method dump skipped, instructions count: 548
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.mp4.FragmentedMp4Extractor.parseTrun(androidx.media2.exoplayer.external.extractor.mp4.FragmentedMp4Extractor$TrackBundle, int, long, int, androidx.media2.exoplayer.external.util.ParsableByteArray, int):int");
    }

    public static void parseTruns(Atom.ContainerAtom containerAtom, TrackBundle trackBundle, long j, int i) {
        List<Atom.LeafAtom> list = containerAtom.leafChildren;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            Atom.LeafAtom leafAtom = list.get(i4);
            i2 = i2;
            i3 = i3;
            if (leafAtom.type == 1953658222) {
                ParsableByteArray parsableByteArray = leafAtom.data;
                parsableByteArray.setPosition(12);
                int readUnsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
                i2 = i2;
                i3 = i3;
                if (readUnsignedIntToInt > 0) {
                    i3 += readUnsignedIntToInt;
                    i2++;
                }
            }
        }
        trackBundle.currentTrackRunIndex = 0;
        trackBundle.currentSampleInTrackRun = 0;
        trackBundle.currentSampleIndex = 0;
        trackBundle.fragment.initTables(i2, i3);
        int i5 = 0;
        int i6 = 0;
        for (int i7 = 0; i7 < size; i7++) {
            Atom.LeafAtom leafAtom2 = list.get(i7);
            i5 = i5;
            i6 = i6;
            if (leafAtom2.type == 1953658222) {
                i6 = parseTrun(trackBundle, i5, j, i, leafAtom2.data, i6);
                i5++;
            }
        }
    }

    public static void parseUuid(ParsableByteArray parsableByteArray, TrackFragment trackFragment, byte[] bArr) throws ParserException {
        parsableByteArray.setPosition(8);
        parsableByteArray.readBytes(bArr, 0, 16);
        if (Arrays.equals(bArr, PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE)) {
            parseSenc(parsableByteArray, 16, trackFragment);
        }
    }

    private void processAtomEnded(long j) throws ParserException {
        while (!this.containerAtoms.isEmpty() && this.containerAtoms.peek().endPosition == j) {
            onContainerAtomRead(this.containerAtoms.pop());
        }
        enterReadingAtomHeaderState();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v82, types: [long] */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5, types: [long] */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean readAtomHeader(androidx.media2.exoplayer.external.extractor.ExtractorInput r9) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 574
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.mp4.FragmentedMp4Extractor.readAtomHeader(androidx.media2.exoplayer.external.extractor.ExtractorInput):boolean");
    }

    private void readAtomPayload(ExtractorInput extractorInput) throws IOException, InterruptedException {
        int i = ((int) this.atomSize) - this.atomHeaderBytesRead;
        ParsableByteArray parsableByteArray = this.atomData;
        if (parsableByteArray != null) {
            extractorInput.readFully(parsableByteArray.data, 8, i);
            onLeafAtomRead(new Atom.LeafAtom(this.atomType, this.atomData), extractorInput.getPosition());
        } else {
            extractorInput.skipFully(i);
        }
        processAtomEnded(extractorInput.getPosition());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void readEncryptionData(androidx.media2.exoplayer.external.extractor.ExtractorInput r6) throws java.io.IOException, java.lang.InterruptedException {
        /*
            r5 = this;
            r0 = r5
            android.util.SparseArray<androidx.media2.exoplayer.external.extractor.mp4.FragmentedMp4Extractor$TrackBundle> r0 = r0.trackBundles
            int r0 = r0.size()
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r9 = r0
            r0 = 0
            r11 = r0
        L_0x0012:
            r0 = r11
            r1 = r7
            if (r0 >= r1) goto L_0x006d
            r0 = r5
            android.util.SparseArray<androidx.media2.exoplayer.external.extractor.mp4.FragmentedMp4Extractor$TrackBundle> r0 = r0.trackBundles
            r1 = r11
            java.lang.Object r0 = r0.valueAt(r1)
            androidx.media2.exoplayer.external.extractor.mp4.FragmentedMp4Extractor$TrackBundle r0 = (androidx.media2.exoplayer.external.extractor.mp4.FragmentedMp4Extractor.TrackBundle) r0
            androidx.media2.exoplayer.external.extractor.mp4.TrackFragment r0 = r0.fragment
            r12 = r0
            r0 = r8
            r13 = r0
            r0 = r9
            r14 = r0
            r0 = r12
            boolean r0 = r0.sampleEncryptionDataNeedsFill
            if (r0 == 0) goto L_0x0060
            r0 = r12
            long r0 = r0.auxiliaryDataPosition
            r16 = r0
            r0 = r8
            r13 = r0
            r0 = r9
            r14 = r0
            r0 = r16
            r1 = r9
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0060
            r0 = r5
            android.util.SparseArray<androidx.media2.exoplayer.external.extractor.mp4.FragmentedMp4Extractor$TrackBundle> r0 = r0.trackBundles
            r1 = r11
            java.lang.Object r0 = r0.valueAt(r1)
            androidx.media2.exoplayer.external.extractor.mp4.FragmentedMp4Extractor$TrackBundle r0 = (androidx.media2.exoplayer.external.extractor.mp4.FragmentedMp4Extractor.TrackBundle) r0
            r13 = r0
            r0 = r16
            r14 = r0
        L_0x0060:
            int r11 = r11 + 1
            r0 = r13
            r8 = r0
            r0 = r14
            r9 = r0
            goto L_0x0012
        L_0x006d:
            r0 = r8
            if (r0 != 0) goto L_0x0077
            r0 = r5
            r1 = 3
            r0.parserState = r1
            return
        L_0x0077:
            r0 = r9
            r1 = r6
            long r1 = r1.getPosition()
            long r0 = r0 - r1
            int r0 = (int) r0
            r11 = r0
            r0 = r11
            if (r0 < 0) goto L_0x0099
            r0 = r6
            r1 = r11
            r0.skipFully(r1)
            r0 = r8
            androidx.media2.exoplayer.external.extractor.mp4.TrackFragment r0 = r0.fragment
            r1 = r6
            r0.fillEncryptionData(r1)
            return
        L_0x0099:
            androidx.media2.exoplayer.external.ParserException r0 = new androidx.media2.exoplayer.external.ParserException
            r1 = r0
            java.lang.String r2 = "Offset to encryption data was negative."
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.mp4.FragmentedMp4Extractor.readEncryptionData(androidx.media2.exoplayer.external.extractor.ExtractorInput):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v16, types: [androidx.media2.exoplayer.external.util.TimestampAdjuster] */
    /* JADX WARN: Type inference failed for: r0v9, types: [androidx.media2.exoplayer.external.extractor.TrackOutput] */
    /* JADX WARN: Type inference failed for: r18v0 */
    /* JADX WARN: Type inference failed for: r18v1, types: [long] */
    /* JADX WARN: Type inference failed for: r18v3 */
    /* JADX WARN: Type inference failed for: r8v0, types: [androidx.media2.exoplayer.external.extractor.mp4.FragmentedMp4Extractor] */
    /* JADX WARN: Unknown variable types count: 4 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean readSample(androidx.media2.exoplayer.external.extractor.ExtractorInput r9) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 907
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.mp4.FragmentedMp4Extractor.readSample(androidx.media2.exoplayer.external.extractor.ExtractorInput):boolean");
    }

    public static boolean shouldParseContainerAtom(int i) {
        return i == 1836019574 || i == 1953653099 || i == 1835297121 || i == 1835626086 || i == 1937007212 || i == 1836019558 || i == 1953653094 || i == 1836475768 || i == 1701082227;
    }

    public static boolean shouldParseLeafAtom(int i) {
        return i == 1751411826 || i == 1835296868 || i == 1836476516 || i == 1936286840 || i == 1937011556 || i == 1952867444 || i == 1952868452 || i == 1953196132 || i == 1953654136 || i == 1953658222 || i == 1886614376 || i == 1935763834 || i == 1935763823 || i == 1936027235 || i == 1970628964 || i == 1935828848 || i == 1936158820 || i == 1701606260 || i == 1835362404 || i == 1701671783;
    }

    @Override // androidx.media2.exoplayer.external.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        this.extractorOutput = extractorOutput;
        Track track = this.sideloadedTrack;
        if (track != null) {
            TrackBundle trackBundle = new TrackBundle(extractorOutput.track(0, track.type));
            trackBundle.init(this.sideloadedTrack, new DefaultSampleValues(0, 0, 0, 0));
            this.trackBundles.put(0, trackBundle);
            maybeInitExtraTracks();
            this.extractorOutput.endTracks();
        }
    }

    @Nullable
    public Track modifyTrack(@Nullable Track track) {
        return track;
    }

    @Override // androidx.media2.exoplayer.external.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException, InterruptedException {
        while (true) {
            int i = this.parserState;
            if (i != 0) {
                if (i == 1) {
                    readAtomPayload(extractorInput);
                } else if (i == 2) {
                    readEncryptionData(extractorInput);
                } else if (readSample(extractorInput)) {
                    return 0;
                }
            } else if (!readAtomHeader(extractorInput)) {
                return -1;
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.Extractor
    public void release() {
    }

    @Override // androidx.media2.exoplayer.external.extractor.Extractor
    public void seek(long j, long j2) {
        int size = this.trackBundles.size();
        for (int i = 0; i < size; i++) {
            this.trackBundles.valueAt(i).reset();
        }
        this.pendingMetadataSampleInfos.clear();
        this.pendingMetadataSampleBytes = 0;
        this.pendingSeekTimeUs = j2;
        this.containerAtoms.clear();
        this.isAc4HeaderRequired = false;
        enterReadingAtomHeaderState();
    }

    @Override // androidx.media2.exoplayer.external.extractor.Extractor
    public boolean sniff(ExtractorInput extractorInput) throws IOException, InterruptedException {
        return Sniffer.sniffFragmented(extractorInput);
    }
}
