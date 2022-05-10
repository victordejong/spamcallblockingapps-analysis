package p131c.p431l.p432a.p433a.p439f.p440a.p441c;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import com.netqin.p525cm.main.p529ui.NqApplication;
import p131c.p390g.p391a.p392a.p393c.C6480a;
/* renamed from: c.l.a.a.f.a.c.h */
/* loaded from: classes2-dex2jar.jar:c/l/a/a/f/a/c/h.class */
public class C6723h extends AbstractC6716a {

    /* renamed from: k */
    public final Bitmap f20736k = BitmapFactory.decodeResource(NqApplication.m3303b().getResources(), 2131165548);

    /* renamed from: l */
    public final Rect f20737l = new Rect();

    /* renamed from: m */
    public final RectF f20738m = new RectF();

    /* renamed from: n */
    public int f20739n;

    /* renamed from: o */
    public int f20740o;

    /* renamed from: p */
    public int f20741p;

    /* renamed from: q */
    public int f20742q;

    /* renamed from: r */
    public float f20743r;

    /* renamed from: s */
    public float f20744s;

    /* renamed from: t */
    public int f20745t;

    @Override // p131c.p431l.p432a.p433a.p439f.p440a.p441c.AbstractC6716a
    /* renamed from: b */
    public void mo19985b(Canvas canvas, Paint paint) {
        m19983e();
        paint.setAlpha(this.f20745t);
        paint.setFilterBitmap(true);
        canvas.rotate(this.f20743r, this.f20738m.centerX(), this.f20742q);
        canvas.drawBitmap(this.f20736k, (Rect) null, this.f20738m, paint);
    }

    @Override // p131c.p390g.p391a.p392a.C6475a.AbstractC6476a
    /* renamed from: d */
    public void mo19984d() {
        m20745a(1200L);
        this.f20739n = this.f20736k.getWidth();
        int height = this.f20736k.getHeight();
        this.f20740o = height;
        int i = AbstractC6716a.f20688j;
        int i2 = (int) (i * 0.52f);
        this.f20741p = i2;
        int i3 = (int) (i * 0.7f);
        this.f20742q = i3;
        Rect rect = this.f20737l;
        int i4 = this.f20739n;
        rect.set(i2 - (i4 / 2), i3 - (height / 2), i2 + (i4 / 2), i3 + (height / 2));
    }

    /* renamed from: e */
    public final void m19983e() {
        int i;
        int i2;
        this.f20738m.set(this.f20737l);
        float a = m20746a();
        if (a <= 0.15f) {
            float f = a / 0.15f;
            int i3 = C6717b.f20689v;
            if (i3 != 1) {
                if (i3 != 2) {
                    if (i3 != 3) {
                        if (i3 == 4) {
                            if (f < 0.07f) {
                                this.f20743r = (-4.0f) * f;
                                this.f20744s = 1.0f - (f / 10.0f);
                                this.f20745t = (int) (255.0f - (f * 10.0f));
                            } else {
                                this.f20743r = (1.0f - f) * (-4.0f);
                                this.f20744s = (f / 10.0f) + 0.9f;
                                this.f20745t = (int) ((f * 10.0f) + 245.0f);
                            }
                        }
                    } else if (f < 0.07f) {
                        this.f20743r = 4.0f * f;
                        this.f20744s = 1.0f - (f / 10.0f);
                        this.f20745t = (int) (255.0f - (f * 10.0f));
                    } else {
                        this.f20743r = (1.0f - f) * 4.0f;
                        this.f20744s = (f / 10.0f) + 0.9f;
                        this.f20745t = (int) ((f * 10.0f) + 245.0f);
                    }
                } else if (f < 0.07f) {
                    this.f20743r = 2.0f * f;
                    this.f20744s = 1.0f - (f / 10.0f);
                    this.f20745t = (int) (255.0f - (f * 10.0f));
                } else {
                    this.f20743r = (1.0f - f) * 2.0f;
                    this.f20744s = (f / 10.0f) + 0.9f;
                    this.f20745t = (int) ((f * 10.0f) + 245.0f);
                }
            } else if (f < 0.07f) {
                this.f20743r = (-4.0f) * f;
                this.f20744s = 1.0f - (f / 10.0f);
                this.f20745t = (int) (255.0f - (f * 10.0f));
            } else {
                this.f20743r = (1.0f - f) * (-4.0f);
                this.f20744s = (f / 10.0f) + 0.9f;
                this.f20745t = (int) ((f * 10.0f) + 245.0f);
            }
        } else {
            RectF rectF = this.f20738m;
            float f2 = this.f20741p - (this.f20739n / 2);
            int i4 = this.f20742q;
            int i5 = this.f20740o;
            rectF.set(f2, i4 - (i5 / 2), i + (i2 / 2), i4 + (i5 / 2));
        }
        C6480a.m20730a(this.f20738m, 1.0f, this.f20744s, 0.5f, 1.0f);
    }
}
