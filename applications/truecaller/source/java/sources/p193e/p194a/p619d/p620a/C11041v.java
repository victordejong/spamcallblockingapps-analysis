package p193e.p194a.p619d.p620a;

import com.truecaller.voip.groupcall.action.InviteResult;
import com.truecaller.voip.groupcall.call.CallDirection;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.CancellationException;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p637c0.C11513x0;
import p193e.p194a.p619d.p637c0.p640x1.AbstractC11514a;
import p193e.p194a.p619d.p637c0.p640x1.C11519b;
import p193e.p194a.p619d.p637c0.p642z1.AbstractC11592d;
import p193e.p194a.p619d.p637c0.p642z1.C11593e;
import p193e.p194a.p619d.p657v.AbstractC11822b;
import p193e.p194a.p619d.p657v.AbstractC11840h;
import p193e.p194a.p619d.p657v.C11821a;
import p193e.p194a.p619d.p657v.p658k.AbstractC12015z;
import p193e.p194a.p619d.p657v.p659l.AbstractC12022c;
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
import s1.u.s;
import s1.u.t;
import s1.u.u;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.d.a.v */
/* loaded from: classes15-dex2jar.jar:e/a/d/a/v.class */
public final class C11041v implements AbstractC11822b, i0 {

    /* renamed from: a */
    public String f32659a = "1234";

    /* renamed from: b */
    public CallDirection f32660b = CallDirection.OUTGOING;

    /* renamed from: c */
    public final a1<AbstractC11840h> f32661c = k1.a(AbstractC11840h.C11841a.f34811b);

    /* renamed from: d */
    public final a1<C11519b> f32662d = k1.a(new C11519b(AbstractC11514a.C11516b.f33808a, s.a));

    /* renamed from: e */
    public final a1<C11821a> f32663e = k1.a(new C11821a(false, false, false, 7));

    /* renamed from: f */
    public final a1<Set<C11029o>> f32664f = k1.a(u.a);

    /* renamed from: g */
    public final a1<Long> f32665g = k1.a((Object) null);

    /* renamed from: h */
    public final a1<Map<Integer, AbstractC12015z>> f32666h = k1.a(t.a);

    /* renamed from: i */
    public final y f32667i = d.j((p1) null, 1, (Object) null);

    /* renamed from: j */
    public final C11033p f32668j;

    @e(c = "com.truecaller.voip.debug.MockGroupCall$changeAudioRoute$1", f = "MockGroupCall.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.d.a.v$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/a/v$a.class */
    public static final class C11042a extends i implements p<i0, s1.w.d<? super s1.s>, Object> {

        /* renamed from: f */
        public final /* synthetic */ AbstractC11514a f32670f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11042a(AbstractC11514a abstractC11514a, s1.w.d dVar) {
            super(2, dVar);
            C11041v.this = r5;
            this.f32670f = abstractC11514a;
        }

        /* renamed from: i */
        public final s1.w.d<s1.s> m25375i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C11042a(this.f32670f, dVar);
        }

        /* renamed from: k */
        public final Object m25374k(Object obj, Object obj2) {
            s1.s sVar = s1.s.a;
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            C11041v c11041v = C11041v.this;
            AbstractC11514a abstractC11514a = this.f32670f;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            a1<C11519b> a1Var = c11041v.f32662d;
            C11519b c11519b = (C11519b) a1Var.getValue();
            a1Var.setValue(c11519b.m24558a(abstractC11514a, c11519b.f33812b));
            return sVar;
        }

        /* renamed from: s */
        public final Object m25373s(Object obj) {
            C25225a.m3932a3(obj);
            a1<C11519b> a1Var = C11041v.this.f32662d;
            C11519b c11519b = (C11519b) a1Var.getValue();
            a1Var.setValue(c11519b.m24558a(this.f32670f, c11519b.f33812b));
            return s1.s.a;
        }
    }

    @e(c = "com.truecaller.voip.debug.MockGroupCall$connect$1", f = "MockGroupCall.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.d.a.v$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/a/v$b.class */
    public static final class C11043b extends i implements p<i0, s1.w.d<? super s1.s>, Object> {
        public C11043b(s1.w.d dVar) {
            super(2, dVar);
        }

        /* renamed from: i */
        public final s1.w.d<s1.s> m25372i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C11043b(dVar);
        }

        /* renamed from: k */
        public final Object m25371k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            dVar.getContext();
            s1.s sVar = s1.s.a;
            C25225a.m3932a3(sVar);
            return sVar;
        }

        /* renamed from: s */
        public final Object m25370s(Object obj) {
            C25225a.m3932a3(obj);
            return s1.s.a;
        }
    }

    @e(c = "com.truecaller.voip.debug.MockGroupCall$end$1", f = "MockGroupCall.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.d.a.v$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/a/v$c.class */
    public static final class C11044c extends i implements p<i0, s1.w.d<? super s1.s>, Object> {

        /* renamed from: f */
        public final /* synthetic */ AbstractC11840h.AbstractC11842b f32672f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11044c(AbstractC11840h.AbstractC11842b abstractC11842b, s1.w.d dVar) {
            super(2, dVar);
            C11041v.this = r5;
            this.f32672f = abstractC11842b;
        }

        /* renamed from: i */
        public final s1.w.d<s1.s> m25369i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C11044c(this.f32672f, dVar);
        }

        /* renamed from: k */
        public final Object m25368k(Object obj, Object obj2) {
            s1.s sVar = s1.s.a;
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            C11041v c11041v = C11041v.this;
            AbstractC11840h.AbstractC11842b abstractC11842b = this.f32672f;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            c11041v.f32661c.setValue(abstractC11842b);
            for (C11029o c11029o : (Iterable) c11041v.f32664f.getValue()) {
                c11029o.mo23679e(new AbstractC12022c.AbstractC12024b.C12027c(abstractC11842b));
            }
            d.T(c11041v.f32667i, (CancellationException) null, 1, (Object) null);
            return sVar;
        }

        /* renamed from: s */
        public final Object m25367s(Object obj) {
            C25225a.m3932a3(obj);
            C11041v.this.f32661c.setValue(this.f32672f);
            for (C11029o c11029o : (Iterable) C11041v.this.f32664f.getValue()) {
                c11029o.mo23679e(new AbstractC12022c.AbstractC12024b.C12027c(this.f32672f));
            }
            d.T(C11041v.this.f32667i, (CancellationException) null, 1, (Object) null);
            return s1.s.a;
        }
    }

    @e(c = "com.truecaller.voip.debug.MockGroupCall$inviteByNumbers$1", f = "MockGroupCall.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.d.a.v$d */
    /* loaded from: classes15-dex2jar.jar:e/a/d/a/v$d.class */
    public static final class C11045d extends i implements p<i0, s1.w.d<? super InviteResult>, Object> {

        /* renamed from: f */
        public final /* synthetic */ Set f32674f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11045d(Set set, s1.w.d dVar) {
            super(2, dVar);
            C11041v.this = r5;
            this.f32674f = set;
        }

        /* renamed from: i */
        public final s1.w.d<s1.s> m25366i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C11045d(this.f32674f, dVar);
        }

        /* renamed from: k */
        public final Object m25365k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            return new C11045d(this.f32674f, dVar).m25364s(s1.s.a);
        }

        /* renamed from: s */
        public final Object m25364s(Object obj) {
            C25225a.m3932a3(obj);
            Set<String> set = this.f32674f;
            ArrayList<C11029o> arrayList = new ArrayList(C25225a.m4004J(set, 10));
            for (String str : set) {
                arrayList.add(new C11029o(C11041v.this.f32668j.m25382w(str), C11041v.this.f32668j));
            }
            for (C11029o c11029o : arrayList) {
                C11041v c11041v = C11041v.this;
                Objects.requireNonNull(c11041v);
                d.w2(c11041v, (f) null, (j0) null, new C11050w(c11041v, c11029o, null), 3, (Object) null);
            }
            C11033p c11033p = C11041v.this.f32668j;
            Set<String> set2 = this.f32674f;
            ArrayList arrayList2 = new ArrayList(C25225a.m4004J(set2, 10));
            for (String str2 : set2) {
                arrayList2.add(new Integer(C11041v.this.f32668j.m25382w(str2)));
            }
            c11033p.m25384u(s1.u.i.d1(arrayList2));
            a1<Set<C11029o>> a1Var = C11041v.this.f32664f;
            a1Var.setValue(s1.u.i.q0((Set) a1Var.getValue(), arrayList));
            return InviteResult.INVITED;
        }
    }

    @e(c = "com.truecaller.voip.debug.MockGroupCall$setMuted$1", f = "MockGroupCall.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.d.a.v$e */
    /* loaded from: classes15-dex2jar.jar:e/a/d/a/v$e.class */
    public static final class C11046e extends i implements p<i0, s1.w.d<? super s1.s>, Object> {

        /* renamed from: f */
        public final /* synthetic */ boolean f32676f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11046e(boolean z, s1.w.d dVar) {
            super(2, dVar);
            C11041v.this = r5;
            this.f32676f = z;
        }

        /* renamed from: i */
        public final s1.w.d<s1.s> m25363i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C11046e(this.f32676f, dVar);
        }

        /* renamed from: k */
        public final Object m25362k(Object obj, Object obj2) {
            s1.s sVar = s1.s.a;
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            C11041v c11041v = C11041v.this;
            boolean z = this.f32676f;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            a1<C11821a> a1Var = c11041v.f32663e;
            a1Var.setValue(C11821a.m23967a((C11821a) a1Var.getValue(), z, false, false, 6));
            return sVar;
        }

        /* renamed from: s */
        public final Object m25361s(Object obj) {
            C25225a.m3932a3(obj);
            a1<C11821a> a1Var = C11041v.this.f32663e;
            a1Var.setValue(C11821a.m23967a((C11821a) a1Var.getValue(), this.f32676f, false, false, 6));
            return s1.s.a;
        }
    }

    @e(c = "com.truecaller.voip.debug.MockGroupCall$setOnHold$1", f = "MockGroupCall.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.d.a.v$f */
    /* loaded from: classes15-dex2jar.jar:e/a/d/a/v$f.class */
    public static final class C11047f extends i implements p<i0, s1.w.d<? super s1.s>, Object> {

        /* renamed from: f */
        public final /* synthetic */ boolean f32678f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11047f(boolean z, s1.w.d dVar) {
            super(2, dVar);
            C11041v.this = r5;
            this.f32678f = z;
        }

        /* renamed from: i */
        public final s1.w.d<s1.s> m25360i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C11047f(this.f32678f, dVar);
        }

        /* renamed from: k */
        public final Object m25359k(Object obj, Object obj2) {
            s1.s sVar = s1.s.a;
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            C11041v c11041v = C11041v.this;
            boolean z = this.f32678f;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            a1<C11821a> a1Var = c11041v.f32663e;
            a1Var.setValue(C11821a.m23967a((C11821a) a1Var.getValue(), false, z, false, 5));
            return sVar;
        }

        /* renamed from: s */
        public final Object m25358s(Object obj) {
            C25225a.m3932a3(obj);
            a1<C11821a> a1Var = C11041v.this.f32663e;
            a1Var.setValue(C11821a.m23967a((C11821a) a1Var.getValue(), false, this.f32678f, false, 5));
            return s1.s.a;
        }
    }

    @e(c = "com.truecaller.voip.debug.MockGroupCall$toggleMute$1", f = "MockGroupCall.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.d.a.v$g */
    /* loaded from: classes15-dex2jar.jar:e/a/d/a/v$g.class */
    public static final class C11048g extends i implements p<i0, s1.w.d<? super s1.s>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11048g(s1.w.d dVar) {
            super(2, dVar);
            C11041v.this = r5;
        }

        /* renamed from: i */
        public final s1.w.d<s1.s> m25357i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C11048g(dVar);
        }

        /* renamed from: k */
        public final Object m25356k(Object obj, Object obj2) {
            s1.s sVar = s1.s.a;
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            C11041v c11041v = C11041v.this;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            a1<C11821a> a1Var = c11041v.f32663e;
            a1Var.setValue(C11821a.m23967a((C11821a) a1Var.getValue(), !((C11821a) c11041v.f32663e.getValue()).f34737a, false, false, 6));
            return sVar;
        }

        /* renamed from: s */
        public final Object m25355s(Object obj) {
            C25225a.m3932a3(obj);
            a1<C11821a> a1Var = C11041v.this.f32663e;
            a1Var.setValue(C11821a.m23967a((C11821a) a1Var.getValue(), !((C11821a) C11041v.this.f32663e.getValue()).f34737a, false, false, 6));
            return s1.s.a;
        }
    }

    @e(c = "com.truecaller.voip.debug.MockGroupCall$toggleSpeaker$1", f = "MockGroupCall.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.d.a.v$h */
    /* loaded from: classes15-dex2jar.jar:e/a/d/a/v$h.class */
    public static final class C11049h extends i implements p<i0, s1.w.d<? super s1.s>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11049h(s1.w.d dVar) {
            super(2, dVar);
            C11041v.this = r5;
        }

        /* renamed from: i */
        public final s1.w.d<s1.s> m25354i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C11049h(dVar);
        }

        /* renamed from: k */
        public final Object m25353k(Object obj, Object obj2) {
            s1.s sVar = s1.s.a;
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            C11041v c11041v = C11041v.this;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            AbstractC11514a.C11516b c11516b = ((C11519b) c11041v.f32662d.getValue()).f33811a instanceof AbstractC11514a.C11517c ? AbstractC11514a.C11516b.f33808a : AbstractC11514a.C11517c.f33809a;
            a1<C11519b> a1Var = c11041v.f32662d;
            C11519b c11519b = (C11519b) a1Var.getValue();
            a1Var.setValue(c11519b.m24558a(c11516b, c11519b.f33812b));
            return sVar;
        }

        /* renamed from: s */
        public final Object m25352s(Object obj) {
            C25225a.m3932a3(obj);
            AbstractC11514a.C11516b c11516b = ((C11519b) C11041v.this.f32662d.getValue()).f33811a instanceof AbstractC11514a.C11517c ? AbstractC11514a.C11516b.f33808a : AbstractC11514a.C11517c.f33809a;
            a1<C11519b> a1Var = C11041v.this.f32662d;
            C11519b c11519b = (C11519b) a1Var.getValue();
            a1Var.setValue(c11519b.m24558a(c11516b, c11519b.f33812b));
            return s1.s.a;
        }
    }

    public C11041v(C11033p c11033p) {
        l.e(c11033p, "callInfo");
        this.f32668j = c11033p;
        Iterable<C11593e> iterable = (Iterable) c11033p.f32629a.getValue();
        ArrayList arrayList = new ArrayList(C25225a.m4004J(iterable, 10));
        for (C11593e c11593e : iterable) {
            arrayList.add(new C11029o(c11593e.f33990a, this.f32668j));
        }
        this.f32664f.setValue(s1.u.i.d1(arrayList));
        d.w2(this, (f) null, (j0) null, new C11052x(this, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p619d.p657v.AbstractC11822b
    /* renamed from: Y */
    public i1 mo23966Y() {
        return this.f32662d;
    }

    @Override // p193e.p194a.p619d.p657v.AbstractC11822b
    /* renamed from: a */
    public i1 mo23965a() {
        return this.f32664f;
    }

    @Override // p193e.p194a.p619d.p657v.p658k.AbstractC11860a
    /* renamed from: b */
    public i1 mo23922b() {
        return this.f32663e;
    }

    @Override // p193e.p194a.p619d.p657v.p658k.AbstractC11897e
    /* renamed from: c */
    public p1 mo23855c(AbstractC11514a abstractC11514a) {
        l.e(abstractC11514a, "route");
        return d.w2(this, (f) null, (j0) null, new C11042a(abstractC11514a, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p619d.p657v.AbstractC11822b
    /* renamed from: d */
    public AbstractC11592d mo23964d() {
        return this.f32668j;
    }

    @Override // p193e.p194a.p619d.p657v.p658k.AbstractC11860a
    /* renamed from: e */
    public p1 mo23920e(boolean z) {
        return d.w2(this, (f) null, (j0) null, new C11046e(z, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p619d.p657v.p658k.AbstractC12004w0
    /* renamed from: f */
    public i1 mo23704f() {
        return this.f32665g;
    }

    @Override // p193e.p194a.p619d.p657v.p658k.AbstractC11860a
    /* renamed from: g */
    public p1 mo23919g() {
        return d.w2(this, (f) null, (j0) null, new C11048g(null), 3, (Object) null);
    }

    @Override // p193e.p194a.p619d.p657v.AbstractC11822b
    public String getChannelId() {
        return this.f32659a;
    }

    public f getCoroutineContext() {
        return t0.d.plus(this.f32667i);
    }

    @Override // p193e.p194a.p619d.p657v.AbstractC11822b
    public i1 getState() {
        return this.f32661c;
    }

    @Override // p193e.p194a.p619d.p657v.p658k.AbstractC11860a
    /* renamed from: h */
    public p1 mo23918h(boolean z) {
        return d.w2(this, (f) null, (j0) null, new C11047f(z, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p619d.p657v.p658k.AbstractC11861a0
    /* renamed from: i */
    public i1 mo23905i() {
        return this.f32666h;
    }

    @Override // p193e.p194a.p619d.p657v.p658k.AbstractC11925j
    /* renamed from: j */
    public p1 mo23816j(Set<String> set) {
        l.e(set, "inviteNumbers");
        return d.w2(this, (f) null, (j0) null, new C11043b(null), 3, (Object) null);
    }

    @Override // p193e.p194a.p619d.p657v.p658k.AbstractC11966p
    /* renamed from: k */
    public p1 mo23767k(AbstractC11840h.AbstractC11842b abstractC11842b) {
        l.e(abstractC11842b, "endState");
        return d.w2(this, (f) null, (j0) null, new C11044c(abstractC11842b, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p619d.p657v.AbstractC11822b
    /* renamed from: m */
    public CallDirection mo23963m() {
        return this.f32660b;
    }

    @Override // p193e.p194a.p619d.p657v.p658k.AbstractC11913g
    /* renamed from: n */
    public List<C11513x0> mo23828n() {
        return s.a;
    }

    @Override // p193e.p194a.p619d.p657v.p658k.AbstractC11861a0
    /* renamed from: o */
    public n0<InviteResult> mo23904o(Set<String> set) {
        l.e(set, "numbers");
        return d.H(this, (f) null, (j0) null, new C11045d(set, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p619d.p657v.p658k.AbstractC11897e
    /* renamed from: q */
    public p1 mo23854q() {
        return d.w2(this, (f) null, (j0) null, new C11049h(null), 3, (Object) null);
    }
}
