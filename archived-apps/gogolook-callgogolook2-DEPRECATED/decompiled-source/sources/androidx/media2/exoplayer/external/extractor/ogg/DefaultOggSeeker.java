package androidx.media2.exoplayer.external.extractor.ogg;

import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.media2.exoplayer.external.extractor.ExtractorInput;
import androidx.media2.exoplayer.external.extractor.SeekMap;
import androidx.media2.exoplayer.external.extractor.SeekPoint;
import androidx.media2.exoplayer.external.util.Assertions;
import java.io.EOFException;
import java.io.IOException;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker.class */
public final class DefaultOggSeeker implements OggSeeker {
    public static final int DEFAULT_OFFSET = 30000;
    @VisibleForTesting
    public static final int MATCH_BYTE_RANGE = 100000;
    @VisibleForTesting
    public static final int MATCH_RANGE = 72000;
    public static final int STATE_IDLE = 3;
    public static final int STATE_READ_LAST_PAGE = 1;
    public static final int STATE_SEEK = 2;
    public static final int STATE_SEEK_TO_END = 0;
    public long end;
    public long endGranule;
    public final long endPosition;
    public final OggPageHeader pageHeader = new OggPageHeader();
    public long positionBeforeSeekToEnd;
    public long start;
    public long startGranule;
    public final long startPosition;
    public int state;
    public final StreamReader streamReader;
    public long targetGranule;
    public long totalGranules;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker$OggSeekMap.class */
    public class OggSeekMap implements SeekMap {
        public OggSeekMap() {
        }

        @Override // androidx.media2.exoplayer.external.extractor.SeekMap
        public long getDurationUs() {
            return DefaultOggSeeker.this.streamReader.convertGranuleToTime(DefaultOggSeeker.this.totalGranules);
        }

        @Override // androidx.media2.exoplayer.external.extractor.SeekMap
        public SeekMap.SeekPoints getSeekPoints(long j) {
            if (j == 0) {
                return new SeekMap.SeekPoints(new SeekPoint(0L, DefaultOggSeeker.this.startPosition));
            }
            long convertTimeToGranule = DefaultOggSeeker.this.streamReader.convertTimeToGranule(j);
            DefaultOggSeeker defaultOggSeeker = DefaultOggSeeker.this;
            return new SeekMap.SeekPoints(new SeekPoint(j, defaultOggSeeker.getEstimatedPosition(defaultOggSeeker.startPosition, convertTimeToGranule, 30000L)));
        }

        @Override // androidx.media2.exoplayer.external.extractor.SeekMap
        public boolean isSeekable() {
            return true;
        }
    }

    public DefaultOggSeeker(long j, long j2, StreamReader streamReader, long j3, long j4, boolean z) {
        Assertions.checkArgument(j >= 0 && j2 > j);
        this.streamReader = streamReader;
        this.startPosition = j;
        this.endPosition = j2;
        if (j3 == j2 - j || z) {
            this.totalGranules = j4;
            this.state = 3;
            return;
        }
        this.state = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r12v3, types: [long] */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long getEstimatedPosition(long r10, long r12, long r14) {
        /*
            r9 = this;
            r0 = r9
            long r0 = r0.endPosition
            r16 = r0
            r0 = r9
            long r0 = r0.startPosition
            r18 = r0
            r0 = r10
            r1 = r12
            r2 = r16
            r3 = r18
            long r2 = r2 - r3
            long r1 = r1 * r2
            r2 = r9
            long r2 = r2.totalGranules
            long r1 = r1 / r2
            r2 = r14
            long r1 = r1 - r2
            long r0 = r0 + r1
            r12 = r0
            r0 = r12
            r10 = r0
            r0 = r12
            r1 = r18
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x002a
            r0 = r18
            r10 = r0
        L_0x002a:
            r0 = r9
            long r0 = r0.endPosition
            r14 = r0
            r0 = r10
            r12 = r0
            r0 = r10
            r1 = r14
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x003e
            r0 = r14
            r1 = 1
            long r0 = r0 - r1
            r12 = r0
        L_0x003e:
            r0 = r12
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.ogg.DefaultOggSeeker.getEstimatedPosition(long, long, long):long");
    }

    @Override // androidx.media2.exoplayer.external.extractor.ogg.OggSeeker
    public OggSeekMap createSeekMap() {
        return this.totalGranules != 0 ? new OggSeekMap() : null;
    }

    @VisibleForTesting
    public long getNextSeekPosition(long j, ExtractorInput extractorInput) throws IOException, InterruptedException {
        long j2 = 2;
        if (this.start == this.end) {
            return -(this.startGranule + 2);
        }
        long position = extractorInput.getPosition();
        if (!skipToNextPage(extractorInput, this.end)) {
            long j3 = this.start;
            if (j3 != position) {
                return j3;
            }
            throw new IOException("No ogg page can be found.");
        }
        this.pageHeader.populate(extractorInput, false);
        extractorInput.resetPeekPosition();
        OggPageHeader oggPageHeader = this.pageHeader;
        long j4 = j - oggPageHeader.granulePosition;
        int i = oggPageHeader.headerSize + oggPageHeader.bodySize;
        int i2 = (j4 > 0L ? 1 : (j4 == 0L ? 0 : -1));
        if (i2 < 0 || j4 > 72000) {
            if (i2 < 0) {
                this.end = position;
                this.endGranule = this.pageHeader.granulePosition;
            } else {
                long j5 = i;
                this.start = extractorInput.getPosition() + j5;
                this.startGranule = this.pageHeader.granulePosition;
                if ((this.end - this.start) + j5 < 100000) {
                    extractorInput.skipFully(i);
                    return -(this.startGranule + 2);
                }
            }
            long j6 = this.end;
            long j7 = this.start;
            if (j6 - j7 < 100000) {
                this.end = j7;
                return j7;
            }
            long j8 = i;
            if (i2 > 0) {
                j2 = 1;
            }
            long position2 = extractorInput.getPosition();
            long j9 = this.end;
            long j10 = this.start;
            return Math.min(Math.max((position2 - (j8 * j2)) + ((j4 * (j9 - j10)) / (this.endGranule - this.startGranule)), j10), this.end - 1);
        }
        extractorInput.skipFully(i);
        return -(this.pageHeader.granulePosition + 2);
    }

    @Override // androidx.media2.exoplayer.external.extractor.ogg.OggSeeker
    public long read(ExtractorInput extractorInput) throws IOException, InterruptedException {
        int i = this.state;
        if (i == 0) {
            this.positionBeforeSeekToEnd = extractorInput.getPosition();
            this.state = 1;
            long j = this.endPosition - 65307;
            if (j > this.positionBeforeSeekToEnd) {
                return j;
            }
        } else if (i != 1) {
            if (i == 2) {
                long j2 = this.targetGranule;
                long j3 = 0;
                if (j2 != 0) {
                    long nextSeekPosition = getNextSeekPosition(j2, extractorInput);
                    if (nextSeekPosition >= 0) {
                        return nextSeekPosition;
                    }
                    j3 = skipToPageOfGranule(extractorInput, this.targetGranule, -(nextSeekPosition + 2));
                }
                this.state = 3;
                return -(j3 + 2);
            } else if (i == 3) {
                return -1L;
            } else {
                throw new IllegalStateException();
            }
        }
        this.totalGranules = readGranuleOfLastPage(extractorInput);
        this.state = 3;
        return this.positionBeforeSeekToEnd;
    }

    @VisibleForTesting
    public long readGranuleOfLastPage(ExtractorInput extractorInput) throws IOException, InterruptedException {
        skipToNextPage(extractorInput);
        this.pageHeader.reset();
        while ((this.pageHeader.type & 4) != 4 && extractorInput.getPosition() < this.endPosition) {
            this.pageHeader.populate(extractorInput, false);
            OggPageHeader oggPageHeader = this.pageHeader;
            extractorInput.skipFully(oggPageHeader.headerSize + oggPageHeader.bodySize);
        }
        return this.pageHeader.granulePosition;
    }

    @VisibleForTesting
    public void resetSeeking() {
        this.start = this.startPosition;
        this.end = this.endPosition;
        this.startGranule = 0L;
        this.endGranule = this.totalGranules;
    }

    @VisibleForTesting
    public void skipToNextPage(ExtractorInput extractorInput) throws IOException, InterruptedException {
        if (!skipToNextPage(extractorInput, this.endPosition)) {
            throw new EOFException();
        }
    }

    @VisibleForTesting
    public boolean skipToNextPage(ExtractorInput extractorInput, long j) throws IOException, InterruptedException {
        int i;
        long min = Math.min(j + 3, this.endPosition);
        byte[] bArr = new byte[2048];
        int length = bArr.length;
        while (true) {
            int i2 = 0;
            if (extractorInput.getPosition() + length > min) {
                length = (int) (min - extractorInput.getPosition());
                if (length < 4) {
                    return false;
                }
            }
            extractorInput.peekFully(bArr, 0, length, false);
            while (true) {
                i = length - 3;
                if (i2 < i) {
                    if (bArr[i2] == 79 && bArr[i2 + 1] == 103 && bArr[i2 + 2] == 103 && bArr[i2 + 3] == 83) {
                        extractorInput.skipFully(i2);
                        return true;
                    }
                    i2++;
                }
            }
            extractorInput.skipFully(i);
        }
    }

    @VisibleForTesting
    public long skipToPageOfGranule(ExtractorInput extractorInput, long j, long j2) throws IOException, InterruptedException {
        this.pageHeader.populate(extractorInput, false);
        while (true) {
            OggPageHeader oggPageHeader = this.pageHeader;
            if (oggPageHeader.granulePosition < j) {
                extractorInput.skipFully(oggPageHeader.headerSize + oggPageHeader.bodySize);
                OggPageHeader oggPageHeader2 = this.pageHeader;
                j2 = oggPageHeader2.granulePosition;
                oggPageHeader2.populate(extractorInput, false);
            } else {
                extractorInput.resetPeekPosition();
                return j2;
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.ogg.OggSeeker
    public long startSeek(long j) {
        int i = this.state;
        Assertions.checkArgument(i == 3 || i == 2);
        long j2 = 0;
        if (j != 0) {
            j2 = this.streamReader.convertTimeToGranule(j);
        }
        this.targetGranule = j2;
        this.state = 2;
        resetSeeking();
        return this.targetGranule;
    }
}
