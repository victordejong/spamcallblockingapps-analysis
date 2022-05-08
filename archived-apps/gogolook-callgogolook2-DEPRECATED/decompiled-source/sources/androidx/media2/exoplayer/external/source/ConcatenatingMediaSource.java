package androidx.media2.exoplayer.external.source;

import android.os.Handler;
import android.os.Message;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.C0463C;
import androidx.media2.exoplayer.external.Timeline;
import androidx.media2.exoplayer.external.source.MediaSource;
import androidx.media2.exoplayer.external.source.ShuffleOrder;
import androidx.media2.exoplayer.external.upstream.Allocator;
import androidx.media2.exoplayer.external.upstream.TransferListener;
import androidx.media2.exoplayer.external.util.Assertions;
import androidx.media2.exoplayer.external.util.Util;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ConcatenatingMediaSource.class */
public class ConcatenatingMediaSource extends CompositeMediaSource<MediaSourceHolder> {
    public static final int MSG_ADD = 0;
    public static final int MSG_MOVE = 2;
    public static final int MSG_ON_COMPLETION = 5;
    public static final int MSG_REMOVE = 1;
    public static final int MSG_SET_SHUFFLE_ORDER = 3;
    public static final int MSG_UPDATE_TIMELINE = 4;
    public final boolean isAtomic;
    public final Map<MediaPeriod, MediaSourceHolder> mediaSourceByMediaPeriod;
    public final Map<Object, MediaSourceHolder> mediaSourceByUid;
    public final List<MediaSourceHolder> mediaSourceHolders;
    @GuardedBy("this")
    public final List<MediaSourceHolder> mediaSourcesPublic;
    public Set<HandlerAndRunnable> nextTimelineUpdateOnCompletionActions;
    @GuardedBy("this")
    public final Set<HandlerAndRunnable> pendingOnCompletionActions;
    public final Timeline.Period period;
    public int periodCount;
    @Nullable
    @GuardedBy("this")
    public Handler playbackThreadHandler;
    public ShuffleOrder shuffleOrder;
    public boolean timelineUpdateScheduled;
    public final boolean useLazyPreparation;
    public final Timeline.Window window;
    public int windowCount;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ConcatenatingMediaSource$ConcatenatedTimeline.class */
    public static final class ConcatenatedTimeline extends AbstractConcatenatedTimeline {
        public final HashMap<Object, Integer> childIndexByUid = new HashMap<>();
        public final int[] firstPeriodInChildIndices;
        public final int[] firstWindowInChildIndices;
        public final int periodCount;
        public final Timeline[] timelines;
        public final Object[] uids;
        public final int windowCount;

        public ConcatenatedTimeline(Collection<MediaSourceHolder> collection, int i, int i2, ShuffleOrder shuffleOrder, boolean z) {
            super(z, shuffleOrder);
            this.windowCount = i;
            this.periodCount = i2;
            int size = collection.size();
            this.firstPeriodInChildIndices = new int[size];
            this.firstWindowInChildIndices = new int[size];
            this.timelines = new Timeline[size];
            this.uids = new Object[size];
            int i3 = 0;
            for (MediaSourceHolder mediaSourceHolder : collection) {
                this.timelines[i3] = mediaSourceHolder.timeline;
                this.firstPeriodInChildIndices[i3] = mediaSourceHolder.firstPeriodIndexInChild;
                this.firstWindowInChildIndices[i3] = mediaSourceHolder.firstWindowIndexInChild;
                Object[] objArr = this.uids;
                objArr[i3] = mediaSourceHolder.uid;
                this.childIndexByUid.put(objArr[i3], Integer.valueOf(i3));
                i3++;
            }
        }

        @Override // androidx.media2.exoplayer.external.source.AbstractConcatenatedTimeline
        public int getChildIndexByChildUid(Object obj) {
            Integer num = this.childIndexByUid.get(obj);
            return num == null ? -1 : num.intValue();
        }

        @Override // androidx.media2.exoplayer.external.source.AbstractConcatenatedTimeline
        public int getChildIndexByPeriodIndex(int i) {
            return Util.binarySearchFloor(this.firstPeriodInChildIndices, i + 1, false, false);
        }

        @Override // androidx.media2.exoplayer.external.source.AbstractConcatenatedTimeline
        public int getChildIndexByWindowIndex(int i) {
            return Util.binarySearchFloor(this.firstWindowInChildIndices, i + 1, false, false);
        }

        @Override // androidx.media2.exoplayer.external.source.AbstractConcatenatedTimeline
        public Object getChildUidByChildIndex(int i) {
            return this.uids[i];
        }

        @Override // androidx.media2.exoplayer.external.source.AbstractConcatenatedTimeline
        public int getFirstPeriodIndexByChildIndex(int i) {
            return this.firstPeriodInChildIndices[i];
        }

        @Override // androidx.media2.exoplayer.external.source.AbstractConcatenatedTimeline
        public int getFirstWindowIndexByChildIndex(int i) {
            return this.firstWindowInChildIndices[i];
        }

        @Override // androidx.media2.exoplayer.external.Timeline
        public int getPeriodCount() {
            return this.periodCount;
        }

        @Override // androidx.media2.exoplayer.external.source.AbstractConcatenatedTimeline
        public Timeline getTimelineByChildIndex(int i) {
            return this.timelines[i];
        }

        @Override // androidx.media2.exoplayer.external.Timeline
        public int getWindowCount() {
            return this.windowCount;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline.class */
    public static final class DeferredTimeline extends ForwardingTimeline {
        public static final Object DUMMY_ID = new Object();
        public final Object replacedId;

        public DeferredTimeline(Timeline timeline, Object obj) {
            super(timeline);
            this.replacedId = obj;
        }

        public static DeferredTimeline createWithDummyTimeline(@Nullable Object obj) {
            return new DeferredTimeline(new DummyTimeline(obj), DUMMY_ID);
        }

        public static DeferredTimeline createWithRealTimeline(Timeline timeline, Object obj) {
            return new DeferredTimeline(timeline, obj);
        }

        public DeferredTimeline cloneWithUpdatedTimeline(Timeline timeline) {
            return new DeferredTimeline(timeline, this.replacedId);
        }

        @Override // androidx.media2.exoplayer.external.source.ForwardingTimeline, androidx.media2.exoplayer.external.Timeline
        public int getIndexOfPeriod(Object obj) {
            Timeline timeline = this.timeline;
            Object obj2 = obj;
            if (DUMMY_ID.equals(obj)) {
                obj2 = this.replacedId;
            }
            return timeline.getIndexOfPeriod(obj2);
        }

        @Override // androidx.media2.exoplayer.external.source.ForwardingTimeline, androidx.media2.exoplayer.external.Timeline
        public Timeline.Period getPeriod(int i, Timeline.Period period, boolean z) {
            this.timeline.getPeriod(i, period, z);
            if (Util.areEqual(period.uid, this.replacedId)) {
                period.uid = DUMMY_ID;
            }
            return period;
        }

        public Timeline getTimeline() {
            return this.timeline;
        }

        @Override // androidx.media2.exoplayer.external.source.ForwardingTimeline, androidx.media2.exoplayer.external.Timeline
        public Object getUidOfPeriod(int i) {
            Object uidOfPeriod = this.timeline.getUidOfPeriod(i);
            Object obj = uidOfPeriod;
            if (Util.areEqual(uidOfPeriod, this.replacedId)) {
                obj = DUMMY_ID;
            }
            return obj;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DummyMediaSource.class */
    public static final class DummyMediaSource extends BaseMediaSource {
        public DummyMediaSource() {
        }

        @Override // androidx.media2.exoplayer.external.source.MediaSource
        public MediaPeriod createPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j) {
            throw new UnsupportedOperationException();
        }

        @Override // androidx.media2.exoplayer.external.source.BaseMediaSource, androidx.media2.exoplayer.external.source.MediaSource
        @Nullable
        public Object getTag() {
            return null;
        }

        @Override // androidx.media2.exoplayer.external.source.MediaSource
        public void maybeThrowSourceInfoRefreshError() throws IOException {
        }

        @Override // androidx.media2.exoplayer.external.source.BaseMediaSource
        public void prepareSourceInternal(@Nullable TransferListener transferListener) {
        }

        @Override // androidx.media2.exoplayer.external.source.MediaSource
        public void releasePeriod(MediaPeriod mediaPeriod) {
        }

        @Override // androidx.media2.exoplayer.external.source.BaseMediaSource
        public void releaseSourceInternal() {
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DummyTimeline.class */
    public static final class DummyTimeline extends Timeline {
        @Nullable
        public final Object tag;

        public DummyTimeline(@Nullable Object obj) {
            this.tag = obj;
        }

        @Override // androidx.media2.exoplayer.external.Timeline
        public int getIndexOfPeriod(Object obj) {
            return obj == DeferredTimeline.DUMMY_ID ? 0 : -1;
        }

        @Override // androidx.media2.exoplayer.external.Timeline
        public Timeline.Period getPeriod(int i, Timeline.Period period, boolean z) {
            return period.set(0, DeferredTimeline.DUMMY_ID, 0, C0463C.TIME_UNSET, 0L);
        }

        @Override // androidx.media2.exoplayer.external.Timeline
        public int getPeriodCount() {
            return 1;
        }

        @Override // androidx.media2.exoplayer.external.Timeline
        public Object getUidOfPeriod(int i) {
            return DeferredTimeline.DUMMY_ID;
        }

        @Override // androidx.media2.exoplayer.external.Timeline
        public Timeline.Window getWindow(int i, Timeline.Window window, boolean z, long j) {
            return window.set(this.tag, C0463C.TIME_UNSET, C0463C.TIME_UNSET, false, true, 0L, C0463C.TIME_UNSET, 0, 0, 0L);
        }

        @Override // androidx.media2.exoplayer.external.Timeline
        public int getWindowCount() {
            return 1;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable.class */
    public static final class HandlerAndRunnable {
        public final Handler handler;
        public final Runnable runnable;

        public HandlerAndRunnable(Handler handler, Runnable runnable) {
            this.handler = handler;
            this.runnable = runnable;
        }

        public void dispatch() {
            this.handler.post(this.runnable);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder.class */
    public static final class MediaSourceHolder implements Comparable<MediaSourceHolder> {
        public int childIndex;
        public int firstPeriodIndexInChild;
        public int firstWindowIndexInChild;
        public boolean hasStartedPreparing;
        public boolean isPrepared;
        public boolean isRemoved;
        public final MediaSource mediaSource;
        public DeferredTimeline timeline;
        public final List<DeferredMediaPeriod> activeMediaPeriods = new ArrayList();
        public final Object uid = new Object();

        public MediaSourceHolder(MediaSource mediaSource) {
            this.mediaSource = mediaSource;
            this.timeline = DeferredTimeline.createWithDummyTimeline(mediaSource.getTag());
        }

        public int compareTo(@NonNull MediaSourceHolder mediaSourceHolder) {
            return this.firstPeriodIndexInChild - mediaSourceHolder.firstPeriodIndexInChild;
        }

        public void reset(int i, int i2, int i3) {
            this.childIndex = i;
            this.firstWindowIndexInChild = i2;
            this.firstPeriodIndexInChild = i3;
            this.hasStartedPreparing = false;
            this.isPrepared = false;
            this.isRemoved = false;
            this.activeMediaPeriods.clear();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData.class */
    public static final class MessageData<T> {
        public final T customData;
        public final int index;
        @Nullable
        public final HandlerAndRunnable onCompletionAction;

        public MessageData(int i, T t, @Nullable HandlerAndRunnable handlerAndRunnable) {
            this.index = i;
            this.customData = t;
            this.onCompletionAction = handlerAndRunnable;
        }
    }

    public ConcatenatingMediaSource(boolean z, ShuffleOrder shuffleOrder, MediaSource... mediaSourceArr) {
        this(z, false, shuffleOrder, mediaSourceArr);
    }

    public ConcatenatingMediaSource(boolean z, boolean z2, ShuffleOrder shuffleOrder, MediaSource... mediaSourceArr) {
        for (MediaSource mediaSource : mediaSourceArr) {
            Assertions.checkNotNull(mediaSource);
        }
        this.shuffleOrder = shuffleOrder.getLength() > 0 ? shuffleOrder.cloneAndClear() : shuffleOrder;
        this.mediaSourceByMediaPeriod = new IdentityHashMap();
        this.mediaSourceByUid = new HashMap();
        this.mediaSourcesPublic = new ArrayList();
        this.mediaSourceHolders = new ArrayList();
        this.nextTimelineUpdateOnCompletionActions = new HashSet();
        this.pendingOnCompletionActions = new HashSet();
        this.isAtomic = z;
        this.useLazyPreparation = z2;
        this.window = new Timeline.Window();
        this.period = new Timeline.Period();
        addMediaSources(Arrays.asList(mediaSourceArr));
    }

    public ConcatenatingMediaSource(boolean z, MediaSource... mediaSourceArr) {
        this(z, new ShuffleOrder.DefaultShuffleOrder(0), mediaSourceArr);
    }

    public ConcatenatingMediaSource(MediaSource... mediaSourceArr) {
        this(false, mediaSourceArr);
    }

    private void addMediaSourceInternal(int i, MediaSourceHolder mediaSourceHolder) {
        if (i > 0) {
            MediaSourceHolder mediaSourceHolder2 = this.mediaSourceHolders.get(i - 1);
            mediaSourceHolder.reset(i, mediaSourceHolder2.firstWindowIndexInChild + mediaSourceHolder2.timeline.getWindowCount(), mediaSourceHolder2.firstPeriodIndexInChild + mediaSourceHolder2.timeline.getPeriodCount());
        } else {
            mediaSourceHolder.reset(i, 0, 0);
        }
        correctOffsets(i, 1, mediaSourceHolder.timeline.getWindowCount(), mediaSourceHolder.timeline.getPeriodCount());
        this.mediaSourceHolders.add(i, mediaSourceHolder);
        this.mediaSourceByUid.put(mediaSourceHolder.uid, mediaSourceHolder);
        if (!this.useLazyPreparation) {
            mediaSourceHolder.hasStartedPreparing = true;
            prepareChildSource(mediaSourceHolder, mediaSourceHolder.mediaSource);
        }
    }

    private void addMediaSourcesInternal(int i, Collection<MediaSourceHolder> collection) {
        for (MediaSourceHolder mediaSourceHolder : collection) {
            addMediaSourceInternal(i, mediaSourceHolder);
            i++;
        }
    }

    @GuardedBy("this")
    private void addPublicMediaSources(int i, Collection<MediaSource> collection, @Nullable Handler handler, @Nullable Runnable runnable) {
        boolean z = true;
        if ((handler == null) != (runnable == null)) {
            z = false;
        }
        Assertions.checkArgument(z);
        Handler handler2 = this.playbackThreadHandler;
        for (MediaSource mediaSource : collection) {
            Assertions.checkNotNull(mediaSource);
        }
        ArrayList arrayList = new ArrayList(collection.size());
        for (MediaSource mediaSource2 : collection) {
            arrayList.add(new MediaSourceHolder(mediaSource2));
        }
        this.mediaSourcesPublic.addAll(i, arrayList);
        if (handler2 != null && !collection.isEmpty()) {
            handler2.obtainMessage(0, new MessageData(i, arrayList, createOnCompletionAction(handler, runnable))).sendToTarget();
        } else if (runnable != null && handler != null) {
            handler.post(runnable);
        }
    }

    private void correctOffsets(int i, int i2, int i3, int i4) {
        this.windowCount += i3;
        this.periodCount += i4;
        while (i < this.mediaSourceHolders.size()) {
            this.mediaSourceHolders.get(i).childIndex += i2;
            this.mediaSourceHolders.get(i).firstWindowIndexInChild += i3;
            this.mediaSourceHolders.get(i).firstPeriodIndexInChild += i4;
            i++;
        }
    }

    @Nullable
    @GuardedBy("this")
    private HandlerAndRunnable createOnCompletionAction(@Nullable Handler handler, @Nullable Runnable runnable) {
        if (handler == null || runnable == null) {
            return null;
        }
        HandlerAndRunnable handlerAndRunnable = new HandlerAndRunnable(handler, runnable);
        this.pendingOnCompletionActions.add(handlerAndRunnable);
        return handlerAndRunnable;
    }

    private void dispatchOnCompletionActions(Set<HandlerAndRunnable> set) {
        synchronized (this) {
            for (HandlerAndRunnable handlerAndRunnable : set) {
                handlerAndRunnable.dispatch();
            }
            this.pendingOnCompletionActions.removeAll(set);
        }
    }

    public static Object getChildPeriodUid(MediaSourceHolder mediaSourceHolder, Object obj) {
        Object childPeriodUidFromConcatenatedUid = AbstractConcatenatedTimeline.getChildPeriodUidFromConcatenatedUid(obj);
        Object obj2 = childPeriodUidFromConcatenatedUid;
        if (childPeriodUidFromConcatenatedUid.equals(DeferredTimeline.DUMMY_ID)) {
            obj2 = mediaSourceHolder.timeline.replacedId;
        }
        return obj2;
    }

    public static Object getMediaSourceHolderUid(Object obj) {
        return AbstractConcatenatedTimeline.getChildTimelineUidFromConcatenatedUid(obj);
    }

    public static Object getPeriodUid(MediaSourceHolder mediaSourceHolder, Object obj) {
        Object obj2 = obj;
        if (mediaSourceHolder.timeline.replacedId.equals(obj)) {
            obj2 = DeferredTimeline.DUMMY_ID;
        }
        return AbstractConcatenatedTimeline.getConcatenatedUid(mediaSourceHolder.uid, obj2);
    }

    private Handler getPlaybackThreadHandlerOnPlaybackThread() {
        return (Handler) Assertions.checkNotNull(this.playbackThreadHandler);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: handleMessage */
    public boolean bridge$lambda$0$ConcatenatingMediaSource(Message message) {
        int i = message.what;
        if (i == 0) {
            MessageData messageData = (MessageData) Util.castNonNull(message.obj);
            this.shuffleOrder = this.shuffleOrder.cloneAndInsert(messageData.index, ((Collection) messageData.customData).size());
            addMediaSourcesInternal(messageData.index, (Collection) messageData.customData);
            scheduleTimelineUpdate(messageData.onCompletionAction);
            return true;
        } else if (i == 1) {
            MessageData messageData2 = (MessageData) Util.castNonNull(message.obj);
            int i2 = messageData2.index;
            int intValue = ((Integer) messageData2.customData).intValue();
            if (i2 == 0 && intValue == this.shuffleOrder.getLength()) {
                this.shuffleOrder = this.shuffleOrder.cloneAndClear();
            } else {
                this.shuffleOrder = this.shuffleOrder.cloneAndRemove(i2, intValue);
            }
            while (true) {
                intValue--;
                if (intValue >= i2) {
                    removeMediaSourceInternal(intValue);
                } else {
                    scheduleTimelineUpdate(messageData2.onCompletionAction);
                    return true;
                }
            }
        } else if (i == 2) {
            MessageData messageData3 = (MessageData) Util.castNonNull(message.obj);
            ShuffleOrder shuffleOrder = this.shuffleOrder;
            int i3 = messageData3.index;
            this.shuffleOrder = shuffleOrder.cloneAndRemove(i3, i3 + 1);
            this.shuffleOrder = this.shuffleOrder.cloneAndInsert(((Integer) messageData3.customData).intValue(), 1);
            moveMediaSourceInternal(messageData3.index, ((Integer) messageData3.customData).intValue());
            scheduleTimelineUpdate(messageData3.onCompletionAction);
            return true;
        } else if (i == 3) {
            MessageData messageData4 = (MessageData) Util.castNonNull(message.obj);
            this.shuffleOrder = (ShuffleOrder) messageData4.customData;
            scheduleTimelineUpdate(messageData4.onCompletionAction);
            return true;
        } else if (i == 4) {
            updateTimelineAndScheduleOnCompletionActions();
            return true;
        } else if (i == 5) {
            dispatchOnCompletionActions((Set) Util.castNonNull(message.obj));
            return true;
        } else {
            throw new IllegalStateException();
        }
    }

    private void maybeReleaseChildSource(MediaSourceHolder mediaSourceHolder) {
        if (mediaSourceHolder.isRemoved && mediaSourceHolder.hasStartedPreparing && mediaSourceHolder.activeMediaPeriods.isEmpty()) {
            releaseChildSource(mediaSourceHolder);
        }
    }

    private void moveMediaSourceInternal(int i, int i2) {
        int min = Math.min(i, i2);
        int max = Math.max(i, i2);
        int i3 = this.mediaSourceHolders.get(min).firstWindowIndexInChild;
        int i4 = this.mediaSourceHolders.get(min).firstPeriodIndexInChild;
        List<MediaSourceHolder> list = this.mediaSourceHolders;
        list.add(i2, list.remove(i));
        for (int i5 = min; i5 <= max; i5++) {
            MediaSourceHolder mediaSourceHolder = this.mediaSourceHolders.get(i5);
            mediaSourceHolder.firstWindowIndexInChild = i3;
            mediaSourceHolder.firstPeriodIndexInChild = i4;
            i3 += mediaSourceHolder.timeline.getWindowCount();
            i4 += mediaSourceHolder.timeline.getPeriodCount();
        }
    }

    @GuardedBy("this")
    private void movePublicMediaSource(int i, int i2, @Nullable Handler handler, @Nullable Runnable runnable) {
        boolean z = true;
        if ((handler == null) != (runnable == null)) {
            z = false;
        }
        Assertions.checkArgument(z);
        Handler handler2 = this.playbackThreadHandler;
        List<MediaSourceHolder> list = this.mediaSourcesPublic;
        list.add(i2, list.remove(i));
        if (handler2 != null) {
            handler2.obtainMessage(2, new MessageData(i, Integer.valueOf(i2), createOnCompletionAction(handler, runnable))).sendToTarget();
        } else if (runnable != null && handler != null) {
            handler.post(runnable);
        }
    }

    private void removeMediaSourceInternal(int i) {
        MediaSourceHolder remove = this.mediaSourceHolders.remove(i);
        this.mediaSourceByUid.remove(remove.uid);
        DeferredTimeline deferredTimeline = remove.timeline;
        correctOffsets(i, -1, -deferredTimeline.getWindowCount(), -deferredTimeline.getPeriodCount());
        remove.isRemoved = true;
        maybeReleaseChildSource(remove);
    }

    @GuardedBy("this")
    private void removePublicMediaSources(int i, int i2, @Nullable Handler handler, @Nullable Runnable runnable) {
        boolean z = false;
        if ((handler == null) == (runnable == null)) {
            z = true;
        }
        Assertions.checkArgument(z);
        Handler handler2 = this.playbackThreadHandler;
        Util.removeRange(this.mediaSourcesPublic, i, i2);
        if (handler2 != null) {
            handler2.obtainMessage(1, new MessageData(i, Integer.valueOf(i2), createOnCompletionAction(handler, runnable))).sendToTarget();
        } else if (runnable != null && handler != null) {
            handler.post(runnable);
        }
    }

    private void scheduleTimelineUpdate() {
        scheduleTimelineUpdate(null);
    }

    private void scheduleTimelineUpdate(@Nullable HandlerAndRunnable handlerAndRunnable) {
        if (!this.timelineUpdateScheduled) {
            getPlaybackThreadHandlerOnPlaybackThread().obtainMessage(4).sendToTarget();
            this.timelineUpdateScheduled = true;
        }
        if (handlerAndRunnable != null) {
            this.nextTimelineUpdateOnCompletionActions.add(handlerAndRunnable);
        }
    }

    @GuardedBy("this")
    private void setPublicShuffleOrder(ShuffleOrder shuffleOrder, @Nullable Handler handler, @Nullable Runnable runnable) {
        boolean z = true;
        if ((handler == null) != (runnable == null)) {
            z = false;
        }
        Assertions.checkArgument(z);
        Handler handler2 = this.playbackThreadHandler;
        if (handler2 != null) {
            int size = getSize();
            ShuffleOrder shuffleOrder2 = shuffleOrder;
            if (shuffleOrder.getLength() != size) {
                shuffleOrder2 = shuffleOrder.cloneAndClear().cloneAndInsert(0, size);
            }
            handler2.obtainMessage(3, new MessageData(0, shuffleOrder2, createOnCompletionAction(handler, runnable))).sendToTarget();
            return;
        }
        ShuffleOrder shuffleOrder3 = shuffleOrder;
        if (shuffleOrder.getLength() > 0) {
            shuffleOrder3 = shuffleOrder.cloneAndClear();
        }
        this.shuffleOrder = shuffleOrder3;
        if (runnable != null && handler != null) {
            handler.post(runnable);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x00c4, code lost:
        if (r16 != 0) goto L_0x00ce;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void updateMediaSourceInternal(androidx.media2.exoplayer.external.source.ConcatenatingMediaSource.MediaSourceHolder r8, androidx.media2.exoplayer.external.Timeline r9) {
        /*
            Method dump skipped, instructions count: 302
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.ConcatenatingMediaSource.updateMediaSourceInternal(androidx.media2.exoplayer.external.source.ConcatenatingMediaSource$MediaSourceHolder, androidx.media2.exoplayer.external.Timeline):void");
    }

    private void updateTimelineAndScheduleOnCompletionActions() {
        this.timelineUpdateScheduled = false;
        Set<HandlerAndRunnable> set = this.nextTimelineUpdateOnCompletionActions;
        this.nextTimelineUpdateOnCompletionActions = new HashSet();
        refreshSourceInfo(new ConcatenatedTimeline(this.mediaSourceHolders, this.windowCount, this.periodCount, this.shuffleOrder, this.isAtomic), null);
        getPlaybackThreadHandlerOnPlaybackThread().obtainMessage(5, set).sendToTarget();
    }

    public final void addMediaSource(int i, MediaSource mediaSource) {
        synchronized (this) {
            addPublicMediaSources(i, Collections.singletonList(mediaSource), null, null);
        }
    }

    public final void addMediaSource(int i, MediaSource mediaSource, Handler handler, Runnable runnable) {
        synchronized (this) {
            addPublicMediaSources(i, Collections.singletonList(mediaSource), handler, runnable);
        }
    }

    public final void addMediaSource(MediaSource mediaSource) {
        synchronized (this) {
            addMediaSource(this.mediaSourcesPublic.size(), mediaSource);
        }
    }

    public final void addMediaSource(MediaSource mediaSource, Handler handler, Runnable runnable) {
        synchronized (this) {
            addMediaSource(this.mediaSourcesPublic.size(), mediaSource, handler, runnable);
        }
    }

    public final void addMediaSources(int i, Collection<MediaSource> collection) {
        synchronized (this) {
            addPublicMediaSources(i, collection, null, null);
        }
    }

    public final void addMediaSources(int i, Collection<MediaSource> collection, Handler handler, Runnable runnable) {
        synchronized (this) {
            addPublicMediaSources(i, collection, handler, runnable);
        }
    }

    public final void addMediaSources(Collection<MediaSource> collection) {
        synchronized (this) {
            addPublicMediaSources(this.mediaSourcesPublic.size(), collection, null, null);
        }
    }

    public final void addMediaSources(Collection<MediaSource> collection, Handler handler, Runnable runnable) {
        synchronized (this) {
            addPublicMediaSources(this.mediaSourcesPublic.size(), collection, handler, runnable);
        }
    }

    public final void clear() {
        synchronized (this) {
            removeMediaSourceRange(0, getSize());
        }
    }

    public final void clear(Handler handler, Runnable runnable) {
        synchronized (this) {
            removeMediaSourceRange(0, getSize(), handler, runnable);
        }
    }

    @Override // androidx.media2.exoplayer.external.source.MediaSource
    public final MediaPeriod createPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j) {
        MediaSourceHolder mediaSourceHolder = this.mediaSourceByUid.get(getMediaSourceHolderUid(mediaPeriodId.periodUid));
        MediaSourceHolder mediaSourceHolder2 = mediaSourceHolder;
        if (mediaSourceHolder == null) {
            mediaSourceHolder2 = new MediaSourceHolder(new DummyMediaSource());
            mediaSourceHolder2.hasStartedPreparing = true;
        }
        DeferredMediaPeriod deferredMediaPeriod = new DeferredMediaPeriod(mediaSourceHolder2.mediaSource, mediaPeriodId, allocator, j);
        this.mediaSourceByMediaPeriod.put(deferredMediaPeriod, mediaSourceHolder2);
        mediaSourceHolder2.activeMediaPeriods.add(deferredMediaPeriod);
        if (!mediaSourceHolder2.hasStartedPreparing) {
            mediaSourceHolder2.hasStartedPreparing = true;
            prepareChildSource(mediaSourceHolder2, mediaSourceHolder2.mediaSource);
        } else if (mediaSourceHolder2.isPrepared) {
            deferredMediaPeriod.createPeriod(mediaPeriodId.copyWithPeriodUid(getChildPeriodUid(mediaSourceHolder2, mediaPeriodId.periodUid)));
        }
        return deferredMediaPeriod;
    }

    @Nullable
    public MediaSource.MediaPeriodId getMediaPeriodIdForChildMediaPeriodId(MediaSourceHolder mediaSourceHolder, MediaSource.MediaPeriodId mediaPeriodId) {
        for (int i = 0; i < mediaSourceHolder.activeMediaPeriods.size(); i++) {
            if (mediaSourceHolder.activeMediaPeriods.get(i).f97id.windowSequenceNumber == mediaPeriodId.windowSequenceNumber) {
                return mediaPeriodId.copyWithPeriodUid(getPeriodUid(mediaSourceHolder, mediaPeriodId.periodUid));
            }
        }
        return null;
    }

    public final MediaSource getMediaSource(int i) {
        MediaSource mediaSource;
        synchronized (this) {
            mediaSource = this.mediaSourcesPublic.get(i).mediaSource;
        }
        return mediaSource;
    }

    public final int getSize() {
        int size;
        synchronized (this) {
            size = this.mediaSourcesPublic.size();
        }
        return size;
    }

    @Override // androidx.media2.exoplayer.external.source.BaseMediaSource, androidx.media2.exoplayer.external.source.MediaSource
    @Nullable
    public Object getTag() {
        return null;
    }

    public int getWindowIndexForChildWindowIndex(MediaSourceHolder mediaSourceHolder, int i) {
        return i + mediaSourceHolder.firstWindowIndexInChild;
    }

    @Override // androidx.media2.exoplayer.external.source.CompositeMediaSource, androidx.media2.exoplayer.external.source.MediaSource
    public void maybeThrowSourceInfoRefreshError() throws IOException {
    }

    public final void moveMediaSource(int i, int i2) {
        synchronized (this) {
            movePublicMediaSource(i, i2, null, null);
        }
    }

    public final void moveMediaSource(int i, int i2, Handler handler, Runnable runnable) {
        synchronized (this) {
            movePublicMediaSource(i, i2, handler, runnable);
        }
    }

    public final void onChildSourceInfoRefreshed(MediaSourceHolder mediaSourceHolder, MediaSource mediaSource, Timeline timeline, @Nullable Object obj) {
        updateMediaSourceInternal(mediaSourceHolder, timeline);
    }

    @Override // androidx.media2.exoplayer.external.source.CompositeMediaSource, androidx.media2.exoplayer.external.source.BaseMediaSource
    public final void prepareSourceInternal(@Nullable TransferListener transferListener) {
        synchronized (this) {
            super.prepareSourceInternal(transferListener);
            this.playbackThreadHandler = new Handler(new Handler.Callback(this) { // from class: androidx.media2.exoplayer.external.source.ConcatenatingMediaSource$$Lambda$0
                public final ConcatenatingMediaSource arg$1;

                {
                    this.arg$1 = this;
                }

                @Override // android.os.Handler.Callback
                public boolean handleMessage(Message message) {
                    return this.arg$1.bridge$lambda$0$ConcatenatingMediaSource(message);
                }
            });
            if (this.mediaSourcesPublic.isEmpty()) {
                updateTimelineAndScheduleOnCompletionActions();
            } else {
                this.shuffleOrder = this.shuffleOrder.cloneAndInsert(0, this.mediaSourcesPublic.size());
                addMediaSourcesInternal(0, this.mediaSourcesPublic);
                scheduleTimelineUpdate();
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.source.MediaSource
    public final void releasePeriod(MediaPeriod mediaPeriod) {
        MediaSourceHolder mediaSourceHolder = (MediaSourceHolder) Assertions.checkNotNull(this.mediaSourceByMediaPeriod.remove(mediaPeriod));
        ((DeferredMediaPeriod) mediaPeriod).releasePeriod();
        mediaSourceHolder.activeMediaPeriods.remove(mediaPeriod);
        maybeReleaseChildSource(mediaSourceHolder);
    }

    @Override // androidx.media2.exoplayer.external.source.CompositeMediaSource, androidx.media2.exoplayer.external.source.BaseMediaSource
    public final void releaseSourceInternal() {
        synchronized (this) {
            super.releaseSourceInternal();
            this.mediaSourceHolders.clear();
            this.mediaSourceByUid.clear();
            this.shuffleOrder = this.shuffleOrder.cloneAndClear();
            this.windowCount = 0;
            this.periodCount = 0;
            if (this.playbackThreadHandler != null) {
                this.playbackThreadHandler.removeCallbacksAndMessages(null);
                this.playbackThreadHandler = null;
            }
            this.timelineUpdateScheduled = false;
            this.nextTimelineUpdateOnCompletionActions.clear();
            dispatchOnCompletionActions(this.pendingOnCompletionActions);
        }
    }

    public final void removeMediaSource(int i) {
        synchronized (this) {
            removePublicMediaSources(i, i + 1, null, null);
        }
    }

    public final void removeMediaSource(int i, Handler handler, Runnable runnable) {
        synchronized (this) {
            removePublicMediaSources(i, i + 1, handler, runnable);
        }
    }

    public final void removeMediaSourceRange(int i, int i2) {
        synchronized (this) {
            removePublicMediaSources(i, i2, null, null);
        }
    }

    public final void removeMediaSourceRange(int i, int i2, Handler handler, Runnable runnable) {
        synchronized (this) {
            removePublicMediaSources(i, i2, handler, runnable);
        }
    }

    public final void setShuffleOrder(ShuffleOrder shuffleOrder) {
        synchronized (this) {
            setPublicShuffleOrder(shuffleOrder, null, null);
        }
    }

    public final void setShuffleOrder(ShuffleOrder shuffleOrder, Handler handler, Runnable runnable) {
        synchronized (this) {
            setPublicShuffleOrder(shuffleOrder, handler, runnable);
        }
    }
}
