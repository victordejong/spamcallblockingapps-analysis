package androidx.swiperefreshlayout.widget;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import f.h.k.h;
import f.n.a.a.b;
/* renamed from: androidx.swiperefreshlayout.widget.b */
/* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/b.class */
public class C0446b extends Drawable implements Animatable {

    /* renamed from: l */
    private static final Interpolator f2304l = new LinearInterpolator();

    /* renamed from: m */
    private static final Interpolator f2305m = new b();

    /* renamed from: n */
    private static final int[] f2306n = {-16777216};

    /* renamed from: f */
    private final C0449c f2307f;

    /* renamed from: g */
    private float f2308g;

    /* renamed from: h */
    private Resources f2309h;

    /* renamed from: i */
    private Animator f2310i;

    /* renamed from: j */
    float f2311j;

    /* renamed from: k */
    boolean f2312k;

    /* renamed from: androidx.swiperefreshlayout.widget.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/b$a.class */
    public class C0447a implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a */
        final /* synthetic */ C0449c f2313a;

        C0447a(C0449c c0449c) {
            C0446b.this = r4;
            this.f2313a = c0449c;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            C0446b.this.m4716n(floatValue, this.f2313a);
            C0446b.this.m4728b(floatValue, this.f2313a, false);
            C0446b.this.invalidateSelf();
        }
    }

    /* renamed from: androidx.swiperefreshlayout.widget.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/b$b.class */
    public class C0448b implements Animator.AnimatorListener {

        /* renamed from: a */
        final /* synthetic */ C0449c f2315a;

        C0448b(C0449c c0449c) {
            C0446b.this = r4;
            this.f2315a = c0449c;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
            C0446b.this.m4728b(1.0f, this.f2315a, true);
            this.f2315a.m4715A();
            this.f2315a.m4703l();
            C0446b c0446b = C0446b.this;
            if (!c0446b.f2312k) {
                c0446b.f2311j += 1.0f;
                return;
            }
            c0446b.f2312k = false;
            animator.cancel();
            animator.setDuration(1332L);
            animator.start();
            this.f2315a.m4691x(false);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            C0446b.this.f2311j = 0.0f;
        }
    }

    /* renamed from: androidx.swiperefreshlayout.widget.b$c */
    /* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/b$c.class */
    public static class C0449c {

        /* renamed from: b */
        final Paint f2318b;

        /* renamed from: c */
        final Paint f2319c;

        /* renamed from: d */
        final Paint f2320d;

        /* renamed from: i */
        int[] f2325i;

        /* renamed from: j */
        int f2326j;

        /* renamed from: k */
        float f2327k;

        /* renamed from: l */
        float f2328l;

        /* renamed from: m */
        float f2329m;

        /* renamed from: n */
        boolean f2330n;

        /* renamed from: o */
        Path f2331o;

        /* renamed from: q */
        float f2333q;

        /* renamed from: r */
        int f2334r;

        /* renamed from: s */
        int f2335s;

        /* renamed from: u */
        int f2337u;

        /* renamed from: a */
        final RectF f2317a = new RectF();

        /* renamed from: e */
        float f2321e = 0.0f;

        /* renamed from: f */
        float f2322f = 0.0f;

        /* renamed from: g */
        float f2323g = 0.0f;

        /* renamed from: h */
        float f2324h = 5.0f;

        /* renamed from: p */
        float f2332p = 1.0f;

        /* renamed from: t */
        int f2336t = 255;

        C0449c() {
            Paint paint = new Paint();
            this.f2318b = paint;
            Paint paint2 = new Paint();
            this.f2319c = paint2;
            Paint paint3 = new Paint();
            this.f2320d = paint3;
            paint.setStrokeCap(Paint.Cap.SQUARE);
            paint.setAntiAlias(true);
            paint.setStyle(Paint.Style.STROKE);
            paint2.setStyle(Paint.Style.FILL);
            paint2.setAntiAlias(true);
            paint3.setColor(0);
        }

        /* renamed from: A */
        void m4715A() {
            this.f2327k = this.f2321e;
            this.f2328l = this.f2322f;
            this.f2329m = this.f2323g;
        }

        /* renamed from: a */
        void m4714a(Canvas canvas, Rect rect) {
            RectF rectF = this.f2317a;
            float f = this.f2333q;
            float f2 = (this.f2324h / 2.0f) + f;
            if (f <= 0.0f) {
                f2 = (Math.min(rect.width(), rect.height()) / 2.0f) - Math.max((this.f2334r * this.f2332p) / 2.0f, this.f2324h / 2.0f);
            }
            rectF.set(rect.centerX() - f2, rect.centerY() - f2, rect.centerX() + f2, rect.centerY() + f2);
            float f3 = this.f2321e;
            float f4 = this.f2323g;
            float f5 = (f3 + f4) * 360.0f;
            float f6 = ((this.f2322f + f4) * 360.0f) - f5;
            this.f2318b.setColor(this.f2337u);
            this.f2318b.setAlpha(this.f2336t);
            float f7 = this.f2324h / 2.0f;
            rectF.inset(f7, f7);
            canvas.drawCircle(rectF.centerX(), rectF.centerY(), rectF.width() / 2.0f, this.f2320d);
            float f8 = -f7;
            rectF.inset(f8, f8);
            canvas.drawArc(rectF, f5, f6, false, this.f2318b);
            m4713b(canvas, f5, f6, rectF);
        }

        /* renamed from: b */
        void m4713b(Canvas canvas, float f, float f2, RectF rectF) {
            if (this.f2330n) {
                Path path = this.f2331o;
                if (path == null) {
                    Path path2 = new Path();
                    this.f2331o = path2;
                    path2.setFillType(Path.FillType.EVEN_ODD);
                } else {
                    path.reset();
                }
                float min = Math.min(rectF.width(), rectF.height()) / 2.0f;
                float f3 = (this.f2334r * this.f2332p) / 2.0f;
                this.f2331o.moveTo(0.0f, 0.0f);
                this.f2331o.lineTo(this.f2334r * this.f2332p, 0.0f);
                Path path3 = this.f2331o;
                float f4 = this.f2334r;
                float f5 = this.f2332p;
                path3.lineTo((f4 * f5) / 2.0f, this.f2335s * f5);
                this.f2331o.offset((min + rectF.centerX()) - f3, rectF.centerY() + (this.f2324h / 2.0f));
                this.f2331o.close();
                this.f2319c.setColor(this.f2337u);
                this.f2319c.setAlpha(this.f2336t);
                canvas.save();
                canvas.rotate(f + f2, rectF.centerX(), rectF.centerY());
                canvas.drawPath(this.f2331o, this.f2319c);
                canvas.restore();
            }
        }

        /* renamed from: c */
        int m4712c() {
            return this.f2336t;
        }

        /* renamed from: d */
        float m4711d() {
            return this.f2322f;
        }

        /* renamed from: e */
        int m4710e() {
            return this.f2325i[m4709f()];
        }

        /* renamed from: f */
        int m4709f() {
            return (this.f2326j + 1) % this.f2325i.length;
        }

        /* renamed from: g */
        float m4708g() {
            return this.f2321e;
        }

        /* renamed from: h */
        int m4707h() {
            return this.f2325i[this.f2326j];
        }

        /* renamed from: i */
        float m4706i() {
            return this.f2328l;
        }

        /* renamed from: j */
        float m4705j() {
            return this.f2329m;
        }

        /* renamed from: k */
        float m4704k() {
            return this.f2327k;
        }

        /* renamed from: l */
        void m4703l() {
            m4695t(m4709f());
        }

        /* renamed from: m */
        void m4702m() {
            this.f2327k = 0.0f;
            this.f2328l = 0.0f;
            this.f2329m = 0.0f;
            m4690y(0.0f);
            m4693v(0.0f);
            m4692w(0.0f);
        }

        /* renamed from: n */
        void m4701n(int i) {
            this.f2336t = i;
        }

        /* renamed from: o */
        void m4700o(float f, float f2) {
            this.f2334r = (int) f;
            this.f2335s = (int) f2;
        }

        /* renamed from: p */
        void m4699p(float f) {
            if (f != this.f2332p) {
                this.f2332p = f;
            }
        }

        /* renamed from: q */
        void m4698q(float f) {
            this.f2333q = f;
        }

        /* renamed from: r */
        void m4697r(int i) {
            this.f2337u = i;
        }

        /* renamed from: s */
        void m4696s(ColorFilter colorFilter) {
            this.f2318b.setColorFilter(colorFilter);
        }

        /* renamed from: t */
        void m4695t(int i) {
            this.f2326j = i;
            this.f2337u = this.f2325i[i];
        }

        /* renamed from: u */
        void m4694u(int[] iArr) {
            this.f2325i = iArr;
            m4695t(0);
        }

        /* renamed from: v */
        void m4693v(float f) {
            this.f2322f = f;
        }

        /* renamed from: w */
        void m4692w(float f) {
            this.f2323g = f;
        }

        /* renamed from: x */
        void m4691x(boolean z) {
            if (this.f2330n != z) {
                this.f2330n = z;
            }
        }

        /* renamed from: y */
        void m4690y(float f) {
            this.f2321e = f;
        }

        /* renamed from: z */
        void m4689z(float f) {
            this.f2324h = f;
            this.f2318b.setStrokeWidth(f);
        }
    }

    public C0446b(Context context) {
        h.c(context);
        this.f2309h = context.getResources();
        C0449c c0449c = new C0449c();
        this.f2307f = c0449c;
        c0449c.m4694u(f2306n);
        m4719k(2.5f);
        m4717m();
    }

    /* renamed from: a */
    private void m4729a(float f, C0449c c0449c) {
        m4716n(f, c0449c);
        c0449c.m4690y(c0449c.m4704k() + (((c0449c.m4706i() - 0.01f) - c0449c.m4704k()) * f));
        c0449c.m4693v(c0449c.m4706i());
        c0449c.m4692w(c0449c.m4705j() + ((((float) (Math.floor(c0449c.m4705j() / 0.8f) + 1.0d)) - c0449c.m4705j()) * f));
    }

    /* renamed from: c */
    private int m4727c(float f, int i, int i2) {
        int i3 = (i >> 24) & 255;
        int i4 = (i >> 16) & 255;
        int i5 = (i >> 8) & 255;
        int i6 = i & 255;
        return ((i3 + ((int) ((((i2 >> 24) & 255) - i3) * f))) << 24) | ((i4 + ((int) ((((i2 >> 16) & 255) - i4) * f))) << 16) | ((i5 + ((int) ((((i2 >> 8) & 255) - i5) * f))) << 8) | (i6 + ((int) (f * ((i2 & 255) - i6))));
    }

    /* renamed from: h */
    private void m4722h(float f) {
        this.f2308g = f;
    }

    /* renamed from: i */
    private void m4721i(float f, float f2, float f3, float f4) {
        C0449c c0449c = this.f2307f;
        float f5 = this.f2309h.getDisplayMetrics().density;
        c0449c.m4689z(f2 * f5);
        c0449c.m4698q(f * f5);
        c0449c.m4695t(0);
        c0449c.m4700o(f3 * f5, f4 * f5);
    }

    /* renamed from: m */
    private void m4717m() {
        C0449c c0449c = this.f2307f;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.addUpdateListener(new C0447a(c0449c));
        ofFloat.setRepeatCount(-1);
        ofFloat.setRepeatMode(1);
        ofFloat.setInterpolator(f2304l);
        ofFloat.addListener(new C0448b(c0449c));
        this.f2310i = ofFloat;
    }

    /* renamed from: b */
    void m4728b(float f, C0449c c0449c, boolean z) {
        float f2;
        float f3;
        if (this.f2312k) {
            m4729a(f, c0449c);
        } else if (f == 1.0f && !z) {
        } else {
            float m4705j = c0449c.m4705j();
            if (f < 0.5f) {
                f2 = c0449c.m4704k();
                f3 = (f2305m.getInterpolation(f / 0.5f) * 0.79f) + 0.01f + f2;
            } else {
                f3 = c0449c.m4704k() + 0.79f;
                f2 = f3 - (((1.0f - f2305m.getInterpolation((f - 0.5f) / 0.5f)) * 0.79f) + 0.01f);
            }
            float f4 = this.f2311j;
            c0449c.m4690y(f2);
            c0449c.m4693v(f3);
            c0449c.m4692w(m4705j + (0.20999998f * f));
            m4722h((f + f4) * 216.0f);
        }
    }

    /* renamed from: d */
    public void m4726d(boolean z) {
        this.f2307f.m4691x(z);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        canvas.save();
        canvas.rotate(this.f2308g, bounds.exactCenterX(), bounds.exactCenterY());
        this.f2307f.m4714a(canvas, bounds);
        canvas.restore();
    }

    /* renamed from: e */
    public void m4725e(float f) {
        this.f2307f.m4699p(f);
        invalidateSelf();
    }

    /* renamed from: f */
    public void m4724f(int... iArr) {
        this.f2307f.m4694u(iArr);
        this.f2307f.m4695t(0);
        invalidateSelf();
    }

    /* renamed from: g */
    public void m4723g(float f) {
        this.f2307f.m4692w(f);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f2307f.m4712c();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f2310i.isRunning();
    }

    /* renamed from: j */
    public void m4720j(float f, float f2) {
        this.f2307f.m4690y(f);
        this.f2307f.m4693v(f2);
        invalidateSelf();
    }

    /* renamed from: k */
    public void m4719k(float f) {
        this.f2307f.m4689z(f);
        invalidateSelf();
    }

    /* renamed from: l */
    public void m4718l(int i) {
        if (i == 0) {
            m4721i(11.0f, 3.0f, 12.0f, 6.0f);
        } else {
            m4721i(7.5f, 2.5f, 10.0f, 5.0f);
        }
        invalidateSelf();
    }

    /* renamed from: n */
    void m4716n(float f, C0449c c0449c) {
        if (f > 0.75f) {
            c0449c.m4697r(m4727c((f - 0.75f) / 0.25f, c0449c.m4707h(), c0449c.m4710e()));
        } else {
            c0449c.m4697r(c0449c.m4707h());
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f2307f.m4701n(i);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f2307f.m4696s(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.f2310i.cancel();
        this.f2307f.m4715A();
        if (this.f2307f.m4711d() != this.f2307f.m4708g()) {
            this.f2312k = true;
            this.f2310i.setDuration(666L);
            this.f2310i.start();
            return;
        }
        this.f2307f.m4695t(0);
        this.f2307f.m4702m();
        this.f2310i.setDuration(1332L);
        this.f2310i.start();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f2310i.cancel();
        m4722h(0.0f);
        this.f2307f.m4691x(false);
        this.f2307f.m4695t(0);
        this.f2307f.m4702m();
        invalidateSelf();
    }
}
