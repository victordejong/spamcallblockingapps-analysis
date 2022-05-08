package android.support.design.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.support.design.C0089R;
import android.support.p001v4.content.ContextCompat;
import android.support.p004v7.graphics.drawable.DrawableWrapper;
/* loaded from: classes-dex2jar.jar:android/support/design/widget/ShadowDrawableWrapper.class */
public class ShadowDrawableWrapper extends DrawableWrapper {
    static final double COS_45 = Math.cos(Math.toRadians(45.0d));
    static final float SHADOW_BOTTOM_SCALE = 1.0f;
    static final float SHADOW_HORIZ_SCALE = 0.5f;
    static final float SHADOW_MULTIPLIER = 1.5f;
    static final float SHADOW_TOP_SCALE = 0.25f;
    float cornerRadius;
    Path cornerShadowPath;
    float maxShadowSize;
    float rawMaxShadowSize;
    float rawShadowSize;
    private float rotation;
    private final int shadowEndColor;
    private final int shadowMiddleColor;
    float shadowSize;
    private final int shadowStartColor;
    private boolean dirty = true;
    private boolean addPaddingForCorners = true;
    private boolean printedShadowClipWarning = false;
    final Paint cornerShadowPaint = new Paint(5);
    final RectF contentBounds = new RectF();
    final Paint edgeShadowPaint = new Paint(this.cornerShadowPaint);

    public ShadowDrawableWrapper(Context context, Drawable drawable, float f, float f2, float f3) {
        super(drawable);
        this.shadowStartColor = ContextCompat.getColor(context, C0089R.color.design_fab_shadow_start_color);
        this.shadowMiddleColor = ContextCompat.getColor(context, C0089R.color.design_fab_shadow_mid_color);
        this.shadowEndColor = ContextCompat.getColor(context, C0089R.color.design_fab_shadow_end_color);
        this.cornerShadowPaint.setStyle(Paint.Style.FILL);
        this.cornerRadius = Math.round(f);
        this.edgeShadowPaint.setAntiAlias(false);
        setShadowSize(f2, f3);
    }

    private void buildComponents(Rect rect) {
        float f = this.rawMaxShadowSize * 1.5f;
        this.contentBounds.set(rect.left + this.rawMaxShadowSize, rect.top + f, rect.right - this.rawMaxShadowSize, rect.bottom - f);
        getWrappedDrawable().setBounds((int) this.contentBounds.left, (int) this.contentBounds.top, (int) this.contentBounds.right, (int) this.contentBounds.bottom);
        buildShadowCorners();
    }

    private void buildShadowCorners() {
        RectF rectF = new RectF(-this.cornerRadius, -this.cornerRadius, this.cornerRadius, this.cornerRadius);
        RectF rectF2 = new RectF(rectF);
        rectF2.inset(-this.shadowSize, -this.shadowSize);
        if (this.cornerShadowPath == null) {
            this.cornerShadowPath = new Path();
        } else {
            this.cornerShadowPath.reset();
        }
        this.cornerShadowPath.setFillType(Path.FillType.EVEN_ODD);
        this.cornerShadowPath.moveTo(-this.cornerRadius, 0.0f);
        this.cornerShadowPath.rLineTo(-this.shadowSize, 0.0f);
        this.cornerShadowPath.arcTo(rectF2, 180.0f, 90.0f, false);
        this.cornerShadowPath.arcTo(rectF, 270.0f, -90.0f, false);
        this.cornerShadowPath.close();
        float f = -rectF2.top;
        if (f > 0.0f) {
            float f2 = this.cornerRadius / f;
            float f3 = (1.0f - f2) / 2.0f;
            this.cornerShadowPaint.setShader(new RadialGradient(0.0f, 0.0f, f, new int[]{0, this.shadowStartColor, this.shadowMiddleColor, this.shadowEndColor}, new float[]{0.0f, f2, f3 + f2, 1.0f}, Shader.TileMode.CLAMP));
        }
        Paint paint = this.edgeShadowPaint;
        float f4 = rectF.top;
        float f5 = rectF2.top;
        int i = this.shadowStartColor;
        int i2 = this.shadowMiddleColor;
        int i3 = this.shadowEndColor;
        paint.setShader(new LinearGradient(0.0f, f4, 0.0f, f5, new int[]{i, i2, i3}, new float[]{0.0f, SHADOW_HORIZ_SCALE, 1.0f}, Shader.TileMode.CLAMP));
        this.edgeShadowPaint.setAntiAlias(false);
    }

    public static float calculateHorizontalPadding(float f, float f2, boolean z) {
        return z ? (float) (f + ((1.0d - COS_45) * f2)) : f;
    }

    public static float calculateVerticalPadding(float f, float f2, boolean z) {
        return z ? (float) ((f * 1.5f) + ((1.0d - COS_45) * f2)) : f * 1.5f;
    }

    private void drawShadow(Canvas canvas) {
        int save = canvas.save();
        canvas.rotate(this.rotation, this.contentBounds.centerX(), this.contentBounds.centerY());
        float f = (-this.cornerRadius) - this.shadowSize;
        float f2 = this.cornerRadius;
        float f3 = f2 * 2.0f;
        boolean z = this.contentBounds.width() - f3 > 0.0f;
        boolean z2 = this.contentBounds.height() - f3 > 0.0f;
        float f4 = this.rawShadowSize;
        float f5 = this.rawShadowSize;
        float f6 = this.rawShadowSize;
        float f7 = this.rawShadowSize;
        float f8 = this.rawShadowSize;
        float f9 = this.rawShadowSize;
        float f10 = f2 / ((f6 - (f7 * SHADOW_HORIZ_SCALE)) + f2);
        float f11 = f2 / ((f4 - (f5 * SHADOW_TOP_SCALE)) + f2);
        float f12 = f2 / ((f8 - (f9 * 1.0f)) + f2);
        int save2 = canvas.save();
        canvas.translate(this.contentBounds.left + f2, this.contentBounds.top + f2);
        canvas.scale(f10, f11);
        canvas.drawPath(this.cornerShadowPath, this.cornerShadowPaint);
        if (z) {
            canvas.scale(1.0f / f10, 1.0f);
            canvas.drawRect(0.0f, f, this.contentBounds.width() - f3, -this.cornerRadius, this.edgeShadowPaint);
        }
        canvas.restoreToCount(save2);
        int save3 = canvas.save();
        canvas.translate(this.contentBounds.right - f2, this.contentBounds.bottom - f2);
        canvas.scale(f10, f12);
        canvas.rotate(180.0f);
        canvas.drawPath(this.cornerShadowPath, this.cornerShadowPaint);
        if (z) {
            canvas.scale(1.0f / f10, 1.0f);
            canvas.drawRect(0.0f, f, this.contentBounds.width() - f3, (-this.cornerRadius) + this.shadowSize, this.edgeShadowPaint);
        }
        canvas.restoreToCount(save3);
        int save4 = canvas.save();
        canvas.translate(this.contentBounds.left + f2, this.contentBounds.bottom - f2);
        canvas.scale(f10, f12);
        canvas.rotate(270.0f);
        canvas.drawPath(this.cornerShadowPath, this.cornerShadowPaint);
        if (z2) {
            canvas.scale(1.0f / f12, 1.0f);
            canvas.drawRect(0.0f, f, this.contentBounds.height() - f3, -this.cornerRadius, this.edgeShadowPaint);
        }
        canvas.restoreToCount(save4);
        int save5 = canvas.save();
        canvas.translate(this.contentBounds.right - f2, this.contentBounds.top + f2);
        canvas.scale(f10, f11);
        canvas.rotate(90.0f);
        canvas.drawPath(this.cornerShadowPath, this.cornerShadowPaint);
        if (z2) {
            canvas.scale(1.0f / f11, 1.0f);
            canvas.drawRect(0.0f, f, this.contentBounds.height() - f3, -this.cornerRadius, this.edgeShadowPaint);
        }
        canvas.restoreToCount(save5);
        canvas.restoreToCount(save);
    }

    private static int toEven(float f) {
        int round = Math.round(f);
        int i = round;
        if (round % 2 == 1) {
            i = round - 1;
        }
        return i;
    }

    @Override // android.support.p004v7.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.dirty) {
            buildComponents(getBounds());
            this.dirty = false;
        }
        drawShadow(canvas);
        super.draw(canvas);
    }

    public float getCornerRadius() {
        return this.cornerRadius;
    }

    public float getMaxShadowSize() {
        return this.rawMaxShadowSize;
    }

    public float getMinHeight() {
        return (Math.max(this.rawMaxShadowSize, this.cornerRadius + ((this.rawMaxShadowSize * 1.5f) / 2.0f)) * 2.0f) + (this.rawMaxShadowSize * 1.5f * 2.0f);
    }

    public float getMinWidth() {
        return (Math.max(this.rawMaxShadowSize, this.cornerRadius + (this.rawMaxShadowSize / 2.0f)) * 2.0f) + (this.rawMaxShadowSize * 2.0f);
    }

    @Override // android.support.p004v7.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.support.p004v7.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        int ceil = (int) Math.ceil(calculateVerticalPadding(this.rawMaxShadowSize, this.cornerRadius, this.addPaddingForCorners));
        int ceil2 = (int) Math.ceil(calculateHorizontalPadding(this.rawMaxShadowSize, this.cornerRadius, this.addPaddingForCorners));
        rect.set(ceil2, ceil, ceil2, ceil);
        return true;
    }

    public float getShadowSize() {
        return this.rawShadowSize;
    }

    @Override // android.support.p004v7.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        this.dirty = true;
    }

    public void setAddPaddingForCorners(boolean z) {
        this.addPaddingForCorners = z;
        invalidateSelf();
    }

    @Override // android.support.p004v7.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        super.setAlpha(i);
        this.cornerShadowPaint.setAlpha(i);
        this.edgeShadowPaint.setAlpha(i);
    }

    public void setCornerRadius(float f) {
        float round = Math.round(f);
        if (this.cornerRadius != round) {
            this.cornerRadius = round;
            this.dirty = true;
            invalidateSelf();
        }
    }

    public void setMaxShadowSize(float f) {
        setShadowSize(this.rawShadowSize, f);
    }

    public final void setRotation(float f) {
        if (this.rotation != f) {
            this.rotation = f;
            invalidateSelf();
        }
    }

    public void setShadowSize(float f) {
        setShadowSize(f, this.rawMaxShadowSize);
    }

    public void setShadowSize(float f, float f2) {
        if (f < 0.0f || f2 < 0.0f) {
            throw new IllegalArgumentException("invalid shadow size");
        }
        float even = toEven(f);
        float even2 = toEven(f2);
        float f3 = even;
        if (even > even2) {
            if (!this.printedShadowClipWarning) {
                this.printedShadowClipWarning = true;
            }
            f3 = even2;
        }
        if (this.rawShadowSize != f3 || this.rawMaxShadowSize != even2) {
            this.rawShadowSize = f3;
            this.rawMaxShadowSize = even2;
            this.shadowSize = Math.round(f3 * 1.5f);
            this.maxShadowSize = even2;
            this.dirty = true;
            invalidateSelf();
        }
    }
}
