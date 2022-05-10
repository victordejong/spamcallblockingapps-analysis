package p012b.p033e.p034f;

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
/* renamed from: b.e.f.f */
/* loaded from: classes-dex2jar.jar:b/e/f/f.class */
public class C0777f extends Drawable {

    /* renamed from: a */
    public float f3630a;

    /* renamed from: e */
    public float f3634e;

    /* renamed from: h */
    public ColorStateList f3637h;

    /* renamed from: i */
    public PorterDuffColorFilter f3638i;

    /* renamed from: j */
    public ColorStateList f3639j;

    /* renamed from: f */
    public boolean f3635f = false;

    /* renamed from: g */
    public boolean f3636g = true;

    /* renamed from: k */
    public PorterDuff.Mode f3640k = PorterDuff.Mode.SRC_IN;

    /* renamed from: b */
    public final Paint f3631b = new Paint(5);

    /* renamed from: c */
    public final RectF f3632c = new RectF();

    /* renamed from: d */
    public final Rect f3633d = new Rect();

    public C0777f(ColorStateList colorStateList, float f) {
        this.f3630a = f;
        m36099a(colorStateList);
    }

    /* renamed from: a */
    public ColorStateList m36102a() {
        return this.f3637h;
    }

    /* renamed from: a */
    public final PorterDuffColorFilter m36098a(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    /* renamed from: a */
    public void m36101a(float f) {
        if (f != this.f3630a) {
            this.f3630a = f;
            m36097a((Rect) null);
            invalidateSelf();
        }
    }

    /* renamed from: a */
    public void m36100a(float f, boolean z, boolean z2) {
        if (f != this.f3634e || this.f3635f != z || this.f3636g != z2) {
            this.f3634e = f;
            this.f3635f = z;
            this.f3636g = z2;
            m36097a((Rect) null);
            invalidateSelf();
        }
    }

    /* renamed from: a */
    public final void m36099a(ColorStateList colorStateList) {
        ColorStateList colorStateList2 = colorStateList;
        if (colorStateList == null) {
            colorStateList2 = ColorStateList.valueOf(0);
        }
        this.f3637h = colorStateList2;
        this.f3631b.setColor(colorStateList2.getColorForState(getState(), this.f3637h.getDefaultColor()));
    }

    /* renamed from: a */
    public final void m36097a(Rect rect) {
        Rect rect2 = rect;
        if (rect == null) {
            rect2 = getBounds();
        }
        this.f3632c.set(rect2.left, rect2.top, rect2.right, rect2.bottom);
        this.f3633d.set(rect2);
        if (this.f3635f) {
            float b = C0778g.m36083b(this.f3634e, this.f3630a, this.f3636g);
            this.f3633d.inset((int) Math.ceil(C0778g.m36090a(this.f3634e, this.f3630a, this.f3636g)), (int) Math.ceil(b));
            this.f3632c.set(this.f3633d);
        }
    }

    /* renamed from: b */
    public float m36096b() {
        return this.f3634e;
    }

    /* renamed from: b */
    public void m36095b(ColorStateList colorStateList) {
        m36099a(colorStateList);
        invalidateSelf();
    }

    /* renamed from: c */
    public float m36094c() {
        return this.f3630a;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        boolean z;
        Paint paint = this.f3631b;
        if (this.f3638i == null || paint.getColorFilter() != null) {
            z = false;
        } else {
            paint.setColorFilter(this.f3638i);
            z = true;
        }
        RectF rectF = this.f3632c;
        float f = this.f3630a;
        canvas.drawRoundRect(rectF, f, f, paint);
        if (z) {
            paint.setColorFilter(null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        outline.setRoundRect(this.f3633d, this.f3630a);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2 = this.f3639j;
        return (colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = this.f3637h) != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        m36097a(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        PorterDuff.Mode mode;
        ColorStateList colorStateList = this.f3637h;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        boolean z = colorForState != this.f3631b.getColor();
        if (z) {
            this.f3631b.setColor(colorForState);
        }
        ColorStateList colorStateList2 = this.f3639j;
        if (colorStateList2 == null || (mode = this.f3640k) == null) {
            return z;
        }
        this.f3638i = m36098a(colorStateList2, mode);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f3631b.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f3631b.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.f3639j = colorStateList;
        this.f3638i = m36098a(colorStateList, this.f3640k);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        this.f3640k = mode;
        this.f3638i = m36098a(this.f3639j, mode);
        invalidateSelf();
    }
}
