package com.google.android.material.textfield;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.view.View;
/* renamed from: com.google.android.material.textfield.a */
/* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/a.class */
final class C3090a extends GradientDrawable {

    /* renamed from: a */
    private final Paint f18691a = new Paint(1);

    /* renamed from: b */
    private final RectF f18692b = new RectF();

    /* renamed from: c */
    private int f18693c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3090a() {
        this.f18691a.setStyle(Paint.Style.FILL_AND_STROKE);
        this.f18691a.setColor(-1);
        this.f18691a.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
    }

    /* renamed from: a */
    private void m799a(float f, float f2, float f3, float f4) {
        if (f != this.f18692b.left || f2 != this.f18692b.top || f3 != this.f18692b.right || f4 != this.f18692b.bottom) {
            this.f18692b.set(f, f2, f3, f4);
            invalidateSelf();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m798a(RectF rectF) {
        m799a(rectF.left, rectF.top, rectF.right, rectF.bottom);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m800a() {
        return !this.f18692b.isEmpty();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m797b() {
        m799a(0.0f, 0.0f, 0.0f, 0.0f);
    }

    @Override // android.graphics.drawable.GradientDrawable, android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Drawable.Callback callback = getCallback();
        if (callback instanceof View) {
            ((View) callback).setLayerType(2, null);
        } else {
            this.f18693c = Build.VERSION.SDK_INT >= 21 ? canvas.saveLayer(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), null) : canvas.saveLayer(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), null, 31);
        }
        super.draw(canvas);
        canvas.drawRect(this.f18692b, this.f18691a);
        if (!(getCallback() instanceof View)) {
            canvas.restoreToCount(this.f18693c);
        }
    }
}
