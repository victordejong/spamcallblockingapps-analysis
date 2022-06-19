package p193e.p194a.p619d.p628c.p635b;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p657v.AbstractC11822b;
import p193e.p194a.p619d.p657v.AbstractC11840h;
import q3.a.i0;
import q3.a.x2.i1;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.ui.ongoing.OngoingVoipPresenter$hideButtonsWhenCallEnded$1", f = "OngoingVoipPresenter.kt", l = {122}, m = "invokeSuspend")
/* renamed from: e.a.d.c.b.i */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/b/i.class */
public final class C11279i extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f33241e;

    /* renamed from: f */
    public final /* synthetic */ C11292o f33242f;

    /* renamed from: g */
    public final /* synthetic */ AbstractC11822b f33243g;

    @e(c = "com.truecaller.voip.ui.ongoing.OngoingVoipPresenter$hideButtonsWhenCallEnded$1$1", f = "OngoingVoipPresenter.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.d.c.b.i$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c/b/i$a.class */
    public static final class C11280a extends i implements p<AbstractC11840h, d<? super Boolean>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f33244e;

        public C11280a(d dVar) {
            super(2, dVar);
        }

        /* renamed from: i */
        public final d<s> m24919i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C11280a c11280a = new C11280a(dVar);
            c11280a.f33244e = obj;
            return c11280a;
        }

        /* renamed from: k */
        public final Object m24918k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            dVar.getContext();
            C25225a.m3932a3(s.a);
            return Boolean.valueOf(((AbstractC11840h) obj) instanceof AbstractC11840h.AbstractC11842b);
        }

        /* renamed from: s */
        public final Object m24917s(Object obj) {
            C25225a.m3932a3(obj);
            return Boolean.valueOf(((AbstractC11840h) this.f33244e) instanceof AbstractC11840h.AbstractC11842b);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11279i(C11292o c11292o, AbstractC11822b abstractC11822b, d dVar) {
        super(2, dVar);
        this.f33242f = c11292o;
        this.f33243g = abstractC11822b;
    }

    /* renamed from: i */
    public final d<s> m24922i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C11279i(this.f33242f, this.f33243g, dVar);
    }

    /* renamed from: k */
    public final Object m24921k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C11279i(this.f33242f, this.f33243g, dVar).m24920s(s.a);
    }

    /* renamed from: s */
    public final Object m24920s(Object obj) {
        a aVar = a.a;
        int i = this.f33241e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            i1<AbstractC11840h> state = this.f33243g.getState();
            C11280a c11280a = new C11280a(null);
            this.f33241e = 1;
            if (s1.a.a.a.v0.f.d.P0(state, c11280a, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        AbstractC11278h abstractC11278h = (AbstractC11278h) this.f33242f.f57683a;
        if (abstractC11278h != null) {
            abstractC11278h.mo24927V(false);
            abstractC11278h.mo24924q();
        }
        return s.a;
    }
}
