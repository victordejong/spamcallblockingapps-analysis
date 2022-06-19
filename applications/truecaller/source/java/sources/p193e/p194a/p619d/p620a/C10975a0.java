package p193e.p194a.p619d.p620a;

import java.util.List;
import java.util.concurrent.CancellationException;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p627b0.C11161a;
import p193e.p194a.p619d.p637c0.AbstractC11556y0;
import p193e.p194a.p619d.p637c0.C11513x0;
import p193e.p194a.p619d.p637c0.p642z1.AbstractC11592d;
import p193e.p194a.p619d.p657v.AbstractC11822b;
import p193e.p194a.p619d.p657v.AbstractC11824d;
import p193e.p194a.p619d.p661w.AbstractC12093b;
import p193e.p194a.p619d.p661w.AbstractC12114h;
import q3.a.i0;
import q3.a.j0;
import q3.a.n0;
import q3.a.p1;
import q3.a.t0;
import q3.a.x2.a1;
import q3.a.x2.i1;
import q3.a.x2.k1;
import q3.a.y;
import s1.a.a.a.v0.f.d;
import s1.g;
import s1.s;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.d.a.a0 */
/* loaded from: classes15-dex2jar.jar:e/a/d/a/a0.class */
public final class C10975a0 implements AbstractC12093b, i0 {

    /* renamed from: b */
    public final g f32511b;

    /* renamed from: f */
    public final C11033p f32515f;

    /* renamed from: g */
    public final AbstractC11824d f32516g;

    /* renamed from: a */
    public final String f32510a = "1234";

    /* renamed from: c */
    public a1<AbstractC12114h> f32512c = k1.a(AbstractC12114h.C12115a.f35452b);

    /* renamed from: d */
    public final a1<C11161a> f32513d = k1.a((Object) null);

    /* renamed from: e */
    public final y f32514e = d.j((p1) null, 1, (Object) null);

    @e(c = "com.truecaller.voip.debug.MockInvitation$accept$1", f = "MockInvitation.kt", l = {59}, m = "invokeSuspend")
    /* renamed from: e.a.d.a.a0$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/a/a0$a.class */
    public static final class C10976a extends i implements p<i0, s1.w.d<? super s>, Object> {

        /* renamed from: e */
        public int f32517e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10976a(s1.w.d dVar) {
            super(2, dVar);
            C10975a0.this = r5;
        }

        /* renamed from: i */
        public final s1.w.d<s> m25452i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C10976a(dVar);
        }

        /* renamed from: k */
        public final Object m25451k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            return new C10976a(dVar).m25450s(s.a);
        }

        /* renamed from: s */
        public final Object m25450s(Object obj) {
            a aVar = a.a;
            int i = this.f32517e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C10975a0 c10975a0 = C10975a0.this;
                n0<AbstractC11822b> mo23955h = c10975a0.f32516g.mo23955h(c10975a0.f32515f);
                this.f32517e = 1;
                Object s = mo23955h.s(this);
                obj = s;
                if (s == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            AbstractC11822b abstractC11822b = (AbstractC11822b) obj;
            if (abstractC11822b != null) {
                C10975a0.this.f32512c.setValue(new AbstractC12114h.AbstractC12116b.C12117a(abstractC11822b));
            } else {
                C10975a0.this.f32512c.setValue(AbstractC12114h.AbstractC12116b.C12127k.f35463b);
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.voip.debug.MockInvitation$connect$1", f = "MockInvitation.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.d.a.a0$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/a/a0$b.class */
    public static final class C10977b extends i implements p<i0, s1.w.d<? super s>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10977b(s1.w.d dVar) {
            super(2, dVar);
            C10975a0.this = r5;
        }

        /* renamed from: i */
        public final s1.w.d<s> m25449i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C10977b(dVar);
        }

        /* renamed from: k */
        public final Object m25448k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            C10975a0 c10975a0 = C10975a0.this;
            dVar.getContext();
            s sVar = s.a;
            C25225a.m3932a3(sVar);
            c10975a0.f32512c.setValue(AbstractC12114h.C12129c.f35465b);
            return sVar;
        }

        /* renamed from: s */
        public final Object m25447s(Object obj) {
            C25225a.m3932a3(obj);
            C10975a0.this.f32512c.setValue(AbstractC12114h.C12129c.f35465b);
            return s.a;
        }
    }

    @e(c = "com.truecaller.voip.debug.MockInvitation$end$1", f = "MockInvitation.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.d.a.a0$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/a/a0$c.class */
    public static final class C10978c extends i implements p<i0, s1.w.d<? super s>, Object> {

        /* renamed from: f */
        public final /* synthetic */ AbstractC12114h.AbstractC12116b f32521f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10978c(AbstractC12114h.AbstractC12116b abstractC12116b, s1.w.d dVar) {
            super(2, dVar);
            C10975a0.this = r5;
            this.f32521f = abstractC12116b;
        }

        /* renamed from: i */
        public final s1.w.d<s> m25446i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C10978c(this.f32521f, dVar);
        }

        /* renamed from: k */
        public final Object m25445k(Object obj, Object obj2) {
            s sVar = s.a;
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            C10975a0 c10975a0 = C10975a0.this;
            AbstractC12114h.AbstractC12116b abstractC12116b = this.f32521f;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            c10975a0.f32512c.setValue(abstractC12116b);
            d.T(c10975a0.f32514e, (CancellationException) null, 1, (Object) null);
            return sVar;
        }

        /* renamed from: s */
        public final Object m25444s(Object obj) {
            C25225a.m3932a3(obj);
            C10975a0.this.f32512c.setValue(this.f32521f);
            d.T(C10975a0.this.f32514e, (CancellationException) null, 1, (Object) null);
            return s.a;
        }
    }

    @e(c = "com.truecaller.voip.debug.MockInvitation$reject$1", f = "MockInvitation.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.d.a.a0$d */
    /* loaded from: classes15-dex2jar.jar:e/a/d/a/a0$d.class */
    public static final class C10979d extends i implements p<i0, s1.w.d<? super s>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10979d(s1.w.d dVar) {
            super(2, dVar);
            C10975a0.this = r5;
        }

        /* renamed from: i */
        public final s1.w.d<s> m25443i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C10979d(dVar);
        }

        /* renamed from: k */
        public final Object m25442k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            C10975a0 c10975a0 = C10975a0.this;
            dVar.getContext();
            s sVar = s.a;
            C25225a.m3932a3(sVar);
            c10975a0.f32512c.setValue(AbstractC12114h.AbstractC12116b.C12128l.f35464b);
            return sVar;
        }

        /* renamed from: s */
        public final Object m25441s(Object obj) {
            C25225a.m3932a3(obj);
            C10975a0.this.f32512c.setValue(AbstractC12114h.AbstractC12116b.C12128l.f35464b);
            return s.a;
        }
    }

    /* renamed from: e.a.d.a.a0$e */
    /* loaded from: classes15-dex2jar.jar:e/a/d/a/a0$e.class */
    public static final class C10980e extends m implements s1.z.b.a<String> {

        /* renamed from: c */
        public final /* synthetic */ AbstractC11556y0 f32524c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10980e(AbstractC11556y0 abstractC11556y0) {
            super(0);
            C10975a0.this = r4;
            this.f32524c = abstractC11556y0;
        }

        public Object invoke() {
            return (String) d.c3((f) null, new C10986b0(this, null), 1, (Object) null);
        }
    }

    public C10975a0(C11033p c11033p, AbstractC11824d abstractC11824d, AbstractC11556y0 abstractC11556y0) {
        l.e(c11033p, "callInfo");
        l.e(abstractC11824d, "groupCallManager");
        l.e(abstractC11556y0, "idProvider");
        this.f32515f = c11033p;
        this.f32516g = abstractC11824d;
        this.f32511b = C25225a.m3978P1(new C10980e(abstractC11556y0));
    }

    @Override // p193e.p194a.p619d.p661w.p662j.AbstractC12131a
    /* renamed from: a */
    public p1 mo23587a() {
        return d.w2(this, (f) null, (j0) null, new C10979d(null), 3, (Object) null);
    }

    @Override // p193e.p194a.p619d.p661w.p662j.AbstractC12131a
    /* renamed from: b */
    public p1 mo23586b() {
        return d.w2(this, (f) null, (j0) null, new C10976a(null), 3, (Object) null);
    }

    @Override // p193e.p194a.p619d.p661w.p662j.AbstractC12151g
    /* renamed from: c */
    public p1 mo23549c() {
        return d.w2(this, (f) null, (j0) null, new C10977b(null), 3, (Object) null);
    }

    @Override // p193e.p194a.p619d.p661w.AbstractC12093b
    /* renamed from: d */
    public AbstractC11592d mo23626d() {
        return this.f32515f;
    }

    @Override // p193e.p194a.p619d.p661w.p662j.AbstractC12174m
    /* renamed from: e */
    public p1 mo23505e(AbstractC12114h.AbstractC12116b abstractC12116b) {
        l.e(abstractC12116b, "endState");
        return d.w2(this, (f) null, (j0) null, new C10978c(abstractC12116b, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p619d.p661w.p662j.AbstractC12138c
    /* renamed from: f */
    public List<C11513x0> mo23560f(C11161a c11161a) {
        return s1.u.s.a;
    }

    @Override // p193e.p194a.p619d.p661w.AbstractC12093b
    /* renamed from: g */
    public i1 mo23625g() {
        return this.f32513d;
    }

    @Override // p193e.p194a.p619d.p661w.AbstractC12093b
    public String getChannelId() {
        return this.f32510a;
    }

    public f getCoroutineContext() {
        return t0.d.plus(this.f32514e);
    }

    @Override // p193e.p194a.p619d.p661w.AbstractC12093b
    public i1 getState() {
        return this.f32512c;
    }

    @Override // p193e.p194a.p619d.p661w.p662j.AbstractC12187w
    /* renamed from: k */
    public void mo23481k() {
    }

    @Override // p193e.p194a.p619d.p661w.AbstractC12093b
    /* renamed from: l */
    public String mo23624l() {
        return (String) this.f32511b.getValue();
    }
}
