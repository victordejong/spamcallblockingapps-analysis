package p193e.p194a.p619d.p628c;

import java.util.Objects;
import java.util.Set;
import java.util.concurrent.CancellationException;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p657v.AbstractC11822b;
import p193e.p194a.p619d.p657v.p659l.AbstractC12020a;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import q3.a.x2.g;
import q3.a.x2.i1;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.ui.VoipPresenter$setupGroupCallPeersListenerJobs$1", f = "VoipPresenter.kt", l = {537}, m = "invokeSuspend")
/* renamed from: e.a.d.c.w */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/w.class */
public final class C11329w extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f33336e;

    /* renamed from: f */
    public final /* synthetic */ C11325t f33337f;

    /* renamed from: g */
    public final /* synthetic */ AbstractC11822b f33338g;

    /* renamed from: e.a.d.c.w$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c/w$a.class */
    public static final class C11330a implements g<Set<? extends AbstractC12020a>> {
        public C11330a() {
            C11329w.this = r4;
        }

        /* renamed from: a */
        public Object m24811a(Object obj, d dVar) {
            Set set = (Set) obj;
            C11329w c11329w = C11329w.this;
            C11325t c11325t = c11329w.f33337f;
            AbstractC11822b abstractC11822b = c11329w.f33338g;
            Objects.requireNonNull(c11325t);
            if (!set.isEmpty()) {
                p1 p1Var = c11325t.f33322h;
                if (p1Var != null) {
                    s1.a.a.a.v0.f.d.T(p1Var, (CancellationException) null, 1, (Object) null);
                }
                p1 p1Var2 = c11325t.f33321g;
                if (p1Var2 != null) {
                    s1.a.a.a.v0.f.d.T(p1Var2, (CancellationException) null, 1, (Object) null);
                }
                c11325t.f33321g = s1.a.a.a.v0.f.d.w2(c11325t, (f) null, (j0) null, new C11334y(c11325t, set, abstractC11822b, null), 3, (Object) null);
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11329w(C11325t c11325t, AbstractC11822b abstractC11822b, d dVar) {
        super(2, dVar);
        this.f33337f = c11325t;
        this.f33338g = abstractC11822b;
    }

    /* renamed from: i */
    public final d<s> m24814i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C11329w(this.f33337f, this.f33338g, dVar);
    }

    /* renamed from: k */
    public final Object m24813k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C11329w(this.f33337f, this.f33338g, dVar).m24812s(s.a);
    }

    /* renamed from: s */
    public final Object m24812s(Object obj) {
        a aVar = a.a;
        int i = this.f33336e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            i1<Set<AbstractC12020a>> mo23965a = this.f33338g.mo23965a();
            C11330a c11330a = new C11330a();
            this.f33336e = 1;
            if (mo23965a.c(c11330a, this) == aVar) {
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
