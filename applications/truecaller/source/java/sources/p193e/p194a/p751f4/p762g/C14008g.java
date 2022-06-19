package p193e.p194a.p751f4.p762g;

import android.content.Context;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import e.m.f.a.j;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.CancellationException;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.AbstractC19321u;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p798g5.AbstractC14537p;
import p193e.p194a.p837h0.AbstractC14835j;
import q3.a.h1;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import q3.a.t0;
import q3.a.y2.q;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.f4.g.g */
/* loaded from: classes11-dex2jar.jar:e/a/f4/g/g.class */
public final class C14008g implements AbstractC14007f {

    /* renamed from: a */
    public final Set<String> f40495a = new LinkedHashSet();

    /* renamed from: b */
    public final Set<String> f40496b = new LinkedHashSet();

    /* renamed from: c */
    public final Set<String> f40497c = new LinkedHashSet();

    /* renamed from: d */
    public p1 f40498d;

    /* renamed from: e */
    public final String f40499e;

    /* renamed from: f */
    public final Context f40500f;

    /* renamed from: g */
    public final AbstractC19854f<AbstractC19463a0> f40501g;

    /* renamed from: h */
    public final AbstractC14835j f40502h;

    /* renamed from: i */
    public final AbstractC19462a f40503i;

    /* renamed from: j */
    public final AbstractC19321u f40504j;

    /* renamed from: k */
    public final AbstractC19222c f40505k;

    /* renamed from: l */
    public final AbstractC14537p f40506l;

    /* renamed from: m */
    public final j f40507m;

    @e(c = "com.truecaller.network.search.BulkImIdSearcherImpl$scheduleSearch$1", f = "BulkImIdSearcherImpl.kt", l = {63}, m = "invokeSuspend")
    /* renamed from: e.a.f4.g.g$a */
    /* loaded from: classes11-dex2jar.jar:e/a/f4/g/g$a.class */
    public static final class C14009a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f40508e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14009a(d dVar) {
            super(2, dVar);
            C14008g.this = r5;
        }

        /* renamed from: i */
        public final d<s> m20866i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C14009a(dVar);
        }

        /* renamed from: k */
        public final Object m20865k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C14009a(dVar).m20864s(s.a);
        }

        /* renamed from: s */
        public final Object m20864s(Object obj) {
            a aVar = a.a;
            int i = this.f40508e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                this.f40508e = 1;
                if (s1.a.a.a.v0.f.d.D0(500L, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            C14008g c14008g = C14008g.this;
            if (!(!c14008g.f40496b.isEmpty())) {
                h1 h1Var = h1.a;
                t0 t0Var = t0.a;
                s1.a.a.a.v0.f.d.w2(h1Var, q.c, (j0) null, new C14010h(c14008g, null), 2, (Object) null);
            }
            return s.a;
        }
    }

    public C14008g(String str, Context context, AbstractC19854f<AbstractC19463a0> abstractC19854f, AbstractC14835j abstractC14835j, AbstractC19462a abstractC19462a, AbstractC19321u abstractC19321u, AbstractC19222c abstractC19222c, AbstractC14537p abstractC14537p, j jVar) {
        l.e(str, "searchSource");
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC19854f, "eventsTracker");
        l.e(abstractC14835j, "filterManager");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC19321u, "networkUtil");
        l.e(abstractC19222c, "clock");
        l.e(abstractC14537p, "tagDisplayUtil");
        l.e(jVar, "phoneNumberUtil");
        this.f40499e = str;
        this.f40500f = context;
        this.f40501g = abstractC19854f;
        this.f40502h = abstractC14835j;
        this.f40503i = abstractC19462a;
        this.f40504j = abstractC19321u;
        this.f40505k = abstractC19222c;
        this.f40506l = abstractC14537p;
        this.f40507m = jVar;
    }

    @Override // p193e.p194a.p751f4.p762g.AbstractC14007f
    /* renamed from: a */
    public void mo20868a(String str) {
        l.e(str, "imId");
        if (this.f40495a.contains(str) || this.f40496b.contains(str) || this.f40497c.contains(str)) {
            return;
        }
        this.f40495a.add(str);
        if (this.f40495a.size() > 20) {
            Iterator<String> it = this.f40495a.iterator();
            it.next();
            it.remove();
        }
        m20867b();
    }

    /* renamed from: b */
    public final void m20867b() {
        p1 p1Var = this.f40498d;
        if (p1Var != null) {
            s1.a.a.a.v0.f.d.T(p1Var, (CancellationException) null, 1, (Object) null);
        }
        h1 h1Var = h1.a;
        t0 t0Var = t0.a;
        this.f40498d = s1.a.a.a.v0.f.d.w2(h1Var, q.c, (j0) null, new C14009a(null), 2, (Object) null);
    }
}
