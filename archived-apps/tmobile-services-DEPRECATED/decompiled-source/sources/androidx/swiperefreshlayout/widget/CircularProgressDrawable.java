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
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.core.util.Preconditions;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/CircularProgressDrawable.class */
public class CircularProgressDrawable extends Drawable implements Animatable {

    /* renamed from: l */
    private static final Interpolator f4975l = new LinearInterpolator();

    /* renamed from: m */
    private static final Interpolator f4976m = new FastOutSlowInInterpolator();

    /* renamed from: n */
    private static final int[] f4977n = {-16777216};

    /* renamed from: f */
    private final Ring f4978f;

    /* renamed from: g */
    private float f4979g;

    /* renamed from: h */
    private Resources f4980h;

    /* renamed from: i */
    private Animator f4981i;

    /* renamed from: j */
    float f4982j;

    /* renamed from: k */
    boolean f4983k;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/CircularProgressDrawable$ProgressDrawableSize.class */
    public @interface ProgressDrawableSize {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring.class */
    public static class Ring {

        /* renamed from: i */
        int[] f4996i;

        /* renamed from: j */
        int f4997j;

        /* renamed from: k */
        float f4998k;

        /* renamed from: l */
        float f4999l;

        /* renamed from: m */
        float f5000m;

        /* renamed from: n */
        boolean f5001n;

        /* renamed from: o */
        Path f5002o;

        /* renamed from: q */
        float f5004q;

        /* renamed from: r */
        int f5005r;

        /* renamed from: s */
        int f5006s;

        /* renamed from: u */
        int f5008u;

        /* renamed from: a */
        final RectF f4988a = new RectF();

        /* renamed from: b */
        final Paint f4989b = new Paint();

        /* renamed from: c */
        final Paint f4990c = new Paint();

        /* renamed from: d */
        final Paint f4991d = new Paint();

        /* renamed from: e */
        float f4992e = 0.0f;

        /* renamed from: f */
        float f4993f = 0.0f;

        /* renamed from: g */
        float f4994g = 0.0f;

        /* renamed from: h */
        float f4995h = 5.0f;

        /* renamed from: p */
        float f5003p = 1.0f;

        /* renamed from: t */
        int f5007t = 255;

        Ring() {
            this.f4989b.setStrokeCap(Paint.Cap.SQUARE);
            this.f4989b.setAntiAlias(true);
            this.f4989b.setStyle(Paint.Style.STROKE);
            this.f4990c.setStyle(Paint.Style.FILL);
            this.f4990c.setAntiAlias(true);
            this.f4991d.setColor(0);
        }

        /* renamed from: A */
        void m16959A() {
            this.f4998k = this.f4992e;
            this.f4999l = this.f4993f;
            this.f5000m = this.f4994g;
        }

        /* renamed from: a */
        void m16958a(Canvas canvas, Rect rect) {
            RectF rectF = this.f4988a;
            float f = this.f5004q;
            float f2 = (this.f4995h / 2.0f) + f;
            if (f <= 0.0f) {
                f2 = (Math.min(rect.width(), rect.height()) / 2.0f) - Math.max((this.f5005r * this.f5003p) / 2.0f, this.f4995h / 2.0f);
            }
            rectF.set(rect.centerX() - f2, rect.centerY() - f2, rect.centerX() + f2, rect.centerY() + f2);
            float f3 = this.f4992e;
            float f4 = this.f4994g;
            float f5 = (f3 + f4) * 360.0f;
            float f6 = ((this.f4993f + f4) * 360.0f) - f5;
            this.f4989b.setColor(this.f5008u);
            this.f4989b.setAlpha(this.f5007t);
            float f7 = this.f4995h / 2.0f;
            rectF.inset(f7, f7);
            canvas.drawCircle(rectF.centerX(), rectF.centerY(), rectF.width() / 2.0f, this.f4991d);
            float f8 = -f7;
            rectF.inset(f8, f8);
            canvas.drawArc(rectF, f5, f6, false, this.f4989b);
            m16957b(canvas, f5, f6, rectF);
        }

        /* renamed from: b */
        void m16957b(Canvas canvas, float f, float f2, RectF rectF) {
            if (this.f5001n) {
                Path path = this.f5002o;
                if (path == null) {
                    Path path2 = new Path();
                    this.f5002o = path2;
                    path2.setFillType(Path.FillType.EVEN_ODD);
                } else {
                    path.reset();
                }
                float min = Math.min(rectF.width(), rectF.height()) / 2.0f;
                float f3 = (this.f5005r * this.f5003p) / 2.0f;
                this.f5002o.moveTo(0.0f, 0.0f);
                this.f5002o.lineTo(this.f5005r * this.f5003p, 0.0f);
                Path path3 = this.f5002o;
                float f4 = this.f5005r;
                float f5 = this.f5003p;
                path3.lineTo((f4 * f5) / 2.0f, this.f5006s * f5);
                this.f5002o.offset((min + rectF.centerX()) - f3, rectF.centerY() + (this.f4995h / 2.0f));
                this.f5002o.close();
                this.f4990c.setColor(this.f5008u);
                this.f4990c.setAlpha(this.f5007t);
                canvas.save();
                canvas.rotate(f + f2, rectF.centerX(), rectF.centerY());
                canvas.drawPath(this.f5002o, this.f4990c);
                canvas.restore();
            }
        }

        /* renamed from: c */
        int m16956c() {
            return this.f5007t;
        }

        /* renamed from: d */
        float m16955d() {
            return this.f4993f;
        }

        /* renamed from: e */
        int m16954e() {
            return this.f4996i[m16953f()];
        }

        /* renamed from: f */
        int m16953f() {
            return (this.f4997j + 1) % this.f4996i.length;
        }

        /* renamed from: g */
        float m16952g() {
            return this.f4992e;
        }

        /* renamed from: h */
        int m16951h() {
            return this.f4996i[this.f4997j];
        }

        /* renamed from: i */
        float m16950i() {
            return this.f4999l;
        }

        /* renamed from: j */
        float m16949j() {
            return this.f5000m;
        }

        /* renamed from: k */
        float m16948k() {
            return this.f4998k;
        }

        /* renamed from: l */
        void m16947l() {
            m16939t(m16953f());
        }

        /* renamed from: m */
        void m16946m() {
            this.f4998k = 0.0f;
            this.f4999l = 0.0f;
            this.f5000m = 0.0f;
            m16934y(0.0f);
            m16937v(0.0f);
            m16936w(0.0f);
        }

        /* renamed from: n */
        void m16945n(int i) {
            this.f5007t = i;
        }

        /* renamed from: o */
        void m16944o(float f, float f2) {
            this.f5005r = (int) f;
            this.f5006s = (int) f2;
        }

        /* renamed from: p */
        void m16943p(float f) {
            if (f != this.f5003p) {
                this.f5003p = f;
            }
        }

        /* renamed from: q */
        void m16942q(float f) {
            this.f5004q = f;
        }

        /* renamed from: r */
        void m16941r(int i) {
            this.f5008u = i;
        }

        /* renamed from: s */
        void m16940s(ColorFilter colorFilter) {
            this.f4989b.setColorFilter(colorFilter);
        }

        /* renamed from: t */
        void m16939t(int i) {
            this.f4997j = i;
            this.f5008u = this.f4996i[i];
        }

        /* renamed from: u */
        void m16938u(@NonNull int[] iArr) {
            this.f4996i = iArr;
            m16939t(0);
        }

        /* renamed from: v */
        void m16937v(float f) {
            this.f4993f = f;
        }

        /* renamed from: w */
        void m16936w(float f) {
            this.f4994g = f;
        }

        /* renamed from: x */
        void m16935x(boolean z) {
            if (this.f5001n != z) {
                this.f5001n = z;
            }
        }

        /* renamed from: y */
        void m16934y(float f) {
            this.f4992e = f;
        }

        /* renamed from: z */
        void m16933z(float f) {
            this.f4995h = f;
            this.f4989b.setStrokeWidth(f);
        }
    }

    public CircularProgressDrawable(@NonNull Context context) {
        Preconditions.m19337d(context);
        this.f4980h = context.getResources();
        Ring ring = new Ring();
        this.f4978f = ring;
        ring.m16938u(f4977n);
        m16963k(2.5f);
        m16961m();
    }

    /* renamed from: a */
    private void m16973a(float f, Ring ring) {
        m16960n(f, ring);
        ring.m16934y(ring.m16948k() + (((ring.m16950i() - 0.01f) - ring.m16948k()) * f));
        ring.m16937v(ring.m16950i());
        ring.m16936w(ring.m16949j() + ((((float) (Math.floor(ring.m16949j() / 0.8f) + 1.0d)) - ring.m16949j()) * f));
    }

    /* renamed from: c */
    private int m16971c(float f, int i, int i2) {
        int i3 = (i >> 24) & 255;
        int i4 = (i >> 16) & 255;
        int i5 = (i >> 8) & 255;
        int i6 = i & 255;
        return ((i3 + ((int) ((((i2 >> 24) & 255) - i3) * f))) << 24) | ((i4 + ((int) ((((i2 >> 16) & 255) - i4) * f))) << 16) | ((i5 + ((int) ((((i2 >> 8) & 255) - i5) * f))) << 8) | (i6 + ((int) (f * ((i2 & 255) - i6))));
    }

    /* renamed from: h */
    private void m16966h(float f) {
        this.f4979g = f;
    }

    /* renamed from: i */
    private void m16965i(float f, float f2, float f3, float f4) {
        Ring ring = this.f4978f;
        float f5 = this.f4980h.getDisplayMetrics().density;
        ring.m16933z(f2 * f5);
        ring.m16942q(f * f5);
        ring.m16939t(0);
        ring.m16944o(f3 * f5, f4 * f5);
    }

    /* renamed from: m */
    private void m16961m() {
        final Ring ring = this.f4978f;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.swiperefreshlayout.widget.CircularProgressDrawable.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                CircularProgressDrawable.this.m16960n(floatValue, ring);
                CircularProgressDrawable.this.m16972b(floatValue, ring, false);
                CircularProgressDrawable.this.invalidateSelf();
            }
        });
        ofFloat.setRepeatCount(-1);
        ofFloat.setRepeatMode(1);
        ofFloat.setInterpolator(f4975l);
        ofFloat.addListener(new Animator.AnimatorListener() { // from class: androidx.swiperefreshlayout.widget.CircularProgressDrawable.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
                CircularProgressDrawable.this.m16972b(1.0f, ring, true);
                ring.m16959A();
                ring.m16947l();
                CircularProgressDrawable circularProgressDrawable = CircularProgressDrawable.this;
                if (circularProgressDrawable.f4983k) {
                    circularProgressDrawable.f4983k = false;
                    animator.cancel();
                    animator.setDuration(1332L);
                    animator.start();
                    ring.m16935x(false);
                    return;
                }
                circularProgressDrawable.f4982j += 1.0f;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                CircularProgressDrawable.this.f4982j = 0.0f;
            }
        });
        this.f4981i = ofFloat;
    }

    /* renamed from: b */
    void m16972b(float f, Ring ring, boolean z) {
        float f2;
        float f3;
        if (this.f4983k) {
            m16973a(f, ring);
        } else if (f != 1.0f || z) {
            float j = ring.m16949j();
            if (f < 0.5f) {
                f2 = ring.m16948k();
                f3 = (f4976m.getInterpolation(f / 0.5f) * 0.79f) + 0.01f + f2;
            } else {
                f3 = ring.m16948k() + 0.79f;
                f2 = f3 - (((1.0f - f4976m.getInterpolation((f - 0.5f) / 0.5f)) * 0.79f) + 0.01f);
            }
            float f4 = this.f4982j;
            ring.m16934y(f2);
            ring.m16937v(f3);
            ring.m16936w(j + (0.20999998f * f));
            m16966h((f + f4) * 216.0f);
        }
    }

    /* renamed from: d */
    public void m16970d(boolean z) {
        this.f4978f.m16935x(z);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        canvas.save();
        canvas.rotate(this.f4979g, bounds.exactCenterX(), bounds.exactCenterY());
        this.f4978f.m16958a(canvas, bounds);
        canvas.restore();
    }

    /* renamed from: e */
    public void m16969e(float f) {
        this.f4978f.m16943p(f);
        invalidateSelf();
    }

    /* renamed from: f */
    public void m16968f(@NonNull int... iArr) {
        this.f4978f.m16938u(iArr);
        this.f4978f.m16939t(0);
        invalidateSelf();
    }

    /* renamed from: g */
    public void m16967g(float f) {
        this.f4978f.m16936w(f);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f4978f.m16956c();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f4981i.isRunning();
    }

    /* renamed from: j */
    public void m16964j(float f, float f2) {
        this.f4978f.m16934y(f);
        this.f4978f.m16937v(f2);
        invalidateSelf();
    }

    /* renamed from: k */
    public void m16963k(float f) {
        this.f4978f.m16933z(f);
        invalidateSelf();
    }

    /* renamed from: l */
    public void m16962l(int i) {
        if (i == 0) {
            m16965i(11.0f, 3.0f, 12.0f, 6.0f);
        } else {
            m16965i(7.5f, 2.5f, 10.0f, 5.0f);
        }
        invalidateSelf();
    }

    /* renamed from: n */
    void m16960n(float f, Ring ring) {
        if (f > 0.75f) {
            ring.m16941r(m16971c((f - 0.75f) / 0.25f, ring.m16951h(), ring.m16954e()));
        } else {
            ring.m16941r(ring.m16951h());
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f4978f.m16945n(i);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f4978f.m16940s(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.f4981i.cancel();
        this.f4978f.m16959A();
        if (this.f4978f.m16955d() != this.f4978f.m16952g()) {
            this.f4983k = true;
            this.f4981i.setDuration(666L);
            this.f4981i.start();
            return;
        }
        this.f4978f.m16939t(0);
        this.f4978f.m16946m();
        this.f4981i.setDuration(1332L);
        this.f4981i.start();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f4981i.cancel();
        m16966h(0.0f);
        this.f4978f.m16935x(false);
        this.f4978f.m16939t(0);
        this.f4978f.m16946m();
        invalidateSelf();
    }
}
