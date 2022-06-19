package p193e.p194a.p717f.p718a.p727t;

import com.truecaller.incallui.service.CallState;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p717f.p731w.AbstractC13738f;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.c0;
import s1.z.c.l;
@e(c = "com.truecaller.incallui.callui.callergradient.CallerGradientPresenter$listenCallAndSearchStates$2", f = "CallerGradientPresenter.kt", l = {61}, m = "invokeSuspend")
/* renamed from: e.a.f.a.t.e */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/t/e.class */
public final class C13666e extends i implements p<AbstractC13738f, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f39622e;

    /* renamed from: f */
    public int f39623f;

    /* renamed from: g */
    public final /* synthetic */ C13659c f39624g;

    /* renamed from: h */
    public final /* synthetic */ c0 f39625h;

    /* renamed from: i */
    public final /* synthetic */ c0 f39626i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13666e(C13659c c13659c, c0 c0Var, c0 c0Var2, d dVar) {
        super(2, dVar);
        this.f39624g = c13659c;
        this.f39625h = c0Var;
        this.f39626i = c0Var2;
    }

    /* renamed from: i */
    public final d<s> m21334i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C13666e c13666e = new C13666e(this.f39624g, this.f39625h, this.f39626i, dVar);
        c13666e.f39622e = obj;
        return c13666e;
    }

    /* renamed from: k */
    public final Object m21333k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C13666e c13666e = new C13666e(this.f39624g, this.f39625h, this.f39626i, dVar);
        c13666e.f39622e = obj;
        return c13666e.m21332s(s.a);
    }

    /* renamed from: s */
    public final Object m21332s(Object obj) {
        a aVar = a.a;
        int i = this.f39623f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC13738f abstractC13738f = (AbstractC13738f) this.f39622e;
            this.f39625h.a = abstractC13738f;
            this.f39623f = 1;
            if (this.f39624g.m21346Jj(abstractC13738f, (CallState) this.f39626i.a, this) == aVar) {
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
