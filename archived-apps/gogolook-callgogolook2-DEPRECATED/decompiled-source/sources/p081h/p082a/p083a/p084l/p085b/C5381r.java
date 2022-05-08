package p081h.p082a.p083a.p084l.p085b;

import java.util.ArrayList;
import java.util.List;
import p081h.p082a.p083a.p084l.p086c.AbstractC5382a;
import p081h.p082a.p083a.p088n.p090l.C5502q;
import p081h.p082a.p083a.p088n.p091m.AbstractC5506a;
/* renamed from: h.a.a.l.b.r */
/* loaded from: classes-dex2jar.jar:h/a/a/l/b/r.class */
public class C5381r implements AbstractC5363b, AbstractC5382a.AbstractC5383a {

    /* renamed from: a */
    public String f13492a;

    /* renamed from: b */
    public final List<AbstractC5382a.AbstractC5383a> f13493b = new ArrayList();

    /* renamed from: c */
    public final C5502q.EnumC5505c f13494c;

    /* renamed from: d */
    public final AbstractC5382a<?, Float> f13495d;

    /* renamed from: e */
    public final AbstractC5382a<?, Float> f13496e;

    /* renamed from: f */
    public final AbstractC5382a<?, Float> f13497f;

    public C5381r(AbstractC5506a aVar, C5502q qVar) {
        this.f13492a = qVar.m25346b();
        this.f13494c = qVar.m25343e();
        this.f13495d = qVar.m25344d().mo25446a();
        this.f13496e = qVar.m25348a().mo25446a();
        this.f13497f = qVar.m25345c().mo25446a();
        aVar.m25336a(this.f13495d);
        aVar.m25336a(this.f13496e);
        aVar.m25336a(this.f13497f);
        this.f13495d.mo25517a(this);
        this.f13496e.mo25517a(this);
        this.f13497f.mo25517a(this);
    }

    @Override // p081h.p082a.p083a.p084l.p086c.AbstractC5382a.AbstractC5383a
    /* renamed from: a */
    public void mo25321a() {
        for (int i = 0; i < this.f13493b.size(); i++) {
            this.f13493b.get(i).mo25321a();
        }
    }

    /* renamed from: a */
    public void m25535a(AbstractC5382a.AbstractC5383a aVar) {
        this.f13493b.add(aVar);
    }

    @Override // p081h.p082a.p083a.p084l.p085b.AbstractC5363b
    /* renamed from: a */
    public void mo25332a(List<AbstractC5363b> list, List<AbstractC5363b> list2) {
    }

    /* renamed from: b */
    public AbstractC5382a<?, Float> m25534b() {
        return this.f13496e;
    }

    /* renamed from: c */
    public AbstractC5382a<?, Float> m25533c() {
        return this.f13497f;
    }

    /* renamed from: d */
    public AbstractC5382a<?, Float> m25532d() {
        return this.f13495d;
    }

    /* renamed from: e */
    public C5502q.EnumC5505c m25531e() {
        return this.f13494c;
    }

    @Override // p081h.p082a.p083a.p084l.p085b.AbstractC5363b
    public String getName() {
        return this.f13492a;
    }
}
