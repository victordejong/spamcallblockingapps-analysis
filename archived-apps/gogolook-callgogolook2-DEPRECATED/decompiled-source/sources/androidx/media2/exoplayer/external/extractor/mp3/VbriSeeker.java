package androidx.media2.exoplayer.external.extractor.mp3;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.extractor.SeekMap;
import androidx.media2.exoplayer.external.extractor.SeekPoint;
import androidx.media2.exoplayer.external.extractor.mp3.Mp3Extractor;
import androidx.media2.exoplayer.external.util.Util;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp3/VbriSeeker.class */
public final class VbriSeeker implements Mp3Extractor.Seeker {
    public static final String TAG = "VbriSeeker";
    public final long dataEndPosition;
    public final long durationUs;
    public final long[] positions;
    public final long[] timesUs;

    public VbriSeeker(long[] jArr, long[] jArr2, long j, long j2) {
        this.timesUs = jArr;
        this.positions = jArr2;
        this.durationUs = j;
        this.dataEndPosition = j2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v33, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v2, types: [long] */
    /* JADX WARN: Type inference failed for: r17v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.media2.exoplayer.external.extractor.mp3.VbriSeeker create(long r9, long r11, androidx.media2.exoplayer.external.extractor.MpegAudioHeader r13, androidx.media2.exoplayer.external.util.ParsableByteArray r14) {
        /*
            Method dump skipped, instructions count: 325
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.mp3.VbriSeeker.create(long, long, androidx.media2.exoplayer.external.extractor.MpegAudioHeader, androidx.media2.exoplayer.external.util.ParsableByteArray):androidx.media2.exoplayer.external.extractor.mp3.VbriSeeker");
    }

    @Override // androidx.media2.exoplayer.external.extractor.mp3.Mp3Extractor.Seeker
    public long getDataEndPosition() {
        return this.dataEndPosition;
    }

    @Override // androidx.media2.exoplayer.external.extractor.SeekMap
    public long getDurationUs() {
        return this.durationUs;
    }

    @Override // androidx.media2.exoplayer.external.extractor.SeekMap
    public SeekMap.SeekPoints getSeekPoints(long j) {
        int binarySearchFloor = Util.binarySearchFloor(this.timesUs, j, true, true);
        SeekPoint seekPoint = new SeekPoint(this.timesUs[binarySearchFloor], this.positions[binarySearchFloor]);
        if (seekPoint.timeUs < j) {
            long[] jArr = this.timesUs;
            if (binarySearchFloor != jArr.length - 1) {
                int i = binarySearchFloor + 1;
                return new SeekMap.SeekPoints(seekPoint, new SeekPoint(jArr[i], this.positions[i]));
            }
        }
        return new SeekMap.SeekPoints(seekPoint);
    }

    @Override // androidx.media2.exoplayer.external.extractor.mp3.Mp3Extractor.Seeker
    public long getTimeUs(long j) {
        return this.timesUs[Util.binarySearchFloor(this.positions, j, true, true)];
    }

    @Override // androidx.media2.exoplayer.external.extractor.SeekMap
    public boolean isSeekable() {
        return true;
    }
}
