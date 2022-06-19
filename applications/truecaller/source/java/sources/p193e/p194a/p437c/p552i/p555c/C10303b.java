package p193e.p194a.p437c.p552i.p555c;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.insights.models.pdo.ParsedDataObject;
import com.truecaller.insights.models.pdo.PdoBinderType;
import com.truecaller.log.UnmutedException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Named;
import kotlinx.coroutines.CoroutineExceptionHandler;
import o3.a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p524b.AbstractC9693l;
import p193e.p194a.p437c.p525b0.C9709a;
import p193e.p194a.p437c.p526c.AbstractC9786c;
import p193e.p194a.p437c.p526c.p528d.AbstractC9800d0;
import p193e.p194a.p437c.p526c.p528d.AbstractC9868h0;
import p193e.p194a.p437c.p531c0.C10031q;
import p193e.p194a.p437c.p533e.AbstractC10060c;
import p193e.p194a.p437c.p548h.p550l.C10263b;
import p193e.p194a.p437c.p552i.p556d.AbstractC10315a;
import p193e.p194a.p437c.p577o.C10478a;
import p193e.p194a.p437c.p580r.p587h.AbstractC10542b;
import p193e.p194a.p437c.p580r.p587h.AbstractC10563i;
import p193e.p194a.p437c.p597u.C10705c;
import p193e.p194a.p437c.p606w.p607o0.AbstractC10821g;
import q3.a.i0;
import q3.a.j0;
import q3.a.n0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.c.i.c.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/i/c/b.class */
public final class C10303b implements AbstractC10302a {

    /* renamed from: a */
    public final AbstractC9800d0 f30548a;

    /* renamed from: b */
    public final AbstractC9868h0 f30549b;

    /* renamed from: c */
    public final AbstractC19462a f30550c;

    /* renamed from: d */
    public final AbstractC10542b f30551d;

    /* renamed from: e */
    public final a<AbstractC10315a> f30552e;

    /* renamed from: f */
    public final C9709a f30553f;

    /* renamed from: g */
    public final AbstractC10821g f30554g;

    /* renamed from: h */
    public final AbstractC10060c f30555h;

    /* renamed from: i */
    public final AbstractC9691j f30556i;

    /* renamed from: j */
    public final AbstractC9693l f30557j;

    /* renamed from: k */
    public final C10705c f30558k;

    /* renamed from: l */
    public final f f30559l;

    @e(c = "com.truecaller.insights.core.database.DatabaseManagerImpl", f = "DatabaseManager.kt", l = {70}, m = "createPdoDataPointsWithBackUp")
    /* renamed from: e.a.c.i.c.b$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/c/b$a.class */
    public static final class C10304a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f30560d;

        /* renamed from: e */
        public int f30561e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10304a(d dVar) {
            super(dVar);
            C10303b.this = r4;
        }

        /* renamed from: s */
        public final Object m26402s(Object obj) {
            this.f30560d = obj;
            this.f30561e |= Integer.MIN_VALUE;
            return C10303b.this.mo26409a(null, this);
        }
    }

    @e(c = "com.truecaller.insights.core.database.DatabaseManagerImpl$createPdoDataPointsWithBackUp$2", f = "DatabaseManager.kt", l = {90, 91}, m = "invokeSuspend")
    /* renamed from: e.a.c.i.c.b$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/c/b$b.class */
    public static final class C10305b extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f30563e;

        /* renamed from: f */
        public Object f30564f;

        /* renamed from: g */
        public int f30565g;

        /* renamed from: i */
        public final /* synthetic */ List f30567i;

        @e(c = "com.truecaller.insights.core.database.DatabaseManagerImpl$createPdoDataPointsWithBackUp$2$1", f = "DatabaseManager.kt", l = {87}, m = "invokeSuspend")
        /* renamed from: e.a.c.i.c.b$b$a */
        /* loaded from: classes10-dex2jar.jar:e/a/c/i/c/b$b$a.class */
        public static final class C10306a extends i implements p<i0, d<? super s>, Object> {

            /* renamed from: e */
            public int f30568e;

            /* renamed from: g */
            public final /* synthetic */ List f30570g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C10306a(List list, d dVar) {
                super(2, dVar);
                C10305b.this = r5;
                this.f30570g = list;
            }

            /* renamed from: i */
            public final d<s> m26398i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C10306a(this.f30570g, dVar);
            }

            /* renamed from: k */
            public final Object m26397k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                return new C10306a(this.f30570g, dVar).m26396s(s.a);
            }

            /* renamed from: s */
            public final Object m26396s(Object obj) {
                s1.w.j.a aVar = s1.w.j.a.a;
                int i = this.f30568e;
                if (i == 0) {
                    C25225a.m3932a3(obj);
                    C10303b c10303b = C10303b.this;
                    List<? extends ParsedDataObject> list = this.f30570g;
                    this.f30568e = 1;
                    if (c10303b.m26406d(list, 0, this) == aVar) {
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

        @e(c = "com.truecaller.insights.core.database.DatabaseManagerImpl$createPdoDataPointsWithBackUp$2$2", f = "DatabaseManager.kt", l = {88}, m = "invokeSuspend")
        /* renamed from: e.a.c.i.c.b$b$b */
        /* loaded from: classes10-dex2jar.jar:e/a/c/i/c/b$b$b.class */
        public static final class C10307b extends i implements p<i0, d<? super s>, Object> {

            /* renamed from: e */
            public int f30571e;

            /* renamed from: g */
            public final /* synthetic */ Map f30573g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C10307b(Map map, d dVar) {
                super(2, dVar);
                C10305b.this = r5;
                this.f30573g = map;
            }

            /* renamed from: i */
            public final d<s> m26395i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C10307b(this.f30573g, dVar);
            }

            /* renamed from: k */
            public final Object m26394k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                return new C10307b(this.f30573g, dVar).m26393s(s.a);
            }

            /* renamed from: s */
            public final Object m26393s(Object obj) {
                s1.w.j.a aVar = s1.w.j.a.a;
                int i = this.f30571e;
                if (i == 0) {
                    C25225a.m3932a3(obj);
                    C10305b c10305b = C10305b.this;
                    C10303b c10303b = C10303b.this;
                    List<AbstractC9786c.C9787a> list = c10305b.f30567i;
                    Map<Long, ? extends ParsedDataObject> map = this.f30573g;
                    this.f30571e = 1;
                    if (c10303b.m26407c(list, map, 0, this) == aVar) {
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

        @e(c = "com.truecaller.insights.core.database.DatabaseManagerImpl$createPdoDataPointsWithBackUp$2$3", f = "DatabaseManager.kt", l = {89}, m = "invokeSuspend")
        /* renamed from: e.a.c.i.c.b$b$c */
        /* loaded from: classes10-dex2jar.jar:e/a/c/i/c/b$b$c.class */
        public static final class C10308c extends i implements p<i0, d<? super s>, Object> {

            /* renamed from: e */
            public int f30574e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C10308c(d dVar) {
                super(2, dVar);
                C10305b.this = r5;
            }

            /* renamed from: i */
            public final d<s> m26392i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C10308c(dVar);
            }

            /* renamed from: k */
            public final Object m26391k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                return new C10308c(dVar).m26390s(s.a);
            }

            /* renamed from: s */
            public final Object m26390s(Object obj) {
                s1.w.j.a aVar = s1.w.j.a.a;
                int i = this.f30574e;
                if (i == 0) {
                    C25225a.m3932a3(obj);
                    C10305b c10305b = C10305b.this;
                    C10303b c10303b = C10303b.this;
                    List<AbstractC9786c.C9787a> list = c10305b.f30567i;
                    this.f30574e = 1;
                    if (c10303b.m26405e(list, this) == aVar) {
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

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10305b(List list, d dVar) {
            super(2, dVar);
            C10303b.this = r5;
            this.f30567i = list;
        }

        /* renamed from: i */
        public final d<s> m26401i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C10305b c10305b = new C10305b(this.f30567i, dVar);
            c10305b.f30563e = obj;
            return c10305b;
        }

        /* renamed from: k */
        public final Object m26400k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C10305b c10305b = new C10305b(this.f30567i, dVar);
            c10305b.f30563e = obj;
            return c10305b.m26399s(s.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v145, types: [java.util.List] */
        /* renamed from: s */
        public final Object m26399s(Object obj) {
            Iterator it;
            ArrayList arrayList;
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f30565g;
            try {
            } catch (Exception e) {
                CoroutineExceptionHandler coroutineExceptionHandler = C10478a.f31165a;
                C10263b.f30414d.m26508b(new UnmutedException.InsightsExceptions(UnmutedException.InsightsExceptions.Cause.BINDER_EXCEPTION), "Error while binding");
            }
            if (i == 0) {
                C25225a.m3932a3(obj);
                i0 i0Var = (i0) this.f30563e;
                PdoBinderType binder = C10303b.this.f30551d.getBinder();
                if (!(binder instanceof PdoBinderType.PdoBinder)) {
                    if (binder instanceof PdoBinderType.C4068a) {
                        CoroutineExceptionHandler coroutineExceptionHandler2 = C10478a.f31165a;
                        C10263b.f30414d.m26508b(new UnmutedException.InsightsExceptions(UnmutedException.InsightsExceptions.Cause.BINDER_EXCEPTION), "Empty insights binder");
                    }
                    return s.a;
                }
                List list = this.f30567i;
                ArrayList arrayList2 = new ArrayList();
                for (Object obj2 : list) {
                    if (Boolean.valueOf(((AbstractC9786c.C9787a) obj2).f29424a.f31479d instanceof AbstractC10563i.C10565b).booleanValue()) {
                        arrayList2.add(obj2);
                    }
                }
                C10303b.m26408b(C10303b.this, arrayList2);
                ArrayList arrayList3 = new ArrayList();
                Iterator it2 = arrayList2.iterator();
                while (true) {
                    boolean z = false;
                    if (!it2.hasNext()) {
                        break;
                    }
                    Object next = it2.next();
                    AbstractC9786c.C9787a c9787a = (AbstractC9786c.C9787a) next;
                    if (C10303b.this.f30556i.mo27234z() || !C10031q.m26801c(c9787a.f29424a.f31478c) || C17891a1.C17902k.m15695A0(c9787a.f29424a.f31476a)) {
                        z = true;
                    }
                    if (Boolean.valueOf(z).booleanValue()) {
                        arrayList3.add(next);
                    }
                }
                arrayList = new ArrayList(C25225a.m4004J(arrayList3, 10));
                Iterator it3 = arrayList3.iterator();
                while (it3.hasNext()) {
                    arrayList.add(C10303b.this.f30551d.mo25789d(((AbstractC9786c.C9787a) it3.next()).f29424a));
                }
                int m3942Y1 = C25225a.m3942Y1(C25225a.m4004J(arrayList, 10));
                int i2 = m3942Y1;
                if (m3942Y1 < 16) {
                    i2 = 16;
                }
                LinkedHashMap linkedHashMap = new LinkedHashMap(i2);
                Iterator it4 = arrayList.iterator();
                while (it4.hasNext()) {
                    Object next2 = it4.next();
                    linkedHashMap.put(new Long(((ParsedDataObject) next2).getMessageID()), next2);
                }
                it = s1.u.i.T(new n0[]{s1.a.a.a.v0.f.d.H(i0Var, (f) null, (j0) null, new C10306a(arrayList, null), 3, (Object) null), s1.a.a.a.v0.f.d.H(i0Var, (f) null, (j0) null, new C10307b(linkedHashMap, null), 3, (Object) null), s1.a.a.a.v0.f.d.H(i0Var, (f) null, (j0) null, new C10308c(null), 3, (Object) null)}).iterator();
            } else if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                C25225a.m3932a3(obj);
                return s.a;
            } else {
                it = (Iterator) this.f30564f;
                ?? r0 = (List) this.f30563e;
                C25225a.m3932a3(obj);
                arrayList = r0;
            }
            do {
                if (!it.hasNext()) {
                    C10705c c10705c = C10303b.this.f30558k;
                    this.f30563e = null;
                    this.f30564f = null;
                    this.f30565g = 2;
                    if (c10705c.m25710c(arrayList, this) == aVar) {
                        return aVar;
                    }
                    return s.a;
                }
                this.f30563e = arrayList;
                this.f30564f = it;
                this.f30565g = 1;
            } while (((n0) it.next()).s(this) != aVar);
            return aVar;
        }
    }

    @e(c = "com.truecaller.insights.core.database.DatabaseManagerImpl", f = "DatabaseManager.kt", l = {117, 121, 122, 139, 140}, m = "insertBackupMessages")
    /* renamed from: e.a.c.i.c.b$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/c/b$c.class */
    public static final class C10309c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f30576d;

        /* renamed from: e */
        public int f30577e;

        /* renamed from: g */
        public Object f30579g;

        /* renamed from: h */
        public Object f30580h;

        /* renamed from: i */
        public Object f30581i;

        /* renamed from: j */
        public Object f30582j;

        /* renamed from: k */
        public Object f30583k;

        /* renamed from: l */
        public Object f30584l;

        /* renamed from: m */
        public Object f30585m;

        /* renamed from: n */
        public Object f30586n;

        /* renamed from: o */
        public Object f30587o;

        /* renamed from: p */
        public Object f30588p;

        /* renamed from: q */
        public int f30589q;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10309c(d dVar) {
            super(dVar);
            C10303b.this = r4;
        }

        /* renamed from: s */
        public final Object m26389s(Object obj) {
            this.f30576d = obj;
            this.f30577e |= Integer.MIN_VALUE;
            return C10303b.this.m26407c(null, null, 0, this);
        }
    }

    @e(c = "com.truecaller.insights.core.database.DatabaseManagerImpl", f = "DatabaseManager.kt", l = {174, 178, 179}, m = "insertPdosAndConversationMap")
    /* renamed from: e.a.c.i.c.b$d */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/c/b$d.class */
    public static final class C10310d extends c {

        /* renamed from: d */
        public /* synthetic */ Object f30590d;

        /* renamed from: e */
        public int f30591e;

        /* renamed from: g */
        public Object f30593g;

        /* renamed from: h */
        public Object f30594h;

        /* renamed from: i */
        public int f30595i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10310d(d dVar) {
            super(dVar);
            C10303b.this = r4;
        }

        /* renamed from: s */
        public final Object m26388s(Object obj) {
            this.f30590d = obj;
            this.f30591e |= Integer.MIN_VALUE;
            return C10303b.this.m26406d(null, 0, this);
        }
    }

    @e(c = "com.truecaller.insights.core.database.DatabaseManagerImpl", f = "DatabaseManager.kt", l = {193}, m = "insertSenderResolution")
    /* renamed from: e.a.c.i.c.b$e */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/c/b$e.class */
    public static final class C10311e extends c {

        /* renamed from: d */
        public /* synthetic */ Object f30596d;

        /* renamed from: e */
        public int f30597e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10311e(d dVar) {
            super(dVar);
            C10303b.this = r4;
        }

        /* renamed from: s */
        public final Object m26387s(Object obj) {
            this.f30596d = obj;
            this.f30597e |= Integer.MIN_VALUE;
            return C10303b.this.m26405e(null, this);
        }
    }

    @e(c = "com.truecaller.insights.core.database.DatabaseManagerImpl", f = "DatabaseManager.kt", l = {147}, m = "shouldProcessUpdateTag")
    /* renamed from: e.a.c.i.c.b$f */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/c/b$f.class */
    public static final class C10312f extends c {

        /* renamed from: d */
        public /* synthetic */ Object f30599d;

        /* renamed from: e */
        public int f30600e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10312f(d dVar) {
            super(dVar);
            C10303b.this = r4;
        }

        /* renamed from: s */
        public final Object m26386s(Object obj) {
            this.f30599d = obj;
            this.f30600e |= Integer.MIN_VALUE;
            return C10303b.this.m26403g(0, null, this);
        }
    }

    @Inject
    public C10303b(AbstractC9800d0 abstractC9800d0, AbstractC9868h0 abstractC9868h0, AbstractC19462a abstractC19462a, AbstractC10542b abstractC10542b, a<AbstractC10315a> aVar, C9709a c9709a, AbstractC10821g abstractC10821g, AbstractC10060c abstractC10060c, AbstractC9691j abstractC9691j, AbstractC9693l abstractC9693l, C10705c c10705c, @Named("IO") f fVar) {
        l.e(abstractC9800d0, "pdoDao");
        l.e(abstractC9868h0, "senderResolutionDao");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC10542b, "insightsBinder");
        l.e(aVar, "enrichmentManager");
        l.e(c9709a, "updateProcessor");
        l.e(abstractC10821g, "smartSmsFeatureFilter");
        l.e(abstractC10060c, "insightsAnalyticsManager");
        l.e(abstractC9691j, "insightsStatusProvider");
        l.e(abstractC9693l, "insightsVersionProvider");
        l.e(c10705c, "reconcileLinkUsecase");
        l.e(fVar, "coroutineContext");
        this.f30548a = abstractC9800d0;
        this.f30549b = abstractC9868h0;
        this.f30550c = abstractC19462a;
        this.f30551d = abstractC10542b;
        this.f30552e = aVar;
        this.f30553f = c9709a;
        this.f30554g = abstractC10821g;
        this.f30555h = abstractC10060c;
        this.f30556i = abstractC9691j;
        this.f30557j = abstractC9693l;
        this.f30558k = c10705c;
        this.f30559l = fVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0060, code lost:
        if ((!s1.z.c.l.a(((p193e.p194a.p437c.p580r.p587h.AbstractC10563i.C10565b) r0).f31492a.f70638b, "GRM_VOID")) != false) goto L10;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m26408b(p193e.p194a.p437c.p552i.p555c.C10303b r17, java.util.List r18) {
        /*
            Method dump skipped, instructions count: 338
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p552i.p555c.C10303b.m26408b(e.a.c.i.c.b, java.util.List):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0060  */
    @Override // p193e.p194a.p437c.p552i.p555c.AbstractC10302a
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo26409a(java.util.List<p193e.p194a.p437c.p526c.AbstractC9786c.C9787a> r7, s1.w.d<? super s1.s> r8) {
        /*
            r6 = this;
            r0 = r8
            boolean r0 = r0 instanceof p193e.p194a.p437c.p552i.p555c.C10303b.C10304a
            if (r0 == 0) goto L28
            r0 = r8
            e.a.c.i.c.b$a r0 = (p193e.p194a.p437c.p552i.p555c.C10303b.C10304a) r0
            r9 = r0
            r0 = r9
            int r0 = r0.f30561e
            r10 = r0
            r0 = r10
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L28
            r0 = r9
            r1 = r10
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f30561e = r1
            r0 = r9
            r8 = r0
            goto L32
        L28:
            e.a.c.i.c.b$a r0 = new e.a.c.i.c.b$a
            r1 = r0
            r2 = r6
            r3 = r8
            r1.<init>(r3)
            r8 = r0
        L32:
            r0 = r8
            java.lang.Object r0 = r0.f30560d
            r11 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r9 = r0
            r0 = r8
            int r0 = r0.f30561e
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L60
            r0 = r10
            r1 = 1
            if (r0 != r1) goto L55
            r0 = r11
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            goto L88
        L55:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L60:
            r0 = r11
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r6
            s1.w.f r0 = r0.f30559l
            r11 = r0
            e.a.c.i.c.b$b r0 = new e.a.c.i.c.b$b
            r1 = r0
            r2 = r6
            r3 = r7
            r4 = 0
            r1.<init>(r3, r4)
            r7 = r0
            r0 = r8
            r1 = 1
            r0.f30561e = r1
            r0 = r11
            r1 = r7
            r2 = r8
            java.lang.Object r0 = s1.a.a.a.v0.f.d.a4(r0, r1, r2)
            r1 = r9
            if (r0 != r1) goto L88
            r0 = r9
            return r0
        L88:
            s1.s r0 = s1.s.a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p552i.p555c.C10303b.mo26409a(java.util.List, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(18:2|(2:4|(16:6|8|(5:10|(2:12|(2:14|(2:16|(2:18|(3:20|186|187)(2:21|22))(5:23|181|(2:183|184)|186|187))(21:24|224|25|26|220|144|145|206|150|(1:152)(1:153)|154|(1:156)(1:157)|158|159|216|160|161|57|58|59|(44:61|62|63|64|65|66|67|68|69|70|71|72|73|(8:75|76|77|78|79|80|81|82)(1:83)|84|85|86|87|88|89|90|91|92|93|94|95|96|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|(2:114|115)(4:116|212|117|(16:119|120|208|121|122|(1:131)(2:124|(5:214|126|127|228|128)(1:130))|132|133|134|135|200|136|137|138|139|(2:141|142)(18:143|220|144|145|206|150|(0)(0)|154|(0)(0)|158|159|216|160|161|57|58|59|(6:166|167|168|169|186|187)(0)))(15:149|206|150|(0)(0)|154|(0)(0)|158|159|216|160|161|57|58|59|(0)(0))))(0)))(7:27|210|28|29|212|117|(0)(0)))(4:30|226|31|32)|35|172|(8:174|(1:176)|177|(2:179|180)|181|(0)|186|187)(3:185|186|187))(14:36|202|37|38|204|39|40|230|41|42|222|43|44|(2:46|47)(1:48))|49|218|50|51|52|53|54|55|56|57|58|59|(0)(0)))|7|8|(0)(0)|49|218|50|51|52|53|54|55|56|57|58|59|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:196:0x0939, code lost:
        r11 = r19;
        r12 = r17;
        r9 = r16;
        r8 = r20;
        r10 = r13;
        r14 = r15;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x05cc A[Catch: SQLiteDatabaseLockedException -> 0x07ff, TryCatch #6 {SQLiteDatabaseLockedException -> 0x07ff, blocks: (B:117:0x05c1, B:119:0x05cc), top: B:212:0x05c1 }] */
    /* JADX WARN: Removed duplicated region for block: B:149:0x06ea  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0734 A[Catch: SQLiteDatabaseLockedException -> 0x07e6, TRY_ENTER, TRY_LEAVE, TryCatch #3 {SQLiteDatabaseLockedException -> 0x07e6, blocks: (B:150:0x0725, B:152:0x0734, B:154:0x0754, B:156:0x0763, B:158:0x0783), top: B:206:0x0725 }] */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0751  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0763 A[Catch: SQLiteDatabaseLockedException -> 0x07e6, TRY_ENTER, TRY_LEAVE, TryCatch #3 {SQLiteDatabaseLockedException -> 0x07e6, blocks: (B:150:0x0725, B:152:0x0734, B:154:0x0754, B:156:0x0763, B:158:0x0783), top: B:206:0x0725 }] */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0780  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0810  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x085f  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x08fb  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x08fe  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x01eb  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x02cf  */
    /* JADX WARN: Type inference failed for: r0v160, types: [long] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:143:0x068b -> B:220:0x068f). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:149:0x06ea -> B:206:0x0725). Please submit an issue!!! */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m26407c(java.util.List<p193e.p194a.p437c.p526c.AbstractC9786c.C9787a> r8, java.util.Map<java.lang.Long, ? extends com.truecaller.insights.models.pdo.ParsedDataObject> r9, int r10, s1.w.d<? super s1.s> r11) {
        /*
            Method dump skipped, instructions count: 2400
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p552i.p555c.C10303b.m26407c(java.util.List, java.util.Map, int, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0184  */
    /* JADX WARN: Type inference failed for: r0v24 */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m26406d(java.util.List<? extends com.truecaller.insights.models.pdo.ParsedDataObject> r6, int r7, s1.w.d<? super s1.s> r8) {
        /*
            Method dump skipped, instructions count: 414
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p552i.p555c.C10303b.m26406d(java.util.List, int, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(8:2|(2:4|(6:6|8|30|(2:10|(1:12)(2:13|14))(7:15|16|(3:20|17|18)|31|21|22|(2:24|25))|28|29))|7|8|30|(0)(0)|28|29) */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00d9, code lost:
        p193e.p194a.p437c.p548h.p550l.C10263b.f30414d.m26508b(new com.truecaller.log.UnmutedException.InsightsExceptions(com.truecaller.log.UnmutedException.InsightsExceptions.Cause.INSIGHTS_DB_ERROR), null);
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0060  */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m26405e(java.util.List<p193e.p194a.p437c.p526c.AbstractC9786c.C9787a> r10, s1.w.d<? super s1.s> r11) {
        /*
            Method dump skipped, instructions count: 238
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p552i.p555c.C10303b.m26405e(java.util.List, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0016, code lost:
        if (r17 != null) goto L9;
     */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m26404f(p193e.p194a.p1050l5.p1051a.C17457b2.C17459b r11, p193e.p194a.p437c.p525b0.C9712c r12, java.lang.Integer r13, float r14, int r15) {
        /*
            Method dump skipped, instructions count: 221
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p552i.p555c.C10303b.m26404f(e.a.l5.a.b2$b, e.a.c.b0.c, java.lang.Integer, float, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00a8  */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m26403g(int r8, com.truecaller.insights.models.pdo.ExtendedPdo r9, s1.w.d<? super java.lang.Boolean> r10) {
        /*
            r7 = this;
            r0 = r10
            boolean r0 = r0 instanceof p193e.p194a.p437c.p552i.p555c.C10303b.C10312f
            if (r0 == 0) goto L2c
            r0 = r10
            e.a.c.i.c.b$f r0 = (p193e.p194a.p437c.p552i.p555c.C10303b.C10312f) r0
            r11 = r0
            r0 = r11
            int r0 = r0.f30600e
            r12 = r0
            r0 = r12
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L2c
            r0 = r11
            r1 = r12
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f30600e = r1
            r0 = r11
            r10 = r0
            goto L36
        L2c:
            e.a.c.i.c.b$f r0 = new e.a.c.i.c.b$f
            r1 = r0
            r2 = r7
            r3 = r10
            r1.<init>(r3)
            r10 = r0
        L36:
            r0 = r10
            java.lang.Object r0 = r0.f30599d
            r11 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r13 = r0
            r0 = r10
            int r0 = r0.f30600e
            r12 = r0
            r0 = 1
            r14 = r0
            r0 = r12
            if (r0 == 0) goto L6b
            r0 = r12
            r1 = 1
            if (r0 != r1) goto L60
            r0 = r11
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r11
            r9 = r0
            goto L9e
        L60:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L6b:
            r0 = r11
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r8
            r1 = 2
            if (r0 != r1) goto Laf
            r0 = r14
            r15 = r0
            r0 = r9
            if (r0 == 0) goto Lb2
            r0 = r7
            e.a.c.w.o0.g r0 = r0.f30554g
            r11 = r0
            r0 = r10
            r1 = 1
            r0.f30600e = r1
            r0 = r11
            r1 = r9
            r2 = 0
            r3 = r10
            r4 = 2
            r5 = 0
            java.lang.Object r0 = p193e.p194a.p437c.p578p.C10480a.m26075F(r0, r1, r2, r3, r4, r5)
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
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 != 0) goto Laf
            r0 = r14
            r15 = r0
            goto Lb2
        Laf:
            r0 = 0
            r15 = r0
        Lb2:
            r0 = r15
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p552i.p555c.C10303b.m26403g(int, com.truecaller.insights.models.pdo.ExtendedPdo, s1.w.d):java.lang.Object");
    }
}
