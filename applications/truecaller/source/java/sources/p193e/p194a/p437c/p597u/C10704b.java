package p193e.p194a.p437c.p597u;

import com.truecaller.insights.models.InsightsDomain;
import com.truecaller.insights.models.enrichment.linking.LinkPruneMap;
import com.truecaller.insights.models.pdo.ExtendedPdo;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p523a0.AbstractC9625e;
import p193e.p194a.p437c.p523a0.C9626f;
import p193e.p194a.p437c.p526c.p528d.AbstractC9800d0;
import p193e.p194a.p437c.p526c.p528d.AbstractC9846g;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p437c.p580r.p589j.C10582b;
import s1.f0.q;
import s1.u.i;
import s1.u.s;
import s1.w.d;
import s1.w.j.a;
import s1.z.c.l;
import w3.b.a.b;
import w3.b.a.e0.e;
/* renamed from: e.a.c.u.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/u/b.class */
public final class C10704b implements AbstractC10703a {

    /* renamed from: a */
    public final AbstractC9800d0 f31812a;

    /* renamed from: b */
    public final AbstractC9625e f31813b;

    @Inject
    public C10704b(AbstractC9800d0 abstractC9800d0, AbstractC9625e abstractC9625e) {
        l.e(abstractC9800d0, "pdoDao");
        l.e(abstractC9625e, "actionDataSource");
        this.f31812a = abstractC9800d0;
        this.f31813b = abstractC9625e;
    }

    @Override // p193e.p194a.p437c.p597u.AbstractC10703a
    /* renamed from: a */
    public Object mo25715a(InsightsDomain insightsDomain, d<? super List<ExtendedPdo>> dVar) {
        s sVar = s.a;
        if (!(insightsDomain instanceof InsightsDomain.C4057a)) {
            return sVar;
        }
        b y = new b().y(30);
        l.d(y, "DateTime.now().minusDays…NCILIATION_LIMIT_IN_DAYS)");
        long j = ((e) y).a;
        Double f = q.f(((InsightsDomain.C4057a) insightsDomain).m35260e());
        if (f == null) {
            return sVar;
        }
        double doubleValue = f.doubleValue();
        int floor = (int) Math.floor(doubleValue);
        int ceil = (int) Math.ceil(doubleValue);
        Integer num = new Integer(floor);
        if (floor == ceil) {
            ceil = floor - 1;
        }
        return this.f31812a.mo27135N(insightsDomain.getSender(), j, i.T(new Integer[]{num, new Integer(ceil)}), dVar);
    }

    @Override // p193e.p194a.p437c.p597u.AbstractC10703a
    /* renamed from: b */
    public Object mo25714b(List<C10582b> list, d<? super s1.s> dVar) {
        AbstractC9846g abstractC9846g = ((C9626f) this.f31813b).f29085a;
        ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
        for (C10582b c10582b : list) {
            arrayList.add(C10480a.m26040N2(c10582b));
        }
        Object mo27070c = abstractC9846g.mo27070c(arrayList, dVar);
        return mo27070c == a.a ? mo27070c : s1.s.a;
    }

    @Override // p193e.p194a.p437c.p597u.AbstractC10703a
    /* renamed from: c */
    public Object mo25713c(InsightsDomain insightsDomain, List<? extends InsightsDomain> list, d<? super s1.s> dVar) {
        ArrayList arrayList = new ArrayList();
        for (InsightsDomain insightsDomain2 : list) {
            LinkPruneMap linkPruneMap = new LinkPruneMap(0L, 0L, null, null, 15, null);
            linkPruneMap.setParentId(insightsDomain.getMsgId());
            linkPruneMap.setChildId(insightsDomain2.getMsgId());
            linkPruneMap.setLinkType("RECONCILIATION_LINK");
            arrayList.add(linkPruneMap);
        }
        this.f31812a.mo27133P(arrayList);
        return s1.s.a;
    }
}
