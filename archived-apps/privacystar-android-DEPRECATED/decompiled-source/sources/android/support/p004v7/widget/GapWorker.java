package android.support.p004v7.widget;

import android.support.annotation.Nullable;
import android.support.p001v4.p003os.TraceCompat;
import android.support.p004v7.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: android.support.v7.widget.GapWorker */
/* loaded from: classes-dex2jar.jar:android/support/v7/widget/GapWorker.class */
public final class GapWorker implements Runnable {
    static final ThreadLocal<GapWorker> sGapWorker = new ThreadLocal<>();
    static Comparator<Task> sTaskComparator = new Comparator<Task>() { // from class: android.support.v7.widget.GapWorker.1
        public int compare(Task task, Task task2) {
            int i = 1;
            int i2 = 1;
            if ((task.view == null) != (task2.view == null)) {
                if (task.view != null) {
                    i2 = -1;
                }
                return i2;
            } else if (task.immediate != task2.immediate) {
                if (task.immediate) {
                    i = -1;
                }
                return i;
            } else {
                int i3 = task2.viewVelocity - task.viewVelocity;
                if (i3 != 0) {
                    return i3;
                }
                int i4 = task.distanceToItem - task2.distanceToItem;
                if (i4 != 0) {
                    return i4;
                }
                return 0;
            }
        }
    };
    long mFrameIntervalNs;
    long mPostTimeNs;
    ArrayList<RecyclerView> mRecyclerViews = new ArrayList<>();
    private ArrayList<Task> mTasks = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.support.v7.widget.GapWorker$LayoutPrefetchRegistryImpl */
    /* loaded from: classes-dex2jar.jar:android/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl.class */
    public static class LayoutPrefetchRegistryImpl implements RecyclerView.LayoutManager.LayoutPrefetchRegistry {
        int mCount;
        int[] mPrefetchArray;
        int mPrefetchDx;
        int mPrefetchDy;

        @Override // android.support.p004v7.widget.RecyclerView.LayoutManager.LayoutPrefetchRegistry
        public void addPosition(int i, int i2) {
            if (i < 0) {
                throw new IllegalArgumentException("Layout positions must be non-negative");
            } else if (i2 < 0) {
                throw new IllegalArgumentException("Pixel distance must be non-negative");
            } else {
                int i3 = this.mCount * 2;
                if (this.mPrefetchArray == null) {
                    this.mPrefetchArray = new int[4];
                    Arrays.fill(this.mPrefetchArray, -1);
                } else if (i3 >= this.mPrefetchArray.length) {
                    int[] iArr = this.mPrefetchArray;
                    this.mPrefetchArray = new int[i3 * 2];
                    System.arraycopy(iArr, 0, this.mPrefetchArray, 0, iArr.length);
                }
                this.mPrefetchArray[i3] = i;
                this.mPrefetchArray[i3 + 1] = i2;
                this.mCount++;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void clearPrefetchPositions() {
            if (this.mPrefetchArray != null) {
                Arrays.fill(this.mPrefetchArray, -1);
            }
            this.mCount = 0;
        }

        void collectPrefetchPositionsFromView(RecyclerView recyclerView, boolean z) {
            this.mCount = 0;
            if (this.mPrefetchArray != null) {
                Arrays.fill(this.mPrefetchArray, -1);
            }
            RecyclerView.LayoutManager layoutManager = recyclerView.mLayout;
            if (recyclerView.mAdapter != null && layoutManager != null && layoutManager.isItemPrefetchEnabled()) {
                if (z) {
                    if (!recyclerView.mAdapterHelper.hasPendingUpdates()) {
                        layoutManager.collectInitialPrefetchPositions(recyclerView.mAdapter.getItemCount(), this);
                    }
                } else if (!recyclerView.hasPendingAdapterUpdates()) {
                    layoutManager.collectAdjacentPrefetchPositions(this.mPrefetchDx, this.mPrefetchDy, recyclerView.mState, this);
                }
                if (this.mCount > layoutManager.mPrefetchMaxCountObserved) {
                    layoutManager.mPrefetchMaxCountObserved = this.mCount;
                    layoutManager.mPrefetchMaxObservedInInitialPrefetch = z;
                    recyclerView.mRecycler.updateViewCacheSize();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean lastPrefetchIncludedPosition(int i) {
            if (this.mPrefetchArray == null) {
                return false;
            }
            int i2 = this.mCount;
            for (int i3 = 0; i3 < i2 * 2; i3 += 2) {
                if (this.mPrefetchArray[i3] == i) {
                    return true;
                }
            }
            return false;
        }

        void setPrefetchVector(int i, int i2) {
            this.mPrefetchDx = i;
            this.mPrefetchDy = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.support.v7.widget.GapWorker$Task */
    /* loaded from: classes-dex2jar.jar:android/support/v7/widget/GapWorker$Task.class */
    public static class Task {
        public int distanceToItem;
        public boolean immediate;
        public int position;
        public RecyclerView view;
        public int viewVelocity;

        Task() {
        }

        public void clear() {
            this.immediate = false;
            this.viewVelocity = 0;
            this.distanceToItem = 0;
            this.view = null;
            this.position = 0;
        }
    }

    private void buildTaskList() {
        Task task;
        int size = this.mRecyclerViews.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            RecyclerView recyclerView = this.mRecyclerViews.get(i2);
            i = i;
            if (recyclerView.getWindowVisibility() == 0) {
                recyclerView.mPrefetchRegistry.collectPrefetchPositionsFromView(recyclerView, false);
                i += recyclerView.mPrefetchRegistry.mCount;
            }
        }
        this.mTasks.ensureCapacity(i);
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            RecyclerView recyclerView2 = this.mRecyclerViews.get(i4);
            if (recyclerView2.getWindowVisibility() == 0) {
                LayoutPrefetchRegistryImpl layoutPrefetchRegistryImpl = recyclerView2.mPrefetchRegistry;
                int abs = Math.abs(layoutPrefetchRegistryImpl.mPrefetchDx) + Math.abs(layoutPrefetchRegistryImpl.mPrefetchDy);
                for (int i5 = 0; i5 < layoutPrefetchRegistryImpl.mCount * 2; i5 += 2) {
                    if (i3 >= this.mTasks.size()) {
                        task = new Task();
                        this.mTasks.add(task);
                    } else {
                        task = this.mTasks.get(i3);
                    }
                    int i6 = layoutPrefetchRegistryImpl.mPrefetchArray[i5 + 1];
                    task.immediate = i6 <= abs;
                    task.viewVelocity = abs;
                    task.distanceToItem = i6;
                    task.view = recyclerView2;
                    task.position = layoutPrefetchRegistryImpl.mPrefetchArray[i5];
                    i3++;
                }
            }
        }
        Collections.sort(this.mTasks, sTaskComparator);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    private void flushTaskWithDeadline(Task task, long j) {
        RecyclerView.ViewHolder prefetchPositionWithDeadline = prefetchPositionWithDeadline(task.view, task.position, task.immediate ? 9223372036854775807 : j);
        if (prefetchPositionWithDeadline != null && prefetchPositionWithDeadline.mNestedRecyclerView != null && prefetchPositionWithDeadline.isBound() && !prefetchPositionWithDeadline.isInvalid()) {
            prefetchInnerRecyclerViewWithDeadline(prefetchPositionWithDeadline.mNestedRecyclerView.get(), j);
        }
    }

    private void flushTasksWithDeadline(long j) {
        for (int i = 0; i < this.mTasks.size(); i++) {
            Task task = this.mTasks.get(i);
            if (task.view != null) {
                flushTaskWithDeadline(task, j);
                task.clear();
            } else {
                return;
            }
        }
    }

    static boolean isPrefetchPositionAttached(RecyclerView recyclerView, int i) {
        int unfilteredChildCount = recyclerView.mChildHelper.getUnfilteredChildCount();
        for (int i2 = 0; i2 < unfilteredChildCount; i2++) {
            RecyclerView.ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(recyclerView.mChildHelper.getUnfilteredChildAt(i2));
            if (childViewHolderInt.mPosition == i && !childViewHolderInt.isInvalid()) {
                return true;
            }
        }
        return false;
    }

    private void prefetchInnerRecyclerViewWithDeadline(@Nullable RecyclerView recyclerView, long j) {
        if (recyclerView != null) {
            if (recyclerView.mDataSetHasChangedAfterLayout && recyclerView.mChildHelper.getUnfilteredChildCount() != 0) {
                recyclerView.removeAndRecycleViews();
            }
            LayoutPrefetchRegistryImpl layoutPrefetchRegistryImpl = recyclerView.mPrefetchRegistry;
            layoutPrefetchRegistryImpl.collectPrefetchPositionsFromView(recyclerView, true);
            if (layoutPrefetchRegistryImpl.mCount != 0) {
                try {
                    TraceCompat.beginSection("RV Nested Prefetch");
                    recyclerView.mState.prepareForNestedPrefetch(recyclerView.mAdapter);
                    for (int i = 0; i < layoutPrefetchRegistryImpl.mCount * 2; i += 2) {
                        prefetchPositionWithDeadline(recyclerView, layoutPrefetchRegistryImpl.mPrefetchArray[i], j);
                    }
                } finally {
                    TraceCompat.endSection();
                }
            }
        }
    }

    private RecyclerView.ViewHolder prefetchPositionWithDeadline(RecyclerView recyclerView, int i, long j) {
        if (isPrefetchPositionAttached(recyclerView, i)) {
            return null;
        }
        RecyclerView.Recycler recycler = recyclerView.mRecycler;
        try {
            recyclerView.onEnterLayoutOrScroll();
            RecyclerView.ViewHolder tryGetViewHolderForPositionByDeadline = recycler.tryGetViewHolderForPositionByDeadline(i, false, j);
            if (tryGetViewHolderForPositionByDeadline != null) {
                if (!tryGetViewHolderForPositionByDeadline.isBound() || tryGetViewHolderForPositionByDeadline.isInvalid()) {
                    recycler.addViewHolderToRecycledViewPool(tryGetViewHolderForPositionByDeadline, false);
                } else {
                    recycler.recycleView(tryGetViewHolderForPositionByDeadline.itemView);
                }
            }
            return tryGetViewHolderForPositionByDeadline;
        } finally {
            recyclerView.onExitLayoutOrScroll(false);
        }
    }

    public void add(RecyclerView recyclerView) {
        this.mRecyclerViews.add(recyclerView);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void postFromTraversal(RecyclerView recyclerView, int i, int i2) {
        if (recyclerView.isAttachedToWindow() && this.mPostTimeNs == 0) {
            this.mPostTimeNs = recyclerView.getNanoTime();
            recyclerView.post(this);
        }
        recyclerView.mPrefetchRegistry.setPrefetchVector(i, i2);
    }

    void prefetch(long j) {
        buildTaskList();
        flushTasksWithDeadline(j);
    }

    public void remove(RecyclerView recyclerView) {
        this.mRecyclerViews.remove(recyclerView);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v26 */
    /* JADX WARN: Type inference failed for: r0v29 */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.util.concurrent.TimeUnit] */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            r6 = this;
            java.lang.String r0 = "RV Prefetch"
            android.support.p001v4.p003os.TraceCompat.beginSection(r0)     // Catch: all -> 0x0086
            r0 = r6
            java.util.ArrayList<android.support.v7.widget.RecyclerView> r0 = r0.mRecyclerViews     // Catch: all -> 0x0086
            boolean r0 = r0.isEmpty()     // Catch: all -> 0x0086
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x001b
            r0 = r6
            r1 = 0
            r0.mPostTimeNs = r1
            android.support.p001v4.p003os.TraceCompat.endSection()
            return
        L_0x001b:
            r0 = r6
            java.util.ArrayList<android.support.v7.widget.RecyclerView> r0 = r0.mRecyclerViews     // Catch: all -> 0x0086
            int r0 = r0.size()     // Catch: all -> 0x0086
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = 0
            r10 = r0
        L_0x0028:
            r0 = r9
            r1 = r8
            if (r0 >= r1) goto L_0x005c
            r0 = r6
            java.util.ArrayList<android.support.v7.widget.RecyclerView> r0 = r0.mRecyclerViews     // Catch: all -> 0x0086
            r1 = r9
            java.lang.Object r0 = r0.get(r1)     // Catch: all -> 0x0086
            android.support.v7.widget.RecyclerView r0 = (android.support.p004v7.widget.RecyclerView) r0     // Catch: all -> 0x0086
            r12 = r0
            r0 = r10
            r13 = r0
            r0 = r12
            int r0 = r0.getWindowVisibility()     // Catch: all -> 0x0086
            if (r0 != 0) goto L_0x0052
            r0 = r12
            long r0 = r0.getDrawingTime()     // Catch: all -> 0x0086
            r1 = r10
            long r0 = java.lang.Math.max(r0, r1)     // Catch: all -> 0x0086
            r13 = r0
        L_0x0052:
            int r9 = r9 + 1
            r0 = r13
            r10 = r0
            goto L_0x0028
        L_0x005c:
            r0 = r10
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x006c
            r0 = r6
            r1 = 0
            r0.mPostTimeNs = r1
            android.support.p001v4.p003os.TraceCompat.endSection()
            return
        L_0x006c:
            r0 = r6
            java.util.concurrent.TimeUnit r1 = java.util.concurrent.TimeUnit.MILLISECONDS     // Catch: all -> 0x0086
            r2 = r10
            long r1 = r1.toNanos(r2)     // Catch: all -> 0x0086
            r2 = r6
            long r2 = r2.mFrameIntervalNs     // Catch: all -> 0x0086
            long r1 = r1 + r2
            r0.prefetch(r1)     // Catch: all -> 0x0086
            r0 = r6
            r1 = 0
            r0.mPostTimeNs = r1
            android.support.p001v4.p003os.TraceCompat.endSection()
            return
        L_0x0086:
            r12 = move-exception
            r0 = r6
            r1 = 0
            r0.mPostTimeNs = r1
            android.support.p001v4.p003os.TraceCompat.endSection()
            r0 = r12
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.p004v7.widget.GapWorker.run():void");
    }
}
