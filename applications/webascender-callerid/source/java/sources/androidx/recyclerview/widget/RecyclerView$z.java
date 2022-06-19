package androidx.recyclerview.widget;

import android.graphics.PointF;
import android.util.Log;
import android.view.View;
import android.view.animation.Interpolator;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$z.class */
public abstract class RecyclerView$z {
    private RecyclerView$o mLayoutManager;
    private boolean mPendingInitialRun;
    private RecyclerView mRecyclerView;
    private boolean mRunning;
    private boolean mStarted;
    private View mTargetView;
    private int mTargetPosition = -1;
    private final C0366a mRecyclingAction = new C0366a(0, 0);

    /* renamed from: androidx.recyclerview.widget.RecyclerView$z$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$z$a.class */
    public static class C0366a {

        /* renamed from: a */
        private int f1986a;

        /* renamed from: b */
        private int f1987b;

        /* renamed from: c */
        private int f1988c;

        /* renamed from: d */
        private int f1989d;

        /* renamed from: e */
        private Interpolator f1990e;

        /* renamed from: f */
        private boolean f1991f;

        /* renamed from: g */
        private int f1992g;

        public C0366a(int i, int i2) {
            this(i, i2, Integer.MIN_VALUE, null);
        }

        public C0366a(int i, int i2, int i3, Interpolator interpolator) {
            this.f1989d = -1;
            this.f1991f = false;
            this.f1992g = 0;
            this.f1986a = i;
            this.f1987b = i2;
            this.f1988c = i3;
            this.f1990e = interpolator;
        }

        /* renamed from: e */
        private void m5049e() {
            if (this.f1990e == null || this.f1988c >= 1) {
                if (this.f1988c < 1) {
                    throw new IllegalStateException("Scroll duration must be a positive number");
                }
                return;
            }
            throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
        }

        /* renamed from: a */
        boolean m5053a() {
            return this.f1989d >= 0;
        }

        /* renamed from: b */
        public void m5052b(int i) {
            this.f1989d = i;
        }

        /* renamed from: c */
        void m5051c(RecyclerView recyclerView) {
            int i = this.f1989d;
            if (i >= 0) {
                this.f1989d = -1;
                recyclerView.z0(i);
                this.f1991f = false;
            } else if (!this.f1991f) {
                this.f1992g = 0;
            } else {
                m5049e();
                recyclerView.j0.m5283f(this.f1986a, this.f1987b, this.f1988c, this.f1990e);
                int i2 = this.f1992g + 1;
                this.f1992g = i2;
                if (i2 > 10) {
                    Log.e("RecyclerView", "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
                }
                this.f1991f = false;
            }
        }

        /* renamed from: d */
        public void m5050d(int i, int i2, int i3, Interpolator interpolator) {
            this.f1986a = i;
            this.f1987b = i2;
            this.f1988c = i3;
            this.f1990e = interpolator;
            this.f1991f = true;
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$z$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$z$b.class */
    public interface AbstractC0367b {
        /* renamed from: a */
        PointF m5048a(int i);
    }

    public PointF computeScrollVectorForPosition(int i) {
        RecyclerView$o layoutManager = getLayoutManager();
        if (layoutManager instanceof AbstractC0367b) {
            return ((AbstractC0367b) layoutManager).m5048a(i);
        }
        Log.w("RecyclerView", "You should override computeScrollVectorForPosition when the LayoutManager does not implement " + AbstractC0367b.class.getCanonicalName());
        return null;
    }

    public View findViewByPosition(int i) {
        return this.mRecyclerView.r.m5256C(i);
    }

    public int getChildCount() {
        return this.mRecyclerView.r.m5235J();
    }

    public int getChildPosition(View view) {
        return this.mRecyclerView.f0(view);
    }

    public RecyclerView$o getLayoutManager() {
        return this.mLayoutManager;
    }

    public int getTargetPosition() {
        return this.mTargetPosition;
    }

    public boolean isPendingInitialRun() {
        return this.mPendingInitialRun;
    }

    public boolean isRunning() {
        return this.mRunning;
    }

    protected void normalize(PointF pointF) {
        float f = pointF.x;
        float f2 = pointF.y;
        float sqrt = (float) Math.sqrt((f * f) + (f2 * f2));
        pointF.x /= sqrt;
        pointF.y /= sqrt;
    }

    public void onAnimation(int i, int i2) {
        PointF computeScrollVectorForPosition;
        RecyclerView recyclerView = this.mRecyclerView;
        if (this.mTargetPosition == -1 || recyclerView == null) {
            stop();
        }
        if (this.mPendingInitialRun && this.mTargetView == null && this.mLayoutManager != null && (computeScrollVectorForPosition = computeScrollVectorForPosition(this.mTargetPosition)) != null) {
            float f = computeScrollVectorForPosition.x;
            if (f != 0.0f || computeScrollVectorForPosition.y != 0.0f) {
                recyclerView.j1((int) Math.signum(f), (int) Math.signum(computeScrollVectorForPosition.y), (int[]) null);
            }
        }
        this.mPendingInitialRun = false;
        View view = this.mTargetView;
        if (view != null) {
            if (getChildPosition(view) == this.mTargetPosition) {
                onTargetFound(this.mTargetView, recyclerView.m0, this.mRecyclingAction);
                this.mRecyclingAction.m5051c(recyclerView);
                stop();
            } else {
                Log.e("RecyclerView", "Passed over target position while smooth scrolling.");
                this.mTargetView = null;
            }
        }
        if (this.mRunning) {
            onSeekTargetStep(i, i2, recyclerView.m0, this.mRecyclingAction);
            boolean m5053a = this.mRecyclingAction.m5053a();
            this.mRecyclingAction.m5051c(recyclerView);
            if (!m5053a || !this.mRunning) {
                return;
            }
            this.mPendingInitialRun = true;
            recyclerView.j0.m5284e();
        }
    }

    public void onChildAttachedToWindow(View view) {
        if (getChildPosition(view) == getTargetPosition()) {
            this.mTargetView = view;
        }
    }

    protected abstract void onSeekTargetStep(int i, int i2, RecyclerView$a0 recyclerView$a0, C0366a c0366a);

    protected abstract void onStart();

    protected abstract void onStop();

    protected abstract void onTargetFound(View view, RecyclerView$a0 recyclerView$a0, C0366a c0366a);

    public void setTargetPosition(int i) {
        this.mTargetPosition = i;
    }

    public void start(RecyclerView recyclerView, RecyclerView$o recyclerView$o) {
        recyclerView.j0.m5282g();
        if (this.mStarted) {
            Log.w("RecyclerView", "An instance of " + getClass().getSimpleName() + " was started more than once. Each instance of" + getClass().getSimpleName() + " is intended to only be used once. You should create a new instance for each use.");
        }
        this.mRecyclerView = recyclerView;
        this.mLayoutManager = recyclerView$o;
        int i = this.mTargetPosition;
        if (i != -1) {
            recyclerView.m0.f1918a = i;
            this.mRunning = true;
            this.mPendingInitialRun = true;
            this.mTargetView = findViewByPosition(getTargetPosition());
            onStart();
            this.mRecyclerView.j0.m5284e();
            this.mStarted = true;
            return;
        }
        throw new IllegalArgumentException("Invalid target position");
    }

    public final void stop() {
        if (!this.mRunning) {
            return;
        }
        this.mRunning = false;
        onStop();
        this.mRecyclerView.m0.f1918a = -1;
        this.mTargetView = null;
        this.mTargetPosition = -1;
        this.mPendingInitialRun = false;
        this.mLayoutManager.m5182f1(this);
        this.mLayoutManager = null;
        this.mRecyclerView = null;
    }
}
