package com.google.android.material.textfield;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
/* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/CutoutDrawable.class */
class CutoutDrawable extends MaterialShapeDrawable {
    @NonNull

    /* renamed from: D */
    private final Paint f11436D;
    @NonNull

    /* renamed from: E */
    private final RectF f11437E;

    /* renamed from: F */
    private int f11438F;

    CutoutDrawable() {
        this(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CutoutDrawable(@Nullable ShapeAppearanceModel shapeAppearanceModel) {
        super(shapeAppearanceModel == null ? new ShapeAppearanceModel() : shapeAppearanceModel);
        this.f11436D = new Paint(1);
        m8876u0();
        this.f11437E = new RectF();
    }

    /* renamed from: o0 */
    private void m8882o0(@NonNull Canvas canvas) {
        if (!m8875v0(getCallback())) {
            canvas.restoreToCount(this.f11438F);
        }
    }

    /* renamed from: p0 */
    private void m8881p0(@NonNull Canvas canvas) {
        Drawable.Callback callback = getCallback();
        if (m8875v0(callback)) {
            View view = (View) callback;
            if (view.getLayerType() != 2) {
                view.setLayerType(2, null);
                return;
            }
            return;
        }
        m8879r0(canvas);
    }

    /* renamed from: r0 */
    private void m8879r0(@NonNull Canvas canvas) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f11438F = canvas.saveLayer(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), null);
        } else {
            this.f11438F = canvas.saveLayer(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), null, 31);
        }
    }

    /* renamed from: u0 */
    private void m8876u0() {
        this.f11436D.setStyle(Paint.Style.FILL_AND_STROKE);
        this.f11436D.setColor(-1);
        this.f11436D.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
    }

    /* renamed from: v0 */
    private boolean m8875v0(Drawable.Callback callback) {
        return callback instanceof View;
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        m8881p0(canvas);
        super.draw(canvas);
        canvas.drawRect(this.f11437E, this.f11436D);
        m8882o0(canvas);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: n0 */
    public boolean m8883n0() {
        return !this.f11437E.isEmpty();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q0 */
    public void m8880q0() {
        m8878s0(0.0f, 0.0f, 0.0f, 0.0f);
    }

    /* renamed from: s0 */
    void m8878s0(float f, float f2, float f3, float f4) {
        RectF rectF = this.f11437E;
        if (f != rectF.left || f2 != rectF.top || f3 != rectF.right || f4 != rectF.bottom) {
            this.f11437E.set(f, f2, f3, f4);
            invalidateSelf();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: t0 */
    public void m8877t0(@NonNull RectF rectF) {
        m8878s0(rectF.left, rectF.top, rectF.right, rectF.bottom);
    }
}
