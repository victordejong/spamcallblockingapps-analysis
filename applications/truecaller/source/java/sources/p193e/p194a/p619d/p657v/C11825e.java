package p193e.p194a.p619d.p657v;

import com.truecaller.voip.VoipCallOptions;
import java.util.Objects;
import java.util.Set;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.C19813r1;
import p193e.p194a.p1129p5.AbstractC19321u;
import p193e.p194a.p619d.p620a.C11033p;
import p193e.p194a.p619d.p620a.C11041v;
import p193e.p194a.p619d.p628c.p629a.AbstractC11183f;
import p193e.p194a.p619d.p637c0.AbstractC11392d0;
import p193e.p194a.p619d.p637c0.AbstractC11394e;
import p193e.p194a.p619d.p637c0.AbstractC11477t;
import p193e.p194a.p619d.p637c0.C11461q;
import p193e.p194a.p619d.p637c0.C11464r;
import p193e.p194a.p619d.p637c0.p641y1.AbstractC11558b;
import p193e.p194a.p619d.p637c0.p642z1.AbstractC11592d;
import p193e.p194a.p619d.p637c0.p642z1.AbstractC11598i;
import p193e.p194a.p619d.p637c0.p642z1.C11599j;
import p193e.p194a.p619d.p656u.AbstractC11816f;
import p193e.p194a.p619d.p657v.AbstractC11835f;
import p193e.p194a.p619d.p657v.AbstractC11840h;
import p193e.p194a.p619d.p657v.p658k.AbstractC11966p;
import q3.a.b3.c;
import q3.a.i0;
import q3.a.j0;
import q3.a.n0;
import q3.a.p1;
import q3.a.x2.a1;
import q3.a.x2.i1;
import q3.a.x2.k1;
import s1.s;
import s1.u.u;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.d.v.e */
/* loaded from: classes15-dex2jar.jar:e/a/d/v/e.class */
public final class C11825e implements i0, AbstractC11824d {

    /* renamed from: a */
    public final f f34758a;

    /* renamed from: b */
    public final C11826a f34759b = new C11826a();

    /* renamed from: c */
    public final a1<Boolean> f34760c = k1.a(Boolean.FALSE);

    /* renamed from: d */
    public final f f34761d;

    /* renamed from: e */
    public final AbstractC11816f f34762e;

    /* renamed from: f */
    public final C11599j f34763f;

    /* renamed from: g */
    public final a<AbstractC11394e> f34764g;

    /* renamed from: h */
    public final a<AbstractC11558b> f34765h;

    /* renamed from: i */
    public final C11461q f34766i;

    /* renamed from: j */
    public final a<AbstractC11477t> f34767j;

    /* renamed from: k */
    public final AbstractC19321u f34768k;

    /* renamed from: l */
    public final a<AbstractC11183f> f34769l;

    /* renamed from: e.a.d.v.e$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/e$a.class */
    public static final class C11826a extends C11464r<AbstractC11835f> {
        public C11826a() {
            super(AbstractC11835f.C11837b.f34809a);
        }
    }

    @e(c = "com.truecaller.voip.groupcall.GroupCallManagerImpl$deleteCallWhenEnded$1", f = "GroupCallManager.kt", l = {200, 242}, m = "invokeSuspend")
    /* renamed from: e.a.d.v.e$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/e$b.class */
    public static final class C11827b extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public Object f34770e;

        /* renamed from: f */
        public Object f34771f;

        /* renamed from: g */
        public int f34772g;

        /* renamed from: i */
        public final /* synthetic */ AbstractC11822b f34774i;

        @e(c = "com.truecaller.voip.groupcall.GroupCallManagerImpl$deleteCallWhenEnded$1$1", f = "GroupCallManager.kt", l = {}, m = "invokeSuspend")
        /* renamed from: e.a.d.v.e$b$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/v/e$b$a.class */
        public static final class C11828a extends i implements p<AbstractC11840h, d<? super Boolean>, Object> {

            /* renamed from: e */
            public /* synthetic */ Object f34775e;

            public C11828a(d dVar) {
                super(2, dVar);
            }

            /* renamed from: i */
            public final d<s> m23946i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                C11828a c11828a = new C11828a(dVar);
                c11828a.f34775e = obj;
                return c11828a;
            }

            /* renamed from: k */
            public final Object m23945k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                dVar.getContext();
                C25225a.m3932a3(s.a);
                return Boolean.valueOf(((AbstractC11840h) obj) instanceof AbstractC11840h.AbstractC11842b);
            }

            /* renamed from: s */
            public final Object m23944s(Object obj) {
                C25225a.m3932a3(obj);
                return Boolean.valueOf(((AbstractC11840h) this.f34775e) instanceof AbstractC11840h.AbstractC11842b);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11827b(AbstractC11822b abstractC11822b, d dVar) {
            super(2, dVar);
            C11825e.this = r5;
            this.f34774i = abstractC11822b;
        }

        /* renamed from: i */
        public final d<s> m23949i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C11827b(this.f34774i, dVar);
        }

        /* renamed from: k */
        public final Object m23948k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C11827b(this.f34774i, dVar).m23947s(s.a);
        }

        /* renamed from: s */
        public final Object m23947s(Object obj) {
            C11826a c11826a;
            c cVar;
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f34772g;
            try {
                if (i == 0) {
                    C25225a.m3932a3(obj);
                    i1<AbstractC11840h> state = this.f34774i.getState();
                    C11828a c11828a = new C11828a(null);
                    this.f34772g = 1;
                    if (s1.a.a.a.v0.f.d.N0(state, c11828a, this) == aVar) {
                        return aVar;
                    }
                } else if (i != 1) {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    c cVar2 = (c) this.f34771f;
                    c11826a = (C11464r) this.f34770e;
                    C25225a.m3932a3(obj);
                    cVar = cVar2;
                    c11826a.mo24640h().mo24639a(AbstractC11835f.C11837b.f34809a);
                    s sVar = s.a;
                    cVar.c((Object) null);
                    ((AbstractC11183f) C11825e.this.f34769l.get()).destroy();
                    return sVar;
                } else {
                    C25225a.m3932a3(obj);
                }
                c11826a.mo24640h().mo24639a(AbstractC11835f.C11837b.f34809a);
                s sVar2 = s.a;
                cVar.c((Object) null);
                ((AbstractC11183f) C11825e.this.f34769l.get()).destroy();
                return sVar2;
            } catch (Throwable th) {
                cVar.c((Object) null);
                throw th;
            }
            c11826a = C11825e.this.f34759b;
            cVar = c11826a.f33655b;
            this.f34770e = c11826a;
            this.f34771f = cVar;
            this.f34772g = 2;
            if (cVar.b((Object) null, this) == aVar) {
                return aVar;
            }
        }
    }

    @e(c = "com.truecaller.voip.groupcall.GroupCallManagerImpl$endCall$1", f = "GroupCallManager.kt", l = {242, 112}, m = "invokeSuspend")
    /* renamed from: e.a.d.v.e$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/e$c.class */
    public static final class C11829c extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public Object f34776e;

        /* renamed from: f */
        public Object f34777f;

        /* renamed from: g */
        public int f34778g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11829c(d dVar) {
            super(2, dVar);
            C11825e.this = r5;
        }

        /* renamed from: i */
        public final d<s> m23943i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C11829c(dVar);
        }

        /* renamed from: k */
        public final Object m23942k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C11829c(dVar).m23941s(s.a);
        }

        /* renamed from: s */
        public final Object m23941s(Object obj) {
            C11826a c11826a;
            c cVar;
            c cVar2;
            Throwable th;
            p1 mo23767k;
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f34778g;
            try {
                if (i == 0) {
                    C25225a.m3932a3(obj);
                    C11825e.this.f34760c.setValue(Boolean.TRUE);
                    c11826a = C11825e.this.f34759b;
                    cVar = c11826a.f33655b;
                    this.f34776e = c11826a;
                    this.f34777f = cVar;
                    this.f34778g = 1;
                    if (cVar.b((Object) null, this) == aVar) {
                        return aVar;
                    }
                } else if (i != 1) {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    c cVar3 = (c) this.f34776e;
                    cVar2 = cVar3;
                    try {
                        C25225a.m3932a3(obj);
                        cVar = cVar3;
                        cVar2 = cVar;
                        s sVar = s.a;
                        cVar.c((Object) null);
                        C11825e.this.f34760c.setValue(Boolean.FALSE);
                        return sVar;
                    } catch (Throwable th2) {
                        th = th2;
                        cVar2.c((Object) null);
                        throw th;
                    }
                } else {
                    c cVar4 = (c) this.f34777f;
                    c11826a = (C11464r) this.f34776e;
                    C25225a.m3932a3(obj);
                    cVar = cVar4;
                }
                c11826a.mo24640h();
                AbstractC11822b mo23961b = C11825e.this.mo23961b();
                if (mo23961b != null && (mo23767k = mo23961b.mo23767k(AbstractC11840h.AbstractC11842b.C11850h.f34819b)) != null) {
                    this.f34776e = cVar;
                    this.f34777f = null;
                    this.f34778g = 2;
                    if (mo23767k.k(this) == aVar) {
                        return aVar;
                    }
                }
                cVar2 = cVar;
                s sVar2 = s.a;
                cVar.c((Object) null);
                C11825e.this.f34760c.setValue(Boolean.FALSE);
                return sVar2;
            } catch (Throwable th3) {
                cVar2 = cVar;
                th = th3;
                cVar2.c((Object) null);
                throw th;
            }
        }
    }

    @e(c = "com.truecaller.voip.groupcall.GroupCallManagerImpl$initiateDebugCall$1", f = "GroupCallManager.kt", l = {242}, m = "invokeSuspend")
    /* renamed from: e.a.d.v.e$d */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/e$d.class */
    public static final class C11830d extends i implements p<i0, d<? super C11041v>, Object> {

        /* renamed from: e */
        public Object f34780e;

        /* renamed from: f */
        public Object f34781f;

        /* renamed from: g */
        public int f34782g;

        /* renamed from: i */
        public final /* synthetic */ C11033p f34784i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11830d(C11033p c11033p, d dVar) {
            super(2, dVar);
            C11825e.this = r5;
            this.f34784i = c11033p;
        }

        /* renamed from: i */
        public final d<s> m23940i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C11830d(this.f34784i, dVar);
        }

        /* renamed from: k */
        public final Object m23939k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C11830d(this.f34784i, dVar).m23938s(s.a);
        }

        /* JADX WARN: Finally extract failed */
        /* renamed from: s */
        public final Object m23938s(Object obj) {
            C11826a c11826a;
            c cVar;
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f34782g;
            if (i == 0) {
                C25225a.m3932a3(obj);
                c11826a = C11825e.this.f34759b;
                cVar = c11826a.f33655b;
                this.f34780e = c11826a;
                this.f34781f = cVar;
                this.f34782g = 1;
                if (cVar.b((Object) null, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                c cVar2 = (c) this.f34781f;
                c11826a = (C11464r) this.f34780e;
                C25225a.m3932a3(obj);
                cVar = cVar2;
            }
            try {
                C11464r.C11465a mo24640h = c11826a.mo24640h();
                if (!l.a(C11825e.this.f34759b.getValue(), AbstractC11835f.C11837b.f34809a)) {
                    cVar.c((Object) null);
                    return null;
                }
                C11033p c11033p = this.f34784i;
                if (c11033p == null) {
                    Object obj2 = C11825e.this.f34764g.get();
                    l.d(obj2, "callUserResolver.get()");
                    c11033p = new C11033p((AbstractC11394e) obj2);
                }
                C11041v c11041v = new C11041v(c11033p);
                C11825e.this.m23953j(c11041v);
                mo24640h.mo24639a(new AbstractC11835f.C11836a(c11041v, c11033p));
                cVar.c((Object) null);
                return c11041v;
            } catch (Throwable th) {
                cVar.c((Object) null);
                throw th;
            }
        }
    }

    @e(c = "com.truecaller.voip.groupcall.GroupCallManagerImpl$initiateIncomingCall$1", f = "GroupCallManager.kt", l = {242}, m = "invokeSuspend")
    /* renamed from: e.a.d.v.e$e */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/e$e.class */
    public static final class C11831e extends i implements p<i0, d<? super AbstractC11822b>, Object> {

        /* renamed from: e */
        public Object f34785e;

        /* renamed from: f */
        public Object f34786f;

        /* renamed from: g */
        public int f34787g;

        /* renamed from: i */
        public final /* synthetic */ AbstractC11598i f34789i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11831e(AbstractC11598i abstractC11598i, d dVar) {
            super(2, dVar);
            C11825e.this = r5;
            this.f34789i = abstractC11598i;
        }

        /* renamed from: i */
        public final d<s> m23937i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C11831e(this.f34789i, dVar);
        }

        /* renamed from: k */
        public final Object m23936k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C11831e(this.f34789i, dVar).m23935s(s.a);
        }

        /* JADX WARN: Finally extract failed */
        /* renamed from: s */
        public final Object m23935s(Object obj) {
            C11826a c11826a;
            c cVar;
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f34787g;
            if (i == 0) {
                C25225a.m3932a3(obj);
                c11826a = C11825e.this.f34759b;
                cVar = c11826a.f33655b;
                this.f34785e = c11826a;
                this.f34786f = cVar;
                this.f34787g = 1;
                if (cVar.b((Object) null, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                c cVar2 = (c) this.f34786f;
                c11826a = (C11464r) this.f34785e;
                C25225a.m3932a3(obj);
                cVar = cVar2;
            }
            try {
                C11464r.C11465a mo24640h = c11826a.mo24640h();
                if (!l.a(C11825e.this.f34759b.getValue(), AbstractC11835f.C11837b.f34809a)) {
                    cVar.c((Object) null);
                    return null;
                }
                AbstractC11822b m23952k = C11825e.this.m23952k(mo24640h, this.f34789i, u.a);
                cVar.c((Object) null);
                return m23952k;
            } catch (Throwable th) {
                cVar.c((Object) null);
                throw th;
            }
        }
    }

    @e(c = "com.truecaller.voip.groupcall.GroupCallManagerImpl$initiateOutgoingCall$1", f = "GroupCallManager.kt", l = {89}, m = "invokeSuspend")
    /* renamed from: e.a.d.v.e$f */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/e$f.class */
    public static final class C11832f extends i implements p<i0, d<? super AbstractC11853j>, Object> {

        /* renamed from: e */
        public int f34790e;

        /* renamed from: g */
        public final /* synthetic */ Set f34792g;

        /* renamed from: h */
        public final /* synthetic */ VoipCallOptions f34793h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11832f(Set set, VoipCallOptions voipCallOptions, d dVar) {
            super(2, dVar);
            C11825e.this = r5;
            this.f34792g = set;
            this.f34793h = voipCallOptions;
        }

        /* renamed from: i */
        public final d<s> m23934i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C11832f(this.f34792g, this.f34793h, dVar);
        }

        /* renamed from: k */
        public final Object m23933k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C11832f(this.f34792g, this.f34793h, dVar).m23932s(s.a);
        }

        /* renamed from: s */
        public final Object m23932s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f34790e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C11825e c11825e = C11825e.this;
                Set<String> set = this.f34792g;
                VoipCallOptions voipCallOptions = this.f34793h;
                this.f34790e = 1;
                Object m23951l = c11825e.m23951l(set, voipCallOptions, this);
                obj = m23951l;
                if (m23951l == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    @e(c = "com.truecaller.voip.groupcall.GroupCallManagerImpl", f = "GroupCallManager.kt", l = {242, 134, 139, 143, 161}, m = "initiateOutgoingCallInternal")
    /* renamed from: e.a.d.v.e$g */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/e$g.class */
    public static final class C11833g extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f34794d;

        /* renamed from: e */
        public int f34795e;

        /* renamed from: g */
        public Object f34797g;

        /* renamed from: h */
        public Object f34798h;

        /* renamed from: i */
        public Object f34799i;

        /* renamed from: j */
        public Object f34800j;

        /* renamed from: k */
        public Object f34801k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11833g(d dVar) {
            super(dVar);
            C11825e.this = r4;
        }

        /* renamed from: s */
        public final Object m23931s(Object obj) {
            this.f34794d = obj;
            this.f34795e |= Integer.MIN_VALUE;
            return C11825e.this.m23951l(null, null, this);
        }
    }

    @e(c = "com.truecaller.voip.groupcall.GroupCallManagerImpl", f = "GroupCallManager.kt", l = {211}, m = "isGroupCapable")
    /* renamed from: e.a.d.v.e$h */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/e$h.class */
    public static final class C11834h extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f34802d;

        /* renamed from: e */
        public int f34803e;

        /* renamed from: g */
        public Object f34805g;

        /* renamed from: h */
        public Object f34806h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11834h(d dVar) {
            super(dVar);
            C11825e.this = r4;
        }

        /* renamed from: s */
        public final Object m23930s(Object obj) {
            this.f34802d = obj;
            this.f34803e |= Integer.MIN_VALUE;
            return C11825e.this.m23950m(null, this);
        }
    }

    @Inject
    public C11825e(@Named("IO") f fVar, AbstractC11816f abstractC11816f, C11599j c11599j, a<AbstractC11394e> aVar, a<AbstractC11558b> aVar2, C11461q c11461q, a<AbstractC11477t> aVar3, AbstractC19321u abstractC19321u, a<AbstractC11183f> aVar4) {
        l.e(fVar, "asyncContext");
        l.e(abstractC11816f, "groupCallComponent");
        l.e(c11599j, "callInfoRepositoryFactory");
        l.e(aVar, "callUserResolver");
        l.e(aVar2, "availabilityUtil");
        l.e(c11461q, "legacyCallStatusUtil");
        l.e(aVar3, "nativeCallStateModel");
        l.e(abstractC19321u, "networkUtil");
        l.e(aVar4, "logPriorityVoipCallEvent");
        this.f34761d = fVar;
        this.f34762e = abstractC11816f;
        this.f34763f = c11599j;
        this.f34764g = aVar;
        this.f34765h = aVar2;
        this.f34766i = c11461q;
        this.f34767j = aVar3;
        this.f34768k = abstractC19321u;
        this.f34769l = aVar4;
        this.f34758a = fVar;
    }

    @Override // p193e.p194a.p619d.p657v.AbstractC11824d
    /* renamed from: a */
    public AbstractC11592d mo23962a() {
        AbstractC11835f value = this.f34759b.getValue();
        return value instanceof AbstractC11835f.C11838c ? ((AbstractC11835f.C11838c) value).f34810a : value instanceof AbstractC11835f.C11836a ? ((AbstractC11835f.C11836a) value).f34808b : null;
    }

    @Override // p193e.p194a.p619d.p657v.AbstractC11824d
    /* renamed from: b */
    public AbstractC11822b mo23961b() {
        AbstractC11835f value = this.f34759b.getValue();
        if (!(value instanceof AbstractC11835f.C11836a)) {
            value = null;
        }
        AbstractC11835f.C11836a c11836a = (AbstractC11835f.C11836a) value;
        AbstractC11822b abstractC11822b = null;
        if (c11836a != null) {
            abstractC11822b = c11836a.f34807a;
        }
        return abstractC11822b;
    }

    @Override // p193e.p194a.p619d.p657v.AbstractC11824d
    /* renamed from: c */
    public n0<AbstractC11853j> mo23960c(Set<String> set, VoipCallOptions voipCallOptions) {
        l.e(set, "inviteNumbers");
        l.e(voipCallOptions, "callOptions");
        return s1.a.a.a.v0.f.d.H(this, (f) null, (j0) null, new C11832f(set, voipCallOptions, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p619d.p657v.AbstractC11824d
    /* renamed from: d */
    public n0<AbstractC11822b> mo23959d(AbstractC11598i abstractC11598i) {
        l.e(abstractC11598i, "callInfoRepository");
        return s1.a.a.a.v0.f.d.H(this, (f) null, (j0) null, new C11831e(abstractC11598i, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p619d.p657v.AbstractC11824d
    /* renamed from: e */
    public p1 mo23958e() {
        return s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C11829c(null), 3, (Object) null);
    }

    @Override // p193e.p194a.p619d.p657v.AbstractC11824d
    /* renamed from: f */
    public i1 mo23957f() {
        return this.f34760c;
    }

    @Override // p193e.p194a.p619d.p657v.AbstractC11824d
    /* renamed from: g */
    public boolean mo23956g() {
        AbstractC11835f value = this.f34759b.getValue();
        if (!(value instanceof AbstractC11835f.C11836a)) {
            value = null;
        }
        AbstractC11835f.C11836a c11836a = (AbstractC11835f.C11836a) value;
        AbstractC11966p abstractC11966p = c11836a != null ? c11836a.f34807a : null;
        if (!(abstractC11966p instanceof C11041v)) {
            abstractC11966p = null;
        }
        return ((C11041v) abstractC11966p) != null;
    }

    public f getCoroutineContext() {
        return this.f34758a;
    }

    @Override // p193e.p194a.p619d.p657v.AbstractC11824d
    public i1 getState() {
        return this.f34759b;
    }

    @Override // p193e.p194a.p619d.p657v.AbstractC11824d
    /* renamed from: h */
    public n0<C11041v> mo23955h(C11033p c11033p) {
        return s1.a.a.a.v0.f.d.H(this, (f) null, (j0) null, new C11830d(c11033p, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p619d.p657v.AbstractC11824d
    /* renamed from: i */
    public boolean mo23954i() {
        return mo23961b() != null;
    }

    /* renamed from: j */
    public final p1 m23953j(AbstractC11822b abstractC11822b) {
        return s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C11827b(abstractC11822b, null), 3, (Object) null);
    }

    /* renamed from: k */
    public final AbstractC11822b m23952k(AbstractC11392d0<AbstractC11835f> abstractC11392d0, AbstractC11598i abstractC11598i, Set<String> set) {
        C19813r1.C19829k c19829k = (C19813r1.C19829k) this.f34762e;
        Objects.requireNonNull(c19829k);
        Objects.requireNonNull(abstractC11598i);
        c19829k.f56107b = abstractC11598i;
        C25225a.m3846s(abstractC11598i, AbstractC11598i.class);
        AbstractC11822b abstractC11822b = (AbstractC11822b) new C19813r1.C19830l(c19829k.f56106a, c19829k.f56107b, null).f56141d0.get();
        abstractC11822b.mo23816j(set);
        m23953j(abstractC11822b);
        abstractC11392d0.mo24639a(new AbstractC11835f.C11836a(abstractC11822b, abstractC11598i));
        return abstractC11822b;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:2|(5:(2:4|(10:6|8|208|(2:10|(2:12|(2:14|(2:16|(2:18|(9:20|21|22|182|183|(3:185|186|187)(6:191|192|193|194|195|196)|188|189|190)(2:24|25))(8:26|27|28|129|130|(4:132|133|134|135)(7:136|137|138|139|(4:141|142|143|(1:145)(1:146))|147|(1:149)(1:150))|151|(2:153|154)(24:155|156|157|158|159|160|161|162|163|164|165|166|167|168|169|170|171|172|173|174|175|176|177|(2:179|180)(7:181|182|183|(0)(0)|188|189|190))))(6:29|30|31|108|109|(4:111|112|151|(0)(0))(19:113|114|115|116|117|118|119|120|121|122|123|124|125|(2:127|128)|129|130|(0)(0)|151|(0)(0))))(12:32|33|34|57|207|58|(3:60|61|62)(3:63|64|(10:66|67|68|(2:70|71)|73|74|75|76|77|(3:79|80|81))(20:85|86|87|88|89|90|91|92|93|94|95|96|97|98|99|100|101|102|103|(2:105|106)(4:107|108|109|(0)(0))))|82|83|84|151|(0)(0)))(1:37))(2:38|(2:40|41)(1:42))|210|43|212|44|45|(5:47|48|84|151|(0)(0))(5:49|50|51|52|(2:54|55)(10:56|57|207|58|(0)(0)|82|83|84|151|(0)(0)))))|212|44|45|(0)(0))|7|8|208|(0)(0)|210|43|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:202:0x0576, code lost:
        r8 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:203:0x0577, code lost:
        r7 = r6;
        r6 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00c2, code lost:
        r6 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0185, code lost:
        r7 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0186, code lost:
        r8 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x02fc, code lost:
        if (r18 != null) goto L75;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x03d4  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x03da  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x042f  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x043c  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x047a  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0483  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x0517  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x052d  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x01c5  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0251  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x025c A[Catch: all -> 0x0568, TRY_ENTER, TryCatch #4 {all -> 0x0568, blocks: (B:44:0x0228, B:45:0x022b, B:49:0x025c), top: B:212:0x0228 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x02be  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x02c9  */
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m23951l(java.util.Set<java.lang.String> r6, com.truecaller.voip.VoipCallOptions r7, s1.w.d<? super p193e.p194a.p619d.p657v.AbstractC11853j> r8) {
        /*
            Method dump skipped, instructions count: 1416
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p657v.C11825e.m23951l(java.util.Set, com.truecaller.voip.VoipCallOptions, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00db  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x00c6 -> B:22:0x00cc). Please submit an issue!!! */
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m23950m(java.util.Set<java.lang.String> r6, s1.w.d<? super java.lang.Boolean> r7) {
        /*
            Method dump skipped, instructions count: 223
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p657v.C11825e.m23950m(java.util.Set, s1.w.d):java.lang.Object");
    }
}
