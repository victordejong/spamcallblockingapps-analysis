package androidx.media2.exoplayer.external.extractor.mp3;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.extractor.MpegAudioHeader;
import androidx.media2.exoplayer.external.extractor.SeekMap;
import androidx.media2.exoplayer.external.extractor.SeekPoint;
import androidx.media2.exoplayer.external.extractor.mp3.Mp3Extractor;
import androidx.media2.exoplayer.external.util.Assertions;
import androidx.media2.exoplayer.external.util.Log;
import androidx.media2.exoplayer.external.util.ParsableByteArray;
import androidx.media2.exoplayer.external.util.Util;
import gogolook.callgogolook2.gson.UserProfile;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp3/XingSeeker.class */
public final class XingSeeker implements Mp3Extractor.Seeker {
    public static final String TAG = "XingSeeker";
    public final long dataEndPosition;
    public final long dataSize;
    public final long dataStartPosition;
    public final long durationUs;
    @Nullable
    public final long[] tableOfContents;
    public final int xingFrameSize;

    public XingSeeker(long j, int i, long j2) {
        this(j, i, j2, -1L, null);
    }

    public XingSeeker(long j, int i, long j2, long j3, @Nullable long[] jArr) {
        this.dataStartPosition = j;
        this.xingFrameSize = i;
        this.durationUs = j2;
        this.tableOfContents = jArr;
        this.dataSize = j3;
        long j4 = -1;
        if (j3 != -1) {
            j4 = j + j3;
        }
        this.dataEndPosition = j4;
    }

    @Nullable
    public static XingSeeker create(long j, long j2, MpegAudioHeader mpegAudioHeader, ParsableByteArray parsableByteArray) {
        int readUnsignedIntToInt;
        int i = mpegAudioHeader.samplesPerFrame;
        int i2 = mpegAudioHeader.sampleRate;
        int readInt = parsableByteArray.readInt();
        if ((readInt & 1) != 1 || (readUnsignedIntToInt = parsableByteArray.readUnsignedIntToInt()) == 0) {
            return null;
        }
        long scaleLargeTimestamp = Util.scaleLargeTimestamp(readUnsignedIntToInt, i * 1000000, i2);
        if ((readInt & 6) != 6) {
            return new XingSeeker(j2, mpegAudioHeader.frameSize, scaleLargeTimestamp);
        }
        long readUnsignedIntToInt2 = parsableByteArray.readUnsignedIntToInt();
        long[] jArr = new long[100];
        for (int i3 = 0; i3 < 100; i3++) {
            jArr[i3] = parsableByteArray.readUnsignedByte();
        }
        if (j != -1) {
            long j3 = j2 + readUnsignedIntToInt2;
            if (j != j3) {
                StringBuilder sb = new StringBuilder(67);
                sb.append("XING data size mismatch: ");
                sb.append(j);
                sb.append(UserProfile.CARD_CATE_SEPARATOR);
                sb.append(j3);
                Log.m37483w(TAG, sb.toString());
            }
        }
        return new XingSeeker(j2, mpegAudioHeader.frameSize, scaleLargeTimestamp, readUnsignedIntToInt2, jArr);
    }

    private long getTimeUsForTableIndex(int i) {
        return (this.durationUs * i) / 100;
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
        long[] jArr;
        if (!isSeekable()) {
            return new SeekMap.SeekPoints(new SeekPoint(0L, this.dataStartPosition + this.xingFrameSize));
        }
        long constrainValue = Util.constrainValue(j, 0L, this.durationUs);
        double d = (constrainValue * 100.0d) / this.durationUs;
        double d2 = 0.0d;
        if (d > 0.0d) {
            if (d >= 100.0d) {
                d2 = 256.0d;
            } else {
                int i = (int) d;
                double d3 = ((long[]) Assertions.checkNotNull(this.tableOfContents))[i];
                d2 = d3 + ((d - i) * ((i == 99 ? 256.0d : jArr[i + 1]) - d3));
            }
        }
        return new SeekMap.SeekPoints(new SeekPoint(constrainValue, this.dataStartPosition + Util.constrainValue(Math.round((d2 / 256.0d) * this.dataSize), this.xingFrameSize, this.dataSize - 1)));
    }

    @Override // androidx.media2.exoplayer.external.extractor.mp3.Mp3Extractor.Seeker
    public long getTimeUs(long j) {
        long j2 = j - this.dataStartPosition;
        if (!isSeekable() || j2 <= this.xingFrameSize) {
            return 0L;
        }
        long[] jArr = (long[]) Assertions.checkNotNull(this.tableOfContents);
        double d = (j2 * 256.0d) / this.dataSize;
        int binarySearchFloor = Util.binarySearchFloor(jArr, (long) d, true, true);
        long timeUsForTableIndex = getTimeUsForTableIndex(binarySearchFloor);
        long j3 = jArr[binarySearchFloor];
        int i = binarySearchFloor + 1;
        long timeUsForTableIndex2 = getTimeUsForTableIndex(i);
        long j4 = binarySearchFloor == 99 ? 256L : jArr[i];
        return timeUsForTableIndex + Math.round((j3 == j4 ? 0.0d : (d - j3) / (j4 - j3)) * (timeUsForTableIndex2 - timeUsForTableIndex));
    }

    @Override // androidx.media2.exoplayer.external.extractor.SeekMap
    public boolean isSeekable() {
        return this.tableOfContents != null;
    }
}
