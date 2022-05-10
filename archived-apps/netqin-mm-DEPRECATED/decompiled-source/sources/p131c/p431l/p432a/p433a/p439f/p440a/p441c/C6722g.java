package p131c.p431l.p432a.p433a.p439f.p440a.p441c;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.animation.OvershootInterpolator;
import com.netqin.p525cm.main.p529ui.NqApplication;
/* renamed from: c.l.a.a.f.a.c.g */
/* loaded from: classes2-dex2jar.jar:c/l/a/a/f/a/c/g.class */
public class C6722g extends AbstractC6716a {

    /* renamed from: k */
    public final Bitmap f20728k = BitmapFactory.decodeResource(NqApplication.m3303b().getResources(), 2131165548);

    /* renamed from: l */
    public final Rect f20729l = new Rect();

    /* renamed from: m */
    public final RectF f20730m = new RectF();

    /* renamed from: n */
    public int f20731n;

    /* renamed from: o */
    public int f20732o;

    /* renamed from: p */
    public int f20733p;

    /* renamed from: q */
    public int f20734q;

    /* renamed from: r */
    public int f20735r;

    @Override // p131c.p431l.p432a.p433a.p439f.p440a.p441c.AbstractC6716a
    /* renamed from: b */
    public void mo19985b(Canvas canvas, Paint paint) {
        m19986e();
        paint.setAlpha(this.f20731n);
        canvas.drawBitmap(this.f20728k, (Rect) null, this.f20730m, paint);
    }

    @Override // p131c.p390g.p391a.p392a.C6475a.AbstractC6476a
    /* renamed from: d */
    public void mo19984d() {
        m20745a(400L);
        m20744a(new OvershootInterpolator(2.0f));
        this.f20732o = this.f20728k.getWidth();
        int height = this.f20728k.getHeight();
        this.f20733p = height;
        int i = AbstractC6716a.f20688j;
        int i2 = (int) (i * 0.52f);
        this.f20734q = i2;
        int i3 = (int) (i * 0.7f);
        this.f20735r = i3;
        this.f20729l.set(i2, i3, this.f20732o + i2, height + i3);
    }

    /* renamed from: e */
    public final void m19986e() {
        int i;
        float b = m20741b();
        this.f20730m.setEmpty();
        this.f20730m.offsetTo(this.f20734q, this.f20735r);
        this.f20731n = (int) (m20746a() * 255.0f);
        RectF rectF = this.f20730m;
        int i2 = this.f20734q;
        float f = i2;
        float f2 = this.f20732o / 2;
        int i3 = this.f20735r;
        float f3 = i3;
        int i4 = this.f20733p;
        rectF.set(f - (f2 * b), f3 - ((i4 / 2) * b), i2 + ((i / 2) * b), i3 + ((i4 / 2) * b));
    }
}
