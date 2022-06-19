package androidx.cardview.widget;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
/* renamed from: androidx.cardview.widget.f */
/* loaded from: classes-dex2jar.jar:androidx/cardview/widget/f.class */
class C0147f extends Drawable {

    /* renamed from: a */
    private float f657a;

    /* renamed from: e */
    private float f661e;

    /* renamed from: h */
    private ColorStateList f664h;

    /* renamed from: i */
    private PorterDuffColorFilter f665i;

    /* renamed from: j */
    private ColorStateList f666j;

    /* renamed from: f */
    private boolean f662f = false;

    /* renamed from: g */
    private boolean f663g = true;

    /* renamed from: k */
    private PorterDuff.Mode f667k = PorterDuff.Mode.SRC_IN;

    /* renamed from: b */
    private final Paint f658b = new Paint(5);

    /* renamed from: c */
    private final RectF f659c = new RectF();

    /* renamed from: d */
    private final Rect f660d = new Rect();

    C0147f(ColorStateList colorStateList, float f) {
        this.f657a = f;
        m6338e(colorStateList);
    }

    /* renamed from: a */
    private PorterDuffColorFilter m6342a(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    /* renamed from: e */
    private void m6338e(ColorStateList colorStateList) {
        ColorStateList colorStateList2 = colorStateList;
        if (colorStateList == null) {
            colorStateList2 = ColorStateList.valueOf(0);
        }
        this.f664h = colorStateList2;
        this.f658b.setColor(colorStateList2.getColorForState(getState(), this.f664h.getDefaultColor()));
    }

    /* renamed from: i */
    private void m6334i(Rect rect) {
        Rect rect2 = rect;
        if (rect == null) {
            rect2 = getBounds();
        }
        this.f659c.set(rect2.left, rect2.top, rect2.right, rect2.bottom);
        this.f660d.set(rect2);
        if (this.f662f) {
            float m6330d = C0148g.m6330d(this.f661e, this.f657a, this.f663g);
            this.f660d.inset((int) Math.ceil(C0148g.m6331c(this.f661e, this.f657a, this.f663g)), (int) Math.ceil(m6330d));
            this.f659c.set(this.f660d);
        }
    }

    /* renamed from: b */
    public ColorStateList m6341b() {
        return this.f664h;
    }

    /* renamed from: c */
    float m6340c() {
        return this.f661e;
    }

    /* renamed from: d */
    public float m6339d() {
        return this.f657a;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        boolean z;
        Paint paint = this.f658b;
        if (this.f665i == null || paint.getColorFilter() != null) {
            z = false;
        } else {
            paint.setColorFilter(this.f665i);
            z = true;
        }
        RectF rectF = this.f659c;
        float f = this.f657a;
        canvas.drawRoundRect(rectF, f, f, paint);
        if (z) {
            paint.setColorFilter(null);
        }
    }

    /* renamed from: f */
    public void m6337f(ColorStateList colorStateList) {
        m6338e(colorStateList);
        invalidateSelf();
    }

    /* renamed from: g */
    void m6336g(float f, boolean z, boolean z2) {
        if (f == this.f661e && this.f662f == z && this.f663g == z2) {
            return;
        }
        this.f661e = f;
        this.f662f = z;
        this.f663g = z2;
        m6334i(null);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        outline.setRoundRect(this.f660d, this.f657a);
    }

    /* renamed from: h */
    void m6335h(float f) {
        if (f == this.f657a) {
            return;
        }
        this.f657a = f;
        m6334i(null);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2 = this.f666j;
        return (colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = this.f664h) != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        m6334i(rect);
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        PorterDuff.Mode mode;
        ColorStateList colorStateList = this.f664h;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        boolean z = colorForState != this.f658b.getColor();
        if (z) {
            this.f658b.setColor(colorForState);
        }
        ColorStateList colorStateList2 = this.f666j;
        if (colorStateList2 == null || (mode = this.f667k) == null) {
            return z;
        }
        this.f665i = m6342a(colorStateList2, mode);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f658b.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f658b.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.f666j = colorStateList;
        this.f665i = m6342a(colorStateList, this.f667k);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        this.f667k = mode;
        this.f665i = m6342a(this.f666j, mode);
        invalidateSelf();
    }
}
