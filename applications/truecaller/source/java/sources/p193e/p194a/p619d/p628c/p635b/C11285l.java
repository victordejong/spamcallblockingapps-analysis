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
@e(c = "com.truecaller.voip.ui.ongoing.OngoingVoipPresenter$maybeEnableButtons$1", f = "OngoingVoipPresenter.kt", l = {115}, m = "invokeSuspend")
/* renamed from: e.a.d.c.b.l */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/b/l.class */
public final class C11285l extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f33253e;

    /* renamed from: f */
    public final /* synthetic */ C11292o f33254f;

    /* renamed from: g */
    public final /* synthetic */ AbstractC11822b f33255g;

    @e(c = "com.truecaller.voip.ui.ongoing.OngoingVoipPresenter$maybeEnableButtons$1$1", f = "OngoingVoipPresenter.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.d.c.b.l$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c/b/l$a.class */
    public static final class C11286a extends i implements p<AbstractC11840h, d<? super Boolean>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f33256e;

        public C11286a(d dVar) {
            super(2, dVar);
        }

        /* renamed from: i */
        public final d<s> m24905i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C11286a c11286a = new C11286a(dVar);
            c11286a.f33256e = obj;
            return c11286a;
        }

        /* renamed from: k */
        public final Object m24904k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            dVar.getContext();
            C25225a.m3932a3(s.a);
            return Boolean.valueOf(((AbstractC11840h) obj) instanceof AbstractC11840h.C11851c);
        }

        /* renamed from: s */
        public final Object m24903s(Object obj) {
            C25225a.m3932a3(obj);
            return Boolean.valueOf(((AbstractC11840h) this.f33256e) instanceof AbstractC11840h.C11851c);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11285l(C11292o c11292o, AbstractC11822b abstractC11822b, d dVar) {
        super(2, dVar);
        this.f33254f = c11292o;
        this.f33255g = abstractC11822b;
    }

    /* renamed from: i */
    public final d<s> m24908i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C11285l(this.f33254f, this.f33255g, dVar);
    }

    /* renamed from: k */
    public final Object m24907k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C11285l(this.f33254f, this.f33255g, dVar).m24906s(s.a);
    }

    /* renamed from: s */
    public final Object m24906s(Object obj) {
        AbstractC11278h abstractC11278h;
        a aVar = a.a;
        int i = this.f33253e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            i1<AbstractC11840h> state = this.f33255g.getState();
            C11286a c11286a = new C11286a(null);
            this.f33253e = 1;
            if (s1.a.a.a.v0.f.d.P0(state, c11286a, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        if (!((Boolean) this.f33254f.f33267e.mo23957f().getValue()).booleanValue() && (abstractC11278h = (AbstractC11278h) this.f33254f.f57683a) != null) {
            abstractC11278h.mo24927V(true);
        }
        return s.a;
    }
}
