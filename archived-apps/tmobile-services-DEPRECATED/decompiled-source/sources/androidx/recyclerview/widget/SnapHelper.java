package androidx.recyclerview.widget;

import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.Scroller;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.common.api.Api;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/SnapHelper.class */
public abstract class SnapHelper extends RecyclerView.OnFlingListener {

    /* renamed from: a */
    RecyclerView f4842a;

    /* renamed from: b */
    private Scroller f4843b;

    /* renamed from: c */
    private final RecyclerView.OnScrollListener f4844c = new RecyclerView.OnScrollListener() { // from class: androidx.recyclerview.widget.SnapHelper.1

        /* renamed from: a */
        boolean f4845a = false;

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        /* renamed from: a */
        public void mo5963a(RecyclerView recyclerView, int i) {
            super.mo5963a(recyclerView, i);
            if (i == 0 && this.f4845a) {
                this.f4845a = false;
                SnapHelper.this.m17219l();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        /* renamed from: b */
        public void mo7064b(RecyclerView recyclerView, int i, int i2) {
            if (i != 0 || i2 != 0) {
                this.f4845a = true;
            }
        }
    };

    /* renamed from: g */
    private void m17223g() {
        this.f4842a.removeOnScrollListener(this.f4844c);
        this.f4842a.setOnFlingListener(null);
    }

    /* renamed from: j */
    private void m17221j() throws IllegalStateException {
        if (this.f4842a.getOnFlingListener() == null) {
            this.f4842a.addOnScrollListener(this.f4844c);
            this.f4842a.setOnFlingListener(this);
            return;
        }
        throw new IllegalStateException("An instance of OnFlingListener already set.");
    }

    /* renamed from: k */
    private boolean m17220k(@NonNull RecyclerView.LayoutManager layoutManager, int i, int i2) {
        RecyclerView.SmoothScroller e;
        int i3;
        if (!(layoutManager instanceof RecyclerView.SmoothScroller.ScrollVectorProvider) || (e = m17225e(layoutManager)) == null || (i3 = mo17222i(layoutManager, i, i2)) == -1) {
            return false;
        }
        e.m17284p(i3);
        layoutManager.m17440K1(e);
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0039, code lost:
        if (java.lang.Math.abs(r6) > r0) goto L_0x003c;
     */
    @Override // androidx.recyclerview.widget.RecyclerView.OnFlingListener
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo17229a(int r6, int r7) {
        /*
            r5 = this;
            r0 = r5
            androidx.recyclerview.widget.RecyclerView r0 = r0.f4842a
            androidx.recyclerview.widget.RecyclerView$LayoutManager r0 = r0.getLayoutManager()
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = r8
            if (r0 != 0) goto L_0x0011
            r0 = 0
            return r0
        L_0x0011:
            r0 = r5
            androidx.recyclerview.widget.RecyclerView r0 = r0.f4842a
            androidx.recyclerview.widget.RecyclerView$Adapter r0 = r0.getAdapter()
            if (r0 != 0) goto L_0x001d
            r0 = 0
            return r0
        L_0x001d:
            r0 = r5
            androidx.recyclerview.widget.RecyclerView r0 = r0.f4842a
            int r0 = r0.getMinFlingVelocity()
            r10 = r0
            r0 = r7
            int r0 = java.lang.Math.abs(r0)
            r1 = r10
            if (r0 > r1) goto L_0x003c
            r0 = r9
            r11 = r0
            r0 = r6
            int r0 = java.lang.Math.abs(r0)
            r1 = r10
            if (r0 <= r1) goto L_0x004d
        L_0x003c:
            r0 = r9
            r11 = r0
            r0 = r5
            r1 = r8
            r2 = r6
            r3 = r7
            boolean r0 = r0.m17220k(r1, r2, r3)
            if (r0 == 0) goto L_0x004d
            r0 = 1
            r11 = r0
        L_0x004d:
            r0 = r11
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.SnapHelper.mo17229a(int, int):boolean");
    }

    /* renamed from: b */
    public void m17228b(@Nullable RecyclerView recyclerView) throws IllegalStateException {
        RecyclerView recyclerView2 = this.f4842a;
        if (recyclerView2 != recyclerView) {
            if (recyclerView2 != null) {
                m17223g();
            }
            this.f4842a = recyclerView;
            if (recyclerView != null) {
                m17221j();
                this.f4843b = new Scroller(this.f4842a.getContext(), new DecelerateInterpolator());
                m17219l();
            }
        }
    }

    @Nullable
    /* renamed from: c */
    public abstract int[] mo17227c(@NonNull RecyclerView.LayoutManager layoutManager, @NonNull View view);

    /* renamed from: d */
    public int[] m17226d(int i, int i2) {
        this.f4843b.fling(0, 0, i, i2, Integer.MIN_VALUE, Api.BaseClientBuilder.API_PRIORITY_OTHER, Integer.MIN_VALUE, Api.BaseClientBuilder.API_PRIORITY_OTHER);
        return new int[]{this.f4843b.getFinalX(), this.f4843b.getFinalY()};
    }

    @Nullable
    /* renamed from: e */
    protected RecyclerView.SmoothScroller m17225e(RecyclerView.LayoutManager layoutManager) {
        return mo17224f(layoutManager);
    }

    @Nullable
    @Deprecated
    /* renamed from: f */
    protected LinearSmoothScroller mo17224f(RecyclerView.LayoutManager layoutManager) {
        if (!(layoutManager instanceof RecyclerView.SmoothScroller.ScrollVectorProvider)) {
            return null;
        }
        return new LinearSmoothScroller(this.f4842a.getContext()) { // from class: androidx.recyclerview.widget.SnapHelper.2
            @Override // androidx.recyclerview.widget.LinearSmoothScroller, androidx.recyclerview.widget.RecyclerView.SmoothScroller
            /* renamed from: o */
            protected void mo17218o(View view, RecyclerView.State state, RecyclerView.SmoothScroller.Action action) {
                SnapHelper snapHelper = SnapHelper.this;
                RecyclerView recyclerView = snapHelper.f4842a;
                if (recyclerView != null) {
                    int[] c = snapHelper.mo17227c(recyclerView.getLayoutManager(), view);
                    int i = c[0];
                    int i2 = c[1];
                    int w = m17577w(Math.max(Math.abs(i), Math.abs(i2)));
                    if (w > 0) {
                        action.m17278d(i, i2, w, this.f4699j);
                    }
                }
            }

            @Override // androidx.recyclerview.widget.LinearSmoothScroller
            /* renamed from: v */
            protected float mo9857v(DisplayMetrics displayMetrics) {
                return 100.0f / displayMetrics.densityDpi;
            }
        };
    }

    @Nullable
    /* renamed from: h */
    public abstract View mo16381h(RecyclerView.LayoutManager layoutManager);

    /* renamed from: i */
    public abstract int mo17222i(RecyclerView.LayoutManager layoutManager, int i, int i2);

    /* renamed from: l */
    void m17219l() {
        RecyclerView.LayoutManager layoutManager;
        View h;
        RecyclerView recyclerView = this.f4842a;
        if (recyclerView != null && (layoutManager = recyclerView.getLayoutManager()) != null && (h = mo16381h(layoutManager)) != null) {
            int[] c = mo17227c(layoutManager, h);
            if (c[0] != 0 || c[1] != 0) {
                this.f4842a.smoothScrollBy(c[0], c[1]);
            }
        }
    }
}
