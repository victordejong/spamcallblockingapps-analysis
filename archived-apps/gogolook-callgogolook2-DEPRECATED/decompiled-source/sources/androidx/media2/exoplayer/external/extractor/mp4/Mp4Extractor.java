package androidx.media2.exoplayer.external.extractor.mp4;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.C0463C;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.extractor.Extractor;
import androidx.media2.exoplayer.external.extractor.ExtractorInput;
import androidx.media2.exoplayer.external.extractor.ExtractorOutput;
import androidx.media2.exoplayer.external.extractor.ExtractorsFactory;
import androidx.media2.exoplayer.external.extractor.GaplessInfoHolder;
import androidx.media2.exoplayer.external.extractor.PositionHolder;
import androidx.media2.exoplayer.external.extractor.SeekMap;
import androidx.media2.exoplayer.external.extractor.TrackOutput;
import androidx.media2.exoplayer.external.extractor.mp4.Atom;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.util.NalUnitUtil;
import androidx.media2.exoplayer.external.util.ParsableByteArray;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayDeque;
import java.util.ArrayList;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor.class */
public final class Mp4Extractor implements Extractor, SeekMap {
    public static final int BRAND_QUICKTIME = 1903435808;
    public static final ExtractorsFactory FACTORY = Mp4Extractor$$Lambda$0.$instance;
    public static final int FLAG_WORKAROUND_IGNORE_EDIT_LISTS = 1;
    public static final long MAXIMUM_READ_AHEAD_BYTES_STREAM = 10485760;
    public static final long RELOAD_MINIMUM_SEEK_DISTANCE = 262144;
    public static final int STATE_READING_ATOM_HEADER = 0;
    public static final int STATE_READING_ATOM_PAYLOAD = 1;
    public static final int STATE_READING_SAMPLE = 2;
    public long[][] accumulatedSampleSizes;
    public ParsableByteArray atomData;
    public final ParsableByteArray atomHeader;
    public int atomHeaderBytesRead;
    public long atomSize;
    public int atomType;
    public final ArrayDeque<Atom.ContainerAtom> containerAtoms;
    public long durationUs;
    public ExtractorOutput extractorOutput;
    public int firstVideoTrackIndex;
    public final int flags;
    public boolean isAc4HeaderRequired;
    public boolean isQuickTime;
    public final ParsableByteArray nalLength;
    public final ParsableByteArray nalStartCode;
    public int parserState;
    public int sampleBytesWritten;
    public int sampleCurrentNalBytesRemaining;
    public int sampleTrackIndex;
    public final ParsableByteArray scratch;
    public Mp4Track[] tracks;

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Flags.class */
    public @interface Flags {
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track.class */
    public static final class Mp4Track {
        public int sampleIndex;
        public final TrackSampleTable sampleTable;
        public final Track track;
        public final TrackOutput trackOutput;

        public Mp4Track(Track track, TrackSampleTable trackSampleTable, TrackOutput trackOutput) {
            this.track = track;
            this.sampleTable = trackSampleTable;
            this.trackOutput = trackOutput;
        }
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$State.class */
    public @interface State {
    }

    public Mp4Extractor() {
        this(0);
    }

    public Mp4Extractor(int i) {
        this.flags = i;
        this.atomHeader = new ParsableByteArray(16);
        this.containerAtoms = new ArrayDeque<>();
        this.nalStartCode = new ParsableByteArray(NalUnitUtil.NAL_START_CODE);
        this.nalLength = new ParsableByteArray(4);
        this.scratch = new ParsableByteArray();
        this.sampleTrackIndex = -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [long[], long[][]] */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long[]] */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1, types: [long] */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r18v0 */
    /* JADX WARN: Type inference failed for: r18v2 */
    /* JADX WARN: Type inference failed for: r18v3 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Unknown variable types count: 4 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long[][] calculateAccumulatedSampleSizes(androidx.media2.exoplayer.external.extractor.mp4.Mp4Extractor.Mp4Track[] r5) {
        /*
            Method dump skipped, instructions count: 246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.mp4.Mp4Extractor.calculateAccumulatedSampleSizes(androidx.media2.exoplayer.external.extractor.mp4.Mp4Extractor$Mp4Track[]):long[][]");
    }

    private void enterReadingAtomHeaderState() {
        this.parserState = 0;
        this.atomHeaderBytesRead = 0;
    }

    public static int getSynchronizationSampleIndex(TrackSampleTable trackSampleTable, long j) {
        int indexOfEarlierOrEqualSynchronizationSample = trackSampleTable.getIndexOfEarlierOrEqualSynchronizationSample(j);
        int i = indexOfEarlierOrEqualSynchronizationSample;
        if (indexOfEarlierOrEqualSynchronizationSample == -1) {
            i = trackSampleTable.getIndexOfLaterOrEqualSynchronizationSample(j);
        }
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x00bc, code lost:
        if (r0 < (r19 == true ? 1 : 0)) goto L_0x00bf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0126, code lost:
        if ((r14 == true ? 1 : 0) < (r11 + androidx.media2.exoplayer.external.extractor.mp4.Mp4Extractor.MAXIMUM_READ_AHEAD_BYTES_STREAM)) goto L_0x0129;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0105 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v30, types: [long[][]] */
    /* JADX WARN: Type inference failed for: r0v31 */
    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1, types: [long] */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v7 */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v7 */
    /* JADX WARN: Unknown variable types count: 3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int getTrackIndexOfNextReadSample(long r8) {
        /*
            Method dump skipped, instructions count: 304
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.mp4.Mp4Extractor.getTrackIndexOfNextReadSample(long):int");
    }

    private ArrayList<TrackSampleTable> getTrackSampleTables(Atom.ContainerAtom containerAtom, GaplessInfoHolder gaplessInfoHolder, boolean z) throws ParserException {
        Track parseTrak;
        ArrayList<TrackSampleTable> arrayList = new ArrayList<>();
        for (int i = 0; i < containerAtom.containerChildren.size(); i++) {
            Atom.ContainerAtom containerAtom2 = containerAtom.containerChildren.get(i);
            if (containerAtom2.type == 1953653099 && (parseTrak = AtomParsers.parseTrak(containerAtom2, containerAtom.getLeafAtomOfType(Atom.TYPE_mvhd), C0463C.TIME_UNSET, null, z, this.isQuickTime)) != null) {
                TrackSampleTable parseStbl = AtomParsers.parseStbl(parseTrak, containerAtom2.getContainerAtomOfType(Atom.TYPE_mdia).getContainerAtomOfType(Atom.TYPE_minf).getContainerAtomOfType(Atom.TYPE_stbl), gaplessInfoHolder);
                if (parseStbl.sampleCount != 0) {
                    arrayList.add(parseStbl);
                }
            }
        }
        return arrayList;
    }

    public static final /* synthetic */ Extractor[] lambda$static$0$Mp4Extractor() {
        return new Extractor[]{new Mp4Extractor()};
    }

    public static long maybeAdjustSeekOffset(TrackSampleTable trackSampleTable, long j, long j2) {
        int synchronizationSampleIndex = getSynchronizationSampleIndex(trackSampleTable, j);
        return synchronizationSampleIndex == -1 ? j2 : Math.min(trackSampleTable.offsets[synchronizationSampleIndex], j2);
    }

    private void maybeSkipRemainingMetaAtomHeaderBytes(ExtractorInput extractorInput) throws IOException, InterruptedException {
        this.scratch.reset(8);
        extractorInput.peekFully(this.scratch.data, 0, 8);
        this.scratch.skipBytes(4);
        if (this.scratch.readInt() == 1751411826) {
            extractorInput.resetPeekPosition();
        } else {
            extractorInput.skipFully(4);
        }
    }

    private void processAtomEnded(long j) throws ParserException {
        while (!this.containerAtoms.isEmpty() && this.containerAtoms.peek().endPosition == j) {
            Atom.ContainerAtom pop = this.containerAtoms.pop();
            if (pop.type == 1836019574) {
                processMoovAtom(pop);
                this.containerAtoms.clear();
                this.parserState = 2;
            } else if (!this.containerAtoms.isEmpty()) {
                this.containerAtoms.peek().add(pop);
            }
        }
        if (this.parserState != 2) {
            enterReadingAtomHeaderState();
        }
    }

    public static boolean processFtypAtom(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(8);
        if (parsableByteArray.readInt() == 1903435808) {
            return true;
        }
        parsableByteArray.skipBytes(4);
        while (parsableByteArray.bytesLeft() > 0) {
            if (parsableByteArray.readInt() == 1903435808) {
                return true;
            }
        }
        return false;
    }

    private void processMoovAtom(Atom.ContainerAtom containerAtom) throws ParserException {
        Metadata metadata;
        Format format;
        ArrayList arrayList = new ArrayList();
        GaplessInfoHolder gaplessInfoHolder = new GaplessInfoHolder();
        Atom.LeafAtom leafAtomOfType = containerAtom.getLeafAtomOfType(Atom.TYPE_udta);
        Metadata metadata2 = null;
        if (leafAtomOfType != null) {
            Metadata parseUdta = AtomParsers.parseUdta(leafAtomOfType, this.isQuickTime);
            metadata = parseUdta;
            if (parseUdta != null) {
                gaplessInfoHolder.setFromMetadata(parseUdta);
                metadata = parseUdta;
            }
        } else {
            metadata = null;
        }
        Atom.ContainerAtom containerAtomOfType = containerAtom.getContainerAtomOfType(1835365473);
        if (containerAtomOfType != null) {
            metadata2 = AtomParsers.parseMdtaFromMeta(containerAtomOfType);
        }
        ArrayList<TrackSampleTable> trackSampleTables = getTrackSampleTables(containerAtom, gaplessInfoHolder, (this.flags & 1) != 0);
        int size = trackSampleTables.size();
        long j = C0463C.TIME_UNSET;
        int i = -1;
        for (int i2 = 0; i2 < size; i2++) {
            TrackSampleTable trackSampleTable = trackSampleTables.get(i2);
            Track track = trackSampleTable.track;
            long j2 = track.durationUs;
            if (j2 == C0463C.TIME_UNSET) {
                j2 = trackSampleTable.durationUs;
            }
            j = Math.max(j, j2);
            Mp4Track mp4Track = new Mp4Track(track, trackSampleTable, this.extractorOutput.track(i2, track.type));
            Format copyWithMaxInputSize = track.format.copyWithMaxInputSize(trackSampleTable.maximumSize + 30);
            if (track.type != 2 || j2 <= 0) {
                format = copyWithMaxInputSize;
            } else {
                int i3 = trackSampleTable.sampleCount;
                format = copyWithMaxInputSize;
                if (i3 > 1) {
                    format = copyWithMaxInputSize.copyWithFrameRate(i3 / (((float) j2) / 1000000.0f));
                }
            }
            mp4Track.trackOutput.format(MetadataUtil.getFormatWithMetadata(track.type, format, metadata, metadata2, gaplessInfoHolder));
            if (track.type == 2) {
                i = i;
                if (i == -1) {
                    i = arrayList.size();
                }
            } else {
                i = i;
            }
            arrayList.add(mp4Track);
        }
        this.firstVideoTrackIndex = i;
        this.durationUs = j;
        this.tracks = (Mp4Track[]) arrayList.toArray(new Mp4Track[0]);
        this.accumulatedSampleSizes = calculateAccumulatedSampleSizes(this.tracks);
        this.extractorOutput.endTracks();
        this.extractorOutput.seekMap(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v55, types: [long] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3, types: [long] */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean readAtomHeader(androidx.media2.exoplayer.external.extractor.ExtractorInput r8) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 426
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.mp4.Mp4Extractor.readAtomHeader(androidx.media2.exoplayer.external.extractor.ExtractorInput):boolean");
    }

    private boolean readAtomPayload(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException, InterruptedException {
        boolean z;
        long j = this.atomSize - this.atomHeaderBytesRead;
        long position = extractorInput.getPosition();
        ParsableByteArray parsableByteArray = this.atomData;
        boolean z2 = true;
        if (parsableByteArray != null) {
            extractorInput.readFully(parsableByteArray.data, this.atomHeaderBytesRead, (int) j);
            if (this.atomType == 1718909296) {
                this.isQuickTime = processFtypAtom(this.atomData);
            } else if (!this.containerAtoms.isEmpty()) {
                this.containerAtoms.peek().add(new Atom.LeafAtom(this.atomType, this.atomData));
            }
        } else if (j < 262144) {
            extractorInput.skipFully((int) j);
        } else {
            positionHolder.position = extractorInput.getPosition() + j;
            z = true;
            processAtomEnded(position + j);
            if (z || this.parserState == 2) {
                z2 = false;
            }
            return z2;
        }
        z = false;
        processAtomEnded(position + j);
        if (z) {
        }
        z2 = false;
        return z2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* JADX WARN: Type inference failed for: r18v2, types: [long] */
    /* JADX WARN: Type inference failed for: r18v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int readSample(androidx.media2.exoplayer.external.extractor.ExtractorInput r9, androidx.media2.exoplayer.external.extractor.PositionHolder r10) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 573
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.mp4.Mp4Extractor.readSample(androidx.media2.exoplayer.external.extractor.ExtractorInput, androidx.media2.exoplayer.external.extractor.PositionHolder):int");
    }

    public static boolean shouldParseContainerAtom(int i) {
        return i == 1836019574 || i == 1953653099 || i == 1835297121 || i == 1835626086 || i == 1937007212 || i == 1701082227 || i == 1835365473;
    }

    public static boolean shouldParseLeafAtom(int i) {
        return i == 1835296868 || i == 1836476516 || i == 1751411826 || i == 1937011556 || i == 1937011827 || i == 1937011571 || i == 1668576371 || i == 1701606260 || i == 1937011555 || i == 1937011578 || i == 1937013298 || i == 1937007471 || i == 1668232756 || i == 1953196132 || i == 1718909296 || i == 1969517665 || i == 1801812339 || i == 1768715124;
    }

    private void updateSampleIndices(long j) {
        Mp4Track[] mp4TrackArr;
        for (Mp4Track mp4Track : this.tracks) {
            TrackSampleTable trackSampleTable = mp4Track.sampleTable;
            int indexOfEarlierOrEqualSynchronizationSample = trackSampleTable.getIndexOfEarlierOrEqualSynchronizationSample(j);
            int i = indexOfEarlierOrEqualSynchronizationSample;
            if (indexOfEarlierOrEqualSynchronizationSample == -1) {
                i = trackSampleTable.getIndexOfLaterOrEqualSynchronizationSample(j);
            }
            mp4Track.sampleIndex = i;
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.SeekMap
    public long getDurationUs() {
        return this.durationUs;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0129 A[EDGE_INSN: B:38:0x0129->B:32:0x0129 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r0v47, types: [long[]] */
    /* JADX WARN: Type inference failed for: r0v50, types: [long[]] */
    /* JADX WARN: Type inference failed for: r0v51 */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r11v2, types: [long] */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r11v8 */
    /* JADX WARN: Type inference failed for: r16v2, types: [long] */
    /* JADX WARN: Type inference failed for: r22v1 */
    /* JADX WARN: Type inference failed for: r22v10 */
    /* JADX WARN: Type inference failed for: r22v3 */
    /* JADX WARN: Type inference failed for: r22v4, types: [long] */
    /* JADX WARN: Type inference failed for: r22v5 */
    /* JADX WARN: Type inference failed for: r22v6 */
    /* JADX WARN: Type inference failed for: r22v7 */
    /* JADX WARN: Type inference failed for: r22v8 */
    /* JADX WARN: Type inference failed for: r22v9 */
    /* JADX WARN: Unknown variable types count: 6 */
    @Override // androidx.media2.exoplayer.external.extractor.SeekMap
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public androidx.media2.exoplayer.external.extractor.SeekMap.SeekPoints getSeekPoints(long r11) {
        /*
            Method dump skipped, instructions count: 346
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.mp4.Mp4Extractor.getSeekPoints(long):androidx.media2.exoplayer.external.extractor.SeekMap$SeekPoints");
    }

    @Override // androidx.media2.exoplayer.external.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        this.extractorOutput = extractorOutput;
    }

    @Override // androidx.media2.exoplayer.external.extractor.SeekMap
    public boolean isSeekable() {
        return true;
    }

    @Override // androidx.media2.exoplayer.external.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException, InterruptedException {
        while (true) {
            int i = this.parserState;
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        return readSample(extractorInput, positionHolder);
                    }
                    throw new IllegalStateException();
                } else if (readAtomPayload(extractorInput, positionHolder)) {
                    return 1;
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
        this.containerAtoms.clear();
        this.atomHeaderBytesRead = 0;
        this.sampleTrackIndex = -1;
        this.sampleBytesWritten = 0;
        this.sampleCurrentNalBytesRemaining = 0;
        this.isAc4HeaderRequired = false;
        if (j == 0) {
            enterReadingAtomHeaderState();
        } else if (this.tracks != null) {
            updateSampleIndices(j2);
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.Extractor
    public boolean sniff(ExtractorInput extractorInput) throws IOException, InterruptedException {
        return Sniffer.sniffUnfragmented(extractorInput);
    }
}
