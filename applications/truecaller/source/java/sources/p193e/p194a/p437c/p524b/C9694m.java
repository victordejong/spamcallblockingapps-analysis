package p193e.p194a.p437c.p524b;

import com.truecaller.insights.models.states.InsightState;
import io.agora.rtc.Constants;
import java.util.Date;
import javax.inject.Inject;
import javax.inject.Named;
import org.json.JSONObject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p526c.p530f.AbstractC10009n;
import p193e.p194a.p437c.p531c0.AbstractC10028o;
import p193e.p194a.p437c.p552i.p554b.AbstractC10276a;
import q3.a.i0;
import s1.g;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.c.b.m */
/* loaded from: classes10-dex2jar.jar:e/a/c/b/m.class */
public final class C9694m implements AbstractC9693l {

    /* renamed from: a */
    public final g f29286a = C25225a.m3978P1(new C9701g());

    /* renamed from: b */
    public final AbstractC10009n f29287b;

    /* renamed from: c */
    public final AbstractC10028o f29288c;

    /* renamed from: d */
    public final AbstractC10276a f29289d;

    /* renamed from: e */
    public final AbstractC9686e f29290e;

    /* renamed from: f */
    public final AbstractC9691j f29291f;

    /* renamed from: g */
    public final f f29292g;

    @e(c = "com.truecaller.insights.state.InsightsVersionProviderImpl", f = "InsightsVersionProvider.kt", l = {Constants.ERR_PUBLISH_STREAM_FORMAT_NOT_SUPPORTED}, m = "accModelMigrationVersion")
    /* renamed from: e.a.c.b.m$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/b/m$a.class */
    public static final class C9695a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f29293d;

        /* renamed from: e */
        public int f29294e;

        /* renamed from: g */
        public Object f29296g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9695a(d dVar) {
            super(dVar);
            C9694m.this = r4;
        }

        /* renamed from: s */
        public final Object m27224s(Object obj) {
            this.f29293d = obj;
            this.f29294e |= Integer.MIN_VALUE;
            return C9694m.this.mo27228f(this);
        }
    }

    @e(c = "com.truecaller.insights.state.InsightsVersionProviderImpl$accModelMigrationVersion$state$1", f = "InsightsVersionProvider.kt", l = {Constants.ERR_PUBLISH_STREAM_FORMAT_NOT_SUPPORTED}, m = "invokeSuspend")
    /* renamed from: e.a.c.b.m$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/b/m$b.class */
    public static final class C9696b extends i implements p<i0, d<? super InsightState>, Object> {

        /* renamed from: e */
        public int f29297e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9696b(d dVar) {
            super(2, dVar);
            C9694m.this = r5;
        }

        /* renamed from: i */
        public final d<s> m27223i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C9696b(dVar);
        }

        /* renamed from: k */
        public final Object m27222k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C9696b(dVar).m27221s(s.a);
        }

        /* renamed from: s */
        public final Object m27221s(Object obj) {
            a aVar = a.a;
            int i = this.f29297e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC10009n abstractC10009n = C9694m.this.f29287b;
                this.f29297e = 1;
                Object mo26915q = abstractC10009n.mo26915q("ACC_MODEL_MIGRATION_VERSION", this);
                obj = mo26915q;
                if (mo26915q == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    @e(c = "com.truecaller.insights.state.InsightsVersionProviderImpl", f = "InsightsVersionProvider.kt", l = {118}, m = "accParityEventVersion")
    /* renamed from: e.a.c.b.m$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/b/m$c.class */
    public static final class C9697c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f29299d;

        /* renamed from: e */
        public int f29300e;

        /* renamed from: g */
        public Object f29302g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9697c(d dVar) {
            super(dVar);
            C9694m.this = r4;
        }

        /* renamed from: s */
        public final Object m27220s(Object obj) {
            this.f29299d = obj;
            this.f29300e |= Integer.MIN_VALUE;
            return C9694m.this.mo27231c(this);
        }
    }

    @e(c = "com.truecaller.insights.state.InsightsVersionProviderImpl$accParityEventVersion$state$1", f = "InsightsVersionProvider.kt", l = {118}, m = "invokeSuspend")
    /* renamed from: e.a.c.b.m$d */
    /* loaded from: classes10-dex2jar.jar:e/a/c/b/m$d.class */
    public static final class C9698d extends i implements p<i0, d<? super InsightState>, Object> {

        /* renamed from: e */
        public int f29303e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9698d(d dVar) {
            super(2, dVar);
            C9694m.this = r5;
        }

        /* renamed from: i */
        public final d<s> m27219i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C9698d(dVar);
        }

        /* renamed from: k */
        public final Object m27218k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C9698d(dVar).m27217s(s.a);
        }

        /* renamed from: s */
        public final Object m27217s(Object obj) {
            a aVar = a.a;
            int i = this.f29303e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC10009n abstractC10009n = C9694m.this.f29287b;
                this.f29303e = 1;
                Object mo26915q = abstractC10009n.mo26915q("ACC_PARITY_EVENT_VERSION", this);
                obj = mo26915q;
                if (mo26915q == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    @e(c = "com.truecaller.insights.state.InsightsVersionProviderImpl", f = "InsightsVersionProvider.kt", l = {124}, m = "enrichmentVersion")
    /* renamed from: e.a.c.b.m$e */
    /* loaded from: classes10-dex2jar.jar:e/a/c/b/m$e.class */
    public static final class C9699e extends c {

        /* renamed from: d */
        public /* synthetic */ Object f29305d;

        /* renamed from: e */
        public int f29306e;

        /* renamed from: g */
        public Object f29308g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9699e(d dVar) {
            super(dVar);
            C9694m.this = r4;
        }

        /* renamed from: s */
        public final Object m27216s(Object obj) {
            this.f29305d = obj;
            this.f29306e |= Integer.MIN_VALUE;
            return C9694m.this.mo27226h(this);
        }
    }

    @e(c = "com.truecaller.insights.state.InsightsVersionProviderImpl$enrichmentVersion$state$1", f = "InsightsVersionProvider.kt", l = {124}, m = "invokeSuspend")
    /* renamed from: e.a.c.b.m$f */
    /* loaded from: classes10-dex2jar.jar:e/a/c/b/m$f.class */
    public static final class C9700f extends i implements p<i0, d<? super InsightState>, Object> {

        /* renamed from: e */
        public int f29309e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9700f(d dVar) {
            super(2, dVar);
            C9694m.this = r5;
        }

        /* renamed from: i */
        public final d<s> m27215i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C9700f(dVar);
        }

        /* renamed from: k */
        public final Object m27214k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C9700f(dVar).m27213s(s.a);
        }

        /* renamed from: s */
        public final Object m27213s(Object obj) {
            a aVar = a.a;
            int i = this.f29309e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC10009n abstractC10009n = C9694m.this.f29287b;
                this.f29309e = 1;
                Object mo26915q = abstractC10009n.mo26915q("ENRICHMENT_VERSION", this);
                obj = mo26915q;
                if (mo26915q == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    /* renamed from: e.a.c.b.m$g */
    /* loaded from: classes10-dex2jar.jar:e/a/c/b/m$g.class */
    public static final class C9701g extends m implements s1.z.b.a<Integer> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9701g() {
            super(0);
            C9694m.this = r4;
        }

        public Object invoke() {
            int i;
            try {
                String mo26491i = C9694m.this.f29289d.mo26491i();
                i = 0;
                if (mo26491i != null) {
                    i = new JSONObject(mo26491i).optInt(C9694m.this.f29290e.mo27306g());
                }
            } catch (Exception e) {
                i = 0;
            }
            return Integer.valueOf(i);
        }
    }

    @e(c = "com.truecaller.insights.state.InsightsVersionProviderImpl", f = "InsightsVersionProvider.kt", l = {162}, m = "getUpdatesModelVersion")
    /* renamed from: e.a.c.b.m$h */
    /* loaded from: classes10-dex2jar.jar:e/a/c/b/m$h.class */
    public static final class C9702h extends c {

        /* renamed from: d */
        public /* synthetic */ Object f29312d;

        /* renamed from: e */
        public int f29313e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9702h(d dVar) {
            super(dVar);
            C9694m.this = r4;
        }

        /* renamed from: s */
        public final Object m27212s(Object obj) {
            this.f29312d = obj;
            this.f29313e |= Integer.MIN_VALUE;
            return C9694m.this.mo27233a(this);
        }
    }

    @e(c = "com.truecaller.insights.state.InsightsVersionProviderImpl$getUpdatesModelVersion$state$1", f = "InsightsVersionProvider.kt", l = {162}, m = "invokeSuspend")
    /* renamed from: e.a.c.b.m$i */
    /* loaded from: classes10-dex2jar.jar:e/a/c/b/m$i.class */
    public static final class C9703i extends i implements p<i0, d<? super Integer>, Object> {

        /* renamed from: e */
        public int f29315e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9703i(d dVar) {
            super(2, dVar);
            C9694m.this = r5;
        }

        /* renamed from: i */
        public final d<s> m27211i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C9703i(dVar);
        }

        /* renamed from: k */
        public final Object m27210k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C9703i(dVar).m27209s(s.a);
        }

        /* renamed from: s */
        public final Object m27209s(Object obj) {
            a aVar = a.a;
            int i = this.f29315e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC10009n abstractC10009n = C9694m.this.f29287b;
                this.f29315e = 1;
                Object mo26931a = abstractC10009n.mo26931a(this);
                obj = mo26931a;
                if (mo26931a == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    @e(c = "com.truecaller.insights.state.InsightsVersionProviderImpl$processState$1", f = "InsightsVersionProvider.kt", l = {173}, m = "invokeSuspend")
    /* renamed from: e.a.c.b.m$j */
    /* loaded from: classes10-dex2jar.jar:e/a/c/b/m$j.class */
    public static final class C9704j extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f29317e;

        /* renamed from: g */
        public final /* synthetic */ InsightState f29319g;

        /* renamed from: h */
        public final /* synthetic */ int f29320h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9704j(InsightState insightState, int i, d dVar) {
            super(2, dVar);
            C9694m.this = r5;
            this.f29319g = insightState;
            this.f29320h = i;
        }

        /* renamed from: i */
        public final d<s> m27208i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C9704j(this.f29319g, this.f29320h, dVar);
        }

        /* renamed from: k */
        public final Object m27207k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C9704j(this.f29319g, this.f29320h, dVar).m27206s(s.a);
        }

        /* renamed from: s */
        public final Object m27206s(Object obj) {
            Object mo26919m;
            a aVar = a.a;
            int i = this.f29317e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                this.f29319g.setLastUpdatedData(String.valueOf(this.f29320h));
                String str = "Updating version " + this.f29319g;
                AbstractC10009n abstractC10009n = C9694m.this.f29287b;
                InsightState insightState = this.f29319g;
                this.f29317e = 1;
                mo26919m = abstractC10009n.mo26919m(insightState, (r9 & 2) != 0 ? new Date() : null, this);
                if (mo26919m == aVar) {
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

    @e(c = "com.truecaller.insights.state.InsightsVersionProviderImpl", f = "InsightsVersionProvider.kt", l = {136}, m = "senderBlockPreferenceVersion")
    /* renamed from: e.a.c.b.m$k */
    /* loaded from: classes10-dex2jar.jar:e/a/c/b/m$k.class */
    public static final class C9705k extends c {

        /* renamed from: d */
        public /* synthetic */ Object f29321d;

        /* renamed from: e */
        public int f29322e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9705k(d dVar) {
            super(dVar);
            C9694m.this = r4;
        }

        /* renamed from: s */
        public final Object m27205s(Object obj) {
            this.f29321d = obj;
            this.f29322e |= Integer.MIN_VALUE;
            return C9694m.this.mo27229e(this);
        }
    }

    @e(c = "com.truecaller.insights.state.InsightsVersionProviderImpl$senderBlockPreferenceVersion$state$1", f = "InsightsVersionProvider.kt", l = {136}, m = "invokeSuspend")
    /* renamed from: e.a.c.b.m$l */
    /* loaded from: classes10-dex2jar.jar:e/a/c/b/m$l.class */
    public static final class C9706l extends i implements p<i0, d<? super InsightState>, Object> {

        /* renamed from: e */
        public int f29324e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9706l(d dVar) {
            super(2, dVar);
            C9694m.this = r5;
        }

        /* renamed from: i */
        public final d<s> m27204i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C9706l(dVar);
        }

        /* renamed from: k */
        public final Object m27203k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C9706l(dVar).m27202s(s.a);
        }

        /* renamed from: s */
        public final Object m27202s(Object obj) {
            a aVar = a.a;
            int i = this.f29324e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC10009n abstractC10009n = C9694m.this.f29287b;
                this.f29324e = 1;
                Object mo26915q = abstractC10009n.mo26915q("INSIGHTS.FIREBASE.SENDER_BLOCK.PREFERENCE", this);
                obj = mo26915q;
                if (mo26915q == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    @e(c = "com.truecaller.insights.state.InsightsVersionProviderImpl$updateBlockPreferenceVersion$2", f = "InsightsVersionProvider.kt", l = {148, Constants.ERR_PUBLISH_STREAM_CDN_ERROR}, m = "invokeSuspend")
    /* renamed from: e.a.c.b.m$m */
    /* loaded from: classes10-dex2jar.jar:e/a/c/b/m$m.class */
    public static final class C9707m extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f29326e;

        /* renamed from: g */
        public final /* synthetic */ int f29328g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9707m(int i, d dVar) {
            super(2, dVar);
            C9694m.this = r5;
            this.f29328g = i;
        }

        /* renamed from: i */
        public final d<s> m27201i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C9707m(this.f29328g, dVar);
        }

        /* renamed from: k */
        public final Object m27200k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C9707m(this.f29328g, dVar).m27199s(s.a);
        }

        /* renamed from: s */
        public final Object m27199s(Object obj) {
            Object mo26919m;
            a aVar = a.a;
            int i = this.f29326e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC10009n abstractC10009n = C9694m.this.f29287b;
                this.f29326e = 1;
                Object mo26915q = abstractC10009n.mo26915q("INSIGHTS.FIREBASE.SENDER_BLOCK.PREFERENCE", this);
                obj = mo26915q;
                if (mo26915q == aVar) {
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
            InsightState insightState = (InsightState) obj;
            insightState.setLastUpdatedData(String.valueOf(this.f29328g));
            String str = "Updating version " + insightState;
            AbstractC10009n abstractC10009n2 = C9694m.this.f29287b;
            this.f29326e = 2;
            mo26919m = abstractC10009n2.mo26919m(insightState, (r9 & 2) != 0 ? new Date() : null, this);
            if (mo26919m == aVar) {
                return aVar;
            }
            return s.a;
        }
    }

    @Inject
    public C9694m(AbstractC10009n abstractC10009n, AbstractC10028o abstractC10028o, AbstractC10276a abstractC10276a, AbstractC9686e abstractC9686e, AbstractC9691j abstractC9691j, @Named("IO") f fVar) {
        l.e(abstractC10009n, "stateUseCases");
        l.e(abstractC10028o, "insightsConfig");
        l.e(abstractC10276a, "firebaseSeedStore");
        l.e(abstractC9686e, "environmentHelper");
        l.e(abstractC9691j, "insightsStatusProvider");
        l.e(fVar, "ioCoroutineContext");
        this.f29287b = abstractC10009n;
        this.f29288c = abstractC10028o;
        this.f29289d = abstractC10276a;
        this.f29290e = abstractC9686e;
        this.f29291f = abstractC9691j;
        this.f29292g = fVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x009a  */
    @Override // p193e.p194a.p437c.p524b.AbstractC9693l
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo27233a(s1.w.d<? super p193e.p194a.p437c.p524b.C9708n> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof p193e.p194a.p437c.p524b.C9694m.C9702h
            if (r0 == 0) goto L25
            r0 = r6
            e.a.c.b.m$h r0 = (p193e.p194a.p437c.p524b.C9694m.C9702h) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f29313e
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L25
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f29313e = r1
            r0 = r7
            r6 = r0
            goto L2f
        L25:
            e.a.c.b.m$h r0 = new e.a.c.b.m$h
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L2f:
            r0 = r6
            java.lang.Object r0 = r0.f29312d
            r7 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r9 = r0
            r0 = r6
            int r0 = r0.f29313e
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
            goto L86
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
            s1.w.f r0 = r0.f29292g
            r10 = r0
            e.a.c.b.m$i r0 = new e.a.c.b.m$i
            r1 = r0
            r2 = r5
            r3 = 0
            r1.<init>(r3)
            r7 = r0
            r0 = r6
            r1 = 1
            r0.f29313e = r1
            r0 = r10
            r1 = r7
            r2 = r6
            java.lang.Object r0 = s1.a.a.a.v0.f.d.a4(r0, r1, r2)
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            r1 = r9
            if (r0 != r1) goto L86
            r0 = r9
            return r0
        L86:
            r0 = r6
            java.lang.Integer r0 = (java.lang.Integer) r0
            r6 = r0
            r0 = 0
            r8 = r0
            java.lang.Integer r0 = new java.lang.Integer
            r1 = r0
            r2 = 0
            r1.<init>(r2)
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L9f
            r0 = r6
            int r0 = r0.intValue()
            r8 = r0
        L9f:
            e.a.c.b.n r0 = new e.a.c.b.n
            r1 = r0
            r2 = r7
            r3 = r8
            r1.<init>(r2, r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p524b.C9694m.mo27233a(s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9693l
    /* renamed from: b */
    public Object mo27232b(d<? super C9708n> dVar) {
        C9708n c9708n = new C9708n(new Integer(this.f29288c.mo26860V()), 3);
        if (c9708n.m27198a()) {
            this.f29288c.mo26847e(3);
        }
        return c9708n;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0064  */
    @Override // p193e.p194a.p437c.p524b.AbstractC9693l
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo27231c(s1.w.d<? super p193e.p194a.p437c.p524b.C9708n> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof p193e.p194a.p437c.p524b.C9694m.C9697c
            if (r0 == 0) goto L25
            r0 = r6
            e.a.c.b.m$c r0 = (p193e.p194a.p437c.p524b.C9694m.C9697c) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f29300e
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L25
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f29300e = r1
            r0 = r7
            r6 = r0
            goto L2f
        L25:
            e.a.c.b.m$c r0 = new e.a.c.b.m$c
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L2f:
            r0 = r6
            java.lang.Object r0 = r0.f29299d
            r9 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r7 = r0
            r0 = r6
            int r0 = r0.f29300e
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L64
            r0 = r8
            r1 = 1
            if (r0 != r1) goto L5a
            r0 = r6
            java.lang.Object r0 = r0.f29302g
            e.a.c.b.m r0 = (p193e.p194a.p437c.p524b.C9694m) r0
            r7 = r0
            r0 = r9
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r9
            r6 = r0
            goto L96
        L5a:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L64:
            r0 = r9
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r5
            s1.w.f r0 = r0.f29292g
            r10 = r0
            e.a.c.b.m$d r0 = new e.a.c.b.m$d
            r1 = r0
            r2 = r5
            r3 = 0
            r1.<init>(r3)
            r9 = r0
            r0 = r6
            r1 = r5
            r0.f29302g = r1
            r0 = r6
            r1 = 1
            r0.f29300e = r1
            r0 = r10
            r1 = r9
            r2 = r6
            java.lang.Object r0 = s1.a.a.a.v0.f.d.a4(r0, r1, r2)
            r6 = r0
            r0 = r6
            r1 = r7
            if (r0 != r1) goto L94
            r0 = r7
            return r0
        L94:
            r0 = r5
            r7 = r0
        L96:
            r0 = r7
            r1 = r6
            com.truecaller.insights.models.states.InsightState r1 = (com.truecaller.insights.models.states.InsightState) r1
            r2 = 1
            e.a.c.b.n r0 = r0.m27225i(r1, r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p524b.C9694m.mo27231c(s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9693l
    /* renamed from: d */
    public Object mo27230d(int i, d<? super s> dVar) {
        Object a4 = s1.a.a.a.v0.f.d.a4(this.f29292g, new C9707m(i, null), dVar);
        return a4 == a.a ? a4 : s.a;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(12:2|(2:4|(10:6|8|(2:10|(1:12)(2:13|14))(2:15|(2:17|18))|19|28|20|21|(1:23)|24|25))|7|8|(0)(0)|19|28|20|21|(0)|24|25) */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00b4, code lost:
        r6 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00a3 A[Catch: Exception -> 0x00b3, TRY_ENTER, TryCatch #0 {Exception -> 0x00b3, blocks: (B:20:0x0096, B:23:0x00a3), top: B:28:0x0096 }] */
    @Override // p193e.p194a.p437c.p524b.AbstractC9693l
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo27229e(s1.w.d<? super p193e.p194a.p437c.p524b.C9708n> r6) {
        /*
            Method dump skipped, instructions count: 185
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p524b.C9694m.mo27229e(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0060  */
    @Override // p193e.p194a.p437c.p524b.AbstractC9693l
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo27228f(s1.w.d<? super p193e.p194a.p437c.p524b.C9708n> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof p193e.p194a.p437c.p524b.C9694m.C9695a
            if (r0 == 0) goto L25
            r0 = r6
            e.a.c.b.m$a r0 = (p193e.p194a.p437c.p524b.C9694m.C9695a) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f29294e
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L25
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f29294e = r1
            r0 = r7
            r6 = r0
            goto L2f
        L25:
            e.a.c.b.m$a r0 = new e.a.c.b.m$a
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L2f:
            r0 = r6
            java.lang.Object r0 = r0.f29293d
            r7 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r9 = r0
            r0 = r6
            int r0 = r0.f29294e
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L60
            r0 = r8
            r1 = 1
            if (r0 != r1) goto L56
            r0 = r6
            java.lang.Object r0 = r0.f29296g
            e.a.c.b.m r0 = (p193e.p194a.p437c.p524b.C9694m) r0
            r6 = r0
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            goto L91
        L56:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L60:
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r5
            s1.w.f r0 = r0.f29292g
            r7 = r0
            e.a.c.b.m$b r0 = new e.a.c.b.m$b
            r1 = r0
            r2 = r5
            r3 = 0
            r1.<init>(r3)
            r10 = r0
            r0 = r6
            r1 = r5
            r0.f29296g = r1
            r0 = r6
            r1 = 1
            r0.f29294e = r1
            r0 = r7
            r1 = r10
            r2 = r6
            java.lang.Object r0 = s1.a.a.a.v0.f.d.a4(r0, r1, r2)
            r7 = r0
            r0 = r7
            r1 = r9
            if (r0 != r1) goto L8f
            r0 = r9
            return r0
        L8f:
            r0 = r5
            r6 = r0
        L91:
            r0 = r6
            r1 = r7
            com.truecaller.insights.models.states.InsightState r1 = (com.truecaller.insights.models.states.InsightState) r1
            r2 = 2
            e.a.c.b.n r0 = r0.m27225i(r1, r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p524b.C9694m.mo27228f(s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9693l
    /* renamed from: g */
    public Object mo27227g(d<? super C9708n> dVar) {
        if (!this.f29291f.mo27246n()) {
            return new C9708n(new Integer(0), 0);
        }
        int mo26859W = this.f29288c.mo26859W();
        int i = 5;
        int intValue = ((Number) this.f29286a.getValue()).intValue();
        if (5 < intValue) {
            i = intValue;
        }
        C9708n c9708n = new C9708n(new Integer(mo26859W), i);
        if (c9708n.m27198a()) {
            this.f29288c.mo26837j(i);
        }
        return c9708n;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0060  */
    @Override // p193e.p194a.p437c.p524b.AbstractC9693l
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo27226h(s1.w.d<? super p193e.p194a.p437c.p524b.C9708n> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof p193e.p194a.p437c.p524b.C9694m.C9699e
            if (r0 == 0) goto L25
            r0 = r6
            e.a.c.b.m$e r0 = (p193e.p194a.p437c.p524b.C9694m.C9699e) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f29306e
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L25
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f29306e = r1
            r0 = r7
            r6 = r0
            goto L2f
        L25:
            e.a.c.b.m$e r0 = new e.a.c.b.m$e
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L2f:
            r0 = r6
            java.lang.Object r0 = r0.f29305d
            r7 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r9 = r0
            r0 = r6
            int r0 = r0.f29306e
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L60
            r0 = r8
            r1 = 1
            if (r0 != r1) goto L56
            r0 = r6
            java.lang.Object r0 = r0.f29308g
            e.a.c.b.m r0 = (p193e.p194a.p437c.p524b.C9694m) r0
            r6 = r0
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            goto L91
        L56:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L60:
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r5
            s1.w.f r0 = r0.f29292g
            r10 = r0
            e.a.c.b.m$f r0 = new e.a.c.b.m$f
            r1 = r0
            r2 = r5
            r3 = 0
            r1.<init>(r3)
            r7 = r0
            r0 = r6
            r1 = r5
            r0.f29308g = r1
            r0 = r6
            r1 = 1
            r0.f29306e = r1
            r0 = r10
            r1 = r7
            r2 = r6
            java.lang.Object r0 = s1.a.a.a.v0.f.d.a4(r0, r1, r2)
            r7 = r0
            r0 = r7
            r1 = r9
            if (r0 != r1) goto L8f
            r0 = r9
            return r0
        L8f:
            r0 = r5
            r6 = r0
        L91:
            r0 = r6
            r1 = r7
            com.truecaller.insights.models.states.InsightState r1 = (com.truecaller.insights.models.states.InsightState) r1
            r2 = 3
            e.a.c.b.n r0 = r0.m27225i(r1, r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p524b.C9694m.mo27226h(s1.w.d):java.lang.Object");
    }

    /* renamed from: i */
    public final C9708n m27225i(InsightState insightState, int i) {
        String lastUpdatedData = insightState.getLastUpdatedData();
        C9708n c9708n = new C9708n(lastUpdatedData != null ? Integer.valueOf(lastUpdatedData) : null, i);
        if (c9708n.m27198a()) {
            s1.a.a.a.v0.f.d.b3(this.f29292g, new C9704j(insightState, i, null));
        }
        return c9708n;
    }
}
