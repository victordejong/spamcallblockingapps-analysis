package p193e.p194a.p852i.p905t;

import com.amazon.device.ads.DTBMetricsConfiguration;
import e.m.d.y.n;
import java.util.ArrayList;
import java.util.concurrent.CancellationException;
import javax.inject.Named;
import p1727n3.p1788g.C26188i;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p852i.AbstractC15211m;
import p193e.p194a.p852i.C15222s;
import p193e.p194a.p852i.p896f0.AbstractC15163d;
import p193e.p194a.p852i.p896f0.p901m.AbstractC15183d;
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
/* renamed from: e.a.i.t.f */
/* loaded from: classes2-dex2jar.jar:e/a/i/t/f.class */
public final class C15232f implements AbstractC15231e, AbstractC15211m, i0 {

    /* renamed from: a */
    public final y f43344a = d.j((p1) null, 1, (Object) null);

    /* renamed from: b */
    public final ArrayList<AbstractC15211m> f43345b = new ArrayList<>();

    /* renamed from: c */
    public final C26188i<AbstractC15183d> f43346c = new C26188i<>();

    /* renamed from: d */
    public final C26188i<AbstractC15183d> f43347d = new C26188i<>();

    /* renamed from: e */
    public boolean f43348e;

    /* renamed from: f */
    public p1 f43349f;

    /* renamed from: g */
    public final AbstractC15163d f43350g;

    /* renamed from: h */
    public final C15222s f43351h;

    /* renamed from: i */
    public final f f43352i;

    @e(c = "com.truecaller.ads.adapters.AdsPrefetcherImpl$invalidateAllDelayed$1", f = "AdsPrefetcherImpl.kt", l = {89}, m = "invokeSuspend")
    /* renamed from: e.a.i.t.f$a */
    /* loaded from: classes2-dex2jar.jar:e/a/i/t/f$a.class */
    public static final class C15233a extends i implements p<i0, s1.w.d<? super s>, Object> {

        /* renamed from: e */
        public int f43353e;

        /* renamed from: g */
        public final /* synthetic */ long f43355g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15233a(long j, s1.w.d dVar) {
            super(2, dVar);
            C15232f.this = r5;
            this.f43355g = j;
        }

        /* renamed from: i */
        public final s1.w.d<s> m19029i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C15233a(this.f43355g, dVar);
        }

        /* renamed from: k */
        public final Object m19028k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            return new C15233a(this.f43355g, dVar).m19027s(s.a);
        }

        /* renamed from: s */
        public final Object m19027s(Object obj) {
            a aVar = a.a;
            int i = this.f43353e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                long j = this.f43355g;
                this.f43353e = 1;
                if (d.D0(j, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            C15232f.this.f43346c.m2570b();
            return s.a;
        }
    }

    public C15232f(AbstractC15163d abstractC15163d, C15222s c15222s, @Named("UI") f fVar) {
        l.e(abstractC15163d, "adsProvider");
        l.e(c15222s, DTBMetricsConfiguration.CONFIG_DIR);
        l.e(fVar, "uiContext");
        this.f43350g = abstractC15163d;
        this.f43351h = c15222s;
        this.f43352i = fVar;
        n.l1(abstractC15163d, c15222s, this, (String) null, 4, (Object) null);
    }

    @Override // p193e.p194a.p852i.p905t.AbstractC15231e
    /* renamed from: a */
    public void mo19026a() {
        d.T(this.f43344a, (CancellationException) null, 1, (Object) null);
        this.f43350g.m19085h(this.f43351h, this);
        int m2563j = this.f43347d.m2563j();
        for (int i = 0; i < m2563j; i++) {
            this.f43347d.m2562k(i).destroy();
        }
        this.f43347d.m2570b();
    }

    @Override // p193e.p194a.p852i.p905t.AbstractC15231e
    /* renamed from: b */
    public void mo19025b(boolean z) {
        if (this.f43348e != z && !z && this.f43350g.m19089c(this.f43351h)) {
            for (AbstractC15211m abstractC15211m : this.f43345b) {
                abstractC15211m.onAdLoaded();
            }
        }
        this.f43348e = z;
    }

    @Override // p193e.p194a.p852i.p905t.AbstractC15231e
    /* renamed from: c */
    public void mo19024c(long j) {
        this.f43349f = d.w2(this, (f) null, (j0) null, new C15233a(j, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p852i.p905t.AbstractC15231e
    /* renamed from: d */
    public void mo19023d() {
        p1 p1Var = this.f43349f;
        if (p1Var == null || !p1Var.b()) {
            return;
        }
        p1Var.d(new CancellationException("View restored"));
    }

    @Override // p193e.p194a.p852i.p905t.AbstractC15231e
    /* renamed from: e */
    public AbstractC15183d mo19022e(int i) {
        AbstractC15183d m19087f;
        AbstractC15183d m2566g = this.f43346c.m2566g(i, null);
        if (m2566g != null) {
            return m2566g;
        }
        if (this.f43348e || (m19087f = this.f43350g.m19087f(this.f43351h, i)) == null) {
            return this.f43347d.m2566g(i, null);
        }
        this.f43346c.m2564i(i, m19087f);
        AbstractC15183d m2566g2 = this.f43347d.m2566g(i, null);
        if (m2566g2 != null) {
            m2566g2.destroy();
        }
        this.f43347d.m2564i(i, m19087f);
        return m19087f;
    }

    @Override // p193e.p194a.p852i.AbstractC15211m
    /* renamed from: ed */
    public void mo10117ed(int i) {
        for (AbstractC15211m abstractC15211m : this.f43345b) {
            abstractC15211m.mo10117ed(i);
        }
    }

    @Override // p193e.p194a.p852i.p905t.AbstractC15231e
    /* renamed from: f */
    public void mo19021f() {
        this.f43346c.m2570b();
    }

    @Override // p193e.p194a.p852i.p905t.AbstractC15231e
    /* renamed from: g */
    public void mo19020g(AbstractC15211m abstractC15211m) {
        l.e(abstractC15211m, "listener");
        this.f43345b.add(abstractC15211m);
        if (!this.f43350g.m19089c(this.f43351h) || this.f43348e) {
            return;
        }
        ((C15226a) abstractC15211m).notifyDataSetChanged();
    }

    public f getCoroutineContext() {
        return this.f43352i.plus(this.f43344a);
    }

    @Override // p193e.p194a.p852i.p905t.AbstractC15231e
    /* renamed from: h */
    public boolean mo19019h() {
        return this.f43350g.m19090b() && this.f43351h.f43318m;
    }

    @Override // p193e.p194a.p852i.p905t.AbstractC15231e
    /* renamed from: i */
    public void mo19018i(AbstractC15211m abstractC15211m) {
        l.e(abstractC15211m, "listener");
        this.f43345b.remove(abstractC15211m);
    }

    @Override // p193e.p194a.p852i.AbstractC15211m
    public void onAdLoaded() {
        for (AbstractC15211m abstractC15211m : this.f43345b) {
            abstractC15211m.onAdLoaded();
        }
    }

    @Override // p193e.p194a.p852i.AbstractC15211m
    /* renamed from: xe */
    public void mo10116xe(AbstractC15183d abstractC15183d, int i) {
        l.e(abstractC15183d, "ad");
        for (AbstractC15211m abstractC15211m : this.f43345b) {
            abstractC15211m.mo10116xe(abstractC15183d, i);
        }
    }
}
