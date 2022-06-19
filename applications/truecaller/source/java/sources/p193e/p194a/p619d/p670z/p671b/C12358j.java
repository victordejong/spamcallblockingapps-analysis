package p193e.p194a.p619d.p670z.p671b;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p619d.p637c0.AbstractC11376b;
import p193e.p194a.p619d.p637c0.C11379b0;
import p193e.p194a.p619d.p657v.AbstractC11822b;
import q3.a.i0;
import q3.a.x2.g;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.service.call.CallServicePresenter$setNotificationTitleAndAvatar$1", f = "CallServicePresenter.kt", l = {331}, m = "invokeSuspend")
/* renamed from: e.a.d.z.b.j */
/* loaded from: classes15-dex2jar.jar:e/a/d/z/b/j.class */
public final class C12358j extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f36077e;

    /* renamed from: f */
    public final /* synthetic */ C12334c f36078f;

    /* renamed from: g */
    public final /* synthetic */ AbstractC11822b f36079g;

    /* renamed from: e.a.d.z.b.j$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/z/b/j$a.class */
    public static final class C12359a implements g<AbstractC11376b> {

        @e(c = "com.truecaller.voip.service.call.CallServicePresenter$setNotificationTitleAndAvatar$1$invokeSuspend$$inlined$collect$1", f = "CallServicePresenter.kt", l = {140}, m = "emit")
        /* renamed from: e.a.d.z.b.j$a$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/z/b/j$a$a.class */
        public static final class C12360a extends c {

            /* renamed from: d */
            public /* synthetic */ Object f36081d;

            /* renamed from: e */
            public int f36082e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C12360a(d dVar) {
                super(dVar);
                C12359a.this = r4;
            }

            /* renamed from: s */
            public final Object m23186s(Object obj) {
                this.f36081d = obj;
                this.f36082e |= Integer.MIN_VALUE;
                return C12359a.this.m23187a(null, this);
            }
        }

        public C12359a() {
            C12358j.this = r4;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x005f  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object m23187a(java.lang.Object r6, s1.w.d r7) {
            /*
                Method dump skipped, instructions count: 281
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p670z.p671b.C12358j.C12359a.m23187a(java.lang.Object, s1.w.d):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12358j(C12334c c12334c, AbstractC11822b abstractC11822b, d dVar) {
        super(2, dVar);
        this.f36078f = c12334c;
        this.f36079g = abstractC11822b;
    }

    /* renamed from: i */
    public final d<s> m23190i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C12358j(this.f36078f, this.f36079g, dVar);
    }

    /* renamed from: k */
    public final Object m23189k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C12358j(this.f36078f, this.f36079g, dVar).m23188s(s.a);
    }

    /* renamed from: s */
    public final Object m23188s(Object obj) {
        a aVar = a.a;
        int i = this.f36077e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C11379b0 m13617J0 = C19291g.m13617J0(this.f36079g.mo23964d(), this.f36078f.f36021h, 8);
            g c12359a = new C12359a();
            this.f36077e = 1;
            if (m13617J0.m24759c(c12359a, this) == aVar) {
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
