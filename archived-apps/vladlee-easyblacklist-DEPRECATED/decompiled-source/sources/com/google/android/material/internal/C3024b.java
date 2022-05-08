package com.google.android.material.internal;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import androidx.core.graphics.C0752a;
/* renamed from: com.google.android.material.internal.b */
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/b.class */
public class C3024b extends Drawable {

    /* renamed from: e */
    float f18395e;

    /* renamed from: f */
    private int f18396f;

    /* renamed from: g */
    private int f18397g;

    /* renamed from: h */
    private int f18398h;

    /* renamed from: i */
    private int f18399i;

    /* renamed from: j */
    private ColorStateList f18400j;

    /* renamed from: k */
    private int f18401k;

    /* renamed from: m */
    private float f18403m;

    /* renamed from: b */
    final Rect f18392b = new Rect();

    /* renamed from: c */
    final RectF f18393c = new RectF();

    /* renamed from: d */
    final C3025a f18394d = new C3025a(this, (byte) 0);

    /* renamed from: l */
    private boolean f18402l = true;

    /* renamed from: a */
    final Paint f18391a = new Paint(1);

    /* renamed from: com.google.android.material.internal.b$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/internal/b$a.class */
    private final class C3025a extends Drawable.ConstantState {
        private C3025a() {
        }

        /* synthetic */ C3025a(C3024b bVar, byte b) {
            this();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            return C3024b.this;
        }
    }

    public C3024b() {
        this.f18391a.setStyle(Paint.Style.STROKE);
    }

    /* renamed from: a */
    public final void m1059a(float f) {
        if (this.f18395e != f) {
            this.f18395e = f;
            this.f18391a.setStrokeWidth(f * 1.3333f);
            this.f18402l = true;
            invalidateSelf();
        }
    }

    /* renamed from: a */
    public final void m1058a(int i, int i2, int i3, int i4) {
        this.f18396f = i;
        this.f18397g = i2;
        this.f18398h = i3;
        this.f18399i = i4;
    }

    /* renamed from: a */
    public final void m1057a(ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.f18401k = colorStateList.getColorForState(getState(), this.f18401k);
        }
        this.f18400j = colorStateList;
        this.f18402l = true;
        invalidateSelf();
    }

    /* renamed from: b */
    public final void m1056b(float f) {
        if (f != this.f18403m) {
            this.f18403m = f;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect rect;
        if (this.f18402l) {
            Paint paint = this.f18391a;
            copyBounds(this.f18392b);
            float height = this.f18395e / rect.height();
            paint.setShader(new LinearGradient(0.0f, rect.top, 0.0f, rect.bottom, new int[]{C0752a.m8283a(this.f18396f, this.f18401k), C0752a.m8283a(this.f18397g, this.f18401k), C0752a.m8283a(C0752a.m8281b(this.f18397g, 0), this.f18401k), C0752a.m8283a(C0752a.m8281b(this.f18399i, 0), this.f18401k), C0752a.m8283a(this.f18399i, this.f18401k), C0752a.m8283a(this.f18398h, this.f18401k)}, new float[]{0.0f, height, 0.5f, 0.5f, 1.0f - height, 1.0f}, Shader.TileMode.CLAMP));
            this.f18402l = false;
        }
        float strokeWidth = this.f18391a.getStrokeWidth() / 2.0f;
        RectF rectF = this.f18393c;
        copyBounds(this.f18392b);
        rectF.set(this.f18392b);
        rectF.left += strokeWidth;
        rectF.top += strokeWidth;
        rectF.right -= strokeWidth;
        rectF.bottom -= strokeWidth;
        canvas.save();
        canvas.rotate(this.f18403m, rectF.centerX(), rectF.centerY());
        canvas.drawOval(rectF, this.f18391a);
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.f18394d;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f18395e > 0.0f ? -3 : -2;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        int round = Math.round(this.f18395e);
        rect.set(round, round, round, round);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList = this.f18400j;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        this.f18402l = true;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        int colorForState;
        ColorStateList colorStateList = this.f18400j;
        if (!(colorStateList == null || (colorForState = colorStateList.getColorForState(iArr, this.f18401k)) == this.f18401k)) {
            this.f18402l = true;
            this.f18401k = colorForState;
        }
        if (this.f18402l) {
            invalidateSelf();
        }
        return this.f18402l;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f18391a.setAlpha(i);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f18391a.setColorFilter(colorFilter);
        invalidateSelf();
    }
}
