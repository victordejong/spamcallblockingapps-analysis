package p193e.p194a.p619d.p620a;

import java.util.concurrent.CancellationException;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p657v.C11821a;
import p193e.p194a.p619d.p657v.p659l.AbstractC12020a;
import p193e.p194a.p619d.p657v.p659l.AbstractC12022c;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import q3.a.t0;
import q3.a.x2.a1;
import q3.a.x2.i1;
import q3.a.x2.k1;
import q3.a.y;
import s1.a.a.a.v0.f.d;
import s1.s;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.d.a.o */
/* loaded from: classes15-dex2jar.jar:e/a/d/a/o.class */
public final class C11029o implements AbstractC12020a, i0 {

    /* renamed from: a */
    public boolean f32618a;

    /* renamed from: b */
    public a1<AbstractC12022c> f32619b = k1.a(AbstractC12022c.C12023a.f35245b);

    /* renamed from: c */
    public a1<C11821a> f32620c = k1.a(new C11821a(false, false, false, 7));

    /* renamed from: d */
    public final y f32621d = d.j((p1) null, 1, (Object) null);

    /* renamed from: e */
    public final i1<Boolean> f32622e = k1.a(Boolean.FALSE);

    /* renamed from: f */
    public final int f32623f;

    /* renamed from: g */
    public final C11033p f32624g;

    @e(c = "com.truecaller.voip.debug.MockCall$cancelInvite$1", f = "MockCall.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.d.a.o$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/a/o$a.class */
    public static final class C11030a extends i implements p<i0, s1.w.d<? super s>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11030a(s1.w.d dVar) {
            super(2, dVar);
            C11029o.this = r5;
        }

        /* renamed from: i */
        public final s1.w.d<s> m25393i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C11030a(dVar);
        }

        /* renamed from: k */
        public final Object m25392k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            C11029o c11029o = C11029o.this;
            dVar.getContext();
            s sVar = s.a;
            C25225a.m3932a3(sVar);
            c11029o.mo23679e(AbstractC12022c.AbstractC12024b.C12028d.f35249b);
            return sVar;
        }

        /* renamed from: s */
        public final Object m25391s(Object obj) {
            C25225a.m3932a3(obj);
            C11029o.this.mo23679e(AbstractC12022c.AbstractC12024b.C12028d.f35249b);
            return s.a;
        }
    }

    @e(c = "com.truecaller.voip.debug.MockCall$connect$1", f = "MockCall.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.d.a.o$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/a/o$b.class */
    public static final class C11031b extends i implements p<i0, s1.w.d<? super s>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11031b(s1.w.d dVar) {
            super(2, dVar);
            C11029o.this = r5;
        }

        /* renamed from: i */
        public final s1.w.d<s> m25390i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C11031b(dVar);
        }

        /* renamed from: k */
        public final Object m25389k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            C11029o c11029o = C11029o.this;
            dVar.getContext();
            s sVar = s.a;
            C25225a.m3932a3(sVar);
            c11029o.f32619b.setValue(AbstractC12022c.C12033c.f35254b);
            return sVar;
        }

        /* renamed from: s */
        public final Object m25388s(Object obj) {
            C25225a.m3932a3(obj);
            C11029o.this.f32619b.setValue(AbstractC12022c.C12033c.f35254b);
            return s.a;
        }
    }

    @e(c = "com.truecaller.voip.debug.MockCall$end$1", f = "MockCall.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.d.a.o$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/a/o$c.class */
    public static final class C11032c extends i implements p<i0, s1.w.d<? super s>, Object> {

        /* renamed from: f */
        public final /* synthetic */ AbstractC12022c.AbstractC12024b f32628f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11032c(AbstractC12022c.AbstractC12024b abstractC12024b, s1.w.d dVar) {
            super(2, dVar);
            C11029o.this = r5;
            this.f32628f = abstractC12024b;
        }

        /* renamed from: i */
        public final s1.w.d<s> m25387i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C11032c(this.f32628f, dVar);
        }

        /* renamed from: k */
        public final Object m25386k(Object obj, Object obj2) {
            s sVar = s.a;
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            C11029o c11029o = C11029o.this;
            AbstractC12022c.AbstractC12024b abstractC12024b = this.f32628f;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            c11029o.f32619b.setValue(abstractC12024b);
            d.T(c11029o.f32621d, (CancellationException) null, 1, (Object) null);
            return sVar;
        }

        /* renamed from: s */
        public final Object m25385s(Object obj) {
            C25225a.m3932a3(obj);
            C11029o.this.f32619b.setValue(this.f32628f);
            d.T(C11029o.this.f32621d, (CancellationException) null, 1, (Object) null);
            return s.a;
        }
    }

    public C11029o(int i, C11033p c11033p) {
        l.e(c11033p, "callInfo");
        this.f32623f = i;
        this.f32624g = c11033p;
    }

    @Override // p193e.p194a.p619d.p657v.p659l.AbstractC12020a
    /* renamed from: a */
    public boolean mo23703a() {
        return this.f32618a;
    }

    @Override // p193e.p194a.p619d.p657v.p659l.AbstractC12020a
    /* renamed from: b */
    public i1 mo23702b() {
        return this.f32620c;
    }

    @Override // p193e.p194a.p619d.p657v.p659l.p660e.AbstractC12042d
    /* renamed from: c */
    public p1 mo23695c() {
        return d.w2(this, (f) null, (j0) null, new C11031b(null), 3, (Object) null);
    }

    @Override // p193e.p194a.p619d.p657v.p659l.AbstractC12020a
    /* renamed from: d */
    public int mo23701d() {
        return this.f32623f;
    }

    @Override // p193e.p194a.p619d.p657v.p659l.p660e.AbstractC12052g
    /* renamed from: e */
    public p1 mo23679e(AbstractC12022c.AbstractC12024b abstractC12024b) {
        l.e(abstractC12024b, "endState");
        return d.w2(this, (f) null, (j0) null, new C11032c(abstractC12024b, null), 3, (Object) null);
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (obj != null) {
            if (!(obj instanceof C11029o)) {
                z = false;
            } else {
                z = false;
                if (this.f32623f == ((C11029o) obj).f32623f) {
                    z = true;
                }
            }
        }
        return z;
    }

    @Override // p193e.p194a.p619d.p657v.p659l.AbstractC12020a
    /* renamed from: f */
    public i1<Boolean> mo23700f() {
        return this.f32622e;
    }

    @Override // p193e.p194a.p619d.p657v.p659l.p660e.AbstractC12039b
    /* renamed from: g */
    public p1 mo23699g() {
        return d.w2(this, (f) null, (j0) null, new C11030a(null), 3, (Object) null);
    }

    public f getCoroutineContext() {
        return t0.d.plus(this.f32621d);
    }

    @Override // p193e.p194a.p619d.p657v.p659l.AbstractC12020a
    public i1 getState() {
        return this.f32619b;
    }

    public int hashCode() {
        return this.f32623f;
    }
}
