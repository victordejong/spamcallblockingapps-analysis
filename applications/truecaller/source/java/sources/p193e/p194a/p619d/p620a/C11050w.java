package p193e.p194a.p619d.p620a;

import java.util.Iterator;
import java.util.Set;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p637c0.p642z1.C11593e;
import p193e.p194a.p619d.p657v.p659l.AbstractC12022c;
import q3.a.i0;
import q3.a.x2.a1;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.debug.MockGroupCall$deleteCallWhenEnded$1", f = "MockGroupCall.kt", l = {106}, m = "invokeSuspend")
/* renamed from: e.a.d.a.w */
/* loaded from: classes15-dex2jar.jar:e/a/d/a/w.class */
public final class C11050w extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f32681e;

    /* renamed from: f */
    public final /* synthetic */ C11041v f32682f;

    /* renamed from: g */
    public final /* synthetic */ C11029o f32683g;

    @e(c = "com.truecaller.voip.debug.MockGroupCall$deleteCallWhenEnded$1$endedState$1", f = "MockGroupCall.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.d.a.w$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/a/w$a.class */
    public static final class C11051a extends i implements p<AbstractC12022c, d<? super Boolean>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f32684e;

        public C11051a(d dVar) {
            super(2, dVar);
        }

        /* renamed from: i */
        public final d<s> m25348i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C11051a c11051a = new C11051a(dVar);
            c11051a.f32684e = obj;
            return c11051a;
        }

        /* renamed from: k */
        public final Object m25347k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            dVar.getContext();
            C25225a.m3932a3(s.a);
            return Boolean.valueOf(((AbstractC12022c) obj) instanceof AbstractC12022c.AbstractC12024b);
        }

        /* renamed from: s */
        public final Object m25346s(Object obj) {
            C25225a.m3932a3(obj);
            return Boolean.valueOf(((AbstractC12022c) this.f32684e) instanceof AbstractC12022c.AbstractC12024b);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11050w(C11041v c11041v, C11029o c11029o, d dVar) {
        super(2, dVar);
        this.f32682f = c11041v;
        this.f32683g = c11029o;
    }

    /* renamed from: i */
    public final d<s> m25351i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C11050w(this.f32682f, this.f32683g, dVar);
    }

    /* renamed from: k */
    public final Object m25350k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C11050w(this.f32682f, this.f32683g, dVar).m25349s(s.a);
    }

    /* renamed from: s */
    public final Object m25349s(Object obj) {
        Object obj2;
        s sVar = s.a;
        a aVar = a.a;
        int i = this.f32681e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            a1<AbstractC12022c> a1Var = this.f32683g.f32619b;
            C11051a c11051a = new C11051a(null);
            this.f32681e = 1;
            Object N0 = s1.a.a.a.v0.f.d.N0(a1Var, c11051a, this);
            obj = N0;
            if (N0 == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        if (((AbstractC12022c) obj) instanceof AbstractC12022c.AbstractC12024b.C12027c) {
            return sVar;
        }
        C11033p c11033p = this.f32682f.f32668j;
        int i2 = this.f32683g.f32623f;
        Iterator it = ((Iterable) c11033p.f32629a.getValue()).iterator();
        do {
            obj2 = null;
            if (!it.hasNext()) {
                break;
            }
            obj2 = it.next();
        } while (!(((C11593e) obj2).f33990a == i2));
        C11593e c11593e = (C11593e) obj2;
        if (c11593e != null) {
            a1<Set<C11593e>> a1Var2 = c11033p.f32629a;
            a1Var2.setValue(s1.u.i.c0((Set) a1Var2.getValue(), c11593e));
        }
        a1<Set<C11029o>> a1Var3 = this.f32682f.f32664f;
        a1Var3.setValue(s1.u.i.c0((Set) a1Var3.getValue(), this.f32683g));
        return sVar;
    }
}
