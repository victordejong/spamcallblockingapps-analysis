package androidx.appcompat.p022b.p023a;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.drawable.Drawable;
import androidx.appcompat.C0247a;
/* renamed from: androidx.appcompat.b.a.e */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/e.class */
public final class C0335e extends Drawable {

    /* renamed from: b */
    private static final float f1411b = (float) Math.toRadians(45.0d);

    /* renamed from: c */
    private float f1413c;

    /* renamed from: d */
    private float f1414d;

    /* renamed from: e */
    private float f1415e;

    /* renamed from: f */
    private float f1416f;

    /* renamed from: g */
    private boolean f1417g;

    /* renamed from: i */
    private final int f1419i;

    /* renamed from: k */
    private float f1421k;

    /* renamed from: l */
    private float f1422l;

    /* renamed from: a */
    private final Paint f1412a = new Paint();

    /* renamed from: h */
    private final Path f1418h = new Path();

    /* renamed from: j */
    private boolean f1420j = false;

    /* renamed from: m */
    private int f1423m = 2;

    public C0335e(Context context) {
        this.f1412a.setStyle(Paint.Style.STROKE);
        this.f1412a.setStrokeJoin(Paint.Join.MITER);
        this.f1412a.setStrokeCap(Paint.Cap.BUTT);
        this.f1412a.setAntiAlias(true);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, C0247a.C0257j.f791aY, C0247a.C0248a.f543A, C0247a.C0256i.f736b);
        int color = obtainStyledAttributes.getColor(C0247a.C0257j.f848bc, 0);
        if (color != this.f1412a.getColor()) {
            this.f1412a.setColor(color);
            invalidateSelf();
        }
        float dimension = obtainStyledAttributes.getDimension(C0247a.C0257j.f852bg, 0.0f);
        if (this.f1412a.getStrokeWidth() != dimension) {
            this.f1412a.setStrokeWidth(dimension);
            this.f1422l = (float) ((dimension / 2.0f) * Math.cos(f1411b));
            invalidateSelf();
        }
        boolean z = obtainStyledAttributes.getBoolean(C0247a.C0257j.f851bf, true);
        if (this.f1417g != z) {
            this.f1417g = z;
            invalidateSelf();
        }
        float round = Math.round(obtainStyledAttributes.getDimension(C0247a.C0257j.f850be, 0.0f));
        if (round != this.f1416f) {
            this.f1416f = round;
            invalidateSelf();
        }
        this.f1419i = obtainStyledAttributes.getDimensionPixelSize(C0247a.C0257j.f849bd, 0);
        this.f1414d = Math.round(obtainStyledAttributes.getDimension(C0247a.C0257j.f847bb, 0.0f));
        this.f1413c = Math.round(obtainStyledAttributes.getDimension(C0247a.C0257j.f792aZ, 0.0f));
        this.f1415e = obtainStyledAttributes.getDimension(C0247a.C0257j.f846ba, 0.0f);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    public final void m9713a(float f) {
        if (this.f1421k != f) {
            this.f1421k = f;
            invalidateSelf();
        }
    }

    /* renamed from: a */
    public final void m9712a(boolean z) {
        if (this.f1420j != z) {
            this.f1420j = z;
            invalidateSelf();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0036, code lost:
        if (androidx.core.graphics.drawable.C0758a.m8239h(r6) == 0) goto L_0x0039;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0028, code lost:
        if (androidx.core.graphics.drawable.C0758a.m8239h(r6) == 1) goto L_0x0039;
     */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void draw(android.graphics.Canvas r7) {
        /*
            Method dump skipped, instructions count: 496
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.p022b.p023a.C0335e.draw(android.graphics.Canvas):void");
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.f1419i;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.f1419i;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        if (i != this.f1412a.getAlpha()) {
            this.f1412a.setAlpha(i);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f1412a.setColorFilter(colorFilter);
        invalidateSelf();
    }
}
