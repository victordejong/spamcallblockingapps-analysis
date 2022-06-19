package p193e.p194a.p437c.p533e;

import com.amazon.device.ads.DTBMetricsConfiguration;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p526c.p530f.AbstractC9987d;
import p193e.p194a.p437c.p526c.p530f.C9988e;
import p193e.p194a.p437c.p580r.p581d.C10529b;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import q3.a.y;
import s1.a.a.a.v0.f.d;
import s1.s;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.c.e.d */
/* loaded from: classes10-dex2jar.jar:e/a/c/e/d.class */
public final class C10061d implements AbstractC10060c, i0 {

    /* renamed from: a */
    public final boolean f29926a;

    /* renamed from: b */
    public final y f29927b = d.n((p1) null, 1);

    /* renamed from: c */
    public final AbstractC9987d f29928c;

    /* renamed from: d */
    public final AbstractC19462a f29929d;

    /* renamed from: e */
    public final f f29930e;

    @e(c = "com.truecaller.insights.analytics.InsightsAnalyticsManagerImpl$clearAllConsumedEvents$1", f = "InsightsAnalyticsManager.kt", l = {75, 76}, m = "invokeSuspend")
    /* renamed from: e.a.c.e.d$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/e/d$a.class */
    public static final class C10062a extends i implements p<i0, s1.w.d<? super s>, Object> {

        /* renamed from: e */
        public int f29931e;

        /* renamed from: f */
        public int f29932f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10062a(s1.w.d dVar) {
            super(2, dVar);
            C10061d.this = r5;
        }

        /* renamed from: i */
        public final s1.w.d<s> m26753i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C10062a(dVar);
        }

        /* renamed from: k */
        public final Object m26752k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            return new C10062a(dVar).m26751s(s.a);
        }

        /* renamed from: s */
        public final Object m26751s(Object obj) {
            a aVar = a.a;
            int i = this.f29932f;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC9987d abstractC9987d = C10061d.this.f29928c;
                this.f29932f = 1;
                Object mo27056b = ((C9988e) abstractC9987d).f29766a.mo27056b(this);
                obj = mo27056b;
                if (mo27056b == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                C25225a.m3932a3(obj);
                ((Number) obj).intValue();
                return s.a;
            } else {
                C25225a.m3932a3(obj);
            }
            int intValue = ((Number) obj).intValue();
            AbstractC9987d abstractC9987d2 = C10061d.this.f29928c;
            this.f29931e = intValue;
            this.f29932f = 2;
            Object mo27057a = ((C9988e) abstractC9987d2).f29766a.mo27057a(this);
            obj = mo27057a;
            if (mo27057a == aVar) {
                return aVar;
            }
            ((Number) obj).intValue();
            return s.a;
        }
    }

    @e(c = "com.truecaller.insights.analytics.InsightsAnalyticsManagerImpl$logAggregationEvent$1", f = "InsightsAnalyticsManager.kt", l = {59, 61, 65}, m = "invokeSuspend")
    /* renamed from: e.a.c.e.d$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/e/d$b.class */
    public static final class C10063b extends i implements p<i0, s1.w.d<? super s>, Object> {

        /* renamed from: e */
        public Object f29934e;

        /* renamed from: f */
        public int f29935f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10063b(s1.w.d dVar) {
            super(2, dVar);
            C10061d.this = r5;
        }

        /* renamed from: i */
        public final s1.w.d<s> m26750i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C10063b(dVar);
        }

        /* renamed from: k */
        public final Object m26749k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            return new C10063b(dVar).m26748s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:26:0x00bd A[LOOP:0: B:24:0x00b3->B:26:0x00bd, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:29:0x0115  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m26748s(java.lang.Object r5) {
            /*
                Method dump skipped, instructions count: 283
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p533e.C10061d.C10063b.m26748s(java.lang.Object):java.lang.Object");
        }
    }

    @e(c = "com.truecaller.insights.analytics.InsightsAnalyticsManagerImpl$logEvent$1", f = "InsightsAnalyticsManager.kt", l = {40}, m = "invokeSuspend")
    /* renamed from: e.a.c.e.d$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/e/d$c.class */
    public static final class C10064c extends i implements p<i0, s1.w.d<? super s>, Object> {

        /* renamed from: e */
        public int f29937e;

        /* renamed from: g */
        public final /* synthetic */ C10529b f29939g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10064c(C10529b c10529b, s1.w.d dVar) {
            super(2, dVar);
            C10061d.this = r5;
            this.f29939g = c10529b;
        }

        /* renamed from: i */
        public final s1.w.d<s> m26747i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C10064c(this.f29939g, dVar);
        }

        /* renamed from: k */
        public final Object m26746k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            return new C10064c(this.f29939g, dVar).m26745s(s.a);
        }

        /* renamed from: s */
        public final Object m26745s(Object obj) {
            a aVar = a.a;
            int i = this.f29937e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC9987d abstractC9987d = C10061d.this.f29928c;
                C10529b c10529b = this.f29939g;
                this.f29937e = 1;
                if (((C9988e) abstractC9987d).m26976a(new C10529b[]{c10529b}, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            StringBuilder m8728C = C22128a.m8728C("Created ");
            m8728C.append(this.f29939g);
            m8728C.toString();
            return s.a;
        }
    }

    @e(c = "com.truecaller.insights.analytics.InsightsAnalyticsManagerImpl$logEvent$2", f = "InsightsAnalyticsManager.kt", l = {83}, m = "invokeSuspend")
    /* renamed from: e.a.c.e.d$d */
    /* loaded from: classes10-dex2jar.jar:e/a/c/e/d$d.class */
    public static final class C10065d extends i implements p<i0, s1.w.d<? super s>, Object> {

        /* renamed from: e */
        public int f29940e;

        /* renamed from: g */
        public final /* synthetic */ List f29942g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10065d(List list, s1.w.d dVar) {
            super(2, dVar);
            C10061d.this = r5;
            this.f29942g = list;
        }

        /* renamed from: i */
        public final s1.w.d<s> m26744i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C10065d(this.f29942g, dVar);
        }

        /* renamed from: k */
        public final Object m26743k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            return new C10065d(this.f29942g, dVar).m26742s(s.a);
        }

        /* renamed from: s */
        public final Object m26742s(Object obj) {
            a aVar = a.a;
            int i = this.f29940e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC9987d abstractC9987d = C10061d.this.f29928c;
                Object[] array = this.f29942g.toArray(new C10529b[0]);
                Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
                C10529b[] c10529bArr = (C10529b[]) array;
                C10529b[] c10529bArr2 = (C10529b[]) Arrays.copyOf(c10529bArr, c10529bArr.length);
                this.f29940e = 1;
                if (((C9988e) abstractC9987d).m26976a(c10529bArr2, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            StringBuilder m8728C = C22128a.m8728C("Created ");
            m8728C.append(this.f29942g);
            m8728C.toString();
            return s.a;
        }
    }

    @Inject
    public C10061d(AbstractC9987d abstractC9987d, AbstractC19462a abstractC19462a, AbstractC9691j abstractC9691j, @Named("IO") f fVar) {
        l.e(abstractC9987d, "analyticsUseCases");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC9691j, "insightsStatusProvider");
        l.e(fVar, "ioCoroutineContext");
        this.f29928c = abstractC9987d;
        this.f29929d = abstractC19462a;
        this.f29930e = fVar;
        this.f29926a = abstractC9691j.mo27257f0();
    }

    @Override // p193e.p194a.p437c.p533e.AbstractC10060c
    /* renamed from: a */
    public void mo26757a(C10529b c10529b) {
        l.e(c10529b, "simpleAnalyticsEvents");
        if (this.f29926a) {
            d.w2(this, (f) null, (j0) null, new C10064c(c10529b, null), 3, (Object) null);
        }
    }

    @Override // p193e.p194a.p437c.p533e.AbstractC10060c
    /* renamed from: b */
    public void mo26756b(List<C10529b> list) {
        l.e(list, "simpleAnalyticsEvents");
        if (!this.f29926a || !(!list.isEmpty())) {
            return;
        }
        d.w2(this, (f) null, (j0) null, new C10065d(list, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p437c.p533e.AbstractC10060c
    /* renamed from: c */
    public void mo26755c() {
        if (this.f29926a) {
            d.c3((f) null, new C10063b(null), 1, (Object) null);
        }
    }

    @Override // p193e.p194a.p437c.p533e.AbstractC10060c
    /* renamed from: d */
    public void mo26754d() {
        if (this.f29926a) {
            d.c3((f) null, new C10062a(null), 1, (Object) null);
        }
    }

    public f getCoroutineContext() {
        return this.f29927b.plus(this.f29930e);
    }
}
