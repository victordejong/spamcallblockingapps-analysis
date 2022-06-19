package p193e.p194a.p437c.p438a.p487k.p489b;

import java.util.concurrent.CancellationException;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p438a.p487k.p490c.C9213d;
import p193e.p194a.p437c.p438a.p487k.p491d.AbstractC9214a;
import p193e.p194a.p437c.p548h.AbstractC10257g;
import p193e.p194a.p437c.p548h.p551m.C10264a;
import q3.a.j0;
import q3.a.w2.v;
import q3.a.w2.x;
import s1.e0.k;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.l;
import s1.z.b.p;
import s1.z.c.m;
@e(c = "com.truecaller.insights.ui.markedimportantpage.domain.FetchImportantMessageFlowUseCase$execute$1", f = "FetchImportantMessageFlowUseCase.kt", l = {41, 45}, m = "invokeSuspend")
/* renamed from: e.a.c.a.k.b.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/k/b/a.class */
public final class C9195a extends i implements p<x<? super C9213d>, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f27956e;

    /* renamed from: f */
    public int f27957f;

    /* renamed from: g */
    public final /* synthetic */ C9199b f27958g;

    /* renamed from: h */
    public final /* synthetic */ AbstractC9214a f27959h;

    /* renamed from: e.a.c.a.k.b.a$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/k/b/a$a.class */
    public static final class C9196a extends m implements l<k<? extends C10264a>, s> {

        /* renamed from: c */
        public final /* synthetic */ x f27961c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9196a(x xVar) {
            super(1);
            C9195a.this = r4;
            this.f27961c = xVar;
        }

        /* renamed from: d */
        public Object m27802d(Object obj) {
            k kVar = (k) obj;
            s1.z.c.l.e(kVar, "it");
            C9195a c9195a = C9195a.this;
            C9199b c9199b = c9195a.f27958g;
            s1.a.a.a.v0.f.d.w2(c9199b.f27965b, (f) null, (j0) null, new C9201c(c9199b, kVar, this.f27961c, c9195a.f27959h, null), 3, (Object) null);
            return s.a;
        }
    }

    /* renamed from: e.a.c.a.k.b.a$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/k/b/a$b.class */
    public static final class C9197b extends m implements a<s> {

        /* renamed from: c */
        public final /* synthetic */ x f27963c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9197b(x xVar) {
            super(0);
            C9195a.this = r4;
            this.f27963c = xVar;
        }

        public Object invoke() {
            this.f27963c.offer(new C9213d(C9195a.this.f27958g.m27801d(false, null), s1.u.s.a));
            return s.a;
        }
    }

    /* renamed from: e.a.c.a.k.b.a$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/k/b/a$c.class */
    public static final class C9198c extends m implements a<s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9198c() {
            super(0);
            C9195a.this = r4;
        }

        public Object invoke() {
            s1.a.a.a.v0.f.d.S(C9195a.this.f27958g.f27965b, (CancellationException) null, 1);
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C9195a(C9199b c9199b, AbstractC9214a abstractC9214a, d dVar) {
        super(2, dVar);
        this.f27958g = c9199b;
        this.f27959h = abstractC9214a;
    }

    /* renamed from: i */
    public final d<s> m27805i(Object obj, d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        C9195a c9195a = new C9195a(this.f27958g, this.f27959h, dVar);
        c9195a.f27956e = obj;
        return c9195a;
    }

    /* renamed from: k */
    public final Object m27804k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        s1.z.c.l.e(dVar, "completion");
        C9195a c9195a = new C9195a(this.f27958g, this.f27959h, dVar);
        c9195a.f27956e = obj;
        return c9195a.m27803s(s.a);
    }

    /* renamed from: s */
    public final Object m27803s(Object obj) {
        x xVar;
        s1.w.j.a aVar = s1.w.j.a.a;
        int i = this.f27957f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            xVar = (x) this.f27956e;
            C9199b c9199b = this.f27958g;
            AbstractC10257g abstractC10257g = c9199b.f27966c;
            Long l = c9199b.f27969f;
            C9196a c9196a = new C9196a(xVar);
            C9197b c9197b = new C9197b(xVar);
            this.f27956e = xVar;
            this.f27957f = 1;
            if (abstractC10257g.mo26523a(l, c9196a, c9197b, this) == aVar) {
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
            xVar = (x) this.f27956e;
        }
        C9198c c9198c = new C9198c();
        this.f27956e = null;
        this.f27957f = 2;
        if (v.a(xVar, c9198c, this) == aVar) {
            return aVar;
        }
        return s.a;
    }
}
