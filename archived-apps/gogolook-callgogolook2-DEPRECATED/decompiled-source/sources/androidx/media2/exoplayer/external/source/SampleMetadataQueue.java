package androidx.media2.exoplayer.external.source;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.FormatHolder;
import androidx.media2.exoplayer.external.decoder.DecoderInputBuffer;
import androidx.media2.exoplayer.external.extractor.TrackOutput;
import androidx.media2.exoplayer.external.util.Assertions;
import androidx.media2.exoplayer.external.util.Util;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/SampleMetadataQueue.class */
public final class SampleMetadataQueue {
    public static final int SAMPLE_CAPACITY_INCREMENT = 1000;
    public int absoluteFirstIndex;
    public TrackOutput.CryptoData[] cryptoDatas;
    public int[] flags;
    public Format[] formats;
    public boolean isLastSampleQueued;
    public int length;
    public long[] offsets;
    public int readPosition;
    public int relativeFirstIndex;
    public int[] sizes;
    public int[] sourceIds;
    public long[] timesUs;
    public Format upstreamFormat;
    public int upstreamSourceId;
    public int capacity = 1000;
    public long largestDiscardedTimestampUs = Long.MIN_VALUE;
    public long largestQueuedTimestampUs = Long.MIN_VALUE;
    public boolean upstreamFormatRequired = true;
    public boolean upstreamKeyframeRequired = true;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/SampleMetadataQueue$SampleExtrasHolder.class */
    public static final class SampleExtrasHolder {
        public TrackOutput.CryptoData cryptoData;
        public long offset;
        public int size;
    }

    public SampleMetadataQueue() {
        int i = this.capacity;
        this.sourceIds = new int[i];
        this.offsets = new long[i];
        this.timesUs = new long[i];
        this.flags = new int[i];
        this.sizes = new int[i];
        this.cryptoDatas = new TrackOutput.CryptoData[i];
        this.formats = new Format[i];
    }

    private long discardSamples(int i) {
        int i2;
        this.largestDiscardedTimestampUs = Math.max(this.largestDiscardedTimestampUs, getLargestTimestamp(i));
        this.length -= i;
        this.absoluteFirstIndex += i;
        this.relativeFirstIndex += i;
        int i3 = this.relativeFirstIndex;
        int i4 = this.capacity;
        if (i3 >= i4) {
            this.relativeFirstIndex = i3 - i4;
        }
        this.readPosition -= i;
        if (this.readPosition < 0) {
            this.readPosition = 0;
        }
        if (this.length != 0) {
            return this.offsets[this.relativeFirstIndex];
        }
        int i5 = this.relativeFirstIndex;
        int i6 = i5;
        if (i5 == 0) {
            i6 = this.capacity;
        }
        return this.offsets[i6 - 1] + this.sizes[i2];
    }

    private int findSampleBefore(int i, int i2, long j, boolean z) {
        int i3 = i;
        int i4 = -1;
        for (int i5 = 0; i5 < i2 && this.timesUs[i3] <= j; i5++) {
            if (!z || (this.flags[i3] & 1) != 0) {
                i4 = i5;
            }
            int i6 = i3 + 1;
            i3 = i6;
            if (i6 == this.capacity) {
                i3 = 0;
            }
        }
        return i4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [long] */
    /* JADX WARN: Type inference failed for: r7v2, types: [long] */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private long getLargestTimestamp(int r6) {
        /*
            r5 = this;
            r0 = -9223372036854775808
            r7 = r0
            r0 = r6
            if (r0 != 0) goto L_0x000c
            r0 = -9223372036854775808
            return r0
        L_0x000c:
            r0 = r5
            r1 = r6
            r2 = 1
            int r1 = r1 - r2
            int r0 = r0.getRelativeIndex(r1)
            r9 = r0
            r0 = 0
            r10 = r0
        L_0x0018:
            r0 = r7
            r11 = r0
            r0 = r10
            r1 = r6
            if (r0 >= r1) goto L_0x005d
            r0 = r7
            r1 = r5
            long[] r1 = r1.timesUs
            r2 = r9
            r1 = r1[r2]
            long r0 = java.lang.Math.max(r0, r1)
            r7 = r0
            r0 = r5
            int[] r0 = r0.flags
            r1 = r9
            r0 = r0[r1]
            r1 = 1
            r0 = r0 & r1
            if (r0 == 0) goto L_0x003f
            r0 = r7
            r11 = r0
            goto L_0x005d
        L_0x003f:
            r0 = r9
            r1 = 1
            int r0 = r0 - r1
            r13 = r0
            r0 = r13
            r9 = r0
            r0 = r13
            r1 = -1
            if (r0 != r1) goto L_0x0057
            r0 = r5
            int r0 = r0.capacity
            r1 = 1
            int r0 = r0 - r1
            r9 = r0
        L_0x0057:
            int r10 = r10 + 1
            goto L_0x0018
        L_0x005d:
            r0 = r11
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.SampleMetadataQueue.getLargestTimestamp(int):long");
    }

    private int getRelativeIndex(int i) {
        int i2 = this.relativeFirstIndex + i;
        int i3 = this.capacity;
        if (i2 >= i3) {
            i2 -= i3;
        }
        return i2;
    }

    public int advanceTo(long j, boolean z, boolean z2) {
        synchronized (this) {
            int relativeIndex = getRelativeIndex(this.readPosition);
            if (!hasNextSample() || j < this.timesUs[relativeIndex] || (j > this.largestQueuedTimestampUs && !z2)) {
                return -1;
            }
            int findSampleBefore = findSampleBefore(relativeIndex, this.length - this.readPosition, j, z);
            if (findSampleBefore == -1) {
                return -1;
            }
            this.readPosition += findSampleBefore;
            return findSampleBefore;
        }
    }

    public int advanceToEnd() {
        int i;
        int i2;
        synchronized (this) {
            i = this.length;
            i2 = this.readPosition;
            this.readPosition = this.length;
        }
        return i - i2;
    }

    public boolean attemptSplice(long j) {
        synchronized (this) {
            boolean z = false;
            if (this.length == 0) {
                if (j > this.largestDiscardedTimestampUs) {
                    z = true;
                }
                return z;
            } else if (Math.max(this.largestDiscardedTimestampUs, getLargestTimestamp(this.readPosition)) >= j) {
                return false;
            } else {
                int i = this.length;
                int relativeIndex = getRelativeIndex(this.length - 1);
                while (i > this.readPosition && this.timesUs[relativeIndex] >= j) {
                    int i2 = i - 1;
                    int i3 = relativeIndex - 1;
                    i = i2;
                    relativeIndex = i3;
                    if (i3 == -1) {
                        relativeIndex = this.capacity - 1;
                        i = i2;
                    }
                }
                discardUpstreamSamples(this.absoluteFirstIndex + i);
                return true;
            }
        }
    }

    public void commitSample(long j, int i, long j2, int i2, TrackOutput.CryptoData cryptoData) {
        synchronized (this) {
            if (this.upstreamKeyframeRequired) {
                if ((i & 1) != 0) {
                    this.upstreamKeyframeRequired = false;
                } else {
                    return;
                }
            }
            Assertions.checkState(!this.upstreamFormatRequired);
            this.isLastSampleQueued = (536870912 & i) != 0;
            this.largestQueuedTimestampUs = Math.max(this.largestQueuedTimestampUs, j);
            int relativeIndex = getRelativeIndex(this.length);
            this.timesUs[relativeIndex] = j;
            this.offsets[relativeIndex] = j2;
            this.sizes[relativeIndex] = i2;
            this.flags[relativeIndex] = i;
            this.cryptoDatas[relativeIndex] = cryptoData;
            this.formats[relativeIndex] = this.upstreamFormat;
            this.sourceIds[relativeIndex] = this.upstreamSourceId;
            this.length++;
            if (this.length == this.capacity) {
                int i3 = this.capacity + 1000;
                int[] iArr = new int[i3];
                long[] jArr = new long[i3];
                long[] jArr2 = new long[i3];
                int[] iArr2 = new int[i3];
                int[] iArr3 = new int[i3];
                TrackOutput.CryptoData[] cryptoDataArr = new TrackOutput.CryptoData[i3];
                Format[] formatArr = new Format[i3];
                int i4 = this.capacity - this.relativeFirstIndex;
                System.arraycopy(this.offsets, this.relativeFirstIndex, jArr, 0, i4);
                System.arraycopy(this.timesUs, this.relativeFirstIndex, jArr2, 0, i4);
                System.arraycopy(this.flags, this.relativeFirstIndex, iArr2, 0, i4);
                System.arraycopy(this.sizes, this.relativeFirstIndex, iArr3, 0, i4);
                System.arraycopy(this.cryptoDatas, this.relativeFirstIndex, cryptoDataArr, 0, i4);
                System.arraycopy(this.formats, this.relativeFirstIndex, formatArr, 0, i4);
                System.arraycopy(this.sourceIds, this.relativeFirstIndex, iArr, 0, i4);
                int i5 = this.relativeFirstIndex;
                System.arraycopy(this.offsets, 0, jArr, i4, i5);
                System.arraycopy(this.timesUs, 0, jArr2, i4, i5);
                System.arraycopy(this.flags, 0, iArr2, i4, i5);
                System.arraycopy(this.sizes, 0, iArr3, i4, i5);
                System.arraycopy(this.cryptoDatas, 0, cryptoDataArr, i4, i5);
                System.arraycopy(this.formats, 0, formatArr, i4, i5);
                System.arraycopy(this.sourceIds, 0, iArr, i4, i5);
                this.offsets = jArr;
                this.timesUs = jArr2;
                this.flags = iArr2;
                this.sizes = iArr3;
                this.cryptoDatas = cryptoDataArr;
                this.formats = formatArr;
                this.sourceIds = iArr;
                this.relativeFirstIndex = 0;
                this.length = this.capacity;
                this.capacity = i3;
            }
        }
    }

    public long discardTo(long j, boolean z, boolean z2) {
        synchronized (this) {
            if (this.length != 0 && j >= this.timesUs[this.relativeFirstIndex]) {
                int findSampleBefore = findSampleBefore(this.relativeFirstIndex, (!z2 || this.readPosition == this.length) ? this.length : this.readPosition + 1, j, z);
                if (findSampleBefore == -1) {
                    return -1L;
                }
                return discardSamples(findSampleBefore);
            }
            return -1L;
        }
    }

    public long discardToEnd() {
        synchronized (this) {
            if (this.length == 0) {
                return -1L;
            }
            return discardSamples(this.length);
        }
    }

    public long discardToRead() {
        synchronized (this) {
            if (this.readPosition == 0) {
                return -1L;
            }
            return discardSamples(this.readPosition);
        }
    }

    public long discardUpstreamSamples(int i) {
        int relativeIndex;
        int writeIndex = getWriteIndex() - i;
        Assertions.checkArgument(writeIndex >= 0 && writeIndex <= this.length - this.readPosition);
        this.length -= writeIndex;
        this.largestQueuedTimestampUs = Math.max(this.largestDiscardedTimestampUs, getLargestTimestamp(this.length));
        boolean z = false;
        if (writeIndex == 0) {
            z = false;
            if (this.isLastSampleQueued) {
                z = true;
            }
        }
        this.isLastSampleQueued = z;
        int i2 = this.length;
        if (i2 == 0) {
            return 0L;
        }
        return this.offsets[getRelativeIndex(i2 - 1)] + this.sizes[relativeIndex];
    }

    public boolean format(Format format) {
        synchronized (this) {
            if (format == null) {
                this.upstreamFormatRequired = true;
                return false;
            }
            this.upstreamFormatRequired = false;
            if (Util.areEqual(format, this.upstreamFormat)) {
                return false;
            }
            this.upstreamFormat = format;
            return true;
        }
    }

    public int getFirstIndex() {
        return this.absoluteFirstIndex;
    }

    public long getFirstTimestampUs() {
        long j;
        synchronized (this) {
            j = this.length == 0 ? Long.MIN_VALUE : this.timesUs[this.relativeFirstIndex];
        }
        return j;
    }

    public long getLargestQueuedTimestampUs() {
        long j;
        synchronized (this) {
            j = this.largestQueuedTimestampUs;
        }
        return j;
    }

    public int getReadIndex() {
        return this.absoluteFirstIndex + this.readPosition;
    }

    public Format getUpstreamFormat() {
        Format format;
        synchronized (this) {
            format = this.upstreamFormatRequired ? null : this.upstreamFormat;
        }
        return format;
    }

    public int getWriteIndex() {
        return this.absoluteFirstIndex + this.length;
    }

    public boolean hasNextSample() {
        boolean z;
        synchronized (this) {
            z = this.readPosition != this.length;
        }
        return z;
    }

    public boolean isLastSampleQueued() {
        boolean z;
        synchronized (this) {
            z = this.isLastSampleQueued;
        }
        return z;
    }

    public int peekSourceId() {
        return hasNextSample() ? this.sourceIds[getRelativeIndex(this.readPosition)] : this.upstreamSourceId;
    }

    public int read(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, boolean z, boolean z2, Format format, SampleExtrasHolder sampleExtrasHolder) {
        synchronized (this) {
            if (!hasNextSample()) {
                if (!z2 && !this.isLastSampleQueued) {
                    if (this.upstreamFormat == null || (!z && this.upstreamFormat == format)) {
                        return -3;
                    }
                    formatHolder.format = this.upstreamFormat;
                    return -5;
                }
                decoderInputBuffer.setFlags(4);
                return -4;
            }
            int relativeIndex = getRelativeIndex(this.readPosition);
            if (!z && this.formats[relativeIndex] == format) {
                decoderInputBuffer.setFlags(this.flags[relativeIndex]);
                decoderInputBuffer.timeUs = this.timesUs[relativeIndex];
                if (decoderInputBuffer.isFlagsOnly()) {
                    return -4;
                }
                sampleExtrasHolder.size = this.sizes[relativeIndex];
                sampleExtrasHolder.offset = this.offsets[relativeIndex];
                sampleExtrasHolder.cryptoData = this.cryptoDatas[relativeIndex];
                this.readPosition++;
                return -4;
            }
            formatHolder.format = this.formats[relativeIndex];
            return -5;
        }
    }

    public void reset(boolean z) {
        this.length = 0;
        this.absoluteFirstIndex = 0;
        this.relativeFirstIndex = 0;
        this.readPosition = 0;
        this.upstreamKeyframeRequired = true;
        this.largestDiscardedTimestampUs = Long.MIN_VALUE;
        this.largestQueuedTimestampUs = Long.MIN_VALUE;
        this.isLastSampleQueued = false;
        if (z) {
            this.upstreamFormat = null;
            this.upstreamFormatRequired = true;
        }
    }

    public void rewind() {
        synchronized (this) {
            this.readPosition = 0;
        }
    }

    public boolean setReadPosition(int i) {
        synchronized (this) {
            if (this.absoluteFirstIndex > i || i > this.absoluteFirstIndex + this.length) {
                return false;
            }
            this.readPosition = i - this.absoluteFirstIndex;
            return true;
        }
    }

    public void sourceId(int i) {
        this.upstreamSourceId = i;
    }
}
