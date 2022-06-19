package p193e.p194a.p437c.p438a.p507p.p513e;

import android.support.p001v4.media.session.MediaSessionCompat;
import com.truecaller.insights.p168ui.smartfeed.presentation.InsightsSmartFeedViewModel;
import n3.z.b0;
import n3.z.f2;
import n3.z.h2;
import n3.z.j;
import n3.z.k;
import n3.z.m;
import n3.z.n;
import p1727n3.p1909z.AbstractC27546a;
import p1727n3.p1909z.C27549a2;
import p1727n3.p1909z.C27555b2;
import p1727n3.p1909z.C27560e0;
import p1727n3.p1909z.C27566g;
import p1727n3.p1909z.p1910j3.C27578g;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p438a.p507p.p510c.AbstractC9460d;
import p193e.p194a.p437c.p438a.p507p.p510c.C9466e;
import p193e.p194a.p437c.p438a.p507p.p511d.C9467a;
import p193e.p194a.p437c.p438a.p507p.p511d.C9484k;
import q3.a.i0;
import q3.a.x2.d1;
import q3.a.x2.f;
import q3.a.x2.t;
import q3.a.x2.w0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.insights.ui.smartfeed.view.InsightsSmartFeedFragment$collectLatest$1", f = "InsightsSmartFeedFragment.kt", l = {138}, m = "invokeSuspend")
/* renamed from: e.a.c.a.p.e.g */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/p/e/g.class */
public final class C9512g extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f28841e;

    /* renamed from: f */
    public final /* synthetic */ C9507f f28842f;

    @e(c = "com.truecaller.insights.ui.smartfeed.view.InsightsSmartFeedFragment$collectLatest$1$1", f = "InsightsSmartFeedFragment.kt", l = {138}, m = "invokeSuspend")
    /* renamed from: e.a.c.a.p.e.g$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/p/e/g$a.class */
    public static final class C9513a extends i implements p<C27555b2<AbstractC9460d>, d<? super s>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f28843e;

        /* renamed from: f */
        public int f28844f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9513a(d dVar) {
            super(2, dVar);
            C9512g.this = r5;
        }

        /* renamed from: i */
        public final d<s> m27479i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C9513a c9513a = new C9513a(dVar);
            c9513a.f28843e = obj;
            return c9513a;
        }

        /* renamed from: k */
        public final Object m27478k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C9513a c9513a = new C9513a(dVar);
            c9513a.f28843e = obj;
            return c9513a.m27477s(s.a);
        }

        /* renamed from: s */
        public final Object m27477s(Object obj) {
            a aVar = s.a;
            a aVar2 = a.a;
            int i = this.f28844f;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C27555b2 c27555b2 = (C27555b2) this.f28843e;
                C9467a c9467a = C9512g.this.f28842f.f28831e;
                if (c9467a == null) {
                    l.l("insightsSmartFeedAdapter");
                    throw null;
                }
                this.f28844f = 1;
                C27566g c27566g = ((f2) c9467a).b;
                c27566g.f77653d.incrementAndGet();
                C27566g.a aVar3 = c27566g.f77652c;
                a m114a = aVar3.f77678e.m114a(0, new h2(aVar3, c27555b2, (d) null), this);
                if (m114a != aVar2) {
                    m114a = aVar;
                }
                if (m114a != aVar2) {
                    m114a = aVar;
                }
                if (m114a != aVar2) {
                    m114a = aVar;
                }
                if (m114a == aVar2) {
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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C9512g(C9507f c9507f, d dVar) {
        super(2, dVar);
        this.f28842f = c9507f;
    }

    /* renamed from: i */
    public final d<s> m27482i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C9512g(this.f28842f, dVar);
    }

    /* renamed from: k */
    public final Object m27481k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C9512g(this.f28842f, dVar).m27480s(s.a);
    }

    /* renamed from: s */
    public final Object m27480s(Object obj) {
        a aVar = a.a;
        int i = this.f28841e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C9507f c9507f = this.f28842f;
            s1.a.l[] lVarArr = C9507f.f28829m;
            InsightsSmartFeedViewModel m27488RA = c9507f.m27488RA();
            f<C27555b2<AbstractC9460d>> m27874c = m27488RA.f12919p.m27874c(new C9466e(new C27549a2(50, 0, true, 100, 0, 0, 50), m27488RA.f12904a, m27488RA.f12918o, s1.u.i.S0(m27488RA.f12909f)));
            i0 m43315C0 = MediaSessionCompat.m43315C0(m27488RA);
            l.e(m27874c, "$this$cachedIn");
            l.e(m43315C0, "scope");
            l.e(m27874c, "$this$cachedIn");
            l.e(m43315C0, "scope");
            n3.z.i iVar = new n3.z.i(m27874c, m43315C0);
            n3.z.l lVar = new n3.z.l((d) null);
            Object obj2 = C27560e0.f77634a;
            l.e(iVar, "$this$simpleRunningReduce");
            l.e(lVar, "operation");
            w0 w0Var = new w0(new C27578g(m43315C0, 1, new q3.a.x2.s(new t(new m((AbstractC27546a) null, (d) null), new j(new d1(new b0(iVar, lVar, (d) null)))), new n((AbstractC27546a) null, (d) null)), false, new k((d) null), true, 8).f77711b, m27488RA.f12908e, new C9484k(m27488RA, null));
            C9513a c9513a = new C9513a(null);
            this.f28841e = 1;
            if (s1.a.a.a.v0.f.d.g0(w0Var, c9513a, this) == aVar) {
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
