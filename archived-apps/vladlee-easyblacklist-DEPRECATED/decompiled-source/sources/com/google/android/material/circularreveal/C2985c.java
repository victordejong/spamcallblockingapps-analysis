package com.google.android.material.circularreveal;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import com.google.android.material.circularreveal.AbstractC2987d;
import com.google.android.material.p063d.C2992a;
/* renamed from: com.google.android.material.circularreveal.c */
/* loaded from: classes-dex2jar.jar:com/google/android/material/circularreveal/c.class */
public final class C2985c {

    /* renamed from: a */
    public static final int f18174a;

    /* renamed from: b */
    private final AbstractC2986a f18175b;

    /* renamed from: c */
    private final View f18176c;

    /* renamed from: d */
    private final Path f18177d = new Path();

    /* renamed from: e */
    private final Paint f18178e = new Paint(7);

    /* renamed from: f */
    private final Paint f18179f = new Paint(1);

    /* renamed from: g */
    private AbstractC2987d.C2991d f18180g;

    /* renamed from: h */
    private Drawable f18181h;

    /* renamed from: i */
    private boolean f18182i;

    /* renamed from: j */
    private boolean f18183j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.circularreveal.c$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/circularreveal/c$a.class */
    public interface AbstractC2986a {
        /* renamed from: a */
        void mo1209a(Canvas canvas);

        /* renamed from: e */
        boolean mo1208e();
    }

    static {
        f18174a = Build.VERSION.SDK_INT >= 21 ? 2 : Build.VERSION.SDK_INT >= 18 ? 1 : 0;
    }

    public C2985c(AbstractC2986a aVar) {
        this.f18175b = aVar;
        this.f18176c = (View) aVar;
        this.f18176c.setWillNotDraw(false);
        this.f18179f.setColor(0);
    }

    /* renamed from: b */
    private float m1215b(AbstractC2987d.C2991d dVar) {
        return C2992a.m1197a(dVar.f18190a, dVar.f18191b, this.f18176c.getWidth(), this.f18176c.getHeight());
    }

    /* renamed from: f */
    private boolean m1211f() {
        AbstractC2987d.C2991d dVar = this.f18180g;
        boolean z = dVar == null || dVar.m1200a();
        return f18174a == 0 ? !z && this.f18183j : !z;
    }

    /* renamed from: g */
    private boolean m1210g() {
        return !this.f18182i && Color.alpha(this.f18179f.getColor()) != 0;
    }

    /* renamed from: a */
    public final void m1221a() {
        if (f18174a == 0) {
            this.f18182i = true;
            this.f18183j = false;
            this.f18176c.buildDrawingCache();
            Bitmap drawingCache = this.f18176c.getDrawingCache();
            Bitmap bitmap = drawingCache;
            if (drawingCache == null) {
                bitmap = drawingCache;
                if (this.f18176c.getWidth() != 0) {
                    bitmap = drawingCache;
                    if (this.f18176c.getHeight() != 0) {
                        bitmap = Bitmap.createBitmap(this.f18176c.getWidth(), this.f18176c.getHeight(), Bitmap.Config.ARGB_8888);
                        this.f18176c.draw(new Canvas(bitmap));
                    }
                }
            }
            if (bitmap != null) {
                Paint paint = this.f18178e;
                Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                paint.setShader(new BitmapShader(bitmap, tileMode, tileMode));
            }
            this.f18182i = false;
            this.f18183j = true;
        }
    }

    /* renamed from: a */
    public final void m1220a(int i) {
        this.f18179f.setColor(i);
        this.f18176c.invalidate();
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002f, code lost:
        if (m1210g() != false) goto L_0x00eb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00e8, code lost:
        if (m1210g() != false) goto L_0x00eb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00eb, code lost:
        r8.drawRect(0.0f, 0.0f, r7.f18176c.getWidth(), r7.f18176c.getHeight(), r7.f18179f);
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m1219a(android.graphics.Canvas r8) {
        /*
            Method dump skipped, instructions count: 363
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.circularreveal.C2985c.m1219a(android.graphics.Canvas):void");
    }

    /* renamed from: a */
    public final void m1218a(Drawable drawable) {
        this.f18181h = drawable;
        this.f18176c.invalidate();
    }

    /* renamed from: a */
    public final void m1217a(AbstractC2987d.C2991d dVar) {
        if (dVar == null) {
            this.f18180g = null;
        } else {
            AbstractC2987d.C2991d dVar2 = this.f18180g;
            if (dVar2 == null) {
                this.f18180g = new AbstractC2987d.C2991d(dVar);
            } else {
                dVar2.m1199a(dVar.f18190a, dVar.f18191b, dVar.f18192c);
            }
            if (dVar.f18192c + 1.0E-4f >= m1215b(dVar)) {
                this.f18180g.f18192c = Float.MAX_VALUE;
            }
        }
        if (f18174a == 1) {
            this.f18177d.rewind();
            AbstractC2987d.C2991d dVar3 = this.f18180g;
            if (dVar3 != null) {
                this.f18177d.addCircle(dVar3.f18190a, this.f18180g.f18191b, this.f18180g.f18192c, Path.Direction.CW);
            }
        }
        this.f18176c.invalidate();
    }

    /* renamed from: b */
    public final void m1216b() {
        if (f18174a == 0) {
            this.f18183j = false;
            this.f18176c.destroyDrawingCache();
            this.f18178e.setShader(null);
            this.f18176c.invalidate();
        }
    }

    /* renamed from: c */
    public final AbstractC2987d.C2991d m1214c() {
        AbstractC2987d.C2991d dVar = this.f18180g;
        if (dVar == null) {
            return null;
        }
        AbstractC2987d.C2991d dVar2 = new AbstractC2987d.C2991d(dVar);
        if (dVar2.m1200a()) {
            dVar2.f18192c = m1215b(dVar2);
        }
        return dVar2;
    }

    /* renamed from: d */
    public final int m1213d() {
        return this.f18179f.getColor();
    }

    /* renamed from: e */
    public final boolean m1212e() {
        return this.f18175b.mo1208e() && !m1211f();
    }
}
