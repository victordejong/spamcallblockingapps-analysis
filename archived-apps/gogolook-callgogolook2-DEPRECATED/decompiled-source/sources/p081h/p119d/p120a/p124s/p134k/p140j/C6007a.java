package p081h.p119d.p120a.p124s.p134k.p140j;

import android.graphics.Bitmap;
import p081h.p119d.p120a.p124s.p126i.AbstractC5848l;
import p081h.p119d.p120a.p124s.p134k.p139i.C5988b;
/* renamed from: h.d.a.s.k.j.a */
/* loaded from: classes-dex2jar.jar:h/d/a/s/k/j/a.class */
public class C6007a {

    /* renamed from: a */
    public final AbstractC5848l<C5988b> f14984a;

    /* renamed from: b */
    public final AbstractC5848l<Bitmap> f14985b;

    public C6007a(AbstractC5848l<Bitmap> lVar, AbstractC5848l<C5988b> lVar2) {
        if (lVar != null && lVar2 != null) {
            throw new IllegalArgumentException("Can only contain either a bitmap resource or a gif resource, not both");
        } else if (lVar == null && lVar2 == null) {
            throw new IllegalArgumentException("Must contain either a bitmap resource or a gif resource");
        } else {
            this.f14985b = lVar;
            this.f14984a = lVar2;
        }
    }

    /* renamed from: a */
    public AbstractC5848l<Bitmap> m24040a() {
        return this.f14985b;
    }

    /* renamed from: b */
    public AbstractC5848l<C5988b> m24039b() {
        return this.f14984a;
    }

    /* renamed from: c */
    public int m24038c() {
        AbstractC5848l<Bitmap> lVar = this.f14985b;
        return lVar != null ? lVar.mo24037a() : this.f14984a.mo24037a();
    }
}
