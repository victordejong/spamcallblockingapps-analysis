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
import androidx.cardview.C0559a;
/* renamed from: androidx.cardview.widget.j */
/* loaded from: classes-dex2jar.jar:androidx/cardview/widget/j.class */
final class C0574j extends Drawable {

    /* renamed from: a */
    static AbstractC0575a f2598a;

    /* renamed from: b */
    private static final double f2599b = Math.cos(Math.toRadians(45.0d));

    /* renamed from: c */
    private final int f2600c;

    /* renamed from: e */
    private Paint f2602e;

    /* renamed from: f */
    private Paint f2603f;

    /* renamed from: g */
    private final RectF f2604g;

    /* renamed from: h */
    private float f2605h;

    /* renamed from: i */
    private Path f2606i;

    /* renamed from: j */
    private float f2607j;

    /* renamed from: k */
    private float f2608k;

    /* renamed from: l */
    private float f2609l;

    /* renamed from: m */
    private ColorStateList f2610m;

    /* renamed from: n */
    private boolean f2611n;

    /* renamed from: o */
    private final int f2612o;

    /* renamed from: p */
    private final int f2613p;

    /* renamed from: r */
    private boolean f2615r;

    /* renamed from: q */
    private boolean f2614q = true;

    /* renamed from: d */
    private Paint f2601d = new Paint(5);

    /* renamed from: androidx.cardview.widget.j$a */
    /* loaded from: classes-dex2jar.jar:androidx/cardview/widget/j$a.class */
    interface AbstractC0575a {
        /* renamed from: a */
        void mo8820a(Canvas canvas, RectF rectF, float f, Paint paint);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0574j(Resources resources, ColorStateList colorStateList, float f, float f2, float f3) {
        this.f2611n = true;
        this.f2615r = false;
        this.f2612o = resources.getColor(C0559a.C0561b.f2556d);
        this.f2613p = resources.getColor(C0559a.C0561b.f2555c);
        this.f2600c = resources.getDimensionPixelSize(C0559a.C0562c.f2557a);
        this.f2610m = colorStateList == null ? ColorStateList.valueOf(0) : colorStateList;
        this.f2601d.setColor(this.f2610m.getColorForState(getState(), this.f2610m.getDefaultColor()));
        this.f2602e = new Paint(5);
        this.f2602e.setStyle(Paint.Style.FILL);
        this.f2605h = (int) (f + 0.5f);
        this.f2604g = new RectF();
        this.f2603f = new Paint(this.f2602e);
        this.f2603f.setAntiAlias(false);
        if (f2 < 0.0f) {
            throw new IllegalArgumentException("Invalid shadow size " + f2 + ". Must be >= 0");
        } else if (f3 >= 0.0f) {
            float a = m8826a(f2);
            float a2 = m8826a(f3);
            float f4 = a;
            if (a > a2) {
                if (!this.f2615r) {
                    this.f2615r = true;
                }
                f4 = a2;
            }
            if (this.f2609l != f4 || this.f2607j != a2) {
                this.f2609l = f4;
                this.f2607j = a2;
                this.f2608k = (int) ((f4 * 1.5f) + this.f2600c + 0.5f);
                this.f2611n = true;
                invalidateSelf();
            }
        } else {
            throw new IllegalArgumentException("Invalid max shadow size " + f3 + ". Must be >= 0");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static float m8825a(float f, float f2, boolean z) {
        float f3 = f * 1.5f;
        float f4 = f3;
        if (z) {
            f4 = (float) (f3 + ((1.0d - f2599b) * f2));
        }
        return f4;
    }

    /* renamed from: a */
    private static int m8826a(float f) {
        int i = (int) (f + 0.5f);
        int i2 = i;
        if (i % 2 == 1) {
            i2 = i - 1;
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static float m8822b(float f, float f2, boolean z) {
        float f3 = f;
        if (z) {
            f3 = (float) (f + ((1.0d - f2599b) * f2));
        }
        return f3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final float m8827a() {
        return this.f2605h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m8824a(boolean z) {
        this.f2614q = z;
        invalidateSelf();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final float m8823b() {
        float f = this.f2607j;
        return (Math.max(f, this.f2605h + this.f2600c + (f / 2.0f)) * 2.0f) + ((this.f2607j + this.f2600c) * 2.0f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final float m8821c() {
        float f = this.f2607j;
        return (Math.max(f, this.f2605h + this.f2600c + ((f * 1.5f) / 2.0f)) * 2.0f) + (((this.f2607j * 1.5f) + this.f2600c) * 2.0f);
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        if (this.f2611n) {
            Rect bounds = getBounds();
            float f = this.f2607j * 1.5f;
            this.f2604g.set(bounds.left + this.f2607j, bounds.top + f, bounds.right - this.f2607j, bounds.bottom - f);
            float f2 = this.f2605h;
            RectF rectF = new RectF(-f2, -f2, f2, f2);
            RectF rectF2 = new RectF(rectF);
            float f3 = this.f2608k;
            rectF2.inset(-f3, -f3);
            Path path = this.f2606i;
            if (path == null) {
                this.f2606i = new Path();
            } else {
                path.reset();
            }
            this.f2606i.setFillType(Path.FillType.EVEN_ODD);
            this.f2606i.moveTo(-this.f2605h, 0.0f);
            this.f2606i.rLineTo(-this.f2608k, 0.0f);
            this.f2606i.arcTo(rectF2, 180.0f, 90.0f, false);
            this.f2606i.arcTo(rectF, 270.0f, -90.0f, false);
            this.f2606i.close();
            float f4 = this.f2605h;
            float f5 = this.f2608k;
            float f6 = f4 / (f4 + f5);
            Paint paint = this.f2602e;
            int i = this.f2612o;
            paint.setShader(new RadialGradient(0.0f, 0.0f, f4 + f5, new int[]{i, i, this.f2613p}, new float[]{0.0f, f6, 1.0f}, Shader.TileMode.CLAMP));
            Paint paint2 = this.f2603f;
            float f7 = this.f2605h;
            float f8 = -f7;
            float f9 = this.f2608k;
            float f10 = -f7;
            int i2 = this.f2612o;
            paint2.setShader(new LinearGradient(0.0f, f8 + f9, 0.0f, f10 - f9, new int[]{i2, i2, this.f2613p}, new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.CLAMP));
            this.f2603f.setAntiAlias(false);
            this.f2611n = false;
        }
        canvas.translate(0.0f, this.f2609l / 2.0f);
        float f11 = this.f2605h;
        float f12 = (-f11) - this.f2608k;
        float f13 = f11 + this.f2600c + (this.f2609l / 2.0f);
        float f14 = f13 * 2.0f;
        boolean z = this.f2604g.width() - f14 > 0.0f;
        boolean z2 = this.f2604g.height() - f14 > 0.0f;
        int save = canvas.save();
        canvas.translate(this.f2604g.left + f13, this.f2604g.top + f13);
        canvas.drawPath(this.f2606i, this.f2602e);
        if (z) {
            canvas.drawRect(0.0f, f12, this.f2604g.width() - f14, -this.f2605h, this.f2603f);
        }
        canvas.restoreToCount(save);
        int save2 = canvas.save();
        canvas.translate(this.f2604g.right - f13, this.f2604g.bottom - f13);
        canvas.rotate(180.0f);
        canvas.drawPath(this.f2606i, this.f2602e);
        if (z) {
            canvas.drawRect(0.0f, f12, this.f2604g.width() - f14, (-this.f2605h) + this.f2608k, this.f2603f);
        }
        canvas.restoreToCount(save2);
        int save3 = canvas.save();
        canvas.translate(this.f2604g.left + f13, this.f2604g.bottom - f13);
        canvas.rotate(270.0f);
        canvas.drawPath(this.f2606i, this.f2602e);
        if (z2) {
            canvas.drawRect(0.0f, f12, this.f2604g.height() - f14, -this.f2605h, this.f2603f);
        }
        canvas.restoreToCount(save3);
        int save4 = canvas.save();
        canvas.translate(this.f2604g.right - f13, this.f2604g.top + f13);
        canvas.rotate(90.0f);
        canvas.drawPath(this.f2606i, this.f2602e);
        if (z2) {
            canvas.drawRect(0.0f, f12, this.f2604g.height() - f14, -this.f2605h, this.f2603f);
        }
        canvas.restoreToCount(save4);
        canvas.translate(0.0f, (-this.f2609l) / 2.0f);
        f2598a.mo8820a(canvas, this.f2604g, this.f2605h, this.f2601d);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean getPadding(Rect rect) {
        int ceil = (int) Math.ceil(m8825a(this.f2607j, this.f2605h, this.f2614q));
        int ceil2 = (int) Math.ceil(m8822b(this.f2607j, this.f2605h, this.f2614q));
        rect.set(ceil2, ceil, ceil2, ceil);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        ColorStateList colorStateList = this.f2610m;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    protected final void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f2611n = true;
    }

    @Override // android.graphics.drawable.Drawable
    protected final boolean onStateChange(int[] iArr) {
        ColorStateList colorStateList = this.f2610m;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        if (this.f2601d.getColor() == colorForState) {
            return false;
        }
        this.f2601d.setColor(colorForState);
        this.f2611n = true;
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.f2601d.setAlpha(i);
        this.f2602e.setAlpha(i);
        this.f2603f.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f2601d.setColorFilter(colorFilter);
    }
}
