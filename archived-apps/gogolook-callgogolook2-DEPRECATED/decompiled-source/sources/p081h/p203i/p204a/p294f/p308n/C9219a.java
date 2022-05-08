package p081h.p203i.p204a.p294f.p308n;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import androidx.annotation.ColorInt;
import androidx.annotation.Dimension;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.ColorUtils;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: h.i.a.f.n.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/f/n/a.class */
public class C9219a extends Drawable {
    @Dimension

    /* renamed from: e */
    public float f21080e;
    @ColorInt

    /* renamed from: f */
    public int f21081f;
    @ColorInt

    /* renamed from: g */
    public int f21082g;
    @ColorInt

    /* renamed from: h */
    public int f21083h;
    @ColorInt

    /* renamed from: i */
    public int f21084i;

    /* renamed from: j */
    public ColorStateList f21085j;
    @ColorInt

    /* renamed from: k */
    public int f21086k;
    @FloatRange(from = 0.0d, m37520to = 360.0d)

    /* renamed from: m */
    public float f21088m;

    /* renamed from: b */
    public final Rect f21077b = new Rect();

    /* renamed from: c */
    public final RectF f21078c = new RectF();

    /* renamed from: d */
    public final C9221b f21079d = new C9221b();

    /* renamed from: l */
    public boolean f21087l = true;

    /* renamed from: a */
    public final Paint f21076a = new Paint(1);

    /* renamed from: h.i.a.f.n.a$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/f/n/a$b.class */
    public class C9221b extends Drawable.ConstantState {
        public C9221b() {
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable() {
            return C9219a.this;
        }
    }

    public C9219a() {
        this.f21076a.setStyle(Paint.Style.STROKE);
    }

    /* renamed from: a */
    public final Shader m15724a() {
        Rect rect = this.f21077b;
        copyBounds(rect);
        float height = this.f21080e / rect.height();
        return new LinearGradient(0.0f, rect.top, 0.0f, rect.bottom, new int[]{ColorUtils.compositeColors(this.f21081f, this.f21086k), ColorUtils.compositeColors(this.f21082g, this.f21086k), ColorUtils.compositeColors(ColorUtils.setAlphaComponent(this.f21082g, 0), this.f21086k), ColorUtils.compositeColors(ColorUtils.setAlphaComponent(this.f21084i, 0), this.f21086k), ColorUtils.compositeColors(this.f21084i, this.f21086k), ColorUtils.compositeColors(this.f21083h, this.f21086k)}, new float[]{0.0f, height, 0.5f, 0.5f, 1.0f - height, 1.0f}, Shader.TileMode.CLAMP);
    }

    /* renamed from: a */
    public void m15723a(@Dimension float f) {
        if (this.f21080e != f) {
            this.f21080e = f;
            this.f21076a.setStrokeWidth(f * 1.3333f);
            this.f21087l = true;
            invalidateSelf();
        }
    }

    /* renamed from: a */
    public void m15722a(@ColorInt int i, @ColorInt int i2, @ColorInt int i3, @ColorInt int i4) {
        this.f21081f = i;
        this.f21082g = i2;
        this.f21083h = i3;
        this.f21084i = i4;
    }

    /* renamed from: a */
    public void m15721a(ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.f21086k = colorStateList.getColorForState(getState(), this.f21086k);
        }
        this.f21085j = colorStateList;
        this.f21087l = true;
        invalidateSelf();
    }

    /* renamed from: b */
    public final void m15720b(float f) {
        if (f != this.f21088m) {
            this.f21088m = f;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f21087l) {
            this.f21076a.setShader(m15724a());
            this.f21087l = false;
        }
        float strokeWidth = this.f21076a.getStrokeWidth() / 2.0f;
        RectF rectF = this.f21078c;
        copyBounds(this.f21077b);
        rectF.set(this.f21077b);
        rectF.left += strokeWidth;
        rectF.top += strokeWidth;
        rectF.right -= strokeWidth;
        rectF.bottom -= strokeWidth;
        canvas.save();
        canvas.rotate(this.f21088m, rectF.centerX(), rectF.centerY());
        canvas.drawOval(rectF, this.f21076a);
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    public Drawable.ConstantState getConstantState() {
        return this.f21079d;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f21080e > 0.0f ? -3 : -2;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        int round = Math.round(this.f21080e);
        rect.set(round, round, round, round);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList = this.f21085j;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        this.f21087l = true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        int colorForState;
        ColorStateList colorStateList = this.f21085j;
        if (!(colorStateList == null || (colorForState = colorStateList.getColorForState(iArr, this.f21086k)) == this.f21086k)) {
            this.f21087l = true;
            this.f21086k = colorForState;
        }
        if (this.f21087l) {
            invalidateSelf();
        }
        return this.f21087l;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(@IntRange(from = 0, m37519to = 255) int i) {
        this.f21076a.setAlpha(i);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f21076a.setColorFilter(colorFilter);
        invalidateSelf();
    }
}
