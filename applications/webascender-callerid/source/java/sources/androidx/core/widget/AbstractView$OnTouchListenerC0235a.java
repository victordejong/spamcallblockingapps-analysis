package androidx.core.widget;

import android.content.res.Resources;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import com.revenuecat.purchases.common.BackendKt;
import f.h.l.t;
/* renamed from: androidx.core.widget.a */
/* loaded from: classes-dex2jar.jar:androidx/core/widget/a.class */
public abstract class AbstractView$OnTouchListenerC0235a implements View.OnTouchListener {

    /* renamed from: w */
    private static final int f1345w = ViewConfiguration.getTapTimeout();

    /* renamed from: h */
    final View f1348h;

    /* renamed from: i */
    private Runnable f1349i;

    /* renamed from: l */
    private int f1352l;

    /* renamed from: m */
    private int f1353m;

    /* renamed from: q */
    private boolean f1357q;

    /* renamed from: r */
    boolean f1358r;

    /* renamed from: s */
    boolean f1359s;

    /* renamed from: t */
    boolean f1360t;

    /* renamed from: u */
    private boolean f1361u;

    /* renamed from: v */
    private boolean f1362v;

    /* renamed from: f */
    final C0236a f1346f = new C0236a();

    /* renamed from: g */
    private final Interpolator f1347g = new AccelerateInterpolator();

    /* renamed from: j */
    private float[] f1350j = {0.0f, 0.0f};

    /* renamed from: k */
    private float[] f1351k = {Float.MAX_VALUE, Float.MAX_VALUE};

    /* renamed from: n */
    private float[] f1354n = {0.0f, 0.0f};

    /* renamed from: o */
    private float[] f1355o = {0.0f, 0.0f};

    /* renamed from: p */
    private float[] f1356p = {Float.MAX_VALUE, Float.MAX_VALUE};

    /* renamed from: androidx.core.widget.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/widget/a$a.class */
    public static class C0236a {

        /* renamed from: a */
        private int f1363a;

        /* renamed from: b */
        private int f1364b;

        /* renamed from: c */
        private float f1365c;

        /* renamed from: d */
        private float f1366d;

        /* renamed from: j */
        private float f1372j;

        /* renamed from: k */
        private int f1373k;

        /* renamed from: e */
        private long f1367e = Long.MIN_VALUE;

        /* renamed from: i */
        private long f1371i = -1;

        /* renamed from: f */
        private long f1368f = 0;

        /* renamed from: g */
        private int f1369g = 0;

        /* renamed from: h */
        private int f1370h = 0;

        C0236a() {
        }

        /* renamed from: e */
        private float m5906e(long j) {
            long j2 = this.f1367e;
            if (j < j2) {
                return 0.0f;
            }
            long j3 = this.f1371i;
            if (j3 < 0 || j < j3) {
                return AbstractView$OnTouchListenerC0235a.m5928e(((float) (j - j2)) / this.f1363a, 0.0f, 1.0f) * 0.5f;
            }
            float f = this.f1372j;
            return (1.0f - f) + (f * AbstractView$OnTouchListenerC0235a.m5928e(((float) (j - j3)) / this.f1373k, 0.0f, 1.0f));
        }

        /* renamed from: g */
        private float m5904g(float f) {
            return ((-4.0f) * f * f) + (f * 4.0f);
        }

        /* renamed from: a */
        public void m5910a() {
            if (this.f1368f != 0) {
                long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
                float m5904g = m5904g(m5906e(currentAnimationTimeMillis));
                long j = this.f1368f;
                this.f1368f = currentAnimationTimeMillis;
                float f = ((float) (currentAnimationTimeMillis - j)) * m5904g;
                this.f1369g = (int) (this.f1365c * f);
                this.f1370h = (int) (f * this.f1366d);
                return;
            }
            throw new RuntimeException("Cannot compute scroll delta before calling start()");
        }

        /* renamed from: b */
        public int m5909b() {
            return this.f1369g;
        }

        /* renamed from: c */
        public int m5908c() {
            return this.f1370h;
        }

        /* renamed from: d */
        public int m5907d() {
            float f = this.f1365c;
            return (int) (f / Math.abs(f));
        }

        /* renamed from: f */
        public int m5905f() {
            float f = this.f1366d;
            return (int) (f / Math.abs(f));
        }

        /* renamed from: h */
        public boolean m5903h() {
            return this.f1371i > 0 && AnimationUtils.currentAnimationTimeMillis() > this.f1371i + ((long) this.f1373k);
        }

        /* renamed from: i */
        public void m5902i() {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.f1373k = AbstractView$OnTouchListenerC0235a.m5927f((int) (currentAnimationTimeMillis - this.f1367e), 0, this.f1364b);
            this.f1372j = m5906e(currentAnimationTimeMillis);
            this.f1371i = currentAnimationTimeMillis;
        }

        /* renamed from: j */
        public void m5901j(int i) {
            this.f1364b = i;
        }

        /* renamed from: k */
        public void m5900k(int i) {
            this.f1363a = i;
        }

        /* renamed from: l */
        public void m5899l(float f, float f2) {
            this.f1365c = f;
            this.f1366d = f2;
        }

        /* renamed from: m */
        public void m5898m() {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.f1367e = currentAnimationTimeMillis;
            this.f1371i = -1L;
            this.f1368f = currentAnimationTimeMillis;
            this.f1372j = 0.5f;
            this.f1369g = 0;
            this.f1370h = 0;
        }
    }

    /* renamed from: androidx.core.widget.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/widget/a$b.class */
    public class RunnableC0237b implements Runnable {
        RunnableC0237b() {
            AbstractView$OnTouchListenerC0235a.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractView$OnTouchListenerC0235a abstractView$OnTouchListenerC0235a = AbstractView$OnTouchListenerC0235a.this;
            if (!abstractView$OnTouchListenerC0235a.f1360t) {
                return;
            }
            if (abstractView$OnTouchListenerC0235a.f1358r) {
                abstractView$OnTouchListenerC0235a.f1358r = false;
                abstractView$OnTouchListenerC0235a.f1346f.m5898m();
            }
            C0236a c0236a = AbstractView$OnTouchListenerC0235a.this.f1346f;
            if (c0236a.m5903h() || !AbstractView$OnTouchListenerC0235a.this.m5912u()) {
                AbstractView$OnTouchListenerC0235a.this.f1360t = false;
                return;
            }
            AbstractView$OnTouchListenerC0235a abstractView$OnTouchListenerC0235a2 = AbstractView$OnTouchListenerC0235a.this;
            if (abstractView$OnTouchListenerC0235a2.f1359s) {
                abstractView$OnTouchListenerC0235a2.f1359s = false;
                abstractView$OnTouchListenerC0235a2.m5930c();
            }
            c0236a.m5910a();
            AbstractView$OnTouchListenerC0235a.this.m5923j(c0236a.m5909b(), c0236a.m5908c());
            t.c0(AbstractView$OnTouchListenerC0235a.this.f1348h, this);
        }
    }

    public AbstractView$OnTouchListenerC0235a(View view) {
        this.f1348h = view;
        float f = Resources.getSystem().getDisplayMetrics().density;
        int i = (int) ((1575.0f * f) + 0.5f);
        int i2 = (int) ((f * 315.0f) + 0.5f);
        float f2 = i;
        m5918o(f2, f2);
        float f3 = i2;
        m5917p(f3, f3);
        m5921l(1);
        m5919n(Float.MAX_VALUE, Float.MAX_VALUE);
        m5914s(0.2f, 0.2f);
        m5913t(1.0f, 1.0f);
        m5922k(f1345w);
        m5915r(BackendKt.HTTP_SERVER_ERROR_CODE);
        m5916q(BackendKt.HTTP_SERVER_ERROR_CODE);
    }

    /* renamed from: d */
    private float m5929d(int i, float f, float f2, float f3) {
        float m5925h = m5925h(this.f1350j[i], f2, this.f1351k[i], f);
        int i2 = (m5925h > 0.0f ? 1 : (m5925h == 0.0f ? 0 : -1));
        if (i2 == 0) {
            return 0.0f;
        }
        float f4 = this.f1354n[i];
        float f5 = this.f1355o[i];
        float f6 = this.f1356p[i];
        float f7 = f4 * f3;
        return i2 > 0 ? m5928e(m5925h * f7, f5, f6) : -m5928e((-m5925h) * f7, f5, f6);
    }

    /* renamed from: e */
    static float m5928e(float f, float f2, float f3) {
        return f > f3 ? f3 : f < f2 ? f2 : f;
    }

    /* renamed from: f */
    static int m5927f(int i, int i2, int i3) {
        return i > i3 ? i3 : i < i2 ? i2 : i;
    }

    /* renamed from: g */
    private float m5926g(float f, float f2) {
        if (f2 == 0.0f) {
            return 0.0f;
        }
        int i = this.f1352l;
        if (i == 0 || i == 1) {
            if (f >= f2) {
                return 0.0f;
            }
            return f >= 0.0f ? 1.0f - (f / f2) : (!this.f1360t || i != 1) ? 0.0f : 1.0f;
        } else if (i != 2 || f >= 0.0f) {
            return 0.0f;
        } else {
            return f / (-f2);
        }
    }

    /* renamed from: h */
    private float m5925h(float f, float f2, float f3, float f4) {
        float f5;
        float m5928e = m5928e(f * f2, 0.0f, f3);
        float m5926g = m5926g(f2 - f4, m5928e) - m5926g(f4, m5928e);
        if (m5926g < 0.0f) {
            f5 = -this.f1347g.getInterpolation(-m5926g);
        } else if (m5926g <= 0.0f) {
            return 0.0f;
        } else {
            f5 = this.f1347g.getInterpolation(m5926g);
        }
        return m5928e(f5, -1.0f, 1.0f);
    }

    /* renamed from: i */
    private void m5924i() {
        if (this.f1358r) {
            this.f1360t = false;
        } else {
            this.f1346f.m5902i();
        }
    }

    /* renamed from: v */
    private void m5911v() {
        int i;
        if (this.f1349i == null) {
            this.f1349i = new RunnableC0237b();
        }
        this.f1360t = true;
        this.f1358r = true;
        if (this.f1357q || (i = this.f1353m) <= 0) {
            this.f1349i.run();
        } else {
            t.d0(this.f1348h, this.f1349i, i);
        }
        this.f1357q = true;
    }

    /* renamed from: a */
    public abstract boolean m5932a(int i);

    /* renamed from: b */
    public abstract boolean m5931b(int i);

    /* renamed from: c */
    void m5930c() {
        long uptimeMillis = SystemClock.uptimeMillis();
        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
        this.f1348h.onTouchEvent(obtain);
        obtain.recycle();
    }

    /* renamed from: j */
    public abstract void m5923j(int i, int i2);

    /* renamed from: k */
    public AbstractView$OnTouchListenerC0235a m5922k(int i) {
        this.f1353m = i;
        return this;
    }

    /* renamed from: l */
    public AbstractView$OnTouchListenerC0235a m5921l(int i) {
        this.f1352l = i;
        return this;
    }

    /* renamed from: m */
    public AbstractView$OnTouchListenerC0235a m5920m(boolean z) {
        if (this.f1361u && !z) {
            m5924i();
        }
        this.f1361u = z;
        return this;
    }

    /* renamed from: n */
    public AbstractView$OnTouchListenerC0235a m5919n(float f, float f2) {
        float[] fArr = this.f1351k;
        fArr[0] = f;
        fArr[1] = f2;
        return this;
    }

    /* renamed from: o */
    public AbstractView$OnTouchListenerC0235a m5918o(float f, float f2) {
        float[] fArr = this.f1356p;
        fArr[0] = f / 1000.0f;
        fArr[1] = f2 / 1000.0f;
        return this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0028, code lost:
        if (r0 != 3) goto L20;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0096  */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouch(android.view.View r7, android.view.MotionEvent r8) {
        /*
            r6 = this;
            r0 = r6
            boolean r0 = r0.f1361u
            r9 = r0
            r0 = 0
            r10 = r0
            r0 = r9
            if (r0 != 0) goto Le
            r0 = 0
            return r0
        Le:
            r0 = r8
            int r0 = r0.getActionMasked()
            r11 = r0
            r0 = r11
            if (r0 == 0) goto L35
            r0 = r11
            r1 = 1
            if (r0 == r1) goto L2e
            r0 = r11
            r1 = 2
            if (r0 == r1) goto L3f
            r0 = r11
            r1 = 3
            if (r0 == r1) goto L2e
            goto L8c
        L2e:
            r0 = r6
            r0.m5924i()
            goto L8c
        L35:
            r0 = r6
            r1 = 1
            r0.f1359s = r1
            r0 = r6
            r1 = 0
            r0.f1357q = r1
        L3f:
            r0 = r6
            r1 = 0
            r2 = r8
            float r2 = r2.getX()
            r3 = r7
            int r3 = r3.getWidth()
            float r3 = (float) r3
            r4 = r6
            android.view.View r4 = r4.f1348h
            int r4 = r4.getWidth()
            float r4 = (float) r4
            float r0 = r0.m5929d(r1, r2, r3, r4)
            r12 = r0
            r0 = r6
            r1 = 1
            r2 = r8
            float r2 = r2.getY()
            r3 = r7
            int r3 = r3.getHeight()
            float r3 = (float) r3
            r4 = r6
            android.view.View r4 = r4.f1348h
            int r4 = r4.getHeight()
            float r4 = (float) r4
            float r0 = r0.m5929d(r1, r2, r3, r4)
            r13 = r0
            r0 = r6
            androidx.core.widget.a$a r0 = r0.f1346f
            r1 = r12
            r2 = r13
            r0.m5899l(r1, r2)
            r0 = r6
            boolean r0 = r0.f1360t
            if (r0 != 0) goto L8c
            r0 = r6
            boolean r0 = r0.m5912u()
            if (r0 == 0) goto L8c
            r0 = r6
            r0.m5911v()
        L8c:
            r0 = r10
            r9 = r0
            r0 = r6
            boolean r0 = r0.f1362v
            if (r0 == 0) goto La2
            r0 = r10
            r9 = r0
            r0 = r6
            boolean r0 = r0.f1360t
            if (r0 == 0) goto La2
            r0 = 1
            r9 = r0
        La2:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.AbstractView$OnTouchListenerC0235a.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    /* renamed from: p */
    public AbstractView$OnTouchListenerC0235a m5917p(float f, float f2) {
        float[] fArr = this.f1355o;
        fArr[0] = f / 1000.0f;
        fArr[1] = f2 / 1000.0f;
        return this;
    }

    /* renamed from: q */
    public AbstractView$OnTouchListenerC0235a m5916q(int i) {
        this.f1346f.m5901j(i);
        return this;
    }

    /* renamed from: r */
    public AbstractView$OnTouchListenerC0235a m5915r(int i) {
        this.f1346f.m5900k(i);
        return this;
    }

    /* renamed from: s */
    public AbstractView$OnTouchListenerC0235a m5914s(float f, float f2) {
        float[] fArr = this.f1350j;
        fArr[0] = f;
        fArr[1] = f2;
        return this;
    }

    /* renamed from: t */
    public AbstractView$OnTouchListenerC0235a m5913t(float f, float f2) {
        float[] fArr = this.f1354n;
        fArr[0] = f / 1000.0f;
        fArr[1] = f2 / 1000.0f;
        return this;
    }

    /* renamed from: u */
    boolean m5912u() {
        C0236a c0236a = this.f1346f;
        int m5905f = c0236a.m5905f();
        int m5907d = c0236a.m5907d();
        return (m5905f != 0 && m5931b(m5905f)) || (m5907d != 0 && m5932a(m5907d));
    }
}
