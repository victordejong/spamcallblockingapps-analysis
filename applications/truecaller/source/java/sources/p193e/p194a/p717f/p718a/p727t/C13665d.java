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
@e(c = "com.truecaller.incallui.callui.callergradient.CallerGradientPresenter$listenCallAndSearchStates$1", f = "CallerGradientPresenter.kt", l = {56}, m = "invokeSuspend")
/* renamed from: e.a.f.a.t.d */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/t/d.class */
public final class C13665d extends i implements p<CallState, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f39617e;

    /* renamed from: f */
    public int f39618f;

    /* renamed from: g */
    public final /* synthetic */ C13659c f39619g;

    /* renamed from: h */
    public final /* synthetic */ c0 f39620h;

    /* renamed from: i */
    public final /* synthetic */ c0 f39621i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13665d(C13659c c13659c, c0 c0Var, c0 c0Var2, d dVar) {
        super(2, dVar);
        this.f39619g = c13659c;
        this.f39620h = c0Var;
        this.f39621i = c0Var2;
    }

    /* renamed from: i */
    public final d<s> m21337i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C13665d c13665d = new C13665d(this.f39619g, this.f39620h, this.f39621i, dVar);
        c13665d.f39617e = obj;
        return c13665d;
    }

    /* renamed from: k */
    public final Object m21336k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C13665d c13665d = new C13665d(this.f39619g, this.f39620h, this.f39621i, dVar);
        c13665d.f39617e = obj;
        return c13665d.m21335s(s.a);
    }

    /* renamed from: s */
    public final Object m21335s(Object obj) {
        s sVar = s.a;
        a aVar = a.a;
        int i = this.f39618f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            CallState callState = (CallState) this.f39617e;
            if (callState == CallState.STATE_HOLDING) {
                return sVar;
            }
            this.f39620h.a = callState;
            this.f39618f = 1;
            if (this.f39619g.m21346Jj((AbstractC13738f) this.f39621i.a, callState, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        return sVar;
    }
}
