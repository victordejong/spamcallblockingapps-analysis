package p193e.p194a.p619d.p657v.p659l.p660e;

import javax.inject.Inject;
import p193e.p194a.p619d.p657v.p659l.AbstractC12022c;
import p193e.p194a.p619d.p657v.p659l.C12035d;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.d.v.l.e.h */
/* loaded from: classes15-dex2jar.jar:e/a/d/v/l/e/h.class */
public final class C12053h implements i0, AbstractC12052g {

    /* renamed from: a */
    public final i0 f35294a;

    /* renamed from: b */
    public final C12035d f35295b;

    @e(c = "com.truecaller.voip.groupcall.call.action.EndCallImpl$end$1", f = "EndCall.kt", l = {24, 42}, m = "invokeSuspend")
    /* renamed from: e.a.d.v.l.e.h$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/l/e/h$a.class */
    public static final class C12054a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public Object f35296e;

        /* renamed from: f */
        public Object f35297f;

        /* renamed from: g */
        public int f35298g;

        /* renamed from: i */
        public final /* synthetic */ AbstractC12022c.AbstractC12024b f35300i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12054a(AbstractC12022c.AbstractC12024b abstractC12024b, d dVar) {
            super(2, dVar);
            C12053h.this = r5;
            this.f35300i = abstractC12024b;
        }

        /* renamed from: i */
        public final d<s> m23678i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C12054a(this.f35300i, dVar);
        }

        /* renamed from: k */
        public final Object m23677k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C12054a(this.f35300i, dVar).m23676s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:24:0x00c6  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x00c9 A[Catch: all -> 0x0100, TRY_ENTER, TryCatch #0 {all -> 0x0100, blocks: (B:22:0x00a5, B:25:0x00c9, B:26:0x00f1, B:26:0x00f1), top: B:33:0x00a5 }] */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m23676s(java.lang.Object r5) {
            /*
                Method dump skipped, instructions count: 268
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p657v.p659l.p660e.C12053h.C12054a.m23676s(java.lang.Object):java.lang.Object");
        }
    }

    @Inject
    public C12053h(i0 i0Var, C12035d c12035d) {
        l.e(i0Var, "callScope");
        l.e(c12035d, "stateMachine");
        this.f35294a = i0Var;
        this.f35295b = c12035d;
    }

    @Override // p193e.p194a.p619d.p657v.p659l.p660e.AbstractC12052g
    /* renamed from: e */
    public p1 mo23679e(AbstractC12022c.AbstractC12024b abstractC12024b) {
        l.e(abstractC12024b, "endState");
        return s1.a.a.a.v0.f.d.w2(this, s1.a.a.a.v0.f.d.j((p1) null, 1, (Object) null), (j0) null, new C12054a(abstractC12024b, null), 2, (Object) null);
    }

    public f getCoroutineContext() {
        return this.f35294a.getCoroutineContext();
    }
}
