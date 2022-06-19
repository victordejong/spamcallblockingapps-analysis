package p193e.p194a.p837h0;

import com.truecaller.insights.commons.model.InsightsFilterType;
import java.util.LinkedHashMap;
import java.util.Map;
import javax.inject.Inject;
import o3.a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p291a3.AbstractC7419a;
import p193e.p194a.p437c.p531c0.AbstractC10028o;
import p193e.p194a.p437c.p548h.AbstractC10255e;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.h0.o */
/* loaded from: classes9-dex2jar.jar:e/a/h0/o.class */
public final class C14842o implements AbstractC10255e {

    /* renamed from: a */
    public final Map<String, InsightsFilterType> f42424a = new LinkedHashMap();

    /* renamed from: b */
    public final a<AbstractC7419a> f42425b;

    /* renamed from: c */
    public final a<AbstractC10028o> f42426c;

    /* renamed from: d */
    public final a<C20592g> f42427d;

    @e(c = "com.truecaller.filters.InsightsFilterFetcherImpl", f = "InsightsFilterFetcherImpl.kt", l = {24}, m = "getFilterType")
    /* renamed from: e.a.h0.o$a */
    /* loaded from: classes9-dex2jar.jar:e/a/h0/o$a.class */
    public static final class C14843a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f42428d;

        /* renamed from: e */
        public int f42429e;

        /* renamed from: g */
        public Object f42431g;

        /* renamed from: h */
        public Object f42432h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14843a(d dVar) {
            super(dVar);
            C14842o.this = r4;
        }

        /* renamed from: s */
        public final Object m19538s(Object obj) {
            this.f42428d = obj;
            this.f42429e |= Integer.MIN_VALUE;
            return C14842o.this.mo19539c(null, this);
        }
    }

    @e(c = "com.truecaller.filters.InsightsFilterFetcherImpl", f = "InsightsFilterFetcherImpl.kt", l = {33}, m = "getSearchFilterMatch")
    /* renamed from: e.a.h0.o$b */
    /* loaded from: classes9-dex2jar.jar:e/a/h0/o$b.class */
    public static final class C14844b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f42433d;

        /* renamed from: e */
        public int f42434e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14844b(d dVar) {
            super(dVar);
            C14842o.this = r4;
        }

        /* renamed from: s */
        public final Object m19537s(Object obj) {
            this.f42433d = obj;
            this.f42434e |= Integer.MIN_VALUE;
            return C14842o.this.mo19541a(null, this);
        }
    }

    @Inject
    public C14842o(a<AbstractC7419a> aVar, a<AbstractC10028o> aVar2, a<C20592g> aVar3) {
        l.e(aVar, "blockManager");
        l.e(aVar2, "insightConfig");
        l.e(aVar3, "featuresRegistry");
        this.f42425b = aVar;
        this.f42426c = aVar2;
        this.f42427d = aVar3;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0060  */
    @Override // p193e.p194a.p437c.p548h.AbstractC10255e
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo19541a(java.lang.String r9, s1.w.d<? super java.lang.String> r10) {
        /*
            r8 = this;
            r0 = r10
            boolean r0 = r0 instanceof p193e.p194a.p837h0.C14842o.C14844b
            if (r0 == 0) goto L28
            r0 = r10
            e.a.h0.o$b r0 = (p193e.p194a.p837h0.C14842o.C14844b) r0
            r11 = r0
            r0 = r11
            int r0 = r0.f42434e
            r12 = r0
            r0 = r12
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L28
            r0 = r11
            r1 = r12
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f42434e = r1
            r0 = r11
            r10 = r0
            goto L32
        L28:
            e.a.h0.o$b r0 = new e.a.h0.o$b
            r1 = r0
            r2 = r8
            r3 = r10
            r1.<init>(r3)
            r10 = r0
        L32:
            r0 = r10
            java.lang.Object r0 = r0.f42433d
            r11 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r13 = r0
            r0 = r10
            int r0 = r0.f42434e
            r12 = r0
            r0 = r12
            if (r0 == 0) goto L60
            r0 = r12
            r1 = 1
            if (r0 != r1) goto L56
            r0 = r11
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r11
            r9 = r0
            goto L8d
        L56:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L60:
            r0 = r11
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r8
            o3.a<e.a.a3.a> r0 = r0.f42425b
            java.lang.Object r0 = r0.get()
            e.a.a3.a r0 = (p193e.p194a.p291a3.AbstractC7419a) r0
            r11 = r0
            r0 = r10
            r1 = 1
            r0.f42434e = r1
            r0 = r11
            r1 = r9
            r2 = 0
            r3 = 0
            r4 = r10
            r5 = 6
            r6 = 0
            java.lang.Object r0 = p193e.p194a.p1066n.C18334g0.m15195x(r0, r1, r2, r3, r4, r5, r6)
            r10 = r0
            r0 = r10
            r9 = r0
            r0 = r10
            r1 = r13
            if (r0 != r1) goto L8d
            r0 = r13
            return r0
        L8d:
            r0 = r9
            com.truecaller.blocking.FilterMatch r0 = (com.truecaller.blocking.FilterMatch) r0
            java.lang.String r0 = r0.toString()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p837h0.C14842o.mo19541a(java.lang.String, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p437c.p548h.AbstractC10255e
    /* renamed from: b */
    public void mo19540b() {
        this.f42424a.clear();
        ((AbstractC10028o) this.f42426c.get()).mo26843g(true);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00ff  */
    @Override // p193e.p194a.p437c.p548h.AbstractC10255e
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo19539c(java.lang.String r9, s1.w.d<? super com.truecaller.insights.commons.model.InsightsFilterType> r10) {
        /*
            Method dump skipped, instructions count: 294
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p837h0.C14842o.mo19539c(java.lang.String, s1.w.d):java.lang.Object");
    }
}
