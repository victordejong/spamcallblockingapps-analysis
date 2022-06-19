package p193e.p194a.p437c.p523a0;

import com.truecaller.insights.models.InsightsDomain;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p526c.p528d.AbstractC9846g;
import p193e.p194a.p437c.p580r.p589j.C10582b;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.c.a0.f */
/* loaded from: classes10-dex2jar.jar:e/a/c/a0/f.class */
public final class C9626f implements AbstractC9625e {

    /* renamed from: a */
    public final AbstractC9846g f29085a;

    @e(c = "com.truecaller.insights.source.ActionDataSourceImpl", f = "ActionDataSource.kt", l = {37}, m = "getActionDataForMessages")
    /* renamed from: e.a.c.a0.f$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a0/f$a.class */
    public static final class C9627a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f29086d;

        /* renamed from: e */
        public int f29087e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9627a(d dVar) {
            super(dVar);
            C9626f.this = r4;
        }

        /* renamed from: s */
        public final Object m27373s(Object obj) {
            this.f29086d = obj;
            this.f29087e |= Integer.MIN_VALUE;
            return C9626f.this.m27375b(null, this);
        }
    }

    @e(c = "com.truecaller.insights.source.ActionDataSourceImpl", f = "ActionDataSource.kt", l = {34}, m = "getActionDataForMsgId")
    /* renamed from: e.a.c.a0.f$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a0/f$b.class */
    public static final class C9628b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f29089d;

        /* renamed from: e */
        public int f29090e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9628b(d dVar) {
            super(dVar);
            C9626f.this = r4;
        }

        /* renamed from: s */
        public final Object m27372s(Object obj) {
            this.f29089d = obj;
            this.f29090e |= Integer.MIN_VALUE;
            return C9626f.this.m27374c(0L, null, this);
        }
    }

    @Inject
    public C9626f(AbstractC9846g abstractC9846g) {
        l.e(abstractC9846g, "actionStateDao");
        this.f29085a = abstractC9846g;
    }

    /* renamed from: a */
    public Map<InsightsDomain, C10582b> m27376a(List<? extends InsightsDomain> list) {
        l.e(list, "models");
        int m3942Y1 = C25225a.m3942Y1(C25225a.m4004J(list, 10));
        int i = m3942Y1;
        if (m3942Y1 < 16) {
            i = 16;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(i);
        for (Object obj : list) {
            linkedHashMap.put(obj, ((InsightsDomain) obj).getActionState());
        }
        return linkedHashMap;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00a5 A[LOOP:0: B:20:0x009c->B:22:0x00a5, LOOP_END] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m27375b(java.util.List<java.lang.Long> r6, s1.w.d<? super java.util.List<p193e.p194a.p437c.p580r.p589j.C10582b>> r7) {
        /*
            r5 = this;
            r0 = r7
            boolean r0 = r0 instanceof p193e.p194a.p437c.p523a0.C9626f.C9627a
            if (r0 == 0) goto L28
            r0 = r7
            e.a.c.a0.f$a r0 = (p193e.p194a.p437c.p523a0.C9626f.C9627a) r0
            r8 = r0
            r0 = r8
            int r0 = r0.f29087e
            r9 = r0
            r0 = r9
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L28
            r0 = r8
            r1 = r9
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f29087e = r1
            r0 = r8
            r7 = r0
            goto L32
        L28:
            e.a.c.a0.f$a r0 = new e.a.c.a0.f$a
            r1 = r0
            r2 = r5
            r3 = r7
            r1.<init>(r3)
            r7 = r0
        L32:
            r0 = r7
            java.lang.Object r0 = r0.f29086d
            r8 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r10 = r0
            r0 = r7
            int r0 = r0.f29087e
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L60
            r0 = r9
            r1 = 1
            if (r0 != r1) goto L56
            r0 = r8
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r8
            r6 = r0
            goto L82
        L56:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L60:
            r0 = r8
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r5
            e.a.c.c.d.g r0 = r0.f29085a
            r8 = r0
            r0 = r7
            r1 = 1
            r0.f29087e = r1
            r0 = r8
            r1 = r6
            r2 = r7
            java.lang.Object r0 = r0.mo27068e(r1, r2)
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            r1 = r10
            if (r0 != r1) goto L82
            r0 = r10
            return r0
        L82:
            r0 = r6
            java.lang.Iterable r0 = (java.lang.Iterable) r0
            r7 = r0
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r2 = r7
            r3 = 10
            int r2 = p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m4004J(r2, r3)
            r1.<init>(r2)
            r6 = r0
            r0 = r7
            java.util.Iterator r0 = r0.iterator()
            r7 = r0
        L9c:
            r0 = r7
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto Lb9
            r0 = r6
            r1 = r7
            java.lang.Object r1 = r1.next()
            com.truecaller.insights.models.smartcards.ActionStateEntity r1 = (com.truecaller.insights.models.smartcards.ActionStateEntity) r1
            e.a.c.r.j.b r1 = p193e.p194a.p437c.p578p.C10480a.m26044M2(r1)
            boolean r0 = r0.add(r1)
            goto L9c
        Lb9:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p523a0.C9626f.m27375b(java.util.List, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00af  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m27374c(long r7, com.truecaller.insights.models.DomainOrigin r9, s1.w.d<? super p193e.p194a.p437c.p580r.p589j.C10582b> r10) {
        /*
            r6 = this;
            r0 = r10
            boolean r0 = r0 instanceof p193e.p194a.p437c.p523a0.C9626f.C9628b
            if (r0 == 0) goto L2f
            r0 = r10
            e.a.c.a0.f$b r0 = (p193e.p194a.p437c.p523a0.C9626f.C9628b) r0
            r11 = r0
            r0 = r11
            int r0 = r0.f29090e
            r12 = r0
            r0 = r12
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L2f
            r0 = r11
            r1 = r12
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f29090e = r1
            r0 = r11
            r10 = r0
            goto L3b
        L2f:
            e.a.c.a0.f$b r0 = new e.a.c.a0.f$b
            r1 = r0
            r2 = r6
            r3 = r10
            r1.<init>(r3)
            r10 = r0
        L3b:
            r0 = r10
            java.lang.Object r0 = r0.f29089d
            r11 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r13 = r0
            r0 = r10
            int r0 = r0.f29090e
            r12 = r0
            r0 = r12
            if (r0 == 0) goto L6e
            r0 = r12
            r1 = 1
            if (r0 != r1) goto L64
            r0 = r11
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r11
            r9 = r0
            goto L9e
        L64:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L6e:
            r0 = r11
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r6
            e.a.c.c.d.g r0 = r0.f29085a
            r11 = r0
            r0 = r9
            java.lang.String r0 = r0.toString()
            r9 = r0
            r0 = r10
            r1 = 1
            r0.f29090e = r1
            r0 = r11
            r1 = r7
            r2 = r9
            r3 = r10
            java.lang.Object r0 = r0.mo27072a(r1, r2, r3)
            r10 = r0
            r0 = r10
            r9 = r0
            r0 = r10
            r1 = r13
            if (r0 != r1) goto L9e
            r0 = r13
            return r0
        L9e:
            r0 = r9
            com.truecaller.insights.models.smartcards.ActionStateEntity r0 = (com.truecaller.insights.models.smartcards.ActionStateEntity) r0
            r9 = r0
            r0 = r9
            if (r0 == 0) goto Laf
            r0 = r9
            e.a.c.r.j.b r0 = p193e.p194a.p437c.p578p.C10480a.m26044M2(r0)
            r9 = r0
            goto Lb1
        Laf:
            r0 = 0
            r9 = r0
        Lb1:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p523a0.C9626f.m27374c(long, com.truecaller.insights.models.DomainOrigin, s1.w.d):java.lang.Object");
    }
}
