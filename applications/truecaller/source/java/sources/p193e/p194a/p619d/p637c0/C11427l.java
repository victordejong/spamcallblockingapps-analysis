package p193e.p194a.p619d.p637c0;

import java.util.Set;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.x2.f;
import q3.a.x2.g;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.c0;
import s1.z.c.l;
@e(c = "com.truecaller.voip.util.FlowsKt$asSetUpdateFlow$1", f = "Flows.kt", l = {28}, m = "invokeSuspend")
/* renamed from: e.a.d.c0.l */
/* loaded from: classes15-dex2jar.jar:e/a/d/c0/l.class */
public final class C11427l extends i implements p<g<? super AbstractC11387c0<T>>, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f33575e;

    /* renamed from: f */
    public int f33576f;

    /* renamed from: g */
    public final /* synthetic */ f f33577g;

    /* renamed from: h */
    public final /* synthetic */ Set f33578h;

    /* renamed from: e.a.d.c0.l$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/l$a.class */
    public static final class C11428a implements g<Set<? extends T>> {

        /* renamed from: a */
        public final /* synthetic */ g f33579a;

        /* renamed from: b */
        public final /* synthetic */ c0 f33580b;

        @e(c = "com.truecaller.voip.util.FlowsKt$asSetUpdateFlow$1$invokeSuspend$$inlined$collect$1", f = "Flows.kt", l = {136, 139}, m = "emit")
        /* renamed from: e.a.d.c0.l$a$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/c0/l$a$a.class */
        public static final class C11429a extends c {

            /* renamed from: d */
            public /* synthetic */ Object f33581d;

            /* renamed from: e */
            public int f33582e;

            /* renamed from: g */
            public Object f33584g;

            /* renamed from: h */
            public Object f33585h;

            /* renamed from: i */
            public Object f33586i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C11429a(d dVar) {
                super(dVar);
                C11428a.this = r4;
            }

            /* renamed from: s */
            public final Object m24698s(Object obj) {
                this.f33581d = obj;
                this.f33582e |= Integer.MIN_VALUE;
                return C11428a.this.m24699a(null, this);
            }
        }

        public C11428a(g gVar, c0 c0Var) {
            this.f33579a = gVar;
            this.f33580b = c0Var;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0046  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x0095  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x011d  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object m24699a(java.lang.Object r6, s1.w.d r7) {
            /*
                Method dump skipped, instructions count: 360
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p637c0.C11427l.C11428a.m24699a(java.lang.Object, s1.w.d):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11427l(f fVar, Set set, d dVar) {
        super(2, dVar);
        this.f33577g = fVar;
        this.f33578h = set;
    }

    /* renamed from: i */
    public final d<s> m24702i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C11427l c11427l = new C11427l(this.f33577g, this.f33578h, dVar);
        c11427l.f33575e = obj;
        return c11427l;
    }

    /* renamed from: k */
    public final Object m24701k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C11427l c11427l = new C11427l(this.f33577g, this.f33578h, dVar);
        c11427l.f33575e = obj;
        return c11427l.m24700s(s.a);
    }

    /* renamed from: s */
    public final Object m24700s(Object obj) {
        a aVar = a.a;
        int i = this.f33576f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            g gVar = (g) this.f33575e;
            c0 c0Var = new c0();
            c0Var.a = this.f33578h;
            f fVar = this.f33577g;
            C11428a c11428a = new C11428a(gVar, c0Var);
            this.f33576f = 1;
            if (fVar.c(c11428a, this) == aVar) {
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
