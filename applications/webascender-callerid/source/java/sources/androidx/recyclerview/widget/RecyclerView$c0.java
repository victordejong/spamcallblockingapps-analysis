package androidx.recyclerview.widget;

import android.os.Build;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
import f.h.l.t;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$c0.class */
public class RecyclerView$c0 implements Runnable {

    /* renamed from: f */
    private int f1936f;

    /* renamed from: g */
    private int f1937g;

    /* renamed from: h */
    OverScroller f1938h;

    /* renamed from: i */
    Interpolator f1939i;

    /* renamed from: j */
    private boolean f1940j = false;

    /* renamed from: k */
    private boolean f1941k = false;

    /* renamed from: l */
    final /* synthetic */ RecyclerView f1942l;

    RecyclerView$c0(RecyclerView recyclerView) {
        this.f1942l = recyclerView;
        Interpolator interpolator = RecyclerView.L0;
        this.f1939i = interpolator;
        this.f1938h = new OverScroller(recyclerView.getContext(), interpolator);
    }

    /* renamed from: a */
    private int m5288a(int i, int i2, int i3, int i4) {
        int abs;
        int abs2;
        int i5;
        boolean z = Math.abs(i) > Math.abs(i2);
        int sqrt = (int) Math.sqrt((i3 * i3) + (i4 * i4));
        int sqrt2 = (int) Math.sqrt((i * i) + (i2 * i2));
        RecyclerView recyclerView = this.f1942l;
        int width = z ? recyclerView.getWidth() : recyclerView.getHeight();
        float f = sqrt2;
        float f2 = width;
        float f3 = width / 2;
        float m5287b = m5287b(Math.min(1.0f, (f * 1.0f) / f2));
        if (sqrt > 0) {
            i5 = Math.round(Math.abs((f3 + (m5287b * f3)) / sqrt) * 1000.0f) * 4;
        } else {
            i5 = (int) ((((z ? abs : abs2) / f2) + 1.0f) * 300.0f);
        }
        return Math.min(i5, 2000);
    }

    /* renamed from: b */
    private float m5287b(float f) {
        return (float) Math.sin((f - 0.5f) * 0.47123894f);
    }

    /* renamed from: d */
    private void m5285d() {
        this.f1942l.removeCallbacks(this);
        t.c0(this.f1942l, this);
    }

    /* renamed from: c */
    public void m5286c(int i, int i2) {
        this.f1942l.setScrollState(2);
        this.f1937g = 0;
        this.f1936f = 0;
        Interpolator interpolator = this.f1939i;
        Interpolator interpolator2 = RecyclerView.L0;
        if (interpolator != interpolator2) {
            this.f1939i = interpolator2;
            this.f1938h = new OverScroller(this.f1942l.getContext(), interpolator2);
        }
        this.f1938h.fling(0, 0, i, i2, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
        m5284e();
    }

    /* renamed from: e */
    public void m5284e() {
        if (this.f1940j) {
            this.f1941k = true;
        } else {
            m5285d();
        }
    }

    /* renamed from: f */
    public void m5283f(int i, int i2, int i3, Interpolator interpolator) {
        int i4 = i3;
        if (i3 == Integer.MIN_VALUE) {
            i4 = m5288a(i, i2, 0, 0);
        }
        Interpolator interpolator2 = interpolator;
        if (interpolator == null) {
            interpolator2 = RecyclerView.L0;
        }
        if (this.f1939i != interpolator2) {
            this.f1939i = interpolator2;
            this.f1938h = new OverScroller(this.f1942l.getContext(), interpolator2);
        }
        this.f1937g = 0;
        this.f1936f = 0;
        this.f1942l.setScrollState(2);
        this.f1938h.startScroll(0, 0, i, i2, i4);
        if (Build.VERSION.SDK_INT < 23) {
            this.f1938h.computeScrollOffset();
        }
        m5284e();
    }

    /* renamed from: g */
    public void m5282g() {
        this.f1942l.removeCallbacks(this);
        this.f1938h.abortAnimation();
    }

    @Override // java.lang.Runnable
    public void run() {
        int i;
        int i2;
        int i3;
        RecyclerView recyclerView = this.f1942l;
        if (recyclerView.r == null) {
            m5282g();
            return;
        }
        this.f1941k = false;
        this.f1940j = true;
        recyclerView.v();
        OverScroller overScroller = this.f1938h;
        if (overScroller.computeScrollOffset()) {
            int currX = overScroller.getCurrX();
            int currY = overScroller.getCurrY();
            int i4 = currX - this.f1936f;
            int i5 = currY - this.f1937g;
            this.f1936f = currX;
            this.f1937g = currY;
            RecyclerView recyclerView2 = this.f1942l;
            int[] iArr = recyclerView2.z0;
            iArr[0] = 0;
            iArr[1] = 0;
            int i6 = i4;
            int i7 = i5;
            if (recyclerView2.G(i4, i5, iArr, (int[]) null, 1)) {
                int[] iArr2 = this.f1942l.z0;
                i6 = i4 - iArr2[0];
                i7 = i5 - iArr2[1];
            }
            if (this.f1942l.getOverScrollMode() != 2) {
                this.f1942l.u(i6, i7);
            }
            RecyclerView recyclerView3 = this.f1942l;
            if (recyclerView3.q != null) {
                int[] iArr3 = recyclerView3.z0;
                iArr3[0] = 0;
                iArr3[1] = 0;
                recyclerView3.j1(i6, i7, iArr3);
                RecyclerView recyclerView4 = this.f1942l;
                int[] iArr4 = recyclerView4.z0;
                int i8 = iArr4[0];
                int i9 = iArr4[1];
                int i10 = i6 - i8;
                int i11 = i7 - i9;
                RecyclerView$z recyclerView$z = recyclerView4.r.f1951g;
                i6 = i10;
                i = i9;
                i3 = i8;
                i2 = i11;
                if (recyclerView$z != null) {
                    i6 = i10;
                    i = i9;
                    i3 = i8;
                    i2 = i11;
                    if (!recyclerView$z.isPendingInitialRun()) {
                        i6 = i10;
                        i = i9;
                        i3 = i8;
                        i2 = i11;
                        if (recyclerView$z.isRunning()) {
                            int m5295b = this.f1942l.m0.m5295b();
                            if (m5295b == 0) {
                                recyclerView$z.stop();
                                i6 = i10;
                                i = i9;
                                i3 = i8;
                                i2 = i11;
                            } else if (recyclerView$z.getTargetPosition() >= m5295b) {
                                recyclerView$z.setTargetPosition(m5295b - 1);
                                recyclerView$z.onAnimation(i8, i9);
                                i6 = i10;
                                i = i9;
                                i3 = i8;
                                i2 = i11;
                            } else {
                                recyclerView$z.onAnimation(i8, i9);
                                i6 = i10;
                                i = i9;
                                i3 = i8;
                                i2 = i11;
                            }
                        }
                    }
                }
            } else {
                i = 0;
                i2 = i7;
                i3 = 0;
            }
            if (!this.f1942l.t.isEmpty()) {
                this.f1942l.invalidate();
            }
            RecyclerView recyclerView5 = this.f1942l;
            int[] iArr5 = recyclerView5.z0;
            iArr5[0] = 0;
            iArr5[1] = 0;
            recyclerView5.H(i3, i, i6, i2, (int[]) null, 1, iArr5);
            RecyclerView recyclerView6 = this.f1942l;
            int[] iArr6 = recyclerView6.z0;
            int i12 = i6 - iArr6[0];
            int i13 = i2 - iArr6[1];
            if (i3 != 0 || i != 0) {
                recyclerView6.J(i3, i);
            }
            if (!RecyclerView.e(this.f1942l)) {
                this.f1942l.invalidate();
            }
            boolean z = overScroller.isFinished() || (((overScroller.getCurrX() == overScroller.getFinalX()) || i12 != 0) && ((overScroller.getCurrY() == overScroller.getFinalY()) || i13 != 0));
            RecyclerView$z recyclerView$z2 = this.f1942l.r.f1951g;
            if ((recyclerView$z2 != null && recyclerView$z2.isPendingInitialRun()) || !z) {
                m5284e();
                RecyclerView recyclerView7 = this.f1942l;
                RunnableC0389k runnableC0389k = recyclerView7.k0;
                if (runnableC0389k != null) {
                    runnableC0389k.m4919f(recyclerView7, i3, i);
                }
            } else {
                if (this.f1942l.getOverScrollMode() != 2) {
                    int currVelocity = (int) overScroller.getCurrVelocity();
                    int i14 = i12 < 0 ? -currVelocity : i12 > 0 ? currVelocity : 0;
                    if (i13 < 0) {
                        currVelocity = -currVelocity;
                    } else if (i13 <= 0) {
                        currVelocity = 0;
                    }
                    this.f1942l.a(i14, currVelocity);
                }
                if (RecyclerView.H0) {
                    this.f1942l.l0.b();
                }
            }
        }
        RecyclerView$z recyclerView$z3 = this.f1942l.r.f1951g;
        if (recyclerView$z3 != null && recyclerView$z3.isPendingInitialRun()) {
            recyclerView$z3.onAnimation(0, 0);
        }
        this.f1940j = false;
        if (this.f1941k) {
            m5285d();
            return;
        }
        this.f1942l.setScrollState(0);
        this.f1942l.w1(1);
    }
}
