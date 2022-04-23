package com.google.android.material.p067h;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import androidx.core.graphics.drawable.AbstractC0759b;
/* renamed from: com.google.android.material.h.c */
/* loaded from: classes-dex2jar.jar:com/google/android/material/h/c.class */
public final class C3017c extends Drawable implements AbstractC0759b {

    /* renamed from: a */
    private final Paint f18312a;

    /* renamed from: b */
    private final Matrix[] f18313b;

    /* renamed from: c */
    private final Matrix[] f18314c;

    /* renamed from: d */
    private final C3018d[] f18315d;

    /* renamed from: e */
    private final Matrix f18316e;

    /* renamed from: f */
    private final Path f18317f;

    /* renamed from: g */
    private final PointF f18318g;

    /* renamed from: h */
    private final C3018d f18319h;

    /* renamed from: i */
    private final Region f18320i;

    /* renamed from: j */
    private final Region f18321j;

    /* renamed from: k */
    private final float[] f18322k;

    /* renamed from: l */
    private final float[] f18323l;

    /* renamed from: m */
    private C3022e f18324m;

    /* renamed from: n */
    private boolean f18325n;

    /* renamed from: o */
    private boolean f18326o;

    /* renamed from: p */
    private float f18327p;

    /* renamed from: q */
    private int f18328q;

    /* renamed from: r */
    private int f18329r;

    /* renamed from: s */
    private int f18330s;

    /* renamed from: t */
    private int f18331t;

    /* renamed from: u */
    private float f18332u;

    /* renamed from: v */
    private float f18333v;

    /* renamed from: w */
    private Paint.Style f18334w;

    /* renamed from: x */
    private PorterDuffColorFilter f18335x;

    /* renamed from: y */
    private PorterDuff.Mode f18336y;

    /* renamed from: z */
    private ColorStateList f18337z;

    public C3017c() {
        this(null);
    }

    public C3017c(C3022e eVar) {
        this.f18312a = new Paint();
        this.f18313b = new Matrix[4];
        this.f18314c = new Matrix[4];
        this.f18315d = new C3018d[4];
        this.f18316e = new Matrix();
        this.f18317f = new Path();
        this.f18318g = new PointF();
        this.f18319h = new C3018d();
        this.f18320i = new Region();
        this.f18321j = new Region();
        this.f18322k = new float[2];
        this.f18323l = new float[2];
        this.f18324m = null;
        this.f18325n = false;
        this.f18326o = false;
        this.f18327p = 1.0f;
        this.f18328q = -16777216;
        this.f18329r = 5;
        this.f18330s = 10;
        this.f18331t = 255;
        this.f18332u = 1.0f;
        this.f18333v = 0.0f;
        this.f18334w = Paint.Style.FILL_AND_STROKE;
        this.f18336y = PorterDuff.Mode.SRC_IN;
        this.f18337z = null;
        this.f18324m = eVar;
        for (int i = 0; i < 4; i++) {
            this.f18313b[i] = new Matrix();
            this.f18314c[i] = new Matrix();
            this.f18315d[i] = new C3018d();
        }
    }

    /* renamed from: a */
    private float m1096a(int i, int i2, int i3) {
        m1095a(i, i2, i3, this.f18318g);
        float f = this.f18318g.x;
        float f2 = this.f18318g.y;
        m1095a((i + 1) % 4, i2, i3, this.f18318g);
        return (float) Math.atan2(this.f18318g.y - f2, this.f18318g.x - f);
    }

    /* renamed from: a */
    private static void m1095a(int i, int i2, int i3, PointF pointF) {
        if (i == 1) {
            pointF.set(i2, 0.0f);
        } else if (i == 2) {
            pointF.set(i2, i3);
        } else if (i != 3) {
            pointF.set(0.0f, 0.0f);
        } else {
            pointF.set(0.0f, i3);
        }
    }

    /* renamed from: a */
    private void m1094a(int i, int i2, Path path) {
        path.rewind();
        if (this.f18324m != null) {
            int i3 = 0;
            while (i3 < 4) {
                m1095a(i3, i, i2, this.f18318g);
                int i4 = ((i3 - 1) + 4) % 4;
                m1095a(i4, i, i2, this.f18318g);
                float f = this.f18318g.x;
                float f2 = this.f18318g.y;
                int i5 = i3 + 1;
                m1095a(i5 % 4, i, i2, this.f18318g);
                float f3 = this.f18318g.x;
                float f4 = this.f18318g.y;
                m1095a(i3, i, i2, this.f18318g);
                float f5 = this.f18318g.x;
                float f6 = this.f18318g.y;
                Math.atan2(f2 - f6, f - f5);
                Math.atan2(f4 - f6, f3 - f5);
                float a = m1096a(i4, i, i2);
                this.f18313b[i3].reset();
                this.f18313b[i3].setTranslate(this.f18318g.x, this.f18318g.y);
                this.f18313b[i3].preRotate((float) Math.toDegrees(a + 1.5707964f));
                this.f18322k[0] = this.f18315d[i3].f18340c;
                this.f18322k[1] = this.f18315d[i3].f18341d;
                this.f18313b[i3].mapPoints(this.f18322k);
                float a2 = m1096a(i3, i, i2);
                this.f18314c[i3].reset();
                Matrix matrix = this.f18314c[i3];
                float[] fArr = this.f18322k;
                matrix.setTranslate(fArr[0], fArr[1]);
                this.f18314c[i3].preRotate((float) Math.toDegrees(a2));
                i3 = i5;
            }
            int i6 = 0;
            while (i6 < 4) {
                this.f18322k[0] = this.f18315d[i6].f18338a;
                this.f18322k[1] = this.f18315d[i6].f18339b;
                this.f18313b[i6].mapPoints(this.f18322k);
                if (i6 == 0) {
                    float[] fArr2 = this.f18322k;
                    path.moveTo(fArr2[0], fArr2[1]);
                } else {
                    float[] fArr3 = this.f18322k;
                    path.lineTo(fArr3[0], fArr3[1]);
                }
                this.f18315d[i6].m1086a(this.f18313b[i6], path);
                int i7 = i6 + 1;
                int i8 = i7 % 4;
                this.f18322k[0] = this.f18315d[i6].f18340c;
                this.f18322k[1] = this.f18315d[i6].f18341d;
                this.f18313b[i6].mapPoints(this.f18322k);
                this.f18323l[0] = this.f18315d[i8].f18338a;
                this.f18323l[1] = this.f18315d[i8].f18339b;
                this.f18313b[i8].mapPoints(this.f18323l);
                float[] fArr4 = this.f18322k;
                float f7 = fArr4[0];
                float[] fArr5 = this.f18323l;
                float hypot = (float) Math.hypot(f7 - fArr5[0], fArr4[1] - fArr5[1]);
                this.f18319h.m1089a();
                (i6 != 1 ? i6 != 2 ? i6 != 3 ? this.f18324m.m1082a() : this.f18324m.m1078d() : this.f18324m.m1079c() : this.f18324m.m1080b()).mo1099a(hypot, this.f18327p, this.f18319h);
                this.f18319h.m1086a(this.f18314c[i6], path);
                i6 = i7;
            }
            path.close();
        }
    }

    /* renamed from: b */
    private void m1091b(int i, int i2, Path path) {
        m1094a(i, i2, path);
        if (this.f18332u != 1.0f) {
            this.f18316e.reset();
            Matrix matrix = this.f18316e;
            float f = this.f18332u;
            matrix.setScale(f, f, i / 2, i2 / 2);
            path.transform(this.f18316e);
        }
    }

    /* renamed from: c */
    private void m1090c() {
        ColorStateList colorStateList = this.f18337z;
        if (colorStateList == null || this.f18336y == null) {
            this.f18335x = null;
            return;
        }
        int colorForState = colorStateList.getColorForState(getState(), 0);
        this.f18335x = new PorterDuffColorFilter(colorForState, this.f18336y);
        if (this.f18326o) {
            this.f18328q = colorForState;
        }
    }

    /* renamed from: a */
    public final void m1098a() {
        this.f18325n = true;
        invalidateSelf();
    }

    /* renamed from: a */
    public final void m1097a(float f) {
        this.f18327p = f;
        invalidateSelf();
    }

    /* renamed from: a */
    public final void m1093a(Paint.Style style) {
        this.f18334w = style;
        invalidateSelf();
    }

    /* renamed from: b */
    public final float m1092b() {
        return this.f18327p;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        this.f18312a.setColorFilter(this.f18335x);
        int alpha = this.f18312a.getAlpha();
        Paint paint = this.f18312a;
        int i = this.f18331t;
        paint.setAlpha(((i + (i >>> 7)) * alpha) >>> 8);
        this.f18312a.setStrokeWidth(this.f18333v);
        this.f18312a.setStyle(this.f18334w);
        int i2 = this.f18329r;
        if (i2 > 0 && this.f18325n) {
            this.f18312a.setShadowLayer(this.f18330s, 0.0f, i2, this.f18328q);
        }
        if (this.f18324m != null) {
            m1091b(canvas.getWidth(), canvas.getHeight(), this.f18317f);
            canvas.drawPath(this.f18317f, this.f18312a);
        } else {
            canvas.drawRect(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), this.f18312a);
        }
        this.f18312a.setAlpha(alpha);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final Region getTransparentRegion() {
        Rect bounds = getBounds();
        this.f18320i.set(bounds);
        m1091b(bounds.width(), bounds.height(), this.f18317f);
        this.f18321j.setPath(this.f18317f, this.f18320i);
        this.f18320i.op(this.f18321j, Region.Op.DIFFERENCE);
        return this.f18320i;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.f18331t = i;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f18312a.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0759b
    public final void setTint(int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0759b
    public final void setTintList(ColorStateList colorStateList) {
        this.f18337z = colorStateList;
        m1090c();
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0759b
    public final void setTintMode(PorterDuff.Mode mode) {
        this.f18336y = mode;
        m1090c();
        invalidateSelf();
    }
}
