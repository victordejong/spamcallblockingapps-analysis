package p131c.p161d.p354f.p356t.p357k;

import java.io.IOException;
import p131c.p161d.p354f.AbstractC6121i;
import p131c.p161d.p354f.AbstractC6122j;
import p131c.p161d.p354f.AbstractC6123k;
import p131c.p161d.p354f.AbstractC6127o;
import p131c.p161d.p354f.AbstractC6128p;
import p131c.p161d.p354f.AbstractC6129q;
import p131c.p161d.p354f.AbstractC6131r;
import p131c.p161d.p354f.C6111e;
import p131c.p161d.p354f.p356t.C6160i;
import p131c.p161d.p354f.p360u.C6239a;
import p131c.p161d.p354f.p361v.C6240a;
import p131c.p161d.p354f.p361v.C6242b;
/* renamed from: c.d.f.t.k.l */
/* loaded from: classes2-dex2jar.jar:c/d/f/t/k/l.class */
public final class C6192l<T> extends AbstractC6129q<T> {

    /* renamed from: a */
    public final AbstractC6128p<T> f19731a;

    /* renamed from: b */
    public final AbstractC6122j<T> f19732b;

    /* renamed from: c */
    public final C6111e f19733c;

    /* renamed from: d */
    public final C6239a<T> f19734d;

    /* renamed from: e */
    public final AbstractC6131r f19735e;

    /* renamed from: f */
    public final C6192l<T>.C6194b f19736f = new C6194b();

    /* renamed from: g */
    public AbstractC6129q<T> f19737g;

    /* renamed from: c.d.f.t.k.l$b */
    /* loaded from: classes2-dex2jar.jar:c/d/f/t/k/l$b.class */
    public final class C6194b implements AbstractC6127o, AbstractC6121i {
        public C6194b(C6192l lVar) {
        }
    }

    public C6192l(AbstractC6128p<T> pVar, AbstractC6122j<T> jVar, C6111e eVar, C6239a<T> aVar, AbstractC6131r rVar) {
        this.f19731a = pVar;
        this.f19732b = jVar;
        this.f19733c = eVar;
        this.f19734d = aVar;
        this.f19735e = rVar;
    }

    /* renamed from: a */
    public final AbstractC6129q<T> m21880a() {
        AbstractC6129q<T> qVar = this.f19737g;
        if (qVar == null) {
            qVar = this.f19733c.m21993a(this.f19735e, this.f19734d);
            this.f19737g = qVar;
        }
        return qVar;
    }

    @Override // p131c.p161d.p354f.AbstractC6129q
    public T read(C6240a aVar) throws IOException {
        if (this.f19732b == null) {
            return m21880a().read(aVar);
        }
        AbstractC6123k a = C6160i.m21910a(aVar);
        if (a.m21956f()) {
            return null;
        }
        return this.f19732b.m21961a(a, this.f19734d.m21833b(), this.f19736f);
    }

    @Override // p131c.p161d.p354f.AbstractC6129q
    public void write(C6242b bVar, T t) throws IOException {
        AbstractC6128p<T> pVar = this.f19731a;
        if (pVar == null) {
            m21880a().write(bVar, t);
        } else if (t == null) {
            bVar.mo21770k();
        } else {
            C6160i.m21911a(pVar.m21942a(t, this.f19734d.m21833b(), this.f19736f), bVar);
        }
    }
}
