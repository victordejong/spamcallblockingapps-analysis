package p193e.p194a.p437c.p552i.p560h;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import e.q.f.a.f.e;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p524b.AbstractC9686e;
import p193e.p194a.p437c.p524b.AbstractC9693l;
import p193e.p194a.p437c.p538g.AbstractC10159f;
import p193e.p194a.p437c.p538g.AbstractC10203w;
import p193e.p194a.p437c.p538g.C10207x;
import p193e.p194a.p437c.p552i.p553a.AbstractC10272b;
import p193e.p194a.p437c.p552i.p556d.AbstractC10315a;
import p193e.p194a.p437c.p552i.p561i.AbstractC10357a;
import p193e.p194a.p437c.p552i.p562j.AbstractC10361a;
import p193e.p194a.p437c.p552i.p569m.AbstractC10435f;
import p193e.p194a.p437c.p606w.p607o0.AbstractC10829i;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import q3.a.y;
import s1.a.a.a.v0.f.d;
import s1.s;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.c.i.h.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/i/h/b.class */
public final class C10348b implements AbstractC10347a, i0 {

    /* renamed from: a */
    public final y f30736a = d.n((p1) null, 1);

    /* renamed from: b */
    public final AtomicBoolean f30737b = new AtomicBoolean();

    /* renamed from: c */
    public final Context f30738c;

    /* renamed from: d */
    public final a<AbstractC9693l> f30739d;

    /* renamed from: e */
    public final a<AbstractC10435f> f30740e;

    /* renamed from: f */
    public final a<e> f30741f;

    /* renamed from: g */
    public final a<AbstractC10357a> f30742g;

    /* renamed from: h */
    public final a<AbstractC10159f> f30743h;

    /* renamed from: i */
    public final a<AbstractC10272b> f30744i;

    /* renamed from: j */
    public final a<AbstractC10315a> f30745j;

    /* renamed from: k */
    public final a<AbstractC10361a> f30746k;

    /* renamed from: l */
    public final a<AbstractC9686e> f30747l;

    /* renamed from: m */
    public final a<AbstractC10829i> f30748m;

    /* renamed from: n */
    public final AbstractC10203w f30749n;

    /* renamed from: o */
    public final f f30750o;

    @s1.w.k.a.e(c = "com.truecaller.insights.core.migrations.InsightsMigrationManagerImpl", f = "MigrationManager.kt", l = {106, 109, 111}, m = "handleAccountModelMigration")
    /* renamed from: e.a.c.i.h.b$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/h/b$a.class */
    public static final class C10349a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f30751d;

        /* renamed from: e */
        public int f30752e;

        /* renamed from: g */
        public Object f30754g;

        /* renamed from: h */
        public Object f30755h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10349a(s1.w.d dVar) {
            super(dVar);
            C10348b.this = r4;
        }

        /* renamed from: s */
        public final Object m26312s(Object obj) {
            this.f30751d = obj;
            this.f30752e |= Integer.MIN_VALUE;
            return C10348b.this.m26317b(this);
        }
    }

    @s1.w.k.a.e(c = "com.truecaller.insights.core.migrations.InsightsMigrationManagerImpl", f = "MigrationManager.kt", l = {95, 96}, m = "handleAccountNumberParityEvent")
    /* renamed from: e.a.c.i.h.b$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/h/b$b.class */
    public static final class C10350b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f30756d;

        /* renamed from: e */
        public int f30757e;

        /* renamed from: g */
        public Object f30759g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10350b(s1.w.d dVar) {
            super(dVar);
            C10348b.this = r4;
        }

        /* renamed from: s */
        public final Object m26311s(Object obj) {
            this.f30756d = obj;
            this.f30757e |= Integer.MIN_VALUE;
            return C10348b.this.m26316c(this);
        }
    }

    @s1.w.k.a.e(c = "com.truecaller.insights.core.migrations.InsightsMigrationManagerImpl", f = "MigrationManager.kt", l = {100, 102}, m = "handleEnrichmentMigration")
    /* renamed from: e.a.c.i.h.b$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/h/b$c.class */
    public static final class C10351c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f30760d;

        /* renamed from: e */
        public int f30761e;

        /* renamed from: g */
        public Object f30763g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10351c(s1.w.d dVar) {
            super(dVar);
            C10348b.this = r4;
        }

        /* renamed from: s */
        public final Object m26310s(Object obj) {
            this.f30760d = obj;
            this.f30761e |= Integer.MIN_VALUE;
            return C10348b.this.m26315d(this);
        }
    }

    @s1.w.k.a.e(c = "com.truecaller.insights.core.migrations.InsightsMigrationManagerImpl", f = "MigrationManager.kt", l = {89}, m = "handleForceResyncMigration")
    /* renamed from: e.a.c.i.h.b$d */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/h/b$d.class */
    public static final class C10352d extends c {

        /* renamed from: d */
        public /* synthetic */ Object f30764d;

        /* renamed from: e */
        public int f30765e;

        /* renamed from: g */
        public Object f30767g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10352d(s1.w.d dVar) {
            super(dVar);
            C10348b.this = r4;
        }

        /* renamed from: s */
        public final Object m26309s(Object obj) {
            this.f30764d = obj;
            this.f30765e |= Integer.MIN_VALUE;
            return C10348b.this.m26314e(this);
        }
    }

    @s1.w.k.a.e(c = "com.truecaller.insights.core.migrations.InsightsMigrationManagerImpl$setupMigration$1$1", f = "MigrationManager.kt", l = {65, 66, 67, 69}, m = "invokeSuspend")
    /* renamed from: e.a.c.i.h.b$e */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/h/b$e.class */
    public static final class C10353e extends i implements p<i0, s1.w.d<? super s>, Object> {

        /* renamed from: e */
        public int f30768e;

        /* renamed from: f */
        public final /* synthetic */ C10348b f30769f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10353e(s1.w.d dVar, C10348b c10348b) {
            super(2, dVar);
            this.f30769f = c10348b;
        }

        /* renamed from: i */
        public final s1.w.d<s> m26308i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C10353e(dVar, this.f30769f);
        }

        /* renamed from: k */
        public final Object m26307k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            return new C10353e(dVar, this.f30769f).m26306s(s.a);
        }

        /* JADX WARN: Can't wrap try/catch for region: R(13:2|(2:4|(2:6|(2:8|(2:10|(3:12|38|39)(2:13|14))(8:15|30|40|31|34|(2:36|37)|38|39))(10:16|26|(2:28|29)|30|40|31|34|(0)|38|39))(1:17))(2:18|(2:20|21))|22|(2:24|25)|26|(0)|30|40|31|34|(0)|38|39) */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x00a1, code lost:
            r5 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x00a2, code lost:
            p193e.p194a.p437c.p548h.p550l.C10263b.f30414d.m26508b(r5, null);
         */
        /* JADX WARN: Removed duplicated region for block: B:28:0x0088  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x00bd  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m26306s(java.lang.Object r5) {
            /*
                Method dump skipped, instructions count: 195
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p552i.p560h.C10348b.C10353e.m26306s(java.lang.Object):java.lang.Object");
        }
    }

    @s1.w.k.a.e(c = "com.truecaller.insights.core.migrations.InsightsMigrationManagerImpl$setupMigration$1$2", f = "MigrationManager.kt", l = {73}, m = "invokeSuspend")
    /* renamed from: e.a.c.i.h.b$f */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/h/b$f.class */
    public static final class C10354f extends i implements p<i0, s1.w.d<? super s>, Object> {

        /* renamed from: e */
        public int f30770e;

        /* renamed from: f */
        public final /* synthetic */ C10348b f30771f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10354f(s1.w.d dVar, C10348b c10348b) {
            super(2, dVar);
            this.f30771f = c10348b;
        }

        /* renamed from: i */
        public final s1.w.d<s> m26305i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C10354f(dVar, this.f30771f);
        }

        /* renamed from: k */
        public final Object m26304k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            return new C10354f(dVar, this.f30771f).m26303s(s.a);
        }

        /* renamed from: s */
        public final Object m26303s(Object obj) {
            s1.w.j.a aVar = s.a;
            s1.w.j.a aVar2 = s1.w.j.a.a;
            int i = this.f30770e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C10348b c10348b = this.f30771f;
                this.f30770e = 1;
                s1.w.j.a mo26285a = ((AbstractC10361a) c10348b.f30746k.get()).mo26285a(this);
                if (mo26285a != aVar2) {
                    mo26285a = aVar;
                }
                if (mo26285a == aVar2) {
                    return aVar2;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return aVar;
        }
    }

    @s1.w.k.a.e(c = "com.truecaller.insights.core.migrations.InsightsMigrationManagerImpl$setupMigration$1$3", f = "MigrationManager.kt", l = {77}, m = "invokeSuspend")
    /* renamed from: e.a.c.i.h.b$g */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/h/b$g.class */
    public static final class C10355g extends i implements p<i0, s1.w.d<? super s>, Object> {

        /* renamed from: e */
        public int f30772e;

        /* renamed from: f */
        public final /* synthetic */ C10348b f30773f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10355g(s1.w.d dVar, C10348b c10348b) {
            super(2, dVar);
            this.f30773f = c10348b;
        }

        /* renamed from: i */
        public final s1.w.d<s> m26302i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C10355g(dVar, this.f30773f);
        }

        /* renamed from: k */
        public final Object m26301k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            return new C10355g(dVar, this.f30773f).m26300s(s.a);
        }

        /* renamed from: s */
        public final Object m26300s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f30772e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC10203w abstractC10203w = this.f30773f.f30749n;
                this.f30772e = 1;
                if (((C10207x) abstractC10203w).m26596a(this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return s.a;
        }
    }

    @s1.w.k.a.e(c = "com.truecaller.insights.core.migrations.InsightsMigrationManagerImpl", f = "MigrationManager.kt", l = {120, 123}, m = "shouldMigrateForceResync")
    /* renamed from: e.a.c.i.h.b$h */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/h/b$h.class */
    public static final class C10356h extends c {

        /* renamed from: d */
        public /* synthetic */ Object f30774d;

        /* renamed from: e */
        public int f30775e;

        /* renamed from: g */
        public Object f30777g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10356h(s1.w.d dVar) {
            super(dVar);
            C10348b.this = r4;
        }

        /* renamed from: s */
        public final Object m26299s(Object obj) {
            this.f30774d = obj;
            this.f30775e |= Integer.MIN_VALUE;
            return C10348b.this.m26313f(this);
        }
    }

    @Inject
    public C10348b(Context context, a<AbstractC9693l> aVar, a<AbstractC10435f> aVar2, a<e> aVar3, a<AbstractC10357a> aVar4, a<AbstractC10159f> aVar5, a<AbstractC10272b> aVar6, a<AbstractC10315a> aVar7, a<AbstractC10361a> aVar8, a<AbstractC9686e> aVar9, a<AbstractC10829i> aVar10, AbstractC10203w abstractC10203w, @Named("IO") f fVar) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(aVar, "insightsVersionProvider");
        l.e(aVar2, "insightsSyncStatusManager");
        l.e(aVar3, "malanaSeed");
        l.e(aVar4, "parseManager");
        l.e(aVar5, "insightsAndroidCategorizer");
        l.e(aVar6, "accountInformationParityLogger");
        l.e(aVar7, "mInsightsEnrichmentManager");
        l.e(aVar8, "senderInfoSyncFeature");
        l.e(aVar9, "environmentHelper");
        l.e(aVar10, "updatesFilterManagerLazy");
        l.e(abstractC10203w, "updatesModelSyncFeature");
        l.e(fVar, "ioCoroutineContext");
        this.f30738c = context;
        this.f30739d = aVar;
        this.f30740e = aVar2;
        this.f30741f = aVar3;
        this.f30742g = aVar4;
        this.f30743h = aVar5;
        this.f30744i = aVar6;
        this.f30745j = aVar7;
        this.f30746k = aVar8;
        this.f30747l = aVar9;
        this.f30748m = aVar10;
        this.f30749n = abstractC10203w;
        this.f30750o = fVar;
    }

    @Override // p193e.p194a.p437c.p552i.p560h.AbstractC10347a
    /* renamed from: a */
    public void mo26318a() {
        synchronized (this) {
            if (!this.f30737b.getAndSet(true)) {
                ((AbstractC10159f) this.f30743h.get()).m26650a();
                ((e) this.f30741f.get()).m();
                ((AbstractC10357a) this.f30742g.get()).m26298a();
                ((AbstractC10829i) this.f30748m.get()).mo26481a();
                d.w2(this, (f) null, (j0) null, new C10353e(null, this), 3, (Object) null);
                d.w2(this, (f) null, (j0) null, new C10354f(null, this), 3, (Object) null);
                d.w2(this, (f) null, (j0) null, new C10355g(null, this), 3, (Object) null);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x011d  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m26317b(s1.w.d<? super s1.s> r6) {
        /*
            Method dump skipped, instructions count: 333
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p552i.p560h.C10348b.m26317b(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00ab  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m26316c(s1.w.d<? super s1.s> r6) {
        /*
            Method dump skipped, instructions count: 213
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p552i.p560h.C10348b.m26316c(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00af  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m26315d(s1.w.d<? super s1.s> r6) {
        /*
            Method dump skipped, instructions count: 233
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p552i.p560h.C10348b.m26315d(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0089  */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m26314e(s1.w.d<? super s1.s> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof p193e.p194a.p437c.p552i.p560h.C10348b.C10352d
            if (r0 == 0) goto L25
            r0 = r6
            e.a.c.i.h.b$d r0 = (p193e.p194a.p437c.p552i.p560h.C10348b.C10352d) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f30765e
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L25
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f30765e = r1
            r0 = r7
            r6 = r0
            goto L2f
        L25:
            e.a.c.i.h.b$d r0 = new e.a.c.i.h.b$d
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L2f:
            r0 = r6
            java.lang.Object r0 = r0.f30764d
            r7 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r9 = r0
            r0 = r6
            int r0 = r0.f30765e
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L60
            r0 = r8
            r1 = 1
            if (r0 != r1) goto L56
            r0 = r6
            java.lang.Object r0 = r0.f30767g
            e.a.c.i.h.b r0 = (p193e.p194a.p437c.p552i.p560h.C10348b) r0
            r6 = r0
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            goto L7f
        L56:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L60:
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r6
            r1 = r5
            r0.f30767g = r1
            r0 = r6
            r1 = 1
            r0.f30765e = r1
            r0 = r5
            r1 = r6
            java.lang.Object r0 = r0.m26313f(r1)
            r7 = r0
            r0 = r7
            r1 = r9
            if (r0 != r1) goto L7d
            r0 = r9
            return r0
        L7d:
            r0 = r5
            r6 = r0
        L7f:
            r0 = r7
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L9a
            r0 = r6
            o3.a<e.a.c.i.m.f> r0 = r0.f30740e
            java.lang.Object r0 = r0.get()
            e.a.c.i.m.f r0 = (p193e.p194a.p437c.p552i.p569m.AbstractC10435f) r0
            r0.mo26149a()
        L9a:
            s1.s r0 = s1.s.a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p552i.p560h.C10348b.m26314e(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x006f  */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m26313f(s1.w.d<? super java.lang.Boolean> r6) {
        /*
            Method dump skipped, instructions count: 256
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p552i.p560h.C10348b.m26313f(s1.w.d):java.lang.Object");
    }

    public f getCoroutineContext() {
        return this.f30750o.plus(this.f30736a);
    }
}
