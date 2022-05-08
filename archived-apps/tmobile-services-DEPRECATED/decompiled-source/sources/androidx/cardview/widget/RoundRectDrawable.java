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
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
@RequiresApi
/* loaded from: classes-dex2jar.jar:androidx/cardview/widget/RoundRectDrawable.class */
class RoundRectDrawable extends Drawable {

    /* renamed from: a */
    private float f1507a;

    /* renamed from: e */
    private float f1511e;

    /* renamed from: h */
    private ColorStateList f1514h;

    /* renamed from: i */
    private PorterDuffColorFilter f1515i;

    /* renamed from: j */
    private ColorStateList f1516j;

    /* renamed from: f */
    private boolean f1512f = false;

    /* renamed from: g */
    private boolean f1513g = true;

    /* renamed from: k */
    private PorterDuff.Mode f1517k = PorterDuff.Mode.SRC_IN;

    /* renamed from: b */
    private final Paint f1508b = new Paint(5);

    /* renamed from: c */
    private final RectF f1509c = new RectF();

    /* renamed from: d */
    private final Rect f1510d = new Rect();

    /* JADX INFO: Access modifiers changed from: package-private */
    public RoundRectDrawable(ColorStateList colorStateList, float f) {
        this.f1507a = f;
        m21091e(colorStateList);
    }

    /* renamed from: a */
    private PorterDuffColorFilter m21095a(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    /* renamed from: e */
    private void m21091e(ColorStateList colorStateList) {
        ColorStateList colorStateList2 = colorStateList;
        if (colorStateList == null) {
            colorStateList2 = ColorStateList.valueOf(0);
        }
        this.f1514h = colorStateList2;
        this.f1508b.setColor(colorStateList2.getColorForState(getState(), this.f1514h.getDefaultColor()));
    }

    /* renamed from: i */
    private void m21087i(Rect rect) {
        Rect rect2 = rect;
        if (rect == null) {
            rect2 = getBounds();
        }
        this.f1509c.set(rect2.left, rect2.top, rect2.right, rect2.bottom);
        this.f1510d.set(rect2);
        if (this.f1512f) {
            float d = RoundRectDrawableWithShadow.m21083d(this.f1511e, this.f1507a, this.f1513g);
            this.f1510d.inset((int) Math.ceil(RoundRectDrawableWithShadow.m21084c(this.f1511e, this.f1507a, this.f1513g)), (int) Math.ceil(d));
            this.f1509c.set(this.f1510d);
        }
    }

    /* renamed from: b */
    public ColorStateList m21094b() {
        return this.f1514h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public float m21093c() {
        return this.f1511e;
    }

    /* renamed from: d */
    public float m21092d() {
        return this.f1507a;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        boolean z;
        Paint paint = this.f1508b;
        if (this.f1515i == null || paint.getColorFilter() != null) {
            z = false;
        } else {
            paint.setColorFilter(this.f1515i);
            z = true;
        }
        RectF rectF = this.f1509c;
        float f = this.f1507a;
        canvas.drawRoundRect(rectF, f, f, paint);
        if (z) {
            paint.setColorFilter(null);
        }
    }

    /* renamed from: f */
    public void m21090f(@Nullable ColorStateList colorStateList) {
        m21091e(colorStateList);
        invalidateSelf();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public void m21089g(float f, boolean z, boolean z2) {
        if (f != this.f1511e || this.f1512f != z || this.f1513g != z2) {
            this.f1511e = f;
            this.f1512f = z;
            this.f1513g = z2;
            m21087i(null);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        outline.setRoundRect(this.f1510d, this.f1507a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public void m21088h(float f) {
        if (f != this.f1507a) {
            this.f1507a = f;
            m21087i(null);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2 = this.f1516j;
        return (colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = this.f1514h) != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        m21087i(rect);
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        PorterDuff.Mode mode;
        ColorStateList colorStateList = this.f1514h;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        boolean z = colorForState != this.f1508b.getColor();
        if (z) {
            this.f1508b.setColor(colorForState);
        }
        ColorStateList colorStateList2 = this.f1516j;
        if (colorStateList2 == null || (mode = this.f1517k) == null) {
            return z;
        }
        this.f1515i = m21095a(colorStateList2, mode);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f1508b.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f1508b.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.f1516j = colorStateList;
        this.f1515i = m21095a(colorStateList, this.f1517k);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        this.f1517k = mode;
        this.f1515i = m21095a(this.f1516j, mode);
        invalidateSelf();
    }
}
