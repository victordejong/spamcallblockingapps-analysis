package androidx.media2.exoplayer.external.source.chunk;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.extractor.DummyTrackOutput;
import androidx.media2.exoplayer.external.extractor.TrackOutput;
import androidx.media2.exoplayer.external.source.SampleQueue;
import androidx.media2.exoplayer.external.source.chunk.ChunkExtractorWrapper;
import androidx.media2.exoplayer.external.util.Log;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/chunk/BaseMediaChunkOutput.class */
public final class BaseMediaChunkOutput implements ChunkExtractorWrapper.TrackOutputProvider {
    public static final String TAG = "BaseMediaChunkOutput";
    public final SampleQueue[] sampleQueues;
    public final int[] trackTypes;

    public BaseMediaChunkOutput(int[] iArr, SampleQueue[] sampleQueueArr) {
        this.trackTypes = iArr;
        this.sampleQueues = sampleQueueArr;
    }

    public int[] getWriteIndices() {
        int[] iArr = new int[this.sampleQueues.length];
        int i = 0;
        while (true) {
            SampleQueue[] sampleQueueArr = this.sampleQueues;
            if (i >= sampleQueueArr.length) {
                return iArr;
            }
            if (sampleQueueArr[i] != null) {
                iArr[i] = sampleQueueArr[i].getWriteIndex();
            }
            i++;
        }
    }

    public void setSampleOffsetUs(long j) {
        SampleQueue[] sampleQueueArr;
        for (SampleQueue sampleQueue : this.sampleQueues) {
            if (sampleQueue != null) {
                sampleQueue.setSampleOffsetUs(j);
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.source.chunk.ChunkExtractorWrapper.TrackOutputProvider
    public TrackOutput track(int i, int i2) {
        int i3 = 0;
        while (true) {
            int[] iArr = this.trackTypes;
            if (i3 >= iArr.length) {
                StringBuilder sb = new StringBuilder(36);
                sb.append("Unmatched track of type: ");
                sb.append(i2);
                Log.m37487e(TAG, sb.toString());
                return new DummyTrackOutput();
            } else if (i2 == iArr[i3]) {
                return this.sampleQueues[i3];
            } else {
                i3++;
            }
        }
    }
}
