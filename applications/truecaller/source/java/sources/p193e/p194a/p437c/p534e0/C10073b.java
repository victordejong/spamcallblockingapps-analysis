package p193e.p194a.p437c.p534e0;

import androidx.work.ListenableWorker;
import javax.inject.Inject;
import p193e.p194a.p1392y2.AbstractC21765k;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p538g.AbstractC10203w;
import p193e.p194a.p437c.p538g.p546y.AbstractC10227k;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.c.e0.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/e0/b.class */
public final class C10073b extends AbstractC21765k {

    /* renamed from: b */
    public final String f29961b = "InsightsSeedUpdateWorkAction";

    /* renamed from: c */
    public final AbstractC9691j f29962c;

    /* renamed from: d */
    public final AbstractC10227k f29963d;

    /* renamed from: e */
    public final AbstractC10203w f29964e;

    @e(c = "com.truecaller.insights.workers.InsightsSeedUpdateWorkAction$execute$1", f = "InsightsSeedUpdateWorkAction.kt", l = {28, 28}, m = "invokeSuspend")
    /* renamed from: e.a.c.e0.b$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/e0/b$a.class */
    public static final class C10074a extends i implements p<i0, d<? super ListenableWorker.AbstractC0414a>, Object> {

        /* renamed from: e */
        public int f29965e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10074a(d dVar) {
            super(2, dVar);
            C10073b.this = r5;
        }

        /* renamed from: i */
        public final d<s> m26712i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C10074a(dVar);
        }

        /* renamed from: k */
        public final Object m26711k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C10074a(dVar).m26710s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:24:0x007f  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m26710s(java.lang.Object r5) {
            /*
                r4 = this;
                s1.w.j.a r0 = s1.w.j.a.a
                r6 = r0
                r0 = r4
                int r0 = r0.f29965e
                r7 = r0
                r0 = r7
                if (r0 == 0) goto L2f
                r0 = r7
                r1 = 1
                if (r0 == r1) goto L28
                r0 = r7
                r1 = 2
                if (r0 != r1) goto L1e
                r0 = r5
                p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                goto L75
            L1e:
                java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
                r1 = r0
                java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
                r1.<init>(r2)
                throw r0
            L28:
                r0 = r5
                p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                goto L4f
            L2f:
                r0 = r5
                p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                r0 = r4
                e.a.c.e0.b r0 = p193e.p194a.p437c.p534e0.C10073b.this
                r5 = r0
                r0 = r4
                r1 = 1
                r0.f29965e = r1
                r0 = r5
                r1 = r4
                java.lang.Object r0 = r0.m26714d(r1)
                r8 = r0
                r0 = r8
                r5 = r0
                r0 = r8
                r1 = r6
                if (r0 != r1) goto L4f
                r0 = r6
                return r0
            L4f:
                r0 = r5
                java.lang.Boolean r0 = (java.lang.Boolean) r0
                boolean r0 = r0.booleanValue()
                if (r0 == 0) goto L8a
                r0 = r4
                e.a.c.e0.b r0 = p193e.p194a.p437c.p534e0.C10073b.this
                r5 = r0
                r0 = r4
                r1 = 2
                r0.f29965e = r1
                r0 = r5
                r1 = r4
                java.lang.Object r0 = r0.m26713e(r1)
                r8 = r0
                r0 = r8
                r5 = r0
                r0 = r8
                r1 = r6
                if (r0 != r1) goto L75
                r0 = r6
                return r0
            L75:
                r0 = r5
                java.lang.Boolean r0 = (java.lang.Boolean) r0
                boolean r0 = r0.booleanValue()
                if (r0 == 0) goto L8a
                androidx.work.ListenableWorker$a$c r0 = new androidx.work.ListenableWorker$a$c
                r1 = r0
                r1.<init>()
                r5 = r0
                goto L92
            L8a:
                androidx.work.ListenableWorker$a$a r0 = new androidx.work.ListenableWorker$a$a
                r1 = r0
                r1.<init>()
                r5 = r0
            L92:
                r0 = r5
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p534e0.C10073b.C10074a.m26710s(java.lang.Object):java.lang.Object");
        }
    }

    @e(c = "com.truecaller.insights.workers.InsightsSeedUpdateWorkAction", f = "InsightsSeedUpdateWorkAction.kt", l = {34}, m = "updateCategorizerModel")
    /* renamed from: e.a.c.e0.b$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/e0/b$b.class */
    public static final class C10075b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f29967d;

        /* renamed from: e */
        public int f29968e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10075b(d dVar) {
            super(dVar);
            C10073b.this = r4;
        }

        /* renamed from: s */
        public final Object m26709s(Object obj) {
            this.f29967d = obj;
            this.f29968e |= Integer.MIN_VALUE;
            return C10073b.this.m26714d(this);
        }
    }

    @e(c = "com.truecaller.insights.workers.InsightsSeedUpdateWorkAction", f = "InsightsSeedUpdateWorkAction.kt", l = {41}, m = "updateClassifierModel")
    /* renamed from: e.a.c.e0.b$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/e0/b$c.class */
    public static final class C10076c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f29970d;

        /* renamed from: e */
        public int f29971e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10076c(d dVar) {
            super(dVar);
            C10073b.this = r4;
        }

        /* renamed from: s */
        public final Object m26708s(Object obj) {
            this.f29970d = obj;
            this.f29971e |= Integer.MIN_VALUE;
            return C10073b.this.m26713e(this);
        }
    }

    @Inject
    public C10073b(AbstractC9691j abstractC9691j, AbstractC10227k abstractC10227k, AbstractC10203w abstractC10203w) {
        l.e(abstractC9691j, "insightsStatusProvider");
        l.e(abstractC10227k, "insightsCategorizerSeedManager");
        l.e(abstractC10203w, "updatesModelSyncFeature");
        this.f29962c = abstractC9691j;
        this.f29963d = abstractC10227k;
        this.f29964e = abstractC10203w;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: a */
    public ListenableWorker.AbstractC0414a mo9063a() {
        Object c3 = s1.a.a.a.v0.f.d.c3((f) null, new C10074a(null), 1, (Object) null);
        l.d(c3, "runBlocking {\n          …esult.failure()\n        }");
        return (ListenableWorker.AbstractC0414a) c3;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: b */
    public String mo9062b() {
        return this.f29961b;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: c */
    public boolean mo9061c() {
        return this.f29962c.mo27241s();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x008b  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m26714d(s1.w.d<? super java.lang.Boolean> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof p193e.p194a.p437c.p534e0.C10073b.C10075b
            if (r0 == 0) goto L25
            r0 = r6
            e.a.c.e0.b$b r0 = (p193e.p194a.p437c.p534e0.C10073b.C10075b) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f29968e
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L25
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f29968e = r1
            r0 = r7
            r6 = r0
            goto L2f
        L25:
            e.a.c.e0.b$b r0 = new e.a.c.e0.b$b
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L2f:
            r0 = r6
            java.lang.Object r0 = r0.f29967d
            r7 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r9 = r0
            r0 = r6
            int r0 = r0.f29968e
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L5a
            r0 = r8
            r1 = 1
            if (r0 != r1) goto L50
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r7
            r6 = r0
            goto L7d
        L50:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L5a:
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r5
            e.a.c.g.y.k r0 = r0.f29963d
            r7 = r0
            r0 = r6
            r1 = 1
            r0.f29968e = r1
            r0 = r7
            java.lang.String r1 = "on_download_worker"
            r2 = r6
            java.lang.Object r0 = r0.mo26556a(r1, r2)
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            r1 = r9
            if (r0 != r1) goto L7d
            r0 = r9
            return r0
        L7d:
            r0 = r6
            e.a.c.g.y.k$a r0 = (p193e.p194a.p437c.p538g.p546y.AbstractC10227k.AbstractC10228a) r0
            boolean r0 = r0 instanceof p193e.p194a.p437c.p538g.p546y.AbstractC10227k.AbstractC10228a.C10229a
            if (r0 == 0) goto L8b
            java.lang.Boolean r0 = java.lang.Boolean.TRUE
            return r0
        L8b:
            s1.i r0 = new s1.i
            r1 = r0
            r1.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p534e0.C10073b.m26714d(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x008e  */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m26713e(s1.w.d<? super java.lang.Boolean> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof p193e.p194a.p437c.p534e0.C10073b.C10076c
            if (r0 == 0) goto L25
            r0 = r6
            e.a.c.e0.b$c r0 = (p193e.p194a.p437c.p534e0.C10073b.C10076c) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f29971e
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L25
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f29971e = r1
            r0 = r7
            r6 = r0
            goto L2f
        L25:
            e.a.c.e0.b$c r0 = new e.a.c.e0.b$c
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L2f:
            r0 = r6
            java.lang.Object r0 = r0.f29970d
            r7 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r9 = r0
            r0 = r6
            int r0 = r0.f29971e
            r8 = r0
            r0 = 1
            r10 = r0
            r0 = r8
            if (r0 == 0) goto L5d
            r0 = r8
            r1 = 1
            if (r0 != r1) goto L53
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r7
            r6 = r0
            goto L7f
        L53:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L5d:
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r5
            e.a.c.g.w r0 = r0.f29964e
            r7 = r0
            r0 = r6
            r1 = 1
            r0.f29971e = r1
            r0 = r7
            e.a.c.g.x r0 = (p193e.p194a.p437c.p538g.C10207x) r0
            r1 = r6
            java.lang.Object r0 = r0.m26595b(r1)
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            r1 = r9
            if (r0 != r1) goto L7f
            r0 = r9
            return r0
        L7f:
            r0 = r6
            e.a.c.g.w$a r0 = (p193e.p194a.p437c.p538g.AbstractC10203w.AbstractC10204a) r0
            r6 = r0
            r0 = r6
            boolean r0 = r0 instanceof p193e.p194a.p437c.p538g.AbstractC10203w.AbstractC10204a.C10206b
            if (r0 == 0) goto L8e
            goto L98
        L8e:
            r0 = r6
            boolean r0 = r0 instanceof p193e.p194a.p437c.p538g.AbstractC10203w.AbstractC10204a.C10205a
            if (r0 == 0) goto L9e
            r0 = 0
            r10 = r0
        L98:
            r0 = r10
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            return r0
        L9e:
            s1.i r0 = new s1.i
            r1 = r0
            r1.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p534e0.C10073b.m26713e(s1.w.d):java.lang.Object");
    }
}
