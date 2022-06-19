package p193e.p194a.p437c.p526c.p530f;

import com.truecaller.insights.models.pdo.ParsedDataObject;
import e.q.a.d.c;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import p193e.p1681q.p1682a.p1683a.p1684b.AbstractC25173a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p437c.p526c.p528d.AbstractC9788a;
import p193e.p194a.p437c.p526c.p528d.AbstractC9793c;
import p193e.p194a.p437c.p526c.p528d.AbstractC9800d0;
import p193e.p194a.p437c.p526c.p528d.AbstractC9804e;
import p193e.p194a.p437c.p580r.p582e.p583a.C10533c;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.c.c.f.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/f/b.class */
public final class C9984b extends AbstractC25173a {

    /* renamed from: a */
    public final AbstractC9793c f29759a;

    /* renamed from: b */
    public final AbstractC9788a f29760b;

    /* renamed from: c */
    public final AbstractC9804e f29761c;

    /* renamed from: d */
    public final AbstractC9800d0 f29762d;

    @e(c = "com.truecaller.insights.database.usecases.AccountModelUseCases$getAllAccounts$1", f = "AccountModelUseCases.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.c.c.f.b$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/f/b$a.class */
    public static final class C9985a extends i implements p<i0, d<? super List<? extends C10533c>>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9985a(d dVar) {
            super(2, dVar);
            C9984b.this = r5;
        }

        /* renamed from: i */
        public final d<s> m26979i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C9985a(dVar);
        }

        /* renamed from: k */
        public final Object m26978k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C9984b c9984b = C9984b.this;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            return c9984b.f29759a.mo27158b();
        }

        /* renamed from: s */
        public final Object m26977s(Object obj) {
            C25225a.m3932a3(obj);
            return C9984b.this.f29759a.mo27158b();
        }
    }

    @Inject
    public C9984b(AbstractC9793c abstractC9793c, AbstractC9788a abstractC9788a, AbstractC9804e abstractC9804e, AbstractC9800d0 abstractC9800d0) {
        l.e(abstractC9793c, "accountModelDao");
        l.e(abstractC9788a, "accountMappingRuleModelDao");
        l.e(abstractC9804e, "accountRelationModelDao");
        l.e(abstractC9800d0, "pdoDao");
        this.f29759a = abstractC9793c;
        this.f29760b = abstractC9788a;
        this.f29761c = abstractC9804e;
        this.f29762d = abstractC9800d0;
    }

    @Override // p193e.p1681q.p1682a.p1683a.p1684b.AbstractC25173a
    /* renamed from: a */
    public c mo4136a(Long l) {
        C10533c c10533c;
        if (l != null) {
            l.longValue();
            c10533c = this.f29759a.mo27153g(l.longValue());
        } else {
            c10533c = null;
        }
        return c10533c;
    }

    @Override // p193e.p1681q.p1682a.p1683a.p1684b.AbstractC25173a
    /* renamed from: b */
    public List<c> mo4135b(String str, String str2) {
        l.e(str, "address");
        l.e(str2, "accountNumber");
        return this.f29759a.mo27157c(str2, str);
    }

    @Override // p193e.p1681q.p1682a.p1683a.p1684b.AbstractC25173a
    /* renamed from: c */
    public List<c> mo4134c() {
        return (List) s1.a.a.a.v0.f.d.c3((f) null, new C9985a(null), 1, (Object) null);
    }

    @Override // p193e.p1681q.p1682a.p1683a.p1684b.AbstractC25173a
    /* renamed from: d */
    public long mo4133d(c cVar) {
        l.e(cVar, "accountModel");
        return this.f29759a.mo27155e(C17891a1.C17902k.m15585p(cVar));
    }

    @Override // p193e.p1681q.p1682a.p1683a.p1684b.AbstractC25173a
    /* renamed from: e */
    public long[] mo4132e(List<? extends c> list) {
        l.e(list, "accountModelList");
        AbstractC9793c abstractC9793c = this.f29759a;
        ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
        for (c cVar : list) {
            arrayList.add(C17891a1.C17902k.m15585p(cVar));
        }
        return abstractC9793c.mo27154f(arrayList);
    }

    @Override // p193e.p1681q.p1682a.p1683a.p1684b.AbstractC25173a
    /* renamed from: f */
    public void mo4131f(c cVar, c cVar2) {
        l.e(cVar, "fromAccountModel");
        List<ParsedDataObject> mo27139J = this.f29762d.mo27139J(cVar.g());
        AbstractC9800d0 abstractC9800d0 = this.f29762d;
        ArrayList arrayList = new ArrayList(C25225a.m4004J(mo27139J, 10));
        for (ParsedDataObject parsedDataObject : mo27139J) {
            parsedDataObject.setAccountModelId(Long.valueOf(cVar2.g()));
            arrayList.add(parsedDataObject);
        }
        abstractC9800d0.mo27130S(arrayList);
    }

    /* renamed from: g */
    public final Object m26980g(List<? extends c> list, d<? super s> dVar) {
        ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
        for (c cVar : list) {
            arrayList.add(new Long(cVar.g()));
        }
        Object mo27109h0 = this.f29762d.mo27109h0(arrayList, dVar);
        return mo27109h0 == a.a ? mo27109h0 : s.a;
    }
}
