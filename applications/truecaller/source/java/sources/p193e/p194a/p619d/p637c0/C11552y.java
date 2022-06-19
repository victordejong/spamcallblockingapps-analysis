package p193e.p194a.p619d.p637c0;

import java.util.Collection;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p627b0.C11161a;
import q3.a.x2.f;
import q3.a.x2.g;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.q;
import s1.z.c.m;
@e(c = "com.truecaller.voip.util.SearchStateFlowsKt$notificationUserInfo$$inlined$flatMapLatest$1", f = "SearchStateFlows.kt", l = {222}, m = "invokeSuspend")
/* renamed from: e.a.d.c0.y */
/* loaded from: classes15-dex2jar.jar:e/a/d/c0/y.class */
public final class C11552y extends i implements q<g<? super C11161a[]>, Collection<? extends f<? extends C11161a>>, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f33890e;

    /* renamed from: f */
    public /* synthetic */ Object f33891f;

    /* renamed from: g */
    public int f33892g;

    /* renamed from: e.a.d.c0.y$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/y$a.class */
    public static final class C11553a implements f<C11161a[]> {

        /* renamed from: a */
        public final /* synthetic */ f[] f33893a;

        /* renamed from: e.a.d.c0.y$a$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/c0/y$a$a.class */
        public static final class C11554a extends m implements a<C11161a[]> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C11554a() {
                super(0);
                C11553a.this = r4;
            }

            public Object invoke() {
                return new C11161a[C11553a.this.f33893a.length];
            }
        }

        @e(c = "com.truecaller.voip.util.SearchStateFlowsKt$$special$$inlined$combine$1$3", f = "SearchStateFlows.kt", l = {333}, m = "invokeSuspend")
        /* renamed from: e.a.d.c0.y$a$b */
        /* loaded from: classes15-dex2jar.jar:e/a/d/c0/y$a$b.class */
        public static final class C11555b extends i implements q<g<? super C11161a[]>, C11161a[], d<? super s>, Object> {

            /* renamed from: e */
            public /* synthetic */ Object f33895e;

            /* renamed from: f */
            public /* synthetic */ Object f33896f;

            /* renamed from: g */
            public int f33897g;

            /* renamed from: h */
            public final /* synthetic */ C11553a f33898h;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C11555b(d dVar, C11553a c11553a) {
                super(3, dVar);
                this.f33898h = c11553a;
            }

            /* renamed from: h */
            public final Object m24494h(Object obj, Object obj2, Object obj3) {
                C11555b c11555b = new C11555b((d) obj3, this.f33898h);
                c11555b.f33895e = (g) obj;
                c11555b.f33896f = (Object[]) obj2;
                return c11555b.m24493s(s.a);
            }

            /* renamed from: s */
            public final Object m24493s(Object obj) {
                s1.w.j.a aVar = s1.w.j.a.a;
                int i = this.f33897g;
                if (i == 0) {
                    C25225a.m3932a3(obj);
                    this.f33897g = 1;
                    if (((g) this.f33895e).a((C11161a[]) ((Object[]) this.f33896f), this) == aVar) {
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

        public C11553a(f[] fVarArr) {
            this.f33893a = fVarArr;
        }

        /* renamed from: c */
        public Object m24495c(g gVar, d dVar) {
            Object h0 = s1.a.a.a.v0.f.d.h0(gVar, this.f33893a, new C11554a(), new C11555b(null, this), dVar);
            return h0 == s1.w.j.a.a ? h0 : s.a;
        }
    }

    public C11552y(d dVar) {
        super(3, dVar);
    }

    /* renamed from: h */
    public final Object m24497h(Object obj, Object obj2, Object obj3) {
        C11552y c11552y = new C11552y((d) obj3);
        c11552y.f33890e = (g) obj;
        c11552y.f33891f = obj2;
        return c11552y.m24496s(s.a);
    }

    /* renamed from: s */
    public final Object m24496s(Object obj) {
        s1.w.j.a aVar = s1.w.j.a.a;
        int i = this.f33892g;
        if (i == 0) {
            C25225a.m3932a3(obj);
            g gVar = (g) this.f33890e;
            Object[] array = s1.u.i.S0((Collection) this.f33891f).toArray(new f[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
            C11553a c11553a = new C11553a((f[]) array);
            this.f33892g = 1;
            if (c11553a.c(gVar, this) == aVar) {
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
