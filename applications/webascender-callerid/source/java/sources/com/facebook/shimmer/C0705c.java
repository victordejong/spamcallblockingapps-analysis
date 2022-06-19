package com.facebook.shimmer;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
/* renamed from: com.facebook.shimmer.c */
/* loaded from: classes-dex2jar.jar:com/facebook/shimmer/c.class */
public final class C0705c extends Drawable {

    /* renamed from: b */
    private final Paint f3166b;

    /* renamed from: e */
    private ValueAnimator f3169e;

    /* renamed from: f */
    private C0703b f3170f;

    /* renamed from: a */
    private final ValueAnimator.AnimatorUpdateListener f3165a = new C0706a();

    /* renamed from: c */
    private final Rect f3167c = new Rect();

    /* renamed from: d */
    private final Matrix f3168d = new Matrix();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.facebook.shimmer.c$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/shimmer/c$a.class */
    public class C0706a implements ValueAnimator.AnimatorUpdateListener {
        C0706a() {
            C0705c.this = r4;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            C0705c.this.invalidateSelf();
        }
    }

    public C0705c() {
        Paint paint = new Paint();
        this.f3166b = paint;
        paint.setAntiAlias(true);
    }

    /* renamed from: c */
    private float m3971c(float f, float f2, float f3) {
        return f + ((f2 - f) * f3);
    }

    /* renamed from: g */
    private void m3967g() {
        C0703b c0703b;
        LinearGradient linearGradient;
        Rect bounds = getBounds();
        int width = bounds.width();
        int height = bounds.height();
        if (width == 0 || height == 0 || (c0703b = this.f3170f) == null) {
            return;
        }
        int m3995d = c0703b.m3995d(width);
        int m3998a = this.f3170f.m3998a(height);
        C0703b c0703b2 = this.f3170f;
        if (c0703b2.f3149f != 1) {
            int i = c0703b2.f3146c;
            boolean z = true;
            if (i != 1) {
                z = i == 3;
            }
            if (z) {
                m3995d = 0;
            }
            int i2 = z ? m3998a : 0;
            C0703b c0703b3 = this.f3170f;
            linearGradient = new LinearGradient(0.0f, 0.0f, m3995d, i2, c0703b3.f3145b, c0703b3.f3144a, Shader.TileMode.CLAMP);
        } else {
            float f = m3998a / 2.0f;
            float max = (float) (Math.max(m3995d, m3998a) / Math.sqrt(2.0d));
            C0703b c0703b4 = this.f3170f;
            linearGradient = new RadialGradient(m3995d / 2.0f, f, max, c0703b4.f3145b, c0703b4.f3144a, Shader.TileMode.CLAMP);
        }
        this.f3166b.setShader(linearGradient);
    }

    /* renamed from: h */
    private void m3966h() {
        boolean z;
        if (this.f3170f == null) {
            return;
        }
        ValueAnimator valueAnimator = this.f3169e;
        if (valueAnimator != null) {
            z = valueAnimator.isStarted();
            this.f3169e.cancel();
            this.f3169e.removeAllUpdateListeners();
        } else {
            z = false;
        }
        C0703b c0703b = this.f3170f;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, ((float) (c0703b.f3163t / c0703b.f3162s)) + 1.0f);
        this.f3169e = ofFloat;
        ofFloat.setRepeatMode(this.f3170f.f3161r);
        this.f3169e.setRepeatCount(this.f3170f.f3160q);
        ValueAnimator valueAnimator2 = this.f3169e;
        C0703b c0703b2 = this.f3170f;
        valueAnimator2.setDuration(c0703b2.f3162s + c0703b2.f3163t);
        this.f3169e.addUpdateListener(this.f3165a);
        if (!z) {
            return;
        }
        this.f3169e.start();
    }

    /* renamed from: a */
    public boolean m3973a() {
        ValueAnimator valueAnimator = this.f3169e;
        return valueAnimator != null && valueAnimator.isStarted();
    }

    /* renamed from: b */
    public void m3972b() {
        C0703b c0703b;
        ValueAnimator valueAnimator = this.f3169e;
        if (valueAnimator == null || valueAnimator.isStarted() || (c0703b = this.f3170f) == null || !c0703b.f3158o || getCallback() == null) {
            return;
        }
        this.f3169e.start();
    }

    /* renamed from: d */
    public void m3970d(C0703b c0703b) {
        this.f3170f = c0703b;
        if (c0703b != null) {
            this.f3166b.setXfermode(new PorterDuffXfermode(this.f3170f.f3159p ? PorterDuff.Mode.DST_IN : PorterDuff.Mode.SRC_IN));
        }
        m3967g();
        m3966h();
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        float f;
        float m3971c;
        if (this.f3170f == null || this.f3166b.getShader() == null) {
            return;
        }
        float tan = (float) Math.tan(Math.toRadians(this.f3170f.f3156m));
        float height = this.f3167c.height() + (this.f3167c.width() * tan);
        float width = this.f3167c.width() + (tan * this.f3167c.height());
        ValueAnimator valueAnimator = this.f3169e;
        float f2 = 0.0f;
        float animatedFraction = valueAnimator != null ? valueAnimator.getAnimatedFraction() : 0.0f;
        int i = this.f3170f.f3146c;
        if (i != 1) {
            if (i == 2) {
                m3971c = m3971c(width, -width, animatedFraction);
            } else if (i != 3) {
                m3971c = m3971c(-width, width, animatedFraction);
            } else {
                f = m3971c(height, -height, animatedFraction);
            }
            f2 = m3971c;
            f = 0.0f;
        } else {
            f = m3971c(-height, height, animatedFraction);
        }
        this.f3168d.reset();
        this.f3168d.setRotate(this.f3170f.f3156m, this.f3167c.width() / 2.0f, this.f3167c.height() / 2.0f);
        this.f3168d.postTranslate(f2, f);
        this.f3166b.getShader().setLocalMatrix(this.f3168d);
        canvas.drawRect(this.f3167c, this.f3166b);
    }

    /* renamed from: e */
    public void m3969e() {
        if (this.f3169e == null || m3973a() || getCallback() == null) {
            return;
        }
        this.f3169e.start();
    }

    /* renamed from: f */
    public void m3968f() {
        if (this.f3169e == null || !m3973a()) {
            return;
        }
        this.f3169e.cancel();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        C0703b c0703b = this.f3170f;
        return (c0703b == null || (!c0703b.f3157n && !c0703b.f3159p)) ? -1 : -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f3167c.set(0, 0, rect.width(), rect.height());
        m3967g();
        m3972b();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }
}
