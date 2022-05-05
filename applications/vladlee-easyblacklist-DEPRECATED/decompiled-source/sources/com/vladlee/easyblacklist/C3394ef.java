package com.vladlee.easyblacklist;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
/* renamed from: com.vladlee.easyblacklist.ef */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/ef.class */
public final class C3394ef extends Drawable {

    /* renamed from: a */
    private final Bitmap f19560a;

    /* renamed from: d */
    private final int f19563d;

    /* renamed from: e */
    private final int f19564e;

    /* renamed from: c */
    private final RectF f19562c = new RectF();

    /* renamed from: b */
    private final Paint f19561b = new Paint();

    public C3394ef(Bitmap bitmap) {
        this.f19560a = bitmap;
        this.f19561b.setAntiAlias(true);
        this.f19561b.setDither(true);
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        this.f19561b.setShader(new BitmapShader(bitmap, tileMode, tileMode));
        this.f19563d = this.f19560a.getWidth();
        this.f19564e = this.f19560a.getHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        canvas.drawOval(this.f19562c, this.f19561b);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.f19564e;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.f19563d;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    protected final void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f19562c.set(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        if (this.f19561b.getAlpha() != i) {
            this.f19561b.setAlpha(i);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f19561b.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setDither(boolean z) {
        this.f19561b.setDither(z);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setFilterBitmap(boolean z) {
        this.f19561b.setFilterBitmap(z);
        invalidateSelf();
    }
}
