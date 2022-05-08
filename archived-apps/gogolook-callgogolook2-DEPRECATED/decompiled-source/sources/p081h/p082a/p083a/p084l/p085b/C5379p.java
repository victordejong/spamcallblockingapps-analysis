package p081h.p082a.p083a.p084l.p085b;

import android.graphics.Path;
import androidx.annotation.Nullable;
import java.util.List;
import p081h.p082a.p083a.C5344f;
import p081h.p082a.p083a.p084l.p086c.AbstractC5382a;
import p081h.p082a.p083a.p088n.p090l.C5494o;
import p081h.p082a.p083a.p088n.p090l.C5502q;
import p081h.p082a.p083a.p088n.p091m.AbstractC5506a;
import p081h.p082a.p083a.p092o.C5530f;
/* renamed from: h.a.a.l.b.p */
/* loaded from: classes-dex2jar.jar:h/a/a/l/b/p.class */
public class C5379p implements AbstractC5374l, AbstractC5382a.AbstractC5383a {

    /* renamed from: a */
    public final Path f13484a = new Path();

    /* renamed from: b */
    public final String f13485b;

    /* renamed from: c */
    public final C5344f f13486c;

    /* renamed from: d */
    public final AbstractC5382a<?, Path> f13487d;

    /* renamed from: e */
    public boolean f13488e;
    @Nullable

    /* renamed from: f */
    public C5381r f13489f;

    public C5379p(C5344f fVar, AbstractC5506a aVar, C5494o oVar) {
        this.f13485b = oVar.m25362a();
        this.f13486c = fVar;
        this.f13487d = oVar.m25361b().mo25446a();
        aVar.m25336a(this.f13487d);
        this.f13487d.mo25517a(this);
    }

    @Override // p081h.p082a.p083a.p084l.p086c.AbstractC5382a.AbstractC5383a
    /* renamed from: a */
    public void mo25321a() {
        m25536b();
    }

    @Override // p081h.p082a.p083a.p084l.p085b.AbstractC5363b
    /* renamed from: a */
    public void mo25332a(List<AbstractC5363b> list, List<AbstractC5363b> list2) {
        for (int i = 0; i < list.size(); i++) {
            AbstractC5363b bVar = list.get(i);
            if (bVar instanceof C5381r) {
                C5381r rVar = (C5381r) bVar;
                if (rVar.m25531e() == C5502q.EnumC5505c.Simultaneously) {
                    this.f13489f = rVar;
                    this.f13489f.m25535a(this);
                }
            }
        }
    }

    /* renamed from: b */
    public final void m25536b() {
        this.f13488e = false;
        this.f13486c.invalidateSelf();
    }

    @Override // p081h.p082a.p083a.p084l.p085b.AbstractC5363b
    public String getName() {
        return this.f13485b;
    }

    @Override // p081h.p082a.p083a.p084l.p085b.AbstractC5374l
    public Path getPath() {
        if (this.f13488e) {
            return this.f13484a;
        }
        this.f13484a.reset();
        this.f13484a.set(this.f13487d.mo25516f());
        this.f13484a.setFillType(Path.FillType.EVEN_ODD);
        C5530f.m25250a(this.f13484a, this.f13489f);
        this.f13488e = true;
        return this.f13484a;
    }
}
