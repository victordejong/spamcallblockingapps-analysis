package p193e.p194a.p437c.p438a.p456d.p461d;

import java.util.List;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p372b0.p419m.p422c.AbstractC8511a;
import p193e.p194a.p372b0.p419m.p423d.AbstractC8514a;
import p193e.p194a.p437c.p438a.p479i.AbstractC9107c;
import p193e.p194a.p437c.p438a.p493l.C9234a;
import p193e.p194a.p437c.p548h.AbstractC10255e;
import p193e.p194a.p437c.p606w.AbstractC10852v;
import p193e.p194a.p437c.p606w.p607o0.AbstractC10821g;
import s1.s;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.c.a.d.d.j */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/d/d/j.class */
public final class C8925j extends AbstractC9107c<s, List<? extends C9234a>> {

    /* renamed from: b */
    public final AbstractC8511a f27187b;

    /* renamed from: c */
    public final AbstractC8514a f27188c;

    /* renamed from: d */
    public final AbstractC10852v f27189d;

    /* renamed from: e */
    public final AbstractC10821g f27190e;

    /* renamed from: f */
    public final AbstractC10255e f27191f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C8925j(@Named("IO") f fVar, AbstractC8511a abstractC8511a, AbstractC8514a abstractC8514a, AbstractC10852v abstractC10852v, AbstractC10821g abstractC10821g, AbstractC10255e abstractC10255e) {
        super(fVar);
        l.e(fVar, "ioContext");
        l.e(abstractC8511a, "addressProfileLoader");
        l.e(abstractC8514a, "senderInfoManager");
        l.e(abstractC10852v, "accountsRepository");
        l.e(abstractC10821g, "smartSmsFeatureFilter");
        l.e(abstractC10255e, "insightsFilterFetcher");
        this.f27187b = abstractC8511a;
        this.f27188c = abstractC8514a;
        this.f27189d = abstractC10852v;
        this.f27190e = abstractC10821g;
        this.f27191f = abstractC10255e;
    }

    @Override // p193e.p194a.p437c.p438a.p479i.AbstractC9107c
    /* renamed from: a */
    public /* bridge */ /* synthetic */ List<? extends C9234a> mo27441a() {
        return s1.u.s.a;
    }

    @Override // p193e.p194a.p437c.p438a.p479i.AbstractC9107c
    /* renamed from: b */
    public q3.a.x2.f<List<? extends C9234a>> mo27440b(s sVar) {
        l.e(sVar, "input");
        return new C8922i(this.f27189d.mo25557a(), this);
    }
}
