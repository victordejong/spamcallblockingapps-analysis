package p012b.p042i.p056q;

import android.content.res.Resources;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import p012b.p042i.p054p.C1002u;
/* renamed from: b.i.q.a */
/* loaded from: classes-dex2jar.jar:b/i/q/a.class */
public abstract class AbstractView$OnTouchListenerC1022a implements View.OnTouchListener {

    /* renamed from: r */
    public static final int f4282r = ViewConfiguration.getTapTimeout();

    /* renamed from: c */
    public final View f4285c;

    /* renamed from: d */
    public Runnable f4286d;

    /* renamed from: g */
    public int f4289g;

    /* renamed from: h */
    public int f4290h;

    /* renamed from: l */
    public boolean f4294l;

    /* renamed from: m */
    public boolean f4295m;

    /* renamed from: n */
    public boolean f4296n;

    /* renamed from: o */
    public boolean f4297o;

    /* renamed from: p */
    public boolean f4298p;

    /* renamed from: q */
    public boolean f4299q;

    /* renamed from: a */
    public final C1023a f4283a = new C1023a();

    /* renamed from: b */
    public final Interpolator f4284b = new AccelerateInterpolator();

    /* renamed from: e */
    public float[] f4287e = {0.0f, 0.0f};

    /* renamed from: f */
    public float[] f4288f = {Float.MAX_VALUE, Float.MAX_VALUE};

    /* renamed from: i */
    public float[] f4291i = {0.0f, 0.0f};

    /* renamed from: j */
    public float[] f4292j = {0.0f, 0.0f};

    /* renamed from: k */
    public float[] f4293k = {Float.MAX_VALUE, Float.MAX_VALUE};

    /* renamed from: b.i.q.a$a */
    /* loaded from: classes-dex2jar.jar:b/i/q/a$a.class */
    public static class C1023a {

        /* renamed from: a */
        public int f4300a;

        /* renamed from: b */
        public int f4301b;

        /* renamed from: c */
        public float f4302c;

        /* renamed from: d */
        public float f4303d;

        /* renamed from: j */
        public float f4309j;

        /* renamed from: k */
        public int f4310k;

        /* renamed from: e */
        public long f4304e = Long.MIN_VALUE;

        /* renamed from: i */
        public long f4308i = -1;

        /* renamed from: f */
        public long f4305f = 0;

        /* renamed from: g */
        public int f4306g = 0;

        /* renamed from: h */
        public int f4307h = 0;

        /* renamed from: a */
        public final float m35131a(float f) {
            return ((-4.0f) * f * f) + (f * 4.0f);
        }

        /* renamed from: a */
        public final float m35128a(long j) {
            if (j < this.f4304e) {
                return 0.0f;
            }
            long j2 = this.f4308i;
            if (j2 < 0 || j < j2) {
                return AbstractView$OnTouchListenerC1022a.m35149a(((float) (j - this.f4304e)) / this.f4300a, 0.0f, 1.0f) * 0.5f;
            }
            float f = this.f4309j;
            return (1.0f - f) + (f * AbstractView$OnTouchListenerC1022a.m35149a(((float) (j - j2)) / this.f4310k, 0.0f, 1.0f));
        }

        /* renamed from: a */
        public void m35132a() {
            if (this.f4305f != 0) {
                long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
                float a = m35131a(m35128a(currentAnimationTimeMillis));
                long j = this.f4305f;
                this.f4305f = currentAnimationTimeMillis;
                float f = ((float) (currentAnimationTimeMillis - j)) * a;
                this.f4306g = (int) (this.f4302c * f);
                this.f4307h = (int) (f * this.f4303d);
                return;
            }
            throw new RuntimeException("Cannot compute scroll delta before calling start()");
        }

        /* renamed from: a */
        public void m35130a(float f, float f2) {
            this.f4302c = f;
            this.f4303d = f2;
        }

        /* renamed from: a */
        public void m35129a(int i) {
            this.f4301b = i;
        }

        /* renamed from: b */
        public int m35127b() {
            return this.f4306g;
        }

        /* renamed from: b */
        public void m35126b(int i) {
            this.f4300a = i;
        }

        /* renamed from: c */
        public int m35125c() {
            return this.f4307h;
        }

        /* renamed from: d */
        public int m35124d() {
            float f = this.f4302c;
            return (int) (f / Math.abs(f));
        }

        /* renamed from: e */
        public int m35123e() {
            float f = this.f4303d;
            return (int) (f / Math.abs(f));
        }

        /* renamed from: f */
        public boolean m35122f() {
            return this.f4308i > 0 && AnimationUtils.currentAnimationTimeMillis() > this.f4308i + ((long) this.f4310k);
        }

        /* renamed from: g */
        public void m35121g() {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.f4310k = AbstractView$OnTouchListenerC1022a.m35146a((int) (currentAnimationTimeMillis - this.f4304e), 0, this.f4301b);
            this.f4309j = m35128a(currentAnimationTimeMillis);
            this.f4308i = currentAnimationTimeMillis;
        }

        /* renamed from: h */
        public void m35120h() {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.f4304e = currentAnimationTimeMillis;
            this.f4308i = -1L;
            this.f4305f = currentAnimationTimeMillis;
            this.f4309j = 0.5f;
            this.f4306g = 0;
            this.f4307h = 0;
        }
    }

    /* renamed from: b.i.q.a$b */
    /* loaded from: classes-dex2jar.jar:b/i/q/a$b.class */
    public class RunnableC1024b implements Runnable {
        public RunnableC1024b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractView$OnTouchListenerC1022a aVar = AbstractView$OnTouchListenerC1022a.this;
            if (aVar.f4297o) {
                if (aVar.f4295m) {
                    aVar.f4295m = false;
                    aVar.f4283a.m35120h();
                }
                C1023a aVar2 = AbstractView$OnTouchListenerC1022a.this.f4283a;
                if (aVar2.m35122f() || !AbstractView$OnTouchListenerC1022a.this.m35142c()) {
                    AbstractView$OnTouchListenerC1022a.this.f4297o = false;
                    return;
                }
                AbstractView$OnTouchListenerC1022a aVar3 = AbstractView$OnTouchListenerC1022a.this;
                if (aVar3.f4296n) {
                    aVar3.f4296n = false;
                    aVar3.m35151a();
                }
                aVar2.m35132a();
                AbstractView$OnTouchListenerC1022a.this.mo35110a(aVar2.m35127b(), aVar2.m35125c());
                C1002u.m35234a(AbstractView$OnTouchListenerC1022a.this.f4285c, this);
            }
        }
    }

    public AbstractView$OnTouchListenerC1022a(View view) {
        this.f4285c = view;
        float f = Resources.getSystem().getDisplayMetrics().density;
        int i = (int) ((1575.0f * f) + 0.5f);
        int i2 = (int) ((f * 315.0f) + 0.5f);
        float f2 = i;
        m35141c(f2, f2);
        float f3 = i2;
        m35138d(f3, f3);
        m35137d(1);
        m35143b(Float.MAX_VALUE, Float.MAX_VALUE);
        m35136e(0.2f, 0.2f);
        m35134f(1.0f, 1.0f);
        m35140c(f4282r);
        m35133f(500);
        m35135e(500);
    }

    /* renamed from: a */
    public static float m35149a(float f, float f2, float f3) {
        return f > f3 ? f3 : f < f2 ? f2 : f;
    }

    /* renamed from: a */
    public static int m35146a(int i, int i2, int i3) {
        return i > i3 ? i3 : i < i2 ? i2 : i;
    }

    /* renamed from: a */
    public final float m35150a(float f, float f2) {
        if (f2 == 0.0f) {
            return 0.0f;
        }
        int i = this.f4289g;
        if (i == 0 || i == 1) {
            if (f < f2) {
                return f >= 0.0f ? 1.0f - (f / f2) : (!this.f4297o || this.f4289g != 1) ? 0.0f : 1.0f;
            }
            return 0.0f;
        } else if (i == 2 && f < 0.0f) {
            return f / (-f2);
        } else {
            return 0.0f;
        }
    }

    /* renamed from: a */
    public final float m35148a(float f, float f2, float f3, float f4) {
        float f5;
        float a = m35149a(f * f2, 0.0f, f3);
        float a2 = m35150a(f2 - f4, a) - m35150a(f4, a);
        if (a2 < 0.0f) {
            f5 = -this.f4284b.getInterpolation(-a2);
        } else if (a2 <= 0.0f) {
            return 0.0f;
        } else {
            f5 = this.f4284b.getInterpolation(a2);
        }
        return m35149a(f5, -1.0f, 1.0f);
    }

    /* renamed from: a */
    public final float m35147a(int i, float f, float f2, float f3) {
        float a = m35148a(this.f4287e[i], f2, this.f4288f[i], f);
        if (a == 0.0f) {
            return 0.0f;
        }
        float f4 = this.f4291i[i];
        float f5 = this.f4292j[i];
        float f6 = this.f4293k[i];
        float f7 = f4 * f3;
        return a > 0.0f ? m35149a(a * f7, f5, f6) : -m35149a((-a) * f7, f5, f6);
    }

    /* renamed from: a */
    public AbstractView$OnTouchListenerC1022a m35145a(boolean z) {
        if (this.f4298p && !z) {
            m35144b();
        }
        this.f4298p = z;
        return this;
    }

    /* renamed from: a */
    public void m35151a() {
        long uptimeMillis = SystemClock.uptimeMillis();
        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
        this.f4285c.onTouchEvent(obtain);
        obtain.recycle();
    }

    /* renamed from: a */
    public abstract void mo35110a(int i, int i2);

    /* renamed from: a */
    public abstract boolean mo35111a(int i);

    /* renamed from: b */
    public AbstractView$OnTouchListenerC1022a m35143b(float f, float f2) {
        float[] fArr = this.f4288f;
        fArr[0] = f;
        fArr[1] = f2;
        return this;
    }

    /* renamed from: b */
    public final void m35144b() {
        if (this.f4295m) {
            this.f4297o = false;
        } else {
            this.f4283a.m35121g();
        }
    }

    /* renamed from: b */
    public abstract boolean mo35109b(int i);

    /* renamed from: c */
    public AbstractView$OnTouchListenerC1022a m35141c(float f, float f2) {
        float[] fArr = this.f4293k;
        fArr[0] = f / 1000.0f;
        fArr[1] = f2 / 1000.0f;
        return this;
    }

    /* renamed from: c */
    public AbstractView$OnTouchListenerC1022a m35140c(int i) {
        this.f4290h = i;
        return this;
    }

    /* renamed from: c */
    public boolean m35142c() {
        C1023a aVar = this.f4283a;
        int e = aVar.m35123e();
        int d = aVar.m35124d();
        return (e != 0 && mo35109b(e)) || (d != 0 && mo35111a(d));
    }

    /* renamed from: d */
    public AbstractView$OnTouchListenerC1022a m35138d(float f, float f2) {
        float[] fArr = this.f4292j;
        fArr[0] = f / 1000.0f;
        fArr[1] = f2 / 1000.0f;
        return this;
    }

    /* renamed from: d */
    public AbstractView$OnTouchListenerC1022a m35137d(int i) {
        this.f4289g = i;
        return this;
    }

    /* renamed from: d */
    public final void m35139d() {
        int i;
        if (this.f4286d == null) {
            this.f4286d = new RunnableC1024b();
        }
        this.f4297o = true;
        this.f4295m = true;
        if (this.f4294l || (i = this.f4290h) <= 0) {
            this.f4286d.run();
        } else {
            C1002u.m35233a(this.f4285c, this.f4286d, i);
        }
        this.f4294l = true;
    }

    /* renamed from: e */
    public AbstractView$OnTouchListenerC1022a m35136e(float f, float f2) {
        float[] fArr = this.f4287e;
        fArr[0] = f;
        fArr[1] = f2;
        return this;
    }

    /* renamed from: e */
    public AbstractView$OnTouchListenerC1022a m35135e(int i) {
        this.f4283a.m35129a(i);
        return this;
    }

    /* renamed from: f */
    public AbstractView$OnTouchListenerC1022a m35134f(float f, float f2) {
        float[] fArr = this.f4291i;
        fArr[0] = f / 1000.0f;
        fArr[1] = f2 / 1000.0f;
        return this;
    }

    /* renamed from: f */
    public AbstractView$OnTouchListenerC1022a m35133f(int i) {
        this.f4283a.m35126b(i);
        return this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0028, code lost:
        if (r0 != 3) goto L_0x008c;
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
            boolean r0 = r0.f4298p
            r9 = r0
            r0 = 0
            r10 = r0
            r0 = r9
            if (r0 != 0) goto L_0x000e
            r0 = 0
            return r0
        L_0x000e:
            r0 = r8
            int r0 = r0.getActionMasked()
            r11 = r0
            r0 = r11
            if (r0 == 0) goto L_0x0035
            r0 = r11
            r1 = 1
            if (r0 == r1) goto L_0x002e
            r0 = r11
            r1 = 2
            if (r0 == r1) goto L_0x003f
            r0 = r11
            r1 = 3
            if (r0 == r1) goto L_0x002e
            goto L_0x008c
        L_0x002e:
            r0 = r6
            r0.m35144b()
            goto L_0x008c
        L_0x0035:
            r0 = r6
            r1 = 1
            r0.f4296n = r1
            r0 = r6
            r1 = 0
            r0.f4294l = r1
        L_0x003f:
            r0 = r6
            r1 = 0
            r2 = r8
            float r2 = r2.getX()
            r3 = r7
            int r3 = r3.getWidth()
            float r3 = (float) r3
            r4 = r6
            android.view.View r4 = r4.f4285c
            int r4 = r4.getWidth()
            float r4 = (float) r4
            float r0 = r0.m35147a(r1, r2, r3, r4)
            r12 = r0
            r0 = r6
            r1 = 1
            r2 = r8
            float r2 = r2.getY()
            r3 = r7
            int r3 = r3.getHeight()
            float r3 = (float) r3
            r4 = r6
            android.view.View r4 = r4.f4285c
            int r4 = r4.getHeight()
            float r4 = (float) r4
            float r0 = r0.m35147a(r1, r2, r3, r4)
            r13 = r0
            r0 = r6
            b.i.q.a$a r0 = r0.f4283a
            r1 = r12
            r2 = r13
            r0.m35130a(r1, r2)
            r0 = r6
            boolean r0 = r0.f4297o
            if (r0 != 0) goto L_0x008c
            r0 = r6
            boolean r0 = r0.m35142c()
            if (r0 == 0) goto L_0x008c
            r0 = r6
            r0.m35139d()
        L_0x008c:
            r0 = r10
            r9 = r0
            r0 = r6
            boolean r0 = r0.f4299q
            if (r0 == 0) goto L_0x00a2
            r0 = r10
            r9 = r0
            r0 = r6
            boolean r0 = r0.f4297o
            if (r0 == 0) goto L_0x00a2
            r0 = 1
            r9 = r0
        L_0x00a2:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p042i.p056q.AbstractView$OnTouchListenerC1022a.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }
}
