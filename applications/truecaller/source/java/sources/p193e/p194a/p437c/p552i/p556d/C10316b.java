package p193e.p194a.p437c.p552i.p556d;

import com.mopub.mobileads.resource.DrawableConstants;
import com.truecaller.insights.models.states.InsightState;
import com.truecaller.insights.workers.InsightsOneOffEnrichmentWorker;
import io.agora.rtc.Constants;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import javax.inject.Inject;
import javax.inject.Named;
import p1727n3.p1834m0.C26825d;
import p1727n3.p1834m0.EnumC26832h;
import p1727n3.p1834m0.EnumC26841q;
import p1727n3.p1834m0.p1835c0.C26702l;
import p193e.p1681q.p1682a.p1683a.C25172a;
import p193e.p1681q.p1682a.p1685b.C25176a;
import p193e.p1681q.p1690c.p1691a.C25193b;
import p193e.p1681q.p1698e.p1700c.C25220a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1392y2.C21762h;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p437c.p524b.AbstractC9686e;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p526c.p530f.AbstractC10009n;
import p193e.p194a.p437c.p526c.p530f.AbstractC9994g;
import p193e.p194a.p437c.p526c.p530f.C9984b;
import p193e.p194a.p437c.p531c0.AbstractC10028o;
import p193e.p194a.p437c.p552i.p554b.C10279d;
import p193e.p194a.p437c.p580r.p587h.AbstractC10542b;
import p193e.p194a.p437c.p606w.p607o0.AbstractC10821g;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.d0;
import s1.z.c.l;
/* renamed from: e.a.c.i.d.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/i/d/b.class */
public final class C10316b implements AbstractC10315a {

    /* renamed from: a */
    public final int f30603a;

    /* renamed from: b */
    public final AbstractC9994g f30604b;

    /* renamed from: c */
    public final C9984b f30605c;

    /* renamed from: d */
    public final AbstractC10009n f30606d;

    /* renamed from: e */
    public final AbstractC10542b f30607e;

    /* renamed from: f */
    public final C25172a f30608f;

    /* renamed from: g */
    public final AbstractC10028o f30609g;

    /* renamed from: h */
    public final AbstractC9691j f30610h;

    /* renamed from: i */
    public final C10279d f30611i;

    /* renamed from: j */
    public final AbstractC10821g f30612j;

    /* renamed from: k */
    public final f f30613k;

    @e(c = "com.truecaller.insights.core.enrichment.InsightsEnrichmentManagerImpl", f = "InsightsEnrichmentManager.kt", l = {242, 243}, m = "applySenderFilterOnAccModel")
    /* renamed from: e.a.c.i.d.b$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/d/b$a.class */
    public static final class C10317a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f30614d;

        /* renamed from: e */
        public int f30615e;

        /* renamed from: g */
        public Object f30617g;

        /* renamed from: h */
        public Object f30618h;

        /* renamed from: i */
        public Object f30619i;

        /* renamed from: j */
        public Object f30620j;

        /* renamed from: k */
        public Object f30621k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10317a(d dVar) {
            super(dVar);
            C10316b.this = r4;
        }

        /* renamed from: s */
        public final Object m26373s(Object obj) {
            this.f30614d = obj;
            this.f30615e |= Integer.MIN_VALUE;
            return C10316b.this.mo26377h(this);
        }
    }

    @e(c = "com.truecaller.insights.core.enrichment.InsightsEnrichmentManagerImpl$areThereNewEntriesToEnrich$1", f = "InsightsEnrichmentManager.kt", l = {217, 217}, m = "invokeSuspend")
    /* renamed from: e.a.c.i.d.b$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/d/b$b.class */
    public static final class C10318b extends i implements p<i0, d<? super Boolean>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f30622e;

        /* renamed from: f */
        public int f30623f;

        /* renamed from: g */
        public int f30624g;

        @e(c = "com.truecaller.insights.core.enrichment.InsightsEnrichmentManagerImpl$areThereNewEntriesToEnrich$1$linkCount$1", f = "InsightsEnrichmentManager.kt", l = {215, 215}, m = "invokeSuspend")
        /* renamed from: e.a.c.i.d.b$b$a */
        /* loaded from: classes10-dex2jar.jar:e/a/c/i/d/b$b$a.class */
        public static final class C10319a extends i implements p<i0, d<? super Integer>, Object> {

            /* renamed from: e */
            public Object f30626e;

            /* renamed from: f */
            public int f30627f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C10319a(d dVar) {
                super(2, dVar);
                C10318b.this = r5;
            }

            /* renamed from: i */
            public final d<s> m26369i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C10319a(dVar);
            }

            /* renamed from: k */
            public final Object m26368k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                return new C10319a(dVar).m26367s(s.a);
            }

            /* renamed from: s */
            public final Object m26367s(Object obj) {
                AbstractC9994g abstractC9994g;
                a aVar = a.a;
                int i = this.f30627f;
                if (i == 0) {
                    C25225a.m3932a3(obj);
                    C10316b c10316b = C10316b.this;
                    abstractC9994g = c10316b.f30604b;
                    AbstractC10009n abstractC10009n = c10316b.f30606d;
                    this.f30626e = abstractC9994g;
                    this.f30627f = 1;
                    Object mo26915q = abstractC10009n.mo26915q("INSIGHTS.LINKING", this);
                    obj = mo26915q;
                    if (mo26915q == aVar) {
                        return aVar;
                    }
                } else if (i != 1) {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    C25225a.m3932a3(obj);
                    return obj;
                } else {
                    abstractC9994g = (AbstractC9994g) this.f30626e;
                    C25225a.m3932a3(obj);
                }
                Date lastUpdatedAt = ((InsightState) obj).getLastUpdatedAt();
                this.f30626e = null;
                this.f30627f = 2;
                Object mo26951o = abstractC9994g.mo26951o(lastUpdatedAt, this);
                obj = mo26951o;
                if (mo26951o == aVar) {
                    return aVar;
                }
                return obj;
            }
        }

        @e(c = "com.truecaller.insights.core.enrichment.InsightsEnrichmentManagerImpl$areThereNewEntriesToEnrich$1$pruneCount$1", f = "InsightsEnrichmentManager.kt", l = {211, 211}, m = "invokeSuspend")
        /* renamed from: e.a.c.i.d.b$b$b */
        /* loaded from: classes10-dex2jar.jar:e/a/c/i/d/b$b$b.class */
        public static final class C10320b extends i implements p<i0, d<? super Integer>, Object> {

            /* renamed from: e */
            public Object f30629e;

            /* renamed from: f */
            public int f30630f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C10320b(d dVar) {
                super(2, dVar);
                C10318b.this = r5;
            }

            /* renamed from: i */
            public final d<s> m26366i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C10320b(dVar);
            }

            /* renamed from: k */
            public final Object m26365k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                return new C10320b(dVar).m26364s(s.a);
            }

            /* renamed from: s */
            public final Object m26364s(Object obj) {
                AbstractC9994g abstractC9994g;
                a aVar = a.a;
                int i = this.f30630f;
                if (i == 0) {
                    C25225a.m3932a3(obj);
                    C10316b c10316b = C10316b.this;
                    abstractC9994g = c10316b.f30604b;
                    AbstractC10009n abstractC10009n = c10316b.f30606d;
                    this.f30629e = abstractC9994g;
                    this.f30630f = 1;
                    Object mo26915q = abstractC10009n.mo26915q("INSIGHTS.PRUNING", this);
                    obj = mo26915q;
                    if (mo26915q == aVar) {
                        return aVar;
                    }
                } else if (i != 1) {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    C25225a.m3932a3(obj);
                    return obj;
                } else {
                    abstractC9994g = (AbstractC9994g) this.f30629e;
                    C25225a.m3932a3(obj);
                }
                Date lastUpdatedAt = ((InsightState) obj).getLastUpdatedAt();
                this.f30629e = null;
                this.f30630f = 2;
                Object mo26965a = abstractC9994g.mo26965a(lastUpdatedAt, this);
                obj = mo26965a;
                if (mo26965a == aVar) {
                    return aVar;
                }
                return obj;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10318b(d dVar) {
            super(2, dVar);
            C10316b.this = r5;
        }

        /* renamed from: i */
        public final d<s> m26372i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C10318b c10318b = new C10318b(dVar);
            c10318b.f30622e = obj;
            return c10318b;
        }

        /* renamed from: k */
        public final Object m26371k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C10318b c10318b = new C10318b(dVar);
            c10318b.f30622e = obj;
            return c10318b.m26370s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x00ce  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m26370s(java.lang.Object r9) {
            /*
                Method dump skipped, instructions count: 215
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p552i.p556d.C10316b.C10318b.m26370s(java.lang.Object):java.lang.Object");
        }
    }

    @e(c = "com.truecaller.insights.core.enrichment.InsightsEnrichmentManagerImpl", f = "InsightsEnrichmentManager.kt", l = {177}, m = "createAccountModelDataPoints")
    /* renamed from: e.a.c.i.d.b$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/d/b$c.class */
    public static final class C10321c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f30632d;

        /* renamed from: e */
        public int f30633e;

        /* renamed from: g */
        public Object f30635g;

        /* renamed from: h */
        public Object f30636h;

        /* renamed from: i */
        public Object f30637i;

        /* renamed from: j */
        public Object f30638j;

        /* renamed from: k */
        public Object f30639k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10321c(d dVar) {
            super(dVar);
            C10316b.this = r4;
        }

        /* renamed from: s */
        public final Object m26363s(Object obj) {
            this.f30632d = obj;
            this.f30633e |= Integer.MIN_VALUE;
            return C10316b.this.mo26380e(null, this);
        }
    }

    @e(c = "com.truecaller.insights.core.enrichment.InsightsEnrichmentManagerImpl", f = "InsightsEnrichmentManager.kt", l = {251, 252}, m = "hasValidSemicardOrInfoCard")
    /* renamed from: e.a.c.i.d.b$d */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/d/b$d.class */
    public static final class C10322d extends c {

        /* renamed from: d */
        public /* synthetic */ Object f30640d;

        /* renamed from: e */
        public int f30641e;

        /* renamed from: g */
        public Object f30643g;

        /* renamed from: h */
        public Object f30644h;

        /* renamed from: i */
        public Object f30645i;

        /* renamed from: j */
        public Object f30646j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10322d(d dVar) {
            super(dVar);
            C10316b.this = r4;
        }

        /* renamed from: s */
        public final Object m26362s(Object obj) {
            this.f30640d = obj;
            this.f30641e |= Integer.MIN_VALUE;
            return C10316b.this.m26376i(null, this);
        }
    }

    @e(c = "com.truecaller.insights.core.enrichment.InsightsEnrichmentManagerImpl", f = "InsightsEnrichmentManager.kt", l = {128, Constants.ERR_ENCRYPTED_STREAM_NOT_ALLOWED_PUBLISHED, 137, 141}, m = "linkAllUnLinkedRecords")
    /* renamed from: e.a.c.i.d.b$e */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/d/b$e.class */
    public static final class C10323e extends c {

        /* renamed from: d */
        public /* synthetic */ Object f30647d;

        /* renamed from: e */
        public int f30648e;

        /* renamed from: g */
        public Object f30650g;

        /* renamed from: h */
        public Object f30651h;

        /* renamed from: i */
        public Object f30652i;

        /* renamed from: j */
        public Object f30653j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10323e(d dVar) {
            super(dVar);
            C10316b.this = r4;
        }

        /* renamed from: s */
        public final Object m26361s(Object obj) {
            this.f30647d = obj;
            this.f30648e |= Integer.MIN_VALUE;
            return C10316b.this.m26375j(this);
        }
    }

    @e(c = "com.truecaller.insights.core.enrichment.InsightsEnrichmentManagerImpl$linkAndPrune$1", f = "InsightsEnrichmentManager.kt", l = {106, 107}, m = "invokeSuspend")
    /* renamed from: e.a.c.i.d.b$f */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/d/b$f.class */
    public static final class C10324f extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f30654e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10324f(d dVar) {
            super(2, dVar);
            C10316b.this = r5;
        }

        /* renamed from: i */
        public final d<s> m26360i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C10324f(dVar);
        }

        /* renamed from: k */
        public final Object m26359k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C10324f(dVar).m26358s(s.a);
        }

        /* renamed from: s */
        public final Object m26358s(Object obj) {
            a aVar = a.a;
            int i = this.f30654e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C10316b c10316b = C10316b.this;
                this.f30654e = 1;
                if (c10316b.m26374k(this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                C25225a.m3932a3(obj);
                return s.a;
            } else {
                C25225a.m3932a3(obj);
            }
            C10316b c10316b2 = C10316b.this;
            this.f30654e = 2;
            if (c10316b2.m26375j(this) == aVar) {
                return aVar;
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.insights.core.enrichment.InsightsEnrichmentManagerImpl", f = "InsightsEnrichmentManager.kt", l = {231, 231, 232}, m = "prefillAccountModelsForRecordsWithoutAccountNumber")
    /* renamed from: e.a.c.i.d.b$g */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/d/b$g.class */
    public static final class C10325g extends c {

        /* renamed from: d */
        public /* synthetic */ Object f30656d;

        /* renamed from: e */
        public int f30657e;

        /* renamed from: g */
        public Object f30659g;

        /* renamed from: h */
        public Object f30660h;

        /* renamed from: i */
        public Object f30661i;

        /* renamed from: j */
        public Object f30662j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10325g(d dVar) {
            super(dVar);
            C10316b.this = r4;
        }

        /* renamed from: s */
        public final Object m26357s(Object obj) {
            this.f30656d = obj;
            this.f30657e |= Integer.MIN_VALUE;
            return C10316b.this.mo26384a(this);
        }
    }

    @e(c = "com.truecaller.insights.core.enrichment.InsightsEnrichmentManagerImpl", f = "InsightsEnrichmentManager.kt", l = {148, DrawableConstants.CtaButton.WIDTH_DIPS, 158, 161}, m = "pruneAllUnPrunedRecords")
    /* renamed from: e.a.c.i.d.b$h */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/d/b$h.class */
    public static final class C10326h extends c {

        /* renamed from: d */
        public /* synthetic */ Object f30663d;

        /* renamed from: e */
        public int f30664e;

        /* renamed from: g */
        public Object f30666g;

        /* renamed from: h */
        public Object f30667h;

        /* renamed from: i */
        public Object f30668i;

        /* renamed from: j */
        public Object f30669j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10326h(d dVar) {
            super(dVar);
            C10316b.this = r4;
        }

        /* renamed from: s */
        public final Object m26356s(Object obj) {
            this.f30663d = obj;
            this.f30664e |= Integer.MIN_VALUE;
            return C10316b.this.m26374k(this);
        }
    }

    @e(c = "com.truecaller.insights.core.enrichment.InsightsEnrichmentManagerImpl", f = "InsightsEnrichmentManager.kt", l = {222}, m = "runEnrichmentFromStart")
    /* renamed from: e.a.c.i.d.b$i */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/d/b$i.class */
    public static final class C10327i extends c {

        /* renamed from: d */
        public /* synthetic */ Object f30670d;

        /* renamed from: e */
        public int f30671e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10327i(d dVar) {
            super(dVar);
            C10316b.this = r4;
        }

        /* renamed from: s */
        public final Object m26355s(Object obj) {
            this.f30670d = obj;
            this.f30671e |= Integer.MIN_VALUE;
            return C10316b.this.mo26378g(null, 0, this);
        }
    }

    @Inject
    public C10316b(AbstractC9994g abstractC9994g, C9984b c9984b, AbstractC10009n abstractC10009n, AbstractC10542b abstractC10542b, C25172a c25172a, AbstractC10028o abstractC10028o, AbstractC9691j abstractC9691j, AbstractC9686e abstractC9686e, C10279d c10279d, AbstractC10821g abstractC10821g, @Named("IO") f fVar) {
        l.e(abstractC9994g, "enrichmentUseCases");
        l.e(c9984b, "accountModelUseCases");
        l.e(abstractC10009n, "stateUseCases");
        l.e(abstractC10542b, "insightsBinder");
        l.e(c25172a, "accountsManager");
        l.e(abstractC10028o, "insightConfig");
        l.e(abstractC9691j, "insightsStatusProvider");
        l.e(abstractC9686e, "environmentHelper");
        l.e(c10279d, "linkPruneSeed");
        l.e(abstractC10821g, "smartSmsFeatureFilter");
        l.e(fVar, "coroutineContext");
        this.f30604b = abstractC9994g;
        this.f30605c = c9984b;
        this.f30606d = abstractC10009n;
        this.f30607e = abstractC10542b;
        this.f30608f = c25172a;
        this.f30609g = abstractC10028o;
        this.f30610h = abstractC9691j;
        this.f30611i = c10279d;
        this.f30612j = abstractC10821g;
        this.f30613k = fVar;
        int ordinal = abstractC9686e.mo27311b().ordinal();
        this.f30603a = ordinal != 0 ? ordinal != 1 ? 200 : 100 : 40;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:2|(2:4|(8:6|8|55|(2:10|(2:12|(2:14|(3:16|53|54)(2:17|18))(9:19|20|21|41|(1:43)|44|45|33|(3:35|36|(2:38|39)(7:40|41|(0)|44|45|33|(5:46|47|(2:49|50)|53|54)(0)))(0)))(2:22|23))(4:24|25|26|(2:28|29)(1:30))|31|32|33|(0)(0)))|7|8|55|(0)(0)|31|32|33|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x01a4, code lost:
        r8 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x01a5, code lost:
        r8.getMessage();
        p193e.p194a.p437c.p548h.p550l.C10263b.f30414d.m26508b(r8, null);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00f5 A[Catch: Exception -> 0x01a4, TRY_LEAVE, TryCatch #0 {Exception -> 0x01a4, blocks: (B:16:0x0052, B:20:0x0084, B:23:0x009a, B:25:0x00a7, B:31:0x00cb, B:33:0x00eb, B:35:0x00f5, B:41:0x014b, B:43:0x015c, B:46:0x0170), top: B:55:0x0040 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x015c A[Catch: Exception -> 0x01a4, TryCatch #0 {Exception -> 0x01a4, blocks: (B:16:0x0052, B:20:0x0084, B:23:0x009a, B:25:0x00a7, B:31:0x00cb, B:33:0x00eb, B:35:0x00f5, B:41:0x014b, B:43:0x015c, B:46:0x0170), top: B:55:0x0040 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0170 A[Catch: Exception -> 0x01a4, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x01a4, blocks: (B:16:0x0052, B:20:0x0084, B:23:0x009a, B:25:0x00a7, B:31:0x00cb, B:33:0x00eb, B:35:0x00f5, B:41:0x014b, B:43:0x015c, B:46:0x0170), top: B:55:0x0040 }] */
    /* JADX WARN: Type inference failed for: r0v84, types: [java.util.Collection] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x0143 -> B:41:0x014b). Please submit an issue!!! */
    @Override // p193e.p194a.p437c.p552i.p556d.AbstractC10315a
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo26384a(s1.w.d<? super s1.s> r8) {
        /*
            Method dump skipped, instructions count: 438
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p552i.p556d.C10316b.mo26384a(s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p437c.p552i.p556d.AbstractC10315a
    /* renamed from: b */
    public void mo26383b() {
        e.q.a.d.c cVar;
        Iterator it;
        Set<e.q.a.d.c> set;
        if (this.f30610h.mo27284K()) {
            C25172a c25172a = this.f30608f;
            List<e.q.a.d.c> mo4134c = c25172a.f70427b.mo4134c();
            HashMap hashMap = new HashMap();
            for (e.q.a.d.c cVar2 : mo4134c) {
                String e = cVar2.e();
                if (!hashMap.containsKey(e)) {
                    hashMap.put(cVar2.e(), new ArrayList());
                }
                ((List) hashMap.get(e)).add(cVar2);
            }
            Iterator it2 = hashMap.entrySet().iterator();
            while (it2.hasNext()) {
                List<e.q.a.d.c> list = (List) ((Map.Entry) it2.next()).getValue();
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                for (e.q.a.d.c cVar3 : list) {
                    if (cVar3.c().contains("X") || cVar3.c().contains("x")) {
                        arrayList2.add(cVar3);
                    } else {
                        arrayList.add(cVar3);
                    }
                }
                ArrayList arrayList3 = new ArrayList();
                Iterator it3 = arrayList2.iterator();
                while (it3.hasNext()) {
                    e.q.a.d.c cVar4 = (e.q.a.d.c) it3.next();
                    char[] charArray = cVar4.c().toCharArray();
                    ArrayList arrayList4 = new ArrayList(arrayList);
                    int i = 0;
                    Iterator it4 = it2;
                    for (char c : charArray) {
                        Iterator it5 = arrayList.iterator();
                        while (it5.hasNext()) {
                            e.q.a.d.c cVar5 = (e.q.a.d.c) it5.next();
                            if (charArray.length == cVar5.c().length() && c != cVar5.c().charAt(i) && c != 'X' && c != 'x') {
                                arrayList4.remove(cVar5);
                            }
                        }
                        i++;
                    }
                    arrayList3.add(new C25176a(cVar4, arrayList4));
                    it2 = it4;
                }
                Iterator it6 = arrayList3.iterator();
                while (it6.hasNext()) {
                    C25176a c25176a = (C25176a) it6.next();
                    String c2 = c25176a.f70430a.c();
                    Set<e.q.a.d.c> set2 = c25176a.f70431b;
                    Iterator it7 = arrayList3.iterator();
                    Iterator it8 = it6;
                    while (true) {
                        it6 = it8;
                        if (it7.hasNext()) {
                            C25176a c25176a2 = (C25176a) it7.next();
                            String c3 = c25176a2.f70430a.c();
                            Set<e.q.a.d.c> set3 = c25176a2.f70431b;
                            if (c3.equals(c2) || c25176a2.f70432c || c25176a2.f70434e.contains(c2) || c25176a.f70434e.contains(c3)) {
                                Set<e.q.a.d.c> set4 = set2;
                                it = it7;
                                set = set4;
                            } else {
                                if (e.q.a.c.c.b(c2, c3, true) == 0) {
                                    ArrayList arrayList5 = new ArrayList();
                                    ArrayList arrayList6 = new ArrayList();
                                    Iterator<e.q.a.d.c> it9 = set2.iterator();
                                    while (it9.hasNext()) {
                                        e.q.a.d.c next = it9.next();
                                        Iterator<e.q.a.d.c> it10 = set3.iterator();
                                        Iterator<e.q.a.d.c> it11 = it9;
                                        Iterator it12 = it7;
                                        Iterator it13 = it8;
                                        while (true) {
                                            it8 = it13;
                                            it7 = it12;
                                            it9 = it11;
                                            if (it10.hasNext()) {
                                                e.q.a.d.c next2 = it10.next();
                                                if (e.q.a.c.c.b(next.c(), next2.d(), true) != 0) {
                                                    arrayList5.add(next2);
                                                } else {
                                                    arrayList6.add(next2);
                                                }
                                            }
                                        }
                                    }
                                    Iterator it14 = it7;
                                    if (arrayList5.size() == 0) {
                                        c25176a.f70431b.addAll(c25176a2.f70431b);
                                        c25176a2.f70432c = true;
                                    } else {
                                        c25176a.f70431b.addAll(arrayList6);
                                        c25176a2.f70431b.removeAll(arrayList6);
                                    }
                                    set = set2;
                                    it = it14;
                                } else {
                                    Iterator it15 = it8;
                                    Iterator it16 = it7;
                                    ArrayList arrayList7 = new ArrayList();
                                    for (e.q.a.d.c cVar6 : set2) {
                                        for (e.q.a.d.c cVar7 : set3) {
                                            if (e.q.a.c.c.b(cVar6.c(), cVar7.c(), true) != 0) {
                                                arrayList7.add(cVar7);
                                            }
                                        }
                                    }
                                    Set<e.q.a.d.c> set5 = set2;
                                    set = set5;
                                    it8 = it15;
                                    it = it16;
                                    if (arrayList7.size() == 0) {
                                        c25176a2.f70432c = true;
                                        c25176a.f70433d.add(c25176a2);
                                        it = it16;
                                        it8 = it15;
                                        set = set5;
                                    }
                                }
                                c25176a2.f70434e.add(c2);
                            }
                            Iterator it17 = it;
                            set2 = set;
                            it7 = it17;
                        }
                    }
                }
                ArrayList arrayList8 = new ArrayList();
                Iterator it18 = arrayList3.iterator();
                while (it18.hasNext()) {
                    C25176a c25176a3 = (C25176a) it18.next();
                    for (C25176a c25176a4 : c25176a3.f70433d) {
                        Objects.requireNonNull(c25176a4);
                        c25176a3.f70431b.add(c25176a4.f70430a);
                    }
                    if (!c25176a3.f70432c) {
                        arrayList8.add(c25176a3);
                    }
                }
                ArrayList arrayList9 = new ArrayList();
                Iterator it19 = arrayList8.iterator();
                while (it19.hasNext()) {
                    C25176a c25176a5 = (C25176a) it19.next();
                    if (c25176a5.f70431b.size() > 0) {
                        Iterator<e.q.a.d.c> it20 = c25176a5.f70431b.iterator();
                        while (true) {
                            if (!it20.hasNext()) {
                                cVar = null;
                                break;
                            }
                            cVar = it20.next();
                            String c4 = cVar.c();
                            if (!c4.contains("X") && !c4.contains("x")) {
                                break;
                            }
                        }
                        if (cVar != null) {
                            C25176a c25176a6 = new C25176a(cVar, c25176a5.f70431b);
                            c25176a6.f70431b.add(c25176a5.f70430a);
                            c25176a6.f70431b.remove(cVar);
                            arrayList9.add(c25176a6);
                        }
                    }
                }
                Iterator it21 = arrayList9.iterator();
                while (it21.hasNext()) {
                    C25176a c25176a7 = (C25176a) it21.next();
                    e.q.a.d.c cVar8 = c25176a7.f70430a;
                    for (e.q.a.d.c cVar9 : c25176a7.f70431b) {
                        try {
                            c25172a.m4138a(cVar9, cVar8);
                        } catch (C25193b e2) {
                            e2.printStackTrace();
                        }
                    }
                }
            }
        }
    }

    @Override // p193e.p194a.p437c.p552i.p556d.AbstractC10315a
    /* renamed from: c */
    public void mo26382c() {
        C26702l m1431n = C26702l.m1431n(AbstractApplicationC8442a.m28551L());
        l.d(m1431n, "WorkManager.getInstance(…icationBase.getAppBase())");
        EnumC26832h enumC26832h = EnumC26832h.KEEP;
        C21762h c21762h = new C21762h(d0.a(InsightsOneOffEnrichmentWorker.class), w3.b.a.i.c(6L));
        c21762h.m9108f(EnumC26841q.NOT_REQUIRED);
        C26825d.C26826a c26826a = c21762h.f60602c;
        c26826a.f75069d = true;
        c26826a.f75067b = true;
        m1431n.m1287a("InsightsEnrichmentWorkerOneOff", enumC26832h, c21762h.m9113a()).mo1290a();
    }

    @Override // p193e.p194a.p437c.p552i.p556d.AbstractC10315a
    /* renamed from: d */
    public void mo26381d() {
        C10279d c10279d = this.f30611i;
        C25220a.f70510a = c10279d.m26485a();
        C25220a.f70511b = c10279d.m26484b();
        C25220a.f70512c = null;
        C25220a.f70513d = true;
        s1.a.a.a.v0.f.d.b3(this.f30613k, new C10324f(null));
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x01f7  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x014b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0129 -> B:27:0x0140). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x01d5 -> B:36:0x01e2). Please submit an issue!!! */
    @Override // p193e.p194a.p437c.p552i.p556d.AbstractC10315a
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo26380e(java.util.List<? extends com.truecaller.insights.models.pdo.ParsedDataObject> r8, s1.w.d<? super java.util.List<? extends com.truecaller.insights.models.pdo.ParsedDataObject>> r9) {
        /*
            Method dump skipped, instructions count: 508
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p552i.p556d.C10316b.mo26380e(java.util.List, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p437c.p552i.p556d.AbstractC10315a
    /* renamed from: f */
    public boolean mo26379f() {
        return ((Boolean) s1.a.a.a.v0.f.d.b3(this.f30613k, new C10318b(null))).booleanValue();
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:2|(2:4|(7:6|8|25|(2:10|(1:12)(2:13|14))(3:15|16|(2:18|19))|20|23|24))|7|8|25|(0)(0)|20|23|24) */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x010a, code lost:
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x010b, code lost:
        r6.getLocalizedMessage();
        p193e.p194a.p437c.p548h.p550l.C10263b.f30414d.m26508b(r6, null);
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0057  */
    @Override // p193e.p194a.p437c.p552i.p556d.AbstractC10315a
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo26378g(java.lang.Integer r6, int r7, s1.w.d<? super s1.s> r8) {
        /*
            Method dump skipped, instructions count: 284
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p552i.p556d.C10316b.mo26378g(java.lang.Integer, int, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(6:2|(2:4|(4:6|8|43|(2:10|(2:12|(3:14|41|42)(2:15|16))(7:17|18|29|30|(2:32|33)|22|(8:24|25|(2:27|28)|29|30|(0)|22|(5:34|35|(2:37|38)|41|42)(0))(0)))(5:19|20|21|22|(0)(0))))|7|8|43|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x01d0, code lost:
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x01d1, code lost:
        r6.getMessage();
        p193e.p194a.p437c.p548h.p550l.C10263b.f30414d.m26508b(r6, null);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00db A[Catch: Exception -> 0x01d0, TRY_LEAVE, TryCatch #0 {Exception -> 0x01d0, blocks: (B:14:0x004d, B:18:0x0089, B:20:0x0096, B:22:0x00d1, B:24:0x00db, B:30:0x0157, B:32:0x0168, B:34:0x0187), top: B:43:0x0040 }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0168 A[Catch: Exception -> 0x01d0, TRY_LEAVE, TryCatch #0 {Exception -> 0x01d0, blocks: (B:14:0x004d, B:18:0x0089, B:20:0x0096, B:22:0x00d1, B:24:0x00db, B:30:0x0157, B:32:0x0168, B:34:0x0187), top: B:43:0x0040 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0187 A[Catch: Exception -> 0x01d0, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x01d0, blocks: (B:14:0x004d, B:18:0x0089, B:20:0x0096, B:22:0x00d1, B:24:0x00db, B:30:0x0157, B:32:0x0168, B:34:0x0187), top: B:43:0x0040 }] */
    /* JADX WARN: Type inference failed for: r0v93, types: [java.util.Collection] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x013f -> B:29:0x0145). Please submit an issue!!! */
    @Override // p193e.p194a.p437c.p552i.p556d.AbstractC10315a
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo26377h(s1.w.d<? super s1.s> r6) {
        /*
            Method dump skipped, instructions count: 482
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p552i.p556d.C10316b.mo26377h(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0146  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x0122 -> B:31:0x0125). Please submit an issue!!! */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m26376i(java.lang.String r8, s1.w.d<? super java.lang.Boolean> r9) {
        /*
            Method dump skipped, instructions count: 342
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p552i.p556d.C10316b.m26376i(java.lang.String, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0189  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x028d A[SYNTHETIC] */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m26375j(s1.w.d<? super s1.s> r11) {
        /*
            Method dump skipped, instructions count: 744
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p552i.p556d.C10316b.m26375j(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x027d A[SYNTHETIC] */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m26374k(s1.w.d<? super s1.s> r7) {
        /*
            Method dump skipped, instructions count: 697
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p552i.p556d.C10316b.m26374k(s1.w.d):java.lang.Object");
    }
}
