package p193e.p194a.p437c.p552i.p554b;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import q3.a.j0;
import q3.a.n0;
import q3.a.p1;
import q3.a.x2.a1;
import q3.a.x2.k1;
import q3.a.y;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.c.i.b.e */
/* loaded from: classes10-dex2jar.jar:e/a/c/i/b/e.class */
public abstract class AbstractC10280e implements AbstractC10278c {

    /* renamed from: a */
    public final y f30469a;

    /* renamed from: b */
    public final i0 f30470b;

    /* renamed from: c */
    public final n0<s> f30471c;

    /* renamed from: d */
    public final a1<Boolean> f30472d = k1.a(Boolean.FALSE);

    @e(c = "com.truecaller.insights.core.assets.LazyResourceInitializer$1", f = "LazyResourceInitializer.kt", l = {26, 27}, m = "invokeSuspend")
    /* renamed from: e.a.c.i.b.e$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/b/e$a.class */
    public static final class C10281a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f30473e;

        @e(c = "com.truecaller.insights.core.assets.LazyResourceInitializer$1$1", f = "LazyResourceInitializer.kt", l = {}, m = "invokeSuspend")
        /* renamed from: e.a.c.i.b.e$a$a */
        /* loaded from: classes10-dex2jar.jar:e/a/c/i/b/e$a$a.class */
        public static final class C10282a extends i implements p<Boolean, d<? super Boolean>, Object> {

            /* renamed from: e */
            public /* synthetic */ boolean f30475e;

            public C10282a(d dVar) {
                super(2, dVar);
            }

            /* renamed from: i */
            public final d<s> m26477i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                C10282a c10282a = new C10282a(dVar);
                Boolean bool = (Boolean) obj;
                bool.booleanValue();
                c10282a.f30475e = bool.booleanValue();
                return c10282a;
            }

            /* renamed from: k */
            public final Object m26476k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                dVar.getContext();
                Boolean bool = (Boolean) obj;
                bool.booleanValue();
                boolean booleanValue = bool.booleanValue();
                C25225a.m3932a3(s.a);
                return Boolean.valueOf(booleanValue);
            }

            /* renamed from: s */
            public final Object m26475s(Object obj) {
                C25225a.m3932a3(obj);
                return Boolean.valueOf(this.f30475e);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10281a(d dVar) {
            super(2, dVar);
            AbstractC10280e.this = r5;
        }

        /* renamed from: i */
        public final d<s> m26480i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C10281a(dVar);
        }

        /* renamed from: k */
        public final Object m26479k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C10281a(dVar).m26478s(s.a);
        }

        /* renamed from: s */
        public final Object m26478s(Object obj) {
            a aVar = a.a;
            int i = this.f30473e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                a1<Boolean> a1Var = AbstractC10280e.this.f30472d;
                C10282a c10282a = new C10282a(null);
                this.f30473e = 1;
                if (s1.a.a.a.v0.f.d.N0(a1Var, c10282a, this) == aVar) {
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
            AbstractC10280e abstractC10280e = AbstractC10280e.this;
            this.f30473e = 2;
            if (abstractC10280e.mo25566B(this) == aVar) {
                return aVar;
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.insights.core.assets.LazyResourceInitializer$ensureInit$1", f = "LazyResourceInitializer.kt", l = {44}, m = "invokeSuspend")
    /* renamed from: e.a.c.i.b.e$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/b/e$b.class */
    public static final class C10283b extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f30476e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10283b(d dVar) {
            super(2, dVar);
            AbstractC10280e.this = r5;
        }

        /* renamed from: i */
        public final d<s> m26474i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C10283b(dVar);
        }

        /* renamed from: k */
        public final Object m26473k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C10283b(dVar).m26472s(s.a);
        }

        /* renamed from: s */
        public final Object m26472s(Object obj) {
            a aVar = a.a;
            int i = this.f30476e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                n0<s> n0Var = AbstractC10280e.this.f30471c;
                this.f30476e = 1;
                if (n0Var.s(this) == aVar) {
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

    public AbstractC10280e(f fVar) {
        l.e(fVar, "ioContext");
        y n = s1.a.a.a.v0.f.d.n((p1) null, 1);
        this.f30469a = n;
        i0 h = s1.a.a.a.v0.f.d.h(fVar.plus(n));
        this.f30470b = h;
        this.f30471c = s1.a.a.a.v0.f.d.H(h, (f) null, (j0) null, new C10281a(null), 3, (Object) null);
    }

    /* renamed from: A */
    public final void m26482A() {
        s1.a.a.a.v0.f.d.c3((f) null, new C10283b(null), 1, (Object) null);
    }

    /* renamed from: B */
    public abstract Object mo25566B(d<? super s> dVar);

    @Override // p193e.p194a.p437c.p552i.p554b.AbstractC10278c
    /* renamed from: a */
    public void mo26481a() {
        this.f30472d.setValue(Boolean.TRUE);
    }
}
