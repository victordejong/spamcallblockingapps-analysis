package p131c.p431l.p432a.p433a.p439f.p440a.p441c;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.util.TypedValue;
import com.netqin.p525cm.main.p529ui.NqApplication;
import p012b.p042i.p044i.C0869a;
/* renamed from: c.l.a.a.f.a.c.c */
/* loaded from: classes2-dex2jar.jar:c/l/a/a/f/a/c/c.class */
public class C6718c extends AbstractC6716a {

    /* renamed from: z */
    public static final int[] f20702z = {2131165545, 2131165547};

    /* renamed from: k */
    public int f20703k;

    /* renamed from: l */
    public int f20704l;

    /* renamed from: m */
    public float f20705m;

    /* renamed from: n */
    public float f20706n;

    /* renamed from: o */
    public float f20707o;

    /* renamed from: p */
    public float f20708p;

    /* renamed from: q */
    public float f20709q;

    /* renamed from: r */
    public float f20710r;

    /* renamed from: s */
    public final Path f20711s = new Path();

    /* renamed from: t */
    public PathMeasure f20712t = new PathMeasure();

    /* renamed from: u */
    public final float[] f20713u = new float[2];

    /* renamed from: v */
    public final float[] f20714v = new float[2];

    /* renamed from: w */
    public Bitmap f20715w;

    /* renamed from: x */
    public float f20716x;

    /* renamed from: y */
    public TypedValue f20717y;

    /* renamed from: a */
    public static Bitmap m19991a(int i) {
        return ((BitmapDrawable) C0869a.m35684c(NqApplication.m3303b(), f20702z[i])).getBitmap();
    }

    /* renamed from: a */
    public final void m19992a(float f, float f2, float f3, float f4, float f5, float f6) {
        this.f20711s.rewind();
        this.f20711s.moveTo(f, f2);
        this.f20711s.quadTo(f5, f6, f3, f4);
    }

    @Override // p131c.p431l.p432a.p433a.p439f.p440a.p441c.AbstractC6716a
    /* renamed from: b */
    public void mo19985b(Canvas canvas, Paint paint) {
        int save = canvas.save();
        m19990e();
        paint.setAlpha(this.f20703k);
        canvas.rotate(this.f20710r, this.f20187b.centerX(), this.f20187b.centerY());
        canvas.drawBitmap(this.f20715w, (Rect) null, this.f20187b, paint);
        canvas.restoreToCount(save);
    }

    @Override // p131c.p390g.p391a.p392a.C6475a.AbstractC6476a
    /* renamed from: d */
    public void mo19984d() {
        m20745a(500L);
        this.f20710r = 0.0f;
        this.f20704l = Math.round(AbstractC6716a.f20688j * 0.4f);
        this.f20715w = null;
        this.f20717y = new TypedValue();
        int i = C6717b.f20689v;
        if (i == 1) {
            this.f20710r = -10.0f;
            this.f20715w = m19991a(0);
            this.f20704l = Math.round(AbstractC6716a.f20688j * 0.4f);
            NqApplication.m3303b().getResources().getValue(2131099931, this.f20717y, true);
            float f = this.f20717y.getFloat();
            this.f20716x = f;
            float height = (AbstractC6716a.f20688j * f) - this.f20715w.getHeight();
            this.f20705m = height;
            int i2 = AbstractC6716a.f20688j;
            this.f20706n = i2 * 0.18f;
            this.f20707o = height - (((int) height) >> 4);
            this.f20708p = i2 * 0.26f;
            this.f20709q = height - (((int) height) >> 2);
        } else if (i == 2) {
            this.f20710r = -25.0f;
            this.f20715w = m19991a(1);
            this.f20704l = Math.round(AbstractC6716a.f20688j * 0.52f);
            NqApplication.m3303b().getResources().getValue(2131099934, this.f20717y, true);
            float f2 = this.f20717y.getFloat();
            this.f20716x = f2;
            float height2 = (AbstractC6716a.f20688j * f2) - this.f20715w.getHeight();
            this.f20705m = height2;
            int i3 = AbstractC6716a.f20688j;
            this.f20706n = i3 * 0.85f;
            this.f20707o = height2 - (((int) height2) >> 4);
            this.f20708p = i3 * 0.7f;
            this.f20709q = height2 - (((int) height2) >> 2);
        } else if (i == 3) {
            this.f20710r = 192.0f;
            this.f20715w = m19991a(0);
            this.f20704l = Math.round(AbstractC6716a.f20688j * 0.62f);
            NqApplication.m3303b().getResources().getValue(2131099932, this.f20717y, true);
            float f3 = this.f20717y.getFloat();
            this.f20716x = f3;
            float height3 = (AbstractC6716a.f20688j * f3) - this.f20715w.getHeight();
            this.f20705m = height3;
            int i4 = AbstractC6716a.f20688j;
            this.f20706n = i4 * 0.85f;
            this.f20707o = height3 - (((int) height3) >> 4);
            this.f20708p = i4 * 0.7f;
            this.f20709q = height3 - (((int) height3) >> 2);
        } else if (i == 4) {
            this.f20710r = -29.0f;
            this.f20715w = m19991a(1);
            this.f20704l = Math.round(AbstractC6716a.f20688j * 0.24f);
            NqApplication.m3303b().getResources().getValue(2131099933, this.f20717y, true);
            float f4 = this.f20717y.getFloat();
            this.f20716x = f4;
            float height4 = (AbstractC6716a.f20688j * f4) - this.f20715w.getHeight();
            this.f20705m = height4;
            int i5 = AbstractC6716a.f20688j;
            this.f20706n = i5 * 0.18f;
            this.f20707o = height4 - (((int) height4) >> 3);
            this.f20708p = i5 * 0.31f;
            this.f20709q = height4 - (((int) height4) >> 2);
        }
        int width = this.f20715w.getWidth();
        int height5 = this.f20715w.getHeight();
        Rect rect = this.f20186a;
        int i6 = this.f20704l;
        float f5 = this.f20705m;
        rect.set(i6, (int) f5, width + i6, ((int) f5) + height5);
        m19992a(this.f20704l, this.f20705m, this.f20706n, this.f20707o, this.f20708p, this.f20709q);
        this.f20712t.setPath(this.f20711s, false);
    }

    /* renamed from: e */
    public final void m19990e() {
        float a = m20746a();
        this.f20187b.set(this.f20186a);
        if (a <= 0.2f) {
            this.f20710r = 0.0f;
            return;
        }
        this.f20703k = (int) ((1.0f - (a / 1.0f)) * 255.0f);
        int i = C6717b.f20689v;
        if (i == 1) {
            this.f20710r -= 10.0f;
        } else if (i == 4) {
            this.f20710r -= 7.0f;
        } else {
            this.f20710r += 10.0f;
        }
        this.f20712t.getPosTan(this.f20712t.getLength() * m20741b(), this.f20713u, this.f20714v);
        RectF rectF = this.f20187b;
        float[] fArr = this.f20713u;
        rectF.offsetTo(fArr[0], fArr[1]);
    }
}
