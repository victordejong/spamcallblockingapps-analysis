package androidx.cardview.widget;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import f.d.b;
import f.d.c;
/* renamed from: androidx.cardview.widget.g */
/* loaded from: classes-dex2jar.jar:androidx/cardview/widget/g.class */
class C0148g extends Drawable {

    /* renamed from: q */
    private static final double f668q = Math.cos(Math.toRadians(45.0d));

    /* renamed from: r */
    static AbstractC0149a f669r;

    /* renamed from: a */
    private final int f670a;

    /* renamed from: c */
    private Paint f672c;

    /* renamed from: d */
    private Paint f673d;

    /* renamed from: f */
    private float f675f;

    /* renamed from: g */
    private Path f676g;

    /* renamed from: h */
    private float f677h;

    /* renamed from: i */
    private float f678i;

    /* renamed from: j */
    private float f679j;

    /* renamed from: k */
    private ColorStateList f680k;

    /* renamed from: m */
    private final int f682m;

    /* renamed from: n */
    private final int f683n;

    /* renamed from: l */
    private boolean f681l = true;

    /* renamed from: o */
    private boolean f684o = true;

    /* renamed from: p */
    private boolean f685p = false;

    /* renamed from: b */
    private Paint f671b = new Paint(5);

    /* renamed from: e */
    private final RectF f674e = new RectF();

    /* renamed from: androidx.cardview.widget.g$a */
    /* loaded from: classes-dex2jar.jar:androidx/cardview/widget/g$a.class */
    interface AbstractC0149a {
        /* renamed from: a */
        void m6313a(Canvas canvas, RectF rectF, float f, Paint paint);
    }

    C0148g(Resources resources, ColorStateList colorStateList, float f, float f2, float f3) {
        this.f682m = resources.getColor(b.d);
        this.f683n = resources.getColor(b.c);
        this.f670a = resources.getDimensionPixelSize(c.a);
        m6320n(colorStateList);
        Paint paint = new Paint(5);
        this.f672c = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f675f = (int) (f + 0.5f);
        Paint paint2 = new Paint(this.f672c);
        this.f673d = paint2;
        paint2.setAntiAlias(false);
        m6315s(f2, f3);
    }

    /* renamed from: a */
    private void m6333a(Rect rect) {
        float f = this.f677h;
        float f2 = 1.5f * f;
        this.f674e.set(rect.left + f, rect.top + f2, rect.right - f, rect.bottom - f2);
        m6332b();
    }

    /* renamed from: b */
    private void m6332b() {
        float f = this.f675f;
        RectF rectF = new RectF(-f, -f, f, f);
        RectF rectF2 = new RectF(rectF);
        float f2 = this.f678i;
        rectF2.inset(-f2, -f2);
        Path path = this.f676g;
        if (path == null) {
            this.f676g = new Path();
        } else {
            path.reset();
        }
        this.f676g.setFillType(Path.FillType.EVEN_ODD);
        this.f676g.moveTo(-this.f675f, 0.0f);
        this.f676g.rLineTo(-this.f678i, 0.0f);
        this.f676g.arcTo(rectF2, 180.0f, 90.0f, false);
        this.f676g.arcTo(rectF, 270.0f, -90.0f, false);
        this.f676g.close();
        float f3 = this.f675f;
        float f4 = f3 / (this.f678i + f3);
        Paint paint = this.f672c;
        float f5 = this.f675f;
        float f6 = this.f678i;
        int i = this.f682m;
        paint.setShader(new RadialGradient(0.0f, 0.0f, f5 + f6, new int[]{i, i, this.f683n}, new float[]{0.0f, f4, 1.0f}, Shader.TileMode.CLAMP));
        Paint paint2 = this.f673d;
        float f7 = this.f675f;
        float f8 = -f7;
        float f9 = this.f678i;
        float f10 = -f7;
        int i2 = this.f682m;
        paint2.setShader(new LinearGradient(0.0f, f8 + f9, 0.0f, f10 - f9, new int[]{i2, i2, this.f683n}, new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.CLAMP));
        this.f673d.setAntiAlias(false);
    }

    /* renamed from: c */
    public static float m6331c(float f, float f2, boolean z) {
        float f3 = f;
        if (z) {
            f3 = (float) (f + ((1.0d - f668q) * f2));
        }
        return f3;
    }

    /* renamed from: d */
    public static float m6330d(float f, float f2, boolean z) {
        return z ? (float) ((f * 1.5f) + ((1.0d - f668q) * f2)) : f * 1.5f;
    }

    /* renamed from: e */
    private void m6329e(Canvas canvas) {
        float f = this.f675f;
        float f2 = (-f) - this.f678i;
        float f3 = f + this.f670a + (this.f679j / 2.0f);
        float f4 = f3 * 2.0f;
        boolean z = this.f674e.width() - f4 > 0.0f;
        boolean z2 = this.f674e.height() - f4 > 0.0f;
        int save = canvas.save();
        RectF rectF = this.f674e;
        canvas.translate(rectF.left + f3, rectF.top + f3);
        canvas.drawPath(this.f676g, this.f672c);
        if (z) {
            canvas.drawRect(0.0f, f2, this.f674e.width() - f4, -this.f675f, this.f673d);
        }
        canvas.restoreToCount(save);
        int save2 = canvas.save();
        RectF rectF2 = this.f674e;
        canvas.translate(rectF2.right - f3, rectF2.bottom - f3);
        canvas.rotate(180.0f);
        canvas.drawPath(this.f676g, this.f672c);
        if (z) {
            canvas.drawRect(0.0f, f2, this.f674e.width() - f4, (-this.f675f) + this.f678i, this.f673d);
        }
        canvas.restoreToCount(save2);
        int save3 = canvas.save();
        RectF rectF3 = this.f674e;
        canvas.translate(rectF3.left + f3, rectF3.bottom - f3);
        canvas.rotate(270.0f);
        canvas.drawPath(this.f676g, this.f672c);
        if (z2) {
            canvas.drawRect(0.0f, f2, this.f674e.height() - f4, -this.f675f, this.f673d);
        }
        canvas.restoreToCount(save3);
        int save4 = canvas.save();
        RectF rectF4 = this.f674e;
        canvas.translate(rectF4.right - f3, rectF4.top + f3);
        canvas.rotate(90.0f);
        canvas.drawPath(this.f676g, this.f672c);
        if (z2) {
            canvas.drawRect(0.0f, f2, this.f674e.height() - f4, -this.f675f, this.f673d);
        }
        canvas.restoreToCount(save4);
    }

    /* renamed from: n */
    private void m6320n(ColorStateList colorStateList) {
        ColorStateList colorStateList2 = colorStateList;
        if (colorStateList == null) {
            colorStateList2 = ColorStateList.valueOf(0);
        }
        this.f680k = colorStateList2;
        this.f671b.setColor(colorStateList2.getColorForState(getState(), this.f680k.getDefaultColor()));
    }

    /* renamed from: s */
    private void m6315s(float f, float f2) {
        if (f < 0.0f) {
            throw new IllegalArgumentException("Invalid shadow size " + f + ". Must be >= 0");
        } else if (f2 < 0.0f) {
            throw new IllegalArgumentException("Invalid max shadow size " + f2 + ". Must be >= 0");
        } else {
            float m6314t = m6314t(f);
            float m6314t2 = m6314t(f2);
            float f3 = m6314t;
            if (m6314t > m6314t2) {
                if (!this.f685p) {
                    this.f685p = true;
                }
                f3 = m6314t2;
            }
            if (this.f679j == f3 && this.f677h == m6314t2) {
                return;
            }
            this.f679j = f3;
            this.f677h = m6314t2;
            this.f678i = (int) ((f3 * 1.5f) + this.f670a + 0.5f);
            this.f681l = true;
            invalidateSelf();
        }
    }

    /* renamed from: t */
    private int m6314t(float f) {
        int i = (int) (f + 0.5f);
        int i2 = i;
        if (i % 2 == 1) {
            i2 = i - 1;
        }
        return i2;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f681l) {
            m6333a(getBounds());
            this.f681l = false;
        }
        canvas.translate(0.0f, this.f679j / 2.0f);
        m6329e(canvas);
        canvas.translate(0.0f, (-this.f679j) / 2.0f);
        f669r.m6313a(canvas, this.f674e, this.f675f, this.f671b);
    }

    /* renamed from: f */
    ColorStateList m6328f() {
        return this.f680k;
    }

    /* renamed from: g */
    float m6327g() {
        return this.f675f;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        int ceil = (int) Math.ceil(m6330d(this.f677h, this.f675f, this.f684o));
        int ceil2 = (int) Math.ceil(m6331c(this.f677h, this.f675f, this.f684o));
        rect.set(ceil2, ceil, ceil2, ceil);
        return true;
    }

    /* renamed from: h */
    void m6326h(Rect rect) {
        getPadding(rect);
    }

    /* renamed from: i */
    float m6325i() {
        return this.f677h;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList = this.f680k;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    /* renamed from: j */
    float m6324j() {
        float f = this.f677h;
        return (Math.max(f, this.f675f + this.f670a + ((f * 1.5f) / 2.0f)) * 2.0f) + (((this.f677h * 1.5f) + this.f670a) * 2.0f);
    }

    /* renamed from: k */
    float m6323k() {
        float f = this.f677h;
        return (Math.max(f, this.f675f + this.f670a + (f / 2.0f)) * 2.0f) + ((this.f677h + this.f670a) * 2.0f);
    }

    /* renamed from: l */
    float m6322l() {
        return this.f679j;
    }

    /* renamed from: m */
    void m6321m(boolean z) {
        this.f684o = z;
        invalidateSelf();
    }

    /* renamed from: o */
    void m6319o(ColorStateList colorStateList) {
        m6320n(colorStateList);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f681l = true;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        ColorStateList colorStateList = this.f680k;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        if (this.f671b.getColor() == colorForState) {
            return false;
        }
        this.f671b.setColor(colorForState);
        this.f681l = true;
        invalidateSelf();
        return true;
    }

    /* renamed from: p */
    void m6318p(float f) {
        if (f < 0.0f) {
            throw new IllegalArgumentException("Invalid radius " + f + ". Must be >= 0");
        }
        float f2 = (int) (f + 0.5f);
        if (this.f675f == f2) {
            return;
        }
        this.f675f = f2;
        this.f681l = true;
        invalidateSelf();
    }

    /* renamed from: q */
    void m6317q(float f) {
        m6315s(this.f679j, f);
    }

    /* renamed from: r */
    void m6316r(float f) {
        m6315s(f, this.f677h);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f671b.setAlpha(i);
        this.f672c.setAlpha(i);
        this.f673d.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f671b.setColorFilter(colorFilter);
    }
}
