package p131c.p431l.p432a.p433a.p439f.p440a.p441c;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import com.netqin.p525cm.main.p529ui.NqApplication;
/* renamed from: c.l.a.a.f.a.c.f */
/* loaded from: classes2-dex2jar.jar:c/l/a/a/f/a/c/f.class */
public class C6721f extends AbstractC6716a {

    /* renamed from: k */
    public final Bitmap f20721k = BitmapFactory.decodeResource(NqApplication.m3303b().getResources(), 2131165548);

    /* renamed from: l */
    public final Rect f20722l = new Rect();

    /* renamed from: m */
    public final RectF f20723m = new RectF();

    /* renamed from: n */
    public int f20724n;

    /* renamed from: o */
    public int f20725o;

    /* renamed from: p */
    public int f20726p;

    /* renamed from: q */
    public int f20727q;

    @Override // p131c.p431l.p432a.p433a.p439f.p440a.p441c.AbstractC6716a
    /* renamed from: b */
    public void mo19985b(Canvas canvas, Paint paint) {
        m19987e();
        paint.setFilterBitmap(true);
        canvas.drawBitmap(this.f20721k, (Rect) null, this.f20723m, (Paint) null);
    }

    @Override // p131c.p390g.p391a.p392a.C6475a.AbstractC6476a
    /* renamed from: d */
    public void mo19984d() {
        m20745a(700L);
        this.f20724n = this.f20721k.getWidth();
        int height = this.f20721k.getHeight();
        this.f20725o = height;
        int i = AbstractC6716a.f20688j;
        int i2 = (int) (i * 0.52f);
        this.f20726p = i2;
        int i3 = (int) (i * 0.7f);
        this.f20727q = i3;
        Rect rect = this.f20722l;
        int i4 = this.f20724n;
        rect.set(i2 - (i4 / 2), i3 - (height / 2), i2 + (i4 / 2), i3 + (height / 2));
    }

    /* renamed from: e */
    public final void m19987e() {
        this.f20723m.set(this.f20722l);
    }
}
