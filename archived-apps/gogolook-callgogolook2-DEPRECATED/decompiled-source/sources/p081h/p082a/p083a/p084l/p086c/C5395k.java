package p081h.p082a.p083a.p084l.p086c;

import java.util.List;
import p081h.p082a.p083a.p084l.C5358a;
import p081h.p082a.p083a.p088n.C5415j;
import p081h.p082a.p083a.p092o.C5529e;
/* renamed from: h.a.a.l.c.k */
/* loaded from: classes-dex2jar.jar:h/a/a/l/c/k.class */
public class C5395k extends AbstractC5388f<C5415j> {
    public C5395k(List<C5358a<C5415j>> list) {
        super(list);
    }

    @Override // p081h.p082a.p083a.p084l.p086c.AbstractC5382a
    /* renamed from: a */
    public C5415j mo25515a(C5358a<C5415j> aVar, float f) {
        C5415j jVar;
        C5415j jVar2 = aVar.f13377b;
        if (jVar2 == null || (jVar = aVar.f13378c) == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        C5415j jVar3 = jVar2;
        C5415j jVar4 = jVar;
        return new C5415j(C5529e.m25256b(jVar3.m25481a(), jVar4.m25481a(), f), C5529e.m25256b(jVar3.m25480b(), jVar4.m25480b(), f));
    }
}
