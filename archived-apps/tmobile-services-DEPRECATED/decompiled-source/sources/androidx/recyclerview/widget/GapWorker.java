package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import androidx.annotation.Nullable;
import androidx.core.p004os.TraceCompat;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/GapWorker.class */
public final class GapWorker implements Runnable {

    /* renamed from: j */
    static final ThreadLocal<GapWorker> f4559j = new ThreadLocal<>();

    /* renamed from: k */
    static Comparator<Task> f4560k = new Comparator<Task>() { // from class: androidx.recyclerview.widget.GapWorker.1
        /* renamed from: a */
        public int compare(Task task, Task task2) {
            int i = 1;
            int i2 = 1;
            if ((task.f4572d == null) != (task2.f4572d == null)) {
                if (task.f4572d != null) {
                    i2 = -1;
                }
                return i2;
            }
            boolean z = task.f4569a;
            if (z != task2.f4569a) {
                if (z) {
                    i = -1;
                }
                return i;
            }
            int i3 = task2.f4570b - task.f4570b;
            if (i3 != 0) {
                return i3;
            }
            int i4 = task.f4571c - task2.f4571c;
            if (i4 != 0) {
                return i4;
            }
            return 0;
        }
    };

    /* renamed from: g */
    long f4562g;

    /* renamed from: h */
    long f4563h;

    /* renamed from: f */
    ArrayList<RecyclerView> f4561f = new ArrayList<>();

    /* renamed from: i */
    private ArrayList<Task> f4564i = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    @SuppressLint({"VisibleForTests"})
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl.class */
    public static class LayoutPrefetchRegistryImpl implements RecyclerView.LayoutManager.LayoutPrefetchRegistry {

        /* renamed from: a */
        int f4565a;

        /* renamed from: b */
        int f4566b;

        /* renamed from: c */
        int[] f4567c;

        /* renamed from: d */
        int f4568d;

        @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager.LayoutPrefetchRegistry
        /* renamed from: a */
        public void mo17364a(int i, int i2) {
            if (i < 0) {
                throw new IllegalArgumentException("Layout positions must be non-negative");
            } else if (i2 >= 0) {
                int i3 = this.f4568d * 2;
                int[] iArr = this.f4567c;
                if (iArr == null) {
                    int[] iArr2 = new int[4];
                    this.f4567c = iArr2;
                    Arrays.fill(iArr2, -1);
                } else if (i3 >= iArr.length) {
                    int[] iArr3 = new int[i3 * 2];
                    this.f4567c = iArr3;
                    System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
                }
                int[] iArr4 = this.f4567c;
                iArr4[i3] = i;
                iArr4[i3 + 1] = i2;
                this.f4568d++;
            } else {
                throw new IllegalArgumentException("Pixel distance must be non-negative");
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: b */
        public void m17751b() {
            int[] iArr = this.f4567c;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.f4568d = 0;
        }

        /* renamed from: c */
        void m17750c(RecyclerView recyclerView, boolean z) {
            this.f4568d = 0;
            int[] iArr = this.f4567c;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            RecyclerView.LayoutManager layoutManager = recyclerView.mLayout;
            if (recyclerView.mAdapter != null && layoutManager != null && layoutManager.m17374v0()) {
                if (z) {
                    if (!recyclerView.mAdapterHelper.m17878p()) {
                        layoutManager.mo17383q(recyclerView.mAdapter.getItemCount(), this);
                    }
                } else if (!recyclerView.hasPendingAdapterUpdates()) {
                    layoutManager.mo17137p(this.f4565a, this.f4566b, recyclerView.mState, this);
                }
                int i = this.f4568d;
                if (i > layoutManager.f4765m) {
                    layoutManager.f4765m = i;
                    layoutManager.f4766n = z;
                    recyclerView.mRecycler.m17336K();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: d */
        public boolean m17749d(int i) {
            if (this.f4567c == null) {
                return false;
            }
            int i2 = this.f4568d;
            for (int i3 = 0; i3 < i2 * 2; i3 += 2) {
                if (this.f4567c[i3] == i) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: e */
        void m17748e(int i, int i2) {
            this.f4565a = i;
            this.f4566b = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/GapWorker$Task.class */
    public static class Task {

        /* renamed from: a */
        public boolean f4569a;

        /* renamed from: b */
        public int f4570b;

        /* renamed from: c */
        public int f4571c;

        /* renamed from: d */
        public RecyclerView f4572d;

        /* renamed from: e */
        public int f4573e;

        Task() {
        }

        /* renamed from: a */
        public void m17747a() {
            this.f4569a = false;
            this.f4570b = 0;
            this.f4571c = 0;
            this.f4572d = null;
            this.f4573e = 0;
        }
    }

    /* renamed from: b */
    private void m17761b() {
        Task task;
        int size = this.f4561f.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            RecyclerView recyclerView = this.f4561f.get(i2);
            i = i;
            if (recyclerView.getWindowVisibility() == 0) {
                recyclerView.mPrefetchRegistry.m17750c(recyclerView, false);
                i += recyclerView.mPrefetchRegistry.f4568d;
            }
        }
        this.f4564i.ensureCapacity(i);
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            RecyclerView recyclerView2 = this.f4561f.get(i4);
            if (recyclerView2.getWindowVisibility() != 0) {
                i3 = i3;
            } else {
                LayoutPrefetchRegistryImpl layoutPrefetchRegistryImpl = recyclerView2.mPrefetchRegistry;
                int abs = Math.abs(layoutPrefetchRegistryImpl.f4565a) + Math.abs(layoutPrefetchRegistryImpl.f4566b);
                int i5 = 0;
                while (true) {
                    i3 = i3;
                    if (i5 < layoutPrefetchRegistryImpl.f4568d * 2) {
                        if (i3 >= this.f4564i.size()) {
                            task = new Task();
                            this.f4564i.add(task);
                        } else {
                            task = this.f4564i.get(i3);
                        }
                        int i6 = layoutPrefetchRegistryImpl.f4567c[i5 + 1];
                        task.f4569a = i6 <= abs;
                        task.f4570b = abs;
                        task.f4571c = i6;
                        task.f4572d = recyclerView2;
                        task.f4573e = layoutPrefetchRegistryImpl.f4567c[i5];
                        i3++;
                        i5 += 2;
                    }
                }
            }
        }
        Collections.sort(this.f4564i, f4560k);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* renamed from: c */
    private void m17760c(Task task, long j) {
        RecyclerView.ViewHolder i = m17754i(task.f4572d, task.f4573e, task.f4569a ? 9223372036854775807 : j);
        if (i != null && i.mNestedRecyclerView != null && i.isBound() && !i.isInvalid()) {
            m17755h(i.mNestedRecyclerView.get(), j);
        }
    }

    /* renamed from: d */
    private void m17759d(long j) {
        for (int i = 0; i < this.f4564i.size(); i++) {
            Task task = this.f4564i.get(i);
            if (task.f4572d != null) {
                m17760c(task, j);
                task.m17747a();
            } else {
                return;
            }
        }
    }

    /* renamed from: e */
    static boolean m17758e(RecyclerView recyclerView, int i) {
        int j = recyclerView.mChildHelper.m17834j();
        for (int i2 = 0; i2 < j; i2++) {
            RecyclerView.ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(recyclerView.mChildHelper.m17835i(i2));
            if (childViewHolderInt.mPosition == i && !childViewHolderInt.isInvalid()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: h */
    private void m17755h(@Nullable RecyclerView recyclerView, long j) {
        if (recyclerView != null) {
            if (recyclerView.mDataSetHasChangedAfterLayout && recyclerView.mChildHelper.m17834j() != 0) {
                recyclerView.removeAndRecycleViews();
            }
            LayoutPrefetchRegistryImpl layoutPrefetchRegistryImpl = recyclerView.mPrefetchRegistry;
            layoutPrefetchRegistryImpl.m17750c(recyclerView, true);
            if (layoutPrefetchRegistryImpl.f4568d != 0) {
                try {
                    TraceCompat.m19438a("RV Nested Prefetch");
                    recyclerView.mState.m17271f(recyclerView.mAdapter);
                    for (int i = 0; i < layoutPrefetchRegistryImpl.f4568d * 2; i += 2) {
                        m17754i(recyclerView, layoutPrefetchRegistryImpl.f4567c[i], j);
                    }
                } finally {
                    TraceCompat.m19437b();
                }
            }
        }
    }

    /* renamed from: i */
    private RecyclerView.ViewHolder m17754i(RecyclerView recyclerView, int i, long j) {
        if (m17758e(recyclerView, i)) {
            return null;
        }
        RecyclerView.Recycler recycler = recyclerView.mRecycler;
        try {
            recyclerView.onEnterLayoutOrScroll();
            RecyclerView.ViewHolder I = recycler.m17338I(i, false, j);
            if (I != null) {
                if (!I.isBound() || I.isInvalid()) {
                    recycler.m17333a(I, false);
                } else {
                    recycler.m17345B(I.itemView);
                }
            }
            return I;
        } finally {
            recyclerView.onExitLayoutOrScroll(false);
        }
    }

    /* renamed from: a */
    public void m17762a(RecyclerView recyclerView) {
        this.f4561f.add(recyclerView);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public void m17757f(RecyclerView recyclerView, int i, int i2) {
        if (recyclerView.isAttachedToWindow() && this.f4562g == 0) {
            this.f4562g = recyclerView.getNanoTime();
            recyclerView.post(this);
        }
        recyclerView.mPrefetchRegistry.m17748e(i, i2);
    }

    /* renamed from: g */
    void m17756g(long j) {
        m17761b();
        m17759d(j);
    }

    /* renamed from: j */
    public void m17753j(RecyclerView recyclerView) {
        this.f4561f.remove(recyclerView);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference failed for: r0v28 */
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
            androidx.core.p004os.TraceCompat.m19438a(r0)     // Catch: all -> 0x007f
            r0 = r6
            java.util.ArrayList<androidx.recyclerview.widget.RecyclerView> r0 = r0.f4561f     // Catch: all -> 0x007f
            boolean r0 = r0.isEmpty()     // Catch: all -> 0x007f
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x001a
        L_0x0011:
            r0 = r6
            r1 = 0
            r0.f4562g = r1
            androidx.core.p004os.TraceCompat.m19437b()
            return
        L_0x001a:
            r0 = r6
            java.util.ArrayList<androidx.recyclerview.widget.RecyclerView> r0 = r0.f4561f     // Catch: all -> 0x007f
            int r0 = r0.size()     // Catch: all -> 0x007f
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = 0
            r10 = r0
        L_0x0027:
            r0 = r9
            r1 = r8
            if (r0 >= r1) goto L_0x005b
            r0 = r6
            java.util.ArrayList<androidx.recyclerview.widget.RecyclerView> r0 = r0.f4561f     // Catch: all -> 0x007f
            r1 = r9
            java.lang.Object r0 = r0.get(r1)     // Catch: all -> 0x007f
            androidx.recyclerview.widget.RecyclerView r0 = (androidx.recyclerview.widget.RecyclerView) r0     // Catch: all -> 0x007f
            r12 = r0
            r0 = r10
            r13 = r0
            r0 = r12
            int r0 = r0.getWindowVisibility()     // Catch: all -> 0x007f
            if (r0 != 0) goto L_0x0051
            r0 = r12
            long r0 = r0.getDrawingTime()     // Catch: all -> 0x007f
            r1 = r10
            long r0 = java.lang.Math.max(r0, r1)     // Catch: all -> 0x007f
            r13 = r0
        L_0x0051:
            int r9 = r9 + 1
            r0 = r13
            r10 = r0
            goto L_0x0027
        L_0x005b:
            r0 = r10
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0065
            goto L_0x0011
        L_0x0065:
            r0 = r6
            java.util.concurrent.TimeUnit r1 = java.util.concurrent.TimeUnit.MILLISECONDS     // Catch: all -> 0x007f
            r2 = r10
            long r1 = r1.toNanos(r2)     // Catch: all -> 0x007f
            r2 = r6
            long r2 = r2.f4563h     // Catch: all -> 0x007f
            long r1 = r1 + r2
            r0.m17756g(r1)     // Catch: all -> 0x007f
            r0 = r6
            r1 = 0
            r0.f4562g = r1
            androidx.core.p004os.TraceCompat.m19437b()
            return
        L_0x007f:
            r12 = move-exception
            r0 = r6
            r1 = 0
            r0.f4562g = r1
            androidx.core.p004os.TraceCompat.m19437b()
            r0 = r12
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GapWorker.run():void");
    }
}
