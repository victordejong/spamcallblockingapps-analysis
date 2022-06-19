package p193e.p194a.p437c.p526c.p530f;

import com.truecaller.insights.models.enrichment.linking.LinkPruneMap;
import com.truecaller.insights.models.pdo.ParsedDataObject;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.Set;
import javax.inject.Inject;
import p193e.p194a.p437c.p526c.p528d.AbstractC9800d0;
import p193e.p194a.p437c.p526c.p528d.AbstractC9945s;
import s1.s;
import s1.u.i;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.c.c.f.h */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/f/h.class */
public final class C9995h implements AbstractC9994g {

    /* renamed from: a */
    public final AbstractC9800d0 f29786a;

    /* renamed from: b */
    public final AbstractC10009n f29787b;

    /* renamed from: c */
    public final AbstractC9945s f29788c;

    @e(c = "com.truecaller.insights.database.usecases.EnrichmentUseCasesImpl", f = "EnrichmentUseCases.kt", l = {132, 133}, m = "resetAllEnrichmentStates")
    /* renamed from: e.a.c.c.f.h$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/f/h$a.class */
    public static final class C9996a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f29789d;

        /* renamed from: e */
        public int f29790e;

        /* renamed from: g */
        public Object f29792g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9996a(d dVar) {
            super(dVar);
            C9995h.this = r4;
        }

        /* renamed from: s */
        public final Object m26949s(Object obj) {
            this.f29789d = obj;
            this.f29790e |= Integer.MIN_VALUE;
            return C9995h.this.mo26957i(this);
        }
    }

    @Inject
    public C9995h(AbstractC9800d0 abstractC9800d0, AbstractC10009n abstractC10009n, AbstractC9945s abstractC9945s) {
        l.e(abstractC9800d0, "pdoDao");
        l.e(abstractC10009n, "stateUseCases");
        l.e(abstractC9945s, "enrichmentDao");
        this.f29786a = abstractC9800d0;
        this.f29787b = abstractC10009n;
        this.f29788c = abstractC9945s;
    }

    @Override // p193e.p194a.p437c.p526c.p530f.AbstractC9994g
    /* renamed from: a */
    public Object mo26965a(Date date, d<? super Integer> dVar) {
        return new Integer(this.f29786a.mo27090u(date, i.T(new String[]{"SYNTHETIC", "SYNTHETIC_SELF_TRANSFER"}), i.T(new String[]{"Offers", "OTP"})));
    }

    @Override // p193e.p194a.p437c.p526c.p530f.AbstractC9994g
    /* renamed from: b */
    public Object mo26964b(d<? super List<? extends ParsedDataObject>> dVar) {
        return this.f29786a.mo27100m();
    }

    @Override // p193e.p194a.p437c.p526c.p530f.AbstractC9994g
    /* renamed from: c */
    public Object mo26963c(List<Long> list, d<? super List<? extends ParsedDataObject>> dVar) {
        return this.f29786a.mo27144E(i.d1(list));
    }

    @Override // p193e.p194a.p437c.p526c.p530f.AbstractC9994g
    /* renamed from: d */
    public Object mo26962d(ParsedDataObject parsedDataObject, d<? super Long> dVar) {
        return new Long(this.f29786a.mo27131R(parsedDataObject));
    }

    @Override // p193e.p194a.p437c.p526c.p530f.AbstractC9994g
    /* renamed from: e */
    public Object mo26961e(Date date, int i, d<? super List<? extends ParsedDataObject>> dVar) {
        return this.f29786a.mo27102l(date, i, i.T(new String[]{"Offers", "OTP"}), i.T(new String[]{"SYNTHETIC", "SYNTHETIC_SELF_TRANSFER"}));
    }

    @Override // p193e.p194a.p437c.p526c.p530f.AbstractC9994g
    /* renamed from: f */
    public Object mo26960f(List<Long> list, d<? super s> dVar) {
        this.f29786a.mo27122a(i.d1(list), "DUPLICATE");
        return s.a;
    }

    @Override // p193e.p194a.p437c.p526c.p530f.AbstractC9994g
    /* renamed from: g */
    public Object mo26959g(List<Long> list, d<? super List<Long>> dVar) {
        return this.f29786a.mo27094q(list);
    }

    @Override // p193e.p194a.p437c.p526c.p530f.AbstractC9994g
    /* renamed from: h */
    public Object mo26958h(long j, d<? super ParsedDataObject> dVar) {
        return this.f29786a.mo27145D(j, dVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00ad  */
    @Override // p193e.p194a.p437c.p526c.p530f.AbstractC9994g
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo26957i(s1.w.d<? super s1.s> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof p193e.p194a.p437c.p526c.p530f.C9995h.C9996a
            if (r0 == 0) goto L25
            r0 = r6
            e.a.c.c.f.h$a r0 = (p193e.p194a.p437c.p526c.p530f.C9995h.C9996a) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f29790e
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L25
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f29790e = r1
            r0 = r7
            r6 = r0
            goto L2f
        L25:
            e.a.c.c.f.h$a r0 = new e.a.c.c.f.h$a
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L2f:
            r0 = r6
            java.lang.Object r0 = r0.f29789d
            r9 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r10 = r0
            r0 = r6
            int r0 = r0.f29790e
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L6f
            r0 = r8
            r1 = 1
            if (r0 == r1) goto L5f
            r0 = r8
            r1 = 2
            if (r0 != r1) goto L55
            r0 = r9
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            goto Lb0
        L55:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L5f:
            r0 = r6
            java.lang.Object r0 = r0.f29792g
            e.a.c.c.f.h r0 = (p193e.p194a.p437c.p526c.p530f.C9995h) r0
            r7 = r0
            r0 = r9
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            goto L92
        L6f:
            r0 = r9
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r5
            e.a.c.c.d.d0 r0 = r0.f29786a
            r7 = r0
            r0 = r6
            r1 = r5
            r0.f29792g = r1
            r0 = r6
            r1 = 1
            r0.f29790e = r1
            r0 = r7
            r1 = r6
            java.lang.Object r0 = r0.mo27105j0(r1)
            r1 = r10
            if (r0 != r1) goto L90
            r0 = r10
            return r0
        L90:
            r0 = r5
            r7 = r0
        L92:
            r0 = r7
            e.a.c.c.f.n r0 = r0.f29787b
            r7 = r0
            r0 = r6
            r1 = 0
            r0.f29792g = r1
            r0 = r6
            r1 = 2
            r0.f29790e = r1
            r0 = r7
            r1 = r6
            java.lang.Object r0 = r0.mo26927e(r1)
            r1 = r10
            if (r0 != r1) goto Lb0
            r0 = r10
            return r0
        Lb0:
            s1.s r0 = s1.s.a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p526c.p530f.C9995h.mo26957i(s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p437c.p526c.p530f.AbstractC9994g
    /* renamed from: j */
    public Object mo26956j(ParsedDataObject parsedDataObject, List<? extends ParsedDataObject> list, d<? super s> dVar) {
        ArrayList arrayList = new ArrayList();
        for (ParsedDataObject parsedDataObject2 : list) {
            LinkPruneMap linkPruneMap = new LinkPruneMap(0L, 0L, null, null, 15, null);
            linkPruneMap.setParentId(parsedDataObject.getMessageID());
            linkPruneMap.setChildId(parsedDataObject2.getMessageID());
            linkPruneMap.setLinkType("HARD_LINK");
            arrayList.add(linkPruneMap);
        }
        this.f29786a.mo27133P(arrayList);
        return s.a;
    }

    @Override // p193e.p194a.p437c.p526c.p530f.AbstractC9994g
    /* renamed from: k */
    public Object mo26955k(long j, long j2, d<? super Boolean> dVar) {
        return Boolean.valueOf(!this.f29786a.mo27087x(j, j2, "HARD_LINK").isEmpty());
    }

    @Override // p193e.p194a.p437c.p526c.p530f.AbstractC9994g
    /* renamed from: l */
    public Object mo26954l(Date date, int i, d<? super List<? extends ParsedDataObject>> dVar) {
        return this.f29786a.mo27095p(date, i.T(new String[]{"SYNTHETIC", "SYNTHETIC_SELF_TRANSFER"}), i, i.T(new String[]{"Offers", "OTP"}));
    }

    @Override // p193e.p194a.p437c.p526c.p530f.AbstractC9994g
    /* renamed from: m */
    public Object mo26953m(String str, d<? super List<? extends ParsedDataObject>> dVar) {
        AbstractC9800d0 abstractC9800d0 = this.f29786a;
        Locale locale = Locale.US;
        l.d(locale, "Locale.US");
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        String upperCase = str.toUpperCase(locale);
        l.d(upperCase, "(this as java.lang.String).toUpperCase(locale)");
        return abstractC9800d0.mo27098n(upperCase);
    }

    @Override // p193e.p194a.p437c.p526c.p530f.AbstractC9994g
    /* renamed from: n */
    public Object mo26952n(List<? extends ParsedDataObject> list, d<? super s> dVar) {
        this.f29786a.mo27130S(list);
        return s.a;
    }

    @Override // p193e.p194a.p437c.p526c.p530f.AbstractC9994g
    /* renamed from: o */
    public Object mo26951o(Date date, d<? super Integer> dVar) {
        return new Integer(this.f29786a.mo27091t(date, i.T(new String[]{"SYNTHETIC", "SYNTHETIC_SELF_TRANSFER"}), i.T(new String[]{"Offers", "OTP"})));
    }

    @Override // p193e.p194a.p437c.p526c.p530f.AbstractC9994g
    /* renamed from: p */
    public Object mo26950p(Set<Long> set, d<? super List<? extends ParsedDataObject>> dVar) {
        return this.f29786a.mo27143F(set);
    }
}
