package p193e.p194a.p717f.p718a.p730w;

import com.truecaller.incallui.service.CallState;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.incallui.callui.phoneAccount.PhoneAccountsPresenter$onPause$1", f = "PhoneAccountsPresenter.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.f.a.w.j */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/w/j.class */
public final class C13704j extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public final /* synthetic */ C13705k f39684e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13704j(C13705k c13705k, d dVar) {
        super(2, dVar);
        this.f39684e = c13705k;
    }

    /* renamed from: i */
    public final d<s> m21300i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C13704j(this.f39684e, dVar);
    }

    /* renamed from: k */
    public final Object m21299k(Object obj, Object obj2) {
        s sVar = s.a;
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C13705k c13705k = this.f39684e;
        dVar.getContext();
        C25225a.m3932a3(sVar);
        if (((CallState) C19291g.m13593R0(c13705k.f39685d.mo21199h())) == CallState.STATE_SELECT_PHONE_ACCOUNT) {
            c13705k.m21297Ij();
        }
        return sVar;
    }

    /* renamed from: s */
    public final Object m21298s(Object obj) {
        C25225a.m3932a3(obj);
        if (((CallState) C19291g.m13593R0(this.f39684e.f39685d.mo21199h())) == CallState.STATE_SELECT_PHONE_ACCOUNT) {
            this.f39684e.m21297Ij();
        }
        return s.a;
    }
}
