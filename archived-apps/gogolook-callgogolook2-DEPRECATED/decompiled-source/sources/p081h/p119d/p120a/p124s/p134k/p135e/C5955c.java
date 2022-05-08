package p081h.p119d.p120a.p124s.p134k.p135e;

import android.graphics.Bitmap;
import p081h.p119d.p120a.p124s.p126i.AbstractC5848l;
import p081h.p119d.p120a.p124s.p126i.p127n.AbstractC5856c;
import p081h.p119d.p120a.p149y.C6096h;
/* renamed from: h.d.a.s.k.e.c */
/* loaded from: classes-dex2jar.jar:h/d/a/s/k/e/c.class */
public class C5955c implements AbstractC5848l<Bitmap> {

    /* renamed from: a */
    public final Bitmap f14872a;

    /* renamed from: b */
    public final AbstractC5856c f14873b;

    public C5955c(Bitmap bitmap, AbstractC5856c cVar) {
        if (bitmap == null) {
            throw new NullPointerException("Bitmap must not be null");
        } else if (cVar != null) {
            this.f14872a = bitmap;
            this.f14873b = cVar;
        } else {
            throw new NullPointerException("BitmapPool must not be null");
        }
    }

    /* renamed from: a */
    public static C5955c m24121a(Bitmap bitmap, AbstractC5856c cVar) {
        if (bitmap == null) {
            return null;
        }
        return new C5955c(bitmap, cVar);
    }

    @Override // p081h.p119d.p120a.p124s.p126i.AbstractC5848l
    /* renamed from: a */
    public int mo24037a() {
        return C6096h.m23860a(this.f14872a);
    }

    @Override // p081h.p119d.p120a.p124s.p126i.AbstractC5848l
    /* renamed from: b */
    public void mo24036b() {
        if (!this.f14873b.mo24220a(this.f14872a)) {
            this.f14872a.recycle();
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // p081h.p119d.p120a.p124s.p126i.AbstractC5848l
    public Bitmap get() {
        return this.f14872a;
    }
}
