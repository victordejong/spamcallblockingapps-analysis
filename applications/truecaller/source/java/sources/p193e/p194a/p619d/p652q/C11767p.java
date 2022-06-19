package p193e.p194a.p619d.p652q;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p657v.AbstractC11822b;
import p193e.p194a.p619d.p657v.AbstractC11835f;
import p193e.p194a.p619d.p657v.AbstractC11840h;
import p193e.p194a.p619d.p657v.C11821a;
import q3.a.x2.f;
import q3.a.x2.g;
import q3.a.x2.x0;
import q3.a.x2.y0;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.q;
import s1.z.c.l;
@e(c = "com.truecaller.voip.callconnection.VoipCallConnectionImpl$setStateFromGroupCall$$inlined$flatMapLatest$1", f = "VoipCallConnection.kt", l = {219}, m = "invokeSuspend")
/* renamed from: e.a.d.q.p */
/* loaded from: classes15-dex2jar.jar:e/a/d/q/p.class */
public final class C11767p extends i implements q<g<? super k<? extends AbstractC11840h, ? extends C11821a>>, AbstractC11835f.C11836a, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f34569e;

    /* renamed from: f */
    public /* synthetic */ Object f34570f;

    /* renamed from: g */
    public int f34571g;

    @e(c = "com.truecaller.voip.callconnection.VoipCallConnectionImpl$setStateFromGroupCall$1$1", f = "VoipCallConnection.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.d.q.p$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/q/p$a.class */
    public static final class C11768a extends i implements q<AbstractC11840h, C11821a, d<? super k<? extends AbstractC11840h, ? extends C11821a>>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f34572e;

        /* renamed from: f */
        public /* synthetic */ Object f34573f;

        public C11768a(d dVar) {
            super(3, dVar);
        }

        /* renamed from: h */
        public final Object m24029h(Object obj, Object obj2, Object obj3) {
            AbstractC11840h abstractC11840h = (AbstractC11840h) obj;
            C11821a c11821a = (C11821a) obj2;
            d dVar = (d) obj3;
            l.e(abstractC11840h, "callState");
            l.e(c11821a, "settingState");
            l.e(dVar, "continuation");
            dVar.getContext();
            C25225a.m3932a3(s.a);
            return new k(abstractC11840h, c11821a);
        }

        /* renamed from: s */
        public final Object m24028s(Object obj) {
            C25225a.m3932a3(obj);
            return new k((AbstractC11840h) this.f34572e, (C11821a) this.f34573f);
        }
    }

    public C11767p(d dVar) {
        super(3, dVar);
    }

    /* renamed from: h */
    public final Object m24031h(Object obj, Object obj2, Object obj3) {
        C11767p c11767p = new C11767p((d) obj3);
        c11767p.f34569e = (g) obj;
        c11767p.f34570f = obj2;
        return c11767p.m24030s(s.a);
    }

    /* renamed from: s */
    public final Object m24030s(Object obj) {
        Object obj2 = s.a;
        Object obj3 = a.a;
        int i = this.f34571g;
        if (i == 0) {
            C25225a.m3932a3(obj);
            g gVar = (g) this.f34569e;
            AbstractC11822b abstractC11822b = ((AbstractC11835f.C11836a) this.f34570f).f34807a;
            f state = abstractC11822b.getState();
            f mo23922b = abstractC11822b.mo23922b();
            C11768a c11768a = new C11768a(null);
            this.f34571g = 1;
            Object h0 = s1.a.a.a.v0.f.d.h0(gVar, new f[]{state, mo23922b}, y0.b, new x0(c11768a, (d) null), this);
            if (h0 != obj3) {
                h0 = obj2;
            }
            if (h0 == obj3) {
                return obj3;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        return obj2;
    }
}
