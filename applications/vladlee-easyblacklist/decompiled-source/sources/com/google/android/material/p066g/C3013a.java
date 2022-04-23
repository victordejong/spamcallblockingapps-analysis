package com.google.android.material.p066g;

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
import androidx.appcompat.p022b.p023a.C0334d;
import androidx.core.content.C0646b;
import com.google.android.material.C2913a;
/* renamed from: com.google.android.material.g.a */
/* loaded from: classes-dex2jar.jar:com/google/android/material/g/a.class */
public final class C3013a extends C0334d {

    /* renamed from: a */
    static final double f18295a = Math.cos(Math.toRadians(45.0d));

    /* renamed from: e */
    float f18299e;

    /* renamed from: f */
    Path f18300f;

    /* renamed from: g */
    float f18301g;

    /* renamed from: h */
    float f18302h;

    /* renamed from: i */
    float f18303i;

    /* renamed from: j */
    float f18304j;

    /* renamed from: l */
    private final int f18306l;

    /* renamed from: m */
    private final int f18307m;

    /* renamed from: n */
    private final int f18308n;

    /* renamed from: p */
    private float f18310p;

    /* renamed from: k */
    private boolean f18305k = true;

    /* renamed from: o */
    private boolean f18309o = true;

    /* renamed from: q */
    private boolean f18311q = false;

    /* renamed from: b */
    final Paint f18296b = new Paint(5);

    /* renamed from: d */
    final RectF f18298d = new RectF();

    /* renamed from: c */
    final Paint f18297c = new Paint(this.f18296b);

    public C3013a(Context context, Drawable drawable, float f, float f2, float f3) {
        super(drawable);
        this.f18306l = C0646b.m8612c(context, C2913a.C2916c.f17458e);
        this.f18307m = C0646b.m8612c(context, C2913a.C2916c.f17457d);
        this.f18308n = C0646b.m8612c(context, C2913a.C2916c.f17456c);
        this.f18296b.setStyle(Paint.Style.FILL);
        this.f18299e = Math.round(f);
        this.f18297c.setAntiAlias(false);
        m1110a(f2, f3);
    }

    /* renamed from: a */
    public static float m1109a(float f, float f2, boolean z) {
        float f3 = f * 1.5f;
        float f4 = f3;
        if (z) {
            f4 = (float) (f3 + ((1.0d - f18295a) * f2));
        }
        return f4;
    }

    /* renamed from: b */
    public static float m1106b(float f, float f2, boolean z) {
        float f3 = f;
        if (z) {
            f3 = (float) (f + ((1.0d - f18295a) * f2));
        }
        return f3;
    }

    /* renamed from: c */
    private static int m1104c(float f) {
        int round = Math.round(f);
        int i = round;
        if (round % 2 == 1) {
            i = round - 1;
        }
        return i;
    }

    /* renamed from: a */
    public final void m1111a(float f) {
        m1110a(f, this.f18302h);
    }

    /* renamed from: a */
    public final void m1110a(float f, float f2) {
        if (f < 0.0f || f2 < 0.0f) {
            throw new IllegalArgumentException("invalid shadow size");
        }
        float c = m1104c(f);
        float c2 = m1104c(f2);
        float f3 = c;
        if (c > c2) {
            if (!this.f18311q) {
                this.f18311q = true;
            }
            f3 = c2;
        }
        if (this.f18304j != f3 || this.f18302h != c2) {
            this.f18304j = f3;
            this.f18302h = c2;
            this.f18303i = Math.round(f3 * 1.5f);
            this.f18301g = c2;
            this.f18305k = true;
            invalidateSelf();
        }
    }

    /* renamed from: b */
    public final void m1108b() {
        this.f18309o = false;
        invalidateSelf();
    }

    /* renamed from: b */
    public final void m1107b(float f) {
        if (this.f18310p != f) {
            this.f18310p = f;
            invalidateSelf();
        }
    }

    /* renamed from: c */
    public final float m1105c() {
        return this.f18304j;
    }

    @Override // androidx.appcompat.p022b.p023a.C0334d, android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        if (this.f18305k) {
            Rect bounds = getBounds();
            float f = this.f18302h * 1.5f;
            this.f18298d.set(bounds.left + this.f18302h, bounds.top + f, bounds.right - this.f18302h, bounds.bottom - f);
            m9714a().setBounds((int) this.f18298d.left, (int) this.f18298d.top, (int) this.f18298d.right, (int) this.f18298d.bottom);
            float f2 = this.f18299e;
            RectF rectF = new RectF(-f2, -f2, f2, f2);
            RectF rectF2 = new RectF(rectF);
            float f3 = this.f18303i;
            rectF2.inset(-f3, -f3);
            Path path = this.f18300f;
            if (path == null) {
                this.f18300f = new Path();
            } else {
                path.reset();
            }
            this.f18300f.setFillType(Path.FillType.EVEN_ODD);
            this.f18300f.moveTo(-this.f18299e, 0.0f);
            this.f18300f.rLineTo(-this.f18303i, 0.0f);
            this.f18300f.arcTo(rectF2, 180.0f, 90.0f, false);
            this.f18300f.arcTo(rectF, 270.0f, -90.0f, false);
            this.f18300f.close();
            float f4 = -rectF2.top;
            if (f4 > 0.0f) {
                float f5 = this.f18299e / f4;
                this.f18296b.setShader(new RadialGradient(0.0f, 0.0f, f4, new int[]{0, this.f18306l, this.f18307m, this.f18308n}, new float[]{0.0f, f5, ((1.0f - f5) / 2.0f) + f5, 1.0f}, Shader.TileMode.CLAMP));
            }
            this.f18297c.setShader(new LinearGradient(0.0f, rectF.top, 0.0f, rectF2.top, new int[]{this.f18306l, this.f18307m, this.f18308n}, new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.CLAMP));
            this.f18297c.setAntiAlias(false);
            this.f18305k = false;
        }
        boolean z = true;
        int save = canvas.save();
        canvas.rotate(this.f18310p, this.f18298d.centerX(), this.f18298d.centerY());
        float f6 = this.f18299e;
        float f7 = (-f6) - this.f18303i;
        float f8 = f6 * 2.0f;
        boolean z2 = this.f18298d.width() - f8 > 0.0f;
        if (this.f18298d.height() - f8 <= 0.0f) {
            z = false;
        }
        float f9 = this.f18304j;
        float f10 = f6 / ((f9 - (0.5f * f9)) + f6);
        float f11 = f6 / ((f9 - (0.25f * f9)) + f6);
        float f12 = f6 / ((f9 - (f9 * 1.0f)) + f6);
        int save2 = canvas.save();
        canvas.translate(this.f18298d.left + f6, this.f18298d.top + f6);
        canvas.scale(f10, f11);
        canvas.drawPath(this.f18300f, this.f18296b);
        if (z2) {
            canvas.scale(1.0f / f10, 1.0f);
            canvas.drawRect(0.0f, f7, this.f18298d.width() - f8, -this.f18299e, this.f18297c);
        }
        canvas.restoreToCount(save2);
        int save3 = canvas.save();
        canvas.translate(this.f18298d.right - f6, this.f18298d.bottom - f6);
        canvas.scale(f10, f12);
        canvas.rotate(180.0f);
        canvas.drawPath(this.f18300f, this.f18296b);
        if (z2) {
            canvas.scale(1.0f / f10, 1.0f);
            canvas.drawRect(0.0f, f7, this.f18298d.width() - f8, (-this.f18299e) + this.f18303i, this.f18297c);
        }
        canvas.restoreToCount(save3);
        int save4 = canvas.save();
        canvas.translate(this.f18298d.left + f6, this.f18298d.bottom - f6);
        canvas.scale(f10, f12);
        canvas.rotate(270.0f);
        canvas.drawPath(this.f18300f, this.f18296b);
        if (z) {
            canvas.scale(1.0f / f12, 1.0f);
            canvas.drawRect(0.0f, f7, this.f18298d.height() - f8, -this.f18299e, this.f18297c);
        }
        canvas.restoreToCount(save4);
        int save5 = canvas.save();
        canvas.translate(this.f18298d.right - f6, this.f18298d.top + f6);
        canvas.scale(f10, f11);
        canvas.rotate(90.0f);
        canvas.drawPath(this.f18300f, this.f18296b);
        if (z) {
            canvas.scale(1.0f / f11, 1.0f);
            canvas.drawRect(0.0f, f7, this.f18298d.height() - f8, -this.f18299e, this.f18297c);
        }
        canvas.restoreToCount(save5);
        canvas.restoreToCount(save);
        super.draw(canvas);
    }

    @Override // androidx.appcompat.p022b.p023a.C0334d, android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // androidx.appcompat.p022b.p023a.C0334d, android.graphics.drawable.Drawable
    public final boolean getPadding(Rect rect) {
        int ceil = (int) Math.ceil(m1109a(this.f18302h, this.f18299e, this.f18309o));
        int ceil2 = (int) Math.ceil(m1106b(this.f18302h, this.f18299e, this.f18309o));
        rect.set(ceil2, ceil, ceil2, ceil);
        return true;
    }

    @Override // androidx.appcompat.p022b.p023a.C0334d, android.graphics.drawable.Drawable
    protected final void onBoundsChange(Rect rect) {
        this.f18305k = true;
    }

    @Override // androidx.appcompat.p022b.p023a.C0334d, android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        super.setAlpha(i);
        this.f18296b.setAlpha(i);
        this.f18297c.setAlpha(i);
    }
}
