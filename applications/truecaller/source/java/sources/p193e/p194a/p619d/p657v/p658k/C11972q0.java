package p193e.p194a.p619d.p657v.p658k;

import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p637c0.C11464r;
import p193e.p194a.p619d.p637c0.p640x1.AbstractC11522e;
import p193e.p194a.p619d.p637c0.p640x1.C11519b;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import q3.a.x2.f;
import q3.a.x2.g;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.d.v.k.q0 */
/* loaded from: classes15-dex2jar.jar:e/a/d/v/k/q0.class */
public final class C11972q0 implements i0, AbstractC11967p0 {

    /* renamed from: a */
    public final AbstractC11522e f35156a;

    /* renamed from: b */
    public final C11464r<C11519b> f35157b;

    /* renamed from: c */
    public final /* synthetic */ i0 f35158c;

    @e(c = "com.truecaller.voip.groupcall.action.NotifyGroupCallAudioRouteImpl$notifyRouteChanges$1", f = "NotifyGroupCallAudioRoute.kt", l = {32}, m = "invokeSuspend")
    /* renamed from: e.a.d.v.k.q0$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/k/q0$a.class */
    public static final class C11973a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f35159e;

        /* renamed from: e.a.d.v.k.q0$a$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/v/k/q0$a$a.class */
        public static final class C11974a implements g<C11519b> {

            @e(c = "com.truecaller.voip.groupcall.action.NotifyGroupCallAudioRouteImpl$notifyRouteChanges$1$invokeSuspend$$inlined$collect$1", f = "NotifyGroupCallAudioRoute.kt", l = {140}, m = "emit")
            /* renamed from: e.a.d.v.k.q0$a$a$a */
            /* loaded from: classes15-dex2jar.jar:e/a/d/v/k/q0$a$a$a.class */
            public static final class C11975a extends c {

                /* renamed from: d */
                public /* synthetic */ Object f35162d;

                /* renamed from: e */
                public int f35163e;

                /* renamed from: g */
                public Object f35165g;

                /* renamed from: h */
                public Object f35166h;

                /* renamed from: i */
                public Object f35167i;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C11975a(d dVar) {
                    super(dVar);
                    C11974a.this = r4;
                }

                /* renamed from: s */
                public final Object m23754s(Object obj) {
                    this.f35162d = obj;
                    this.f35163e |= Integer.MIN_VALUE;
                    return C11974a.this.m23755a(null, this);
                }
            }

            public C11974a() {
                C11973a.this = r4;
            }

            /* JADX WARN: Removed duplicated region for block: B:10:0x0048  */
            /* JADX WARN: Removed duplicated region for block: B:15:0x0078  */
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.lang.Object m23755a(java.lang.Object r6, s1.w.d r7) {
                /*
                    Method dump skipped, instructions count: 220
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p657v.p658k.C11972q0.C11973a.C11974a.m23755a(java.lang.Object, s1.w.d):java.lang.Object");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11973a(d dVar) {
            super(2, dVar);
            C11972q0.this = r5;
        }

        /* renamed from: i */
        public final d<s> m23758i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C11973a(dVar);
        }

        /* renamed from: k */
        public final Object m23757k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C11973a(dVar).m23756s(s.a);
        }

        /* renamed from: s */
        public final Object m23756s(Object obj) {
            a aVar = a.a;
            int i = this.f35159e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                f<C11519b> mo24550h = C11972q0.this.f35156a.mo24550h();
                C11974a c11974a = new C11974a();
                this.f35159e = 1;
                if (mo24550h.c(c11974a, this) == aVar) {
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

    @Inject
    public C11972q0(i0 i0Var, AbstractC11522e abstractC11522e, C11464r<C11519b> c11464r) {
        l.e(i0Var, "coroutineScope");
        l.e(abstractC11522e, "audioUtil");
        l.e(c11464r, "audioState");
        this.f35158c = i0Var;
        this.f35156a = abstractC11522e;
        this.f35157b = c11464r;
    }

    @Override // p193e.p194a.p619d.p657v.p658k.AbstractC11967p0
    /* renamed from: a */
    public p1 mo23759a() {
        return s1.a.a.a.v0.f.d.w2(this, (s1.w.f) null, (j0) null, new C11973a(null), 3, (Object) null);
    }

    public s1.w.f getCoroutineContext() {
        return this.f35158c.getCoroutineContext();
    }
}
