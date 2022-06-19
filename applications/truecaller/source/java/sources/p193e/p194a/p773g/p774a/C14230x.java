package p193e.p194a.p773g.p774a;

import java.util.concurrent.TimeUnit;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.acs.ui.AfterCallBasePresenter$setupCallStatus$1", f = "AfterCallBasePresenter.kt", l = {507}, m = "invokeSuspend")
/* renamed from: e.a.g.a.x */
/* loaded from: classes4-dex2jar.jar:e/a/g/a/x.class */
public final class C14230x extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f41115e;

    /* renamed from: f */
    public int f41116f;

    /* renamed from: g */
    public final /* synthetic */ AbstractC14205m f41117g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14230x(AbstractC14205m abstractC14205m, d dVar) {
        super(2, dVar);
        this.f41117g = abstractC14205m;
    }

    /* renamed from: i */
    public final d<s> m20349i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C14230x c14230x = new C14230x(this.f41117g, dVar);
        c14230x.f41115e = obj;
        return c14230x;
    }

    /* renamed from: k */
    public final Object m20348k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C14230x c14230x = new C14230x(this.f41117g, dVar);
        c14230x.f41115e = obj;
        return c14230x.m20347s(s.a);
    }

    /* renamed from: s */
    public final Object m20347s(Object obj) {
        i0 i0Var;
        a aVar = a.a;
        int i = this.f41116f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            i0Var = (i0) this.f41115e;
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
            i0Var = (i0) this.f41115e;
        }
        while (s1.a.a.a.v0.f.d.Q1(i0Var)) {
            this.f41117g.m20416sk();
            long millis = TimeUnit.MINUTES.toMillis(1L);
            this.f41115e = i0Var;
            this.f41116f = 1;
            if (s1.a.a.a.v0.f.d.D0(millis, this) == aVar) {
                return aVar;
            }
        }
        return s.a;
    }
}
