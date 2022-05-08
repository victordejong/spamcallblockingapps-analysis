package androidx.media2.exoplayer.external.source;

import android.util.Pair;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.Timeline;
import androidx.media2.exoplayer.external.util.Assertions;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline.class */
public abstract class AbstractConcatenatedTimeline extends Timeline {
    public final int childCount;
    public final boolean isAtomic;
    public final ShuffleOrder shuffleOrder;

    public AbstractConcatenatedTimeline(boolean z, ShuffleOrder shuffleOrder) {
        this.isAtomic = z;
        this.shuffleOrder = shuffleOrder;
        this.childCount = shuffleOrder.getLength();
    }

    public static Object getChildPeriodUidFromConcatenatedUid(Object obj) {
        return ((Pair) obj).second;
    }

    public static Object getChildTimelineUidFromConcatenatedUid(Object obj) {
        return ((Pair) obj).first;
    }

    public static Object getConcatenatedUid(Object obj, Object obj2) {
        return Pair.create(obj, obj2);
    }

    private int getNextChildIndex(int i, boolean z) {
        return z ? this.shuffleOrder.getNextIndex(i) : i < this.childCount - 1 ? i + 1 : -1;
    }

    private int getPreviousChildIndex(int i, boolean z) {
        return z ? this.shuffleOrder.getPreviousIndex(i) : i > 0 ? i - 1 : -1;
    }

    public abstract int getChildIndexByChildUid(Object obj);

    public abstract int getChildIndexByPeriodIndex(int i);

    public abstract int getChildIndexByWindowIndex(int i);

    public abstract Object getChildUidByChildIndex(int i);

    public abstract int getFirstPeriodIndexByChildIndex(int i);

    @Override // androidx.media2.exoplayer.external.Timeline
    public int getFirstWindowIndex(boolean z) {
        if (this.childCount == 0) {
            return -1;
        }
        int i = 0;
        if (this.isAtomic) {
            z = false;
        }
        if (z) {
            i = this.shuffleOrder.getFirstIndex();
        }
        while (getTimelineByChildIndex(i).isEmpty()) {
            int nextChildIndex = getNextChildIndex(i, z);
            i = nextChildIndex;
            if (nextChildIndex == -1) {
                return -1;
            }
        }
        return getFirstWindowIndexByChildIndex(i) + getTimelineByChildIndex(i).getFirstWindowIndex(z);
    }

    public abstract int getFirstWindowIndexByChildIndex(int i);

    @Override // androidx.media2.exoplayer.external.Timeline
    public final int getIndexOfPeriod(Object obj) {
        int i = -1;
        if (!(obj instanceof Pair)) {
            return -1;
        }
        Object childTimelineUidFromConcatenatedUid = getChildTimelineUidFromConcatenatedUid(obj);
        Object childPeriodUidFromConcatenatedUid = getChildPeriodUidFromConcatenatedUid(obj);
        int childIndexByChildUid = getChildIndexByChildUid(childTimelineUidFromConcatenatedUid);
        if (childIndexByChildUid == -1) {
            return -1;
        }
        int indexOfPeriod = getTimelineByChildIndex(childIndexByChildUid).getIndexOfPeriod(childPeriodUidFromConcatenatedUid);
        if (indexOfPeriod != -1) {
            i = getFirstPeriodIndexByChildIndex(childIndexByChildUid) + indexOfPeriod;
        }
        return i;
    }

    @Override // androidx.media2.exoplayer.external.Timeline
    public int getLastWindowIndex(boolean z) {
        if (this.childCount == 0) {
            return -1;
        }
        if (this.isAtomic) {
            z = false;
        }
        int lastIndex = z ? this.shuffleOrder.getLastIndex() : this.childCount - 1;
        while (getTimelineByChildIndex(lastIndex).isEmpty()) {
            int previousChildIndex = getPreviousChildIndex(lastIndex, z);
            lastIndex = previousChildIndex;
            if (previousChildIndex == -1) {
                return -1;
            }
        }
        return getFirstWindowIndexByChildIndex(lastIndex) + getTimelineByChildIndex(lastIndex).getLastWindowIndex(z);
    }

    @Override // androidx.media2.exoplayer.external.Timeline
    public int getNextWindowIndex(int i, int i2, boolean z) {
        int i3 = 0;
        int i4 = i2;
        if (this.isAtomic) {
            i4 = i2;
            if (i2 == 1) {
                i4 = 2;
            }
            z = false;
        }
        int childIndexByWindowIndex = getChildIndexByWindowIndex(i);
        int firstWindowIndexByChildIndex = getFirstWindowIndexByChildIndex(childIndexByWindowIndex);
        Timeline timelineByChildIndex = getTimelineByChildIndex(childIndexByWindowIndex);
        if (i4 != 2) {
            i3 = i4;
        }
        int nextWindowIndex = timelineByChildIndex.getNextWindowIndex(i - firstWindowIndexByChildIndex, i3, z);
        if (nextWindowIndex != -1) {
            return firstWindowIndexByChildIndex + nextWindowIndex;
        }
        int nextChildIndex = getNextChildIndex(childIndexByWindowIndex, z);
        while (nextChildIndex != -1 && getTimelineByChildIndex(nextChildIndex).isEmpty()) {
            nextChildIndex = getNextChildIndex(nextChildIndex, z);
        }
        if (nextChildIndex != -1) {
            return getFirstWindowIndexByChildIndex(nextChildIndex) + getTimelineByChildIndex(nextChildIndex).getFirstWindowIndex(z);
        }
        if (i4 == 2) {
            return getFirstWindowIndex(z);
        }
        return -1;
    }

    @Override // androidx.media2.exoplayer.external.Timeline
    public final Timeline.Period getPeriod(int i, Timeline.Period period, boolean z) {
        int childIndexByPeriodIndex = getChildIndexByPeriodIndex(i);
        int firstWindowIndexByChildIndex = getFirstWindowIndexByChildIndex(childIndexByPeriodIndex);
        getTimelineByChildIndex(childIndexByPeriodIndex).getPeriod(i - getFirstPeriodIndexByChildIndex(childIndexByPeriodIndex), period, z);
        period.windowIndex += firstWindowIndexByChildIndex;
        if (z) {
            period.uid = getConcatenatedUid(getChildUidByChildIndex(childIndexByPeriodIndex), Assertions.checkNotNull(period.uid));
        }
        return period;
    }

    @Override // androidx.media2.exoplayer.external.Timeline
    public final Timeline.Period getPeriodByUid(Object obj, Timeline.Period period) {
        Object childTimelineUidFromConcatenatedUid = getChildTimelineUidFromConcatenatedUid(obj);
        Object childPeriodUidFromConcatenatedUid = getChildPeriodUidFromConcatenatedUid(obj);
        int childIndexByChildUid = getChildIndexByChildUid(childTimelineUidFromConcatenatedUid);
        int firstWindowIndexByChildIndex = getFirstWindowIndexByChildIndex(childIndexByChildUid);
        getTimelineByChildIndex(childIndexByChildUid).getPeriodByUid(childPeriodUidFromConcatenatedUid, period);
        period.windowIndex += firstWindowIndexByChildIndex;
        period.uid = obj;
        return period;
    }

    @Override // androidx.media2.exoplayer.external.Timeline
    public int getPreviousWindowIndex(int i, int i2, boolean z) {
        int i3 = 0;
        int i4 = i2;
        if (this.isAtomic) {
            i4 = i2;
            if (i2 == 1) {
                i4 = 2;
            }
            z = false;
        }
        int childIndexByWindowIndex = getChildIndexByWindowIndex(i);
        int firstWindowIndexByChildIndex = getFirstWindowIndexByChildIndex(childIndexByWindowIndex);
        Timeline timelineByChildIndex = getTimelineByChildIndex(childIndexByWindowIndex);
        if (i4 != 2) {
            i3 = i4;
        }
        int previousWindowIndex = timelineByChildIndex.getPreviousWindowIndex(i - firstWindowIndexByChildIndex, i3, z);
        if (previousWindowIndex != -1) {
            return firstWindowIndexByChildIndex + previousWindowIndex;
        }
        int previousChildIndex = getPreviousChildIndex(childIndexByWindowIndex, z);
        while (previousChildIndex != -1 && getTimelineByChildIndex(previousChildIndex).isEmpty()) {
            previousChildIndex = getPreviousChildIndex(previousChildIndex, z);
        }
        if (previousChildIndex != -1) {
            return getFirstWindowIndexByChildIndex(previousChildIndex) + getTimelineByChildIndex(previousChildIndex).getLastWindowIndex(z);
        }
        if (i4 == 2) {
            return getLastWindowIndex(z);
        }
        return -1;
    }

    public abstract Timeline getTimelineByChildIndex(int i);

    @Override // androidx.media2.exoplayer.external.Timeline
    public final Object getUidOfPeriod(int i) {
        int childIndexByPeriodIndex = getChildIndexByPeriodIndex(i);
        return getConcatenatedUid(getChildUidByChildIndex(childIndexByPeriodIndex), getTimelineByChildIndex(childIndexByPeriodIndex).getUidOfPeriod(i - getFirstPeriodIndexByChildIndex(childIndexByPeriodIndex)));
    }

    @Override // androidx.media2.exoplayer.external.Timeline
    public final Timeline.Window getWindow(int i, Timeline.Window window, boolean z, long j) {
        int childIndexByWindowIndex = getChildIndexByWindowIndex(i);
        int firstWindowIndexByChildIndex = getFirstWindowIndexByChildIndex(childIndexByWindowIndex);
        int firstPeriodIndexByChildIndex = getFirstPeriodIndexByChildIndex(childIndexByWindowIndex);
        getTimelineByChildIndex(childIndexByWindowIndex).getWindow(i - firstWindowIndexByChildIndex, window, z, j);
        window.firstPeriodIndex += firstPeriodIndexByChildIndex;
        window.lastPeriodIndex += firstPeriodIndexByChildIndex;
        return window;
    }
}
