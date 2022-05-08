package androidx.core.widget;

import android.content.res.Resources;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import androidx.core.p037g.C0741t;
/* renamed from: androidx.core.widget.a */
/* loaded from: classes-dex2jar.jar:androidx/core/widget/a.class */
public abstract class AbstractView$OnTouchListenerC0774a implements View.OnTouchListener {

    /* renamed from: r */
    private static final int f3212r = ViewConfiguration.getTapTimeout();

    /* renamed from: b */
    final View f3214b;

    /* renamed from: c */
    boolean f3215c;

    /* renamed from: d */
    boolean f3216d;

    /* renamed from: e */
    boolean f3217e;

    /* renamed from: g */
    private Runnable f3219g;

    /* renamed from: o */
    private boolean f3227o;

    /* renamed from: p */
    private boolean f3228p;

    /* renamed from: q */
    private boolean f3229q;

    /* renamed from: a */
    final C0775a f3213a = new C0775a();

    /* renamed from: f */
    private final Interpolator f3218f = new AccelerateInterpolator();

    /* renamed from: h */
    private float[] f3220h = {0.0f, 0.0f};

    /* renamed from: i */
    private float[] f3221i = {Float.MAX_VALUE, Float.MAX_VALUE};

    /* renamed from: l */
    private float[] f3224l = {0.0f, 0.0f};

    /* renamed from: m */
    private float[] f3225m = {0.0f, 0.0f};

    /* renamed from: n */
    private float[] f3226n = {Float.MAX_VALUE, Float.MAX_VALUE};

    /* renamed from: j */
    private int f3222j = 1;

    /* renamed from: k */
    private int f3223k = f3212r;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.core.widget.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/widget/a$a.class */
    public static final class C0775a {

        /* renamed from: a */
        private int f3230a;

        /* renamed from: b */
        private int f3231b;

        /* renamed from: c */
        private float f3232c;

        /* renamed from: d */
        private float f3233d;

        /* renamed from: j */
        private float f3239j;

        /* renamed from: k */
        private int f3240k;

        /* renamed from: e */
        private long f3234e = Long.MIN_VALUE;

        /* renamed from: i */
        private long f3238i = -1;

        /* renamed from: f */
        private long f3235f = 0;

        /* renamed from: g */
        private int f3236g = 0;

        /* renamed from: h */
        private int f3237h = 0;

        C0775a() {
        }

        /* renamed from: a */
        private float m8152a(long j) {
            if (j < this.f3234e) {
                return 0.0f;
            }
            long j2 = this.f3238i;
            if (j2 < 0 || j < j2) {
                return AbstractView$OnTouchListenerC0774a.m8160a(((float) (j - this.f3234e)) / this.f3230a, 0.0f, 1.0f) * 0.5f;
            }
            float f = this.f3239j;
            return (1.0f - f) + (f * AbstractView$OnTouchListenerC0774a.m8160a(((float) (j - j2)) / this.f3240k, 0.0f, 1.0f));
        }

        /* renamed from: a */
        public final void m8154a() {
            this.f3230a = 500;
        }

        /* renamed from: a */
        public final void m8153a(float f, float f2) {
            this.f3232c = f;
            this.f3233d = f2;
        }

        /* renamed from: b */
        public final void m8151b() {
            this.f3231b = 500;
        }

        /* renamed from: c */
        public final void m8150c() {
            this.f3234e = AnimationUtils.currentAnimationTimeMillis();
            this.f3238i = -1L;
            this.f3235f = this.f3234e;
            this.f3239j = 0.5f;
            this.f3236g = 0;
            this.f3237h = 0;
        }

        /* renamed from: d */
        public final void m8149d() {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.f3240k = AbstractView$OnTouchListenerC0774a.m8157a((int) (currentAnimationTimeMillis - this.f3234e), this.f3231b);
            this.f3239j = m8152a(currentAnimationTimeMillis);
            this.f3238i = currentAnimationTimeMillis;
        }

        /* renamed from: e */
        public final boolean m8148e() {
            return this.f3238i > 0 && AnimationUtils.currentAnimationTimeMillis() > this.f3238i + ((long) this.f3240k);
        }

        /* renamed from: f */
        public final void m8147f() {
            if (this.f3235f != 0) {
                long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
                float a = m8152a(currentAnimationTimeMillis);
                long j = this.f3235f;
                this.f3235f = currentAnimationTimeMillis;
                float f = ((float) (currentAnimationTimeMillis - j)) * (((-4.0f) * a * a) + (a * 4.0f));
                this.f3236g = (int) (this.f3232c * f);
                this.f3237h = (int) (f * this.f3233d);
                return;
            }
            throw new RuntimeException("Cannot compute scroll delta before calling start()");
        }

        /* renamed from: g */
        public final int m8146g() {
            float f = this.f3232c;
            return (int) (f / Math.abs(f));
        }

        /* renamed from: h */
        public final int m8145h() {
            float f = this.f3233d;
            return (int) (f / Math.abs(f));
        }

        /* renamed from: i */
        public final int m8144i() {
            return this.f3237h;
        }
    }

    /* renamed from: androidx.core.widget.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/widget/a$b.class */
    private final class RunnableC0776b implements Runnable {
        RunnableC0776b() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (AbstractView$OnTouchListenerC0774a.this.f3217e) {
                if (AbstractView$OnTouchListenerC0774a.this.f3215c) {
                    AbstractView$OnTouchListenerC0774a aVar = AbstractView$OnTouchListenerC0774a.this;
                    aVar.f3215c = false;
                    aVar.f3213a.m8150c();
                }
                C0775a aVar2 = AbstractView$OnTouchListenerC0774a.this.f3213a;
                if (aVar2.m8148e() || !AbstractView$OnTouchListenerC0774a.this.m8162a()) {
                    AbstractView$OnTouchListenerC0774a.this.f3217e = false;
                    return;
                }
                if (AbstractView$OnTouchListenerC0774a.this.f3216d) {
                    AbstractView$OnTouchListenerC0774a aVar3 = AbstractView$OnTouchListenerC0774a.this;
                    aVar3.f3216d = false;
                    long uptimeMillis = SystemClock.uptimeMillis();
                    MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                    aVar3.f3214b.onTouchEvent(obtain);
                    obtain.recycle();
                }
                aVar2.m8147f();
                AbstractView$OnTouchListenerC0774a.this.mo8139a(aVar2.m8144i());
                C0741t.m8344a(AbstractView$OnTouchListenerC0774a.this.f3214b, this);
            }
        }
    }

    public AbstractView$OnTouchListenerC0774a(View view) {
        this.f3214b = view;
        DisplayMetrics displayMetrics = Resources.getSystem().getDisplayMetrics();
        int i = (int) ((displayMetrics.density * 1575.0f) + 0.5f);
        int i2 = (int) ((displayMetrics.density * 315.0f) + 0.5f);
        float f = i;
        float[] fArr = this.f3226n;
        float f2 = f / 1000.0f;
        fArr[0] = f2;
        fArr[1] = f2;
        float f3 = i2;
        float[] fArr2 = this.f3225m;
        float f4 = f3 / 1000.0f;
        fArr2[0] = f4;
        fArr2[1] = f4;
        float[] fArr3 = this.f3221i;
        fArr3[0] = Float.MAX_VALUE;
        fArr3[1] = Float.MAX_VALUE;
        float[] fArr4 = this.f3220h;
        fArr4[0] = 0.2f;
        fArr4[1] = 0.2f;
        float[] fArr5 = this.f3224l;
        fArr5[0] = 0.001f;
        fArr5[1] = 0.001f;
        this.f3213a.m8154a();
        this.f3213a.m8151b();
    }

    /* renamed from: a */
    private float m8161a(float f, float f2) {
        if (f2 == 0.0f) {
            return 0.0f;
        }
        int i = this.f3222j;
        if (i == 0 || i == 1) {
            if (f < f2) {
                return f >= 0.0f ? 1.0f - (f / f2) : (!this.f3217e || this.f3222j != 1) ? 0.0f : 1.0f;
            }
            return 0.0f;
        } else if (i == 2 && f < 0.0f) {
            return f / (-f2);
        } else {
            return 0.0f;
        }
    }

    /* renamed from: a */
    static float m8160a(float f, float f2, float f3) {
        return f > f3 ? f3 : f < f2 ? f2 : f;
    }

    /* renamed from: a */
    private float m8159a(float f, float f2, float f3, float f4) {
        float f5;
        float a = m8160a(f * f2, 0.0f, f3);
        float a2 = m8161a(f2 - f4, a) - m8161a(f4, a);
        if (a2 < 0.0f) {
            f5 = -this.f3218f.getInterpolation(-a2);
        } else if (a2 <= 0.0f) {
            return 0.0f;
        } else {
            f5 = this.f3218f.getInterpolation(a2);
        }
        return m8160a(f5, -1.0f, 1.0f);
    }

    /* renamed from: a */
    private float m8158a(int i, float f, float f2, float f3) {
        float a = m8159a(this.f3220h[i], f2, this.f3221i[i], f);
        int i2 = (a > 0.0f ? 1 : (a == 0.0f ? 0 : -1));
        if (i2 == 0) {
            return 0.0f;
        }
        float f4 = this.f3224l[i];
        float f5 = this.f3225m[i];
        float f6 = this.f3226n[i];
        float f7 = f4 * f3;
        return i2 > 0 ? m8160a(a * f7, f5, f6) : -m8160a((-a) * f7, f5, f6);
    }

    /* renamed from: a */
    static int m8157a(int i, int i2) {
        if (i > i2) {
            return i2;
        }
        int i3 = i;
        if (i < 0) {
            i3 = 0;
        }
        return i3;
    }

    /* renamed from: b */
    private void m8155b() {
        if (this.f3215c) {
            this.f3217e = false;
        } else {
            this.f3213a.m8149d();
        }
    }

    /* renamed from: a */
    public final AbstractView$OnTouchListenerC0774a m8156a(boolean z) {
        if (this.f3228p && !z) {
            m8155b();
        }
        this.f3228p = z;
        return this;
    }

    /* renamed from: a */
    public abstract void mo8139a(int i);

    /* renamed from: a */
    final boolean m8162a() {
        C0775a aVar = this.f3213a;
        int h = aVar.m8145h();
        aVar.m8146g();
        return h != 0 && mo8138b(h);
    }

    /* renamed from: b */
    public abstract boolean mo8138b(int i);

    /* JADX WARN: Code restructure failed: missing block: B:12:0x001e, code lost:
        if (r0 != 3) goto L_0x00c9;
     */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouch(android.view.View r7, android.view.MotionEvent r8) {
        /*
            Method dump skipped, instructions count: 219
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.AbstractView$OnTouchListenerC0774a.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }
}
