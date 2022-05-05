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
/* renamed from: androidx.cardview.widget.i */
/* loaded from: classes-dex2jar.jar:androidx/cardview/widget/i.class */
final class C0573i extends Drawable {

    /* renamed from: a */
    private float f2587a;

    /* renamed from: c */
    private final RectF f2589c;

    /* renamed from: d */
    private final Rect f2590d;

    /* renamed from: e */
    private float f2591e;

    /* renamed from: h */
    private ColorStateList f2594h;

    /* renamed from: i */
    private PorterDuffColorFilter f2595i;

    /* renamed from: j */
    private ColorStateList f2596j;

    /* renamed from: f */
    private boolean f2592f = false;

    /* renamed from: g */
    private boolean f2593g = true;

    /* renamed from: k */
    private PorterDuff.Mode f2597k = PorterDuff.Mode.SRC_IN;

    /* renamed from: b */
    private final Paint f2588b = new Paint(5);

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0573i(ColorStateList colorStateList, float f) {
        this.f2587a = f;
        this.f2594h = colorStateList == null ? ColorStateList.valueOf(0) : colorStateList;
        this.f2588b.setColor(this.f2594h.getColorForState(getState(), this.f2594h.getDefaultColor()));
        this.f2589c = new RectF();
        this.f2590d = new Rect();
    }

    /* renamed from: a */
    private PorterDuffColorFilter m8830a(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    /* renamed from: a */
    private void m8829a(Rect rect) {
        Rect rect2 = rect;
        if (rect == null) {
            rect2 = getBounds();
        }
        this.f2589c.set(rect2.left, rect2.top, rect2.right, rect2.bottom);
        this.f2590d.set(rect2);
        if (this.f2592f) {
            float a = C0574j.m8825a(this.f2591e, this.f2587a, this.f2593g);
            this.f2590d.inset((int) Math.ceil(C0574j.m8822b(this.f2591e, this.f2587a, this.f2593g)), (int) Math.ceil(a));
            this.f2589c.set(this.f2590d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final float m8832a() {
        return this.f2591e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m8831a(float f, boolean z, boolean z2) {
        if (f != this.f2591e || this.f2592f != z || this.f2593g != z2) {
            this.f2591e = f;
            this.f2592f = z;
            this.f2593g = z2;
            m8829a(null);
            invalidateSelf();
        }
    }

    /* renamed from: b */
    public final float m8828b() {
        return this.f2587a;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        boolean z;
        Paint paint = this.f2588b;
        if (this.f2595i == null || paint.getColorFilter() != null) {
            z = false;
        } else {
            paint.setColorFilter(this.f2595i);
            z = true;
        }
        RectF rectF = this.f2589c;
        float f = this.f2587a;
        canvas.drawRoundRect(rectF, f, f, paint);
        if (z) {
            paint.setColorFilter(null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        outline.setRoundRect(this.f2590d, this.f2587a);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        ColorStateList colorStateList = this.f2596j;
        if (colorStateList != null && colorStateList.isStateful()) {
            return true;
        }
        ColorStateList colorStateList2 = this.f2594h;
        return (colorStateList2 != null && colorStateList2.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    protected final void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        m8829a(rect);
    }

    @Override // android.graphics.drawable.Drawable
    protected final boolean onStateChange(int[] iArr) {
        PorterDuff.Mode mode;
        ColorStateList colorStateList = this.f2594h;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        boolean z = colorForState != this.f2588b.getColor();
        if (z) {
            this.f2588b.setColor(colorForState);
        }
        ColorStateList colorStateList2 = this.f2596j;
        if (colorStateList2 == null || (mode = this.f2597k) == null) {
            return z;
        }
        this.f2595i = m8830a(colorStateList2, mode);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.f2588b.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f2588b.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        this.f2596j = colorStateList;
        this.f2595i = m8830a(this.f2596j, this.f2597k);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        this.f2597k = mode;
        this.f2595i = m8830a(this.f2596j, this.f2597k);
        invalidateSelf();
    }
}
