package p193e.p194a.p437c.p526c.p530f;

import e.q.a.d.b;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1682a.p1683a.p1684b.AbstractC25174b;
import p193e.p194a.p437c.p526c.p528d.AbstractC9788a;
import p193e.p194a.p437c.p580r.p582e.p583a.C10532b;
import s1.u.i;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.c.c.f.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/f/a.class */
public final class C9983a extends AbstractC25174b {

    /* renamed from: a */
    public final AbstractC9788a f29757a;

    /* renamed from: b */
    public final f f29758b;

    @Inject
    public C9983a(AbstractC9788a abstractC9788a, @Named("IO") f fVar) {
        l.e(abstractC9788a, "accountMappingRuleModelDao");
        l.e(fVar, "coroutineContext");
        this.f29757a = abstractC9788a;
        this.f29758b = fVar;
    }

    @Override // p193e.p1681q.p1682a.p1683a.p1684b.AbstractC25174b
    /* renamed from: a */
    public void mo4130a(b bVar) {
        l.e(bVar, "accountMappingRuleModel");
        AbstractC9788a abstractC9788a = this.f29757a;
        l.e(bVar, "$this$convertToInsightsAccountMappingRuleModel");
        abstractC9788a.mo27163a((C10532b) bVar);
    }

    @Override // p193e.p1681q.p1682a.p1683a.p1684b.AbstractC25174b
    /* renamed from: b */
    public b mo4129b(Long l) {
        C10532b c10532b;
        if (l != null) {
            l.longValue();
            c10532b = (C10532b) i.D(this.f29757a.mo27162b(l.longValue()));
        } else {
            c10532b = null;
        }
        return c10532b;
    }

    @Override // p193e.p1681q.p1682a.p1683a.p1684b.AbstractC25174b
    /* renamed from: c */
    public b mo4128c(Long l) {
        C10532b c10532b;
        if (l != null) {
            l.longValue();
            c10532b = (C10532b) i.D(this.f29757a.mo27162b(l.longValue()));
        } else {
            c10532b = null;
        }
        return c10532b;
    }
}
