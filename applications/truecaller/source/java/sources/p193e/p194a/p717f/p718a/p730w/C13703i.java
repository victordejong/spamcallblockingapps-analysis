package p193e.p194a.p717f.p718a.p730w;

import com.truecaller.incallui.service.CallState;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.incallui.callui.phoneAccount.PhoneAccountsPresenter$listenToCallStateChanges$1", f = "PhoneAccountsPresenter.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.f.a.w.i */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/w/i.class */
public final class C13703i extends i implements p<CallState, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f39682e;

    /* renamed from: f */
    public final /* synthetic */ C13705k f39683f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13703i(C13705k c13705k, d dVar) {
        super(2, dVar);
        this.f39683f = c13705k;
    }

    /* renamed from: i */
    public final d<s> m21303i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C13703i c13703i = new C13703i(this.f39683f, dVar);
        c13703i.f39682e = obj;
        return c13703i;
    }

    /* renamed from: k */
    public final Object m21302k(Object obj, Object obj2) {
        s sVar = s.a;
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C13705k c13705k = this.f39683f;
        dVar.getContext();
        C25225a.m3932a3(sVar);
        if (((CallState) obj) != CallState.STATE_SELECT_PHONE_ACCOUNT) {
            AbstractC13702h abstractC13702h = (AbstractC13702h) c13705k.f57683a;
            if (abstractC13702h != null) {
                abstractC13702h.mo21306V0();
            }
            AbstractC13702h abstractC13702h2 = (AbstractC13702h) c13705k.f57683a;
            if (abstractC13702h2 != null) {
                abstractC13702h2.mo21304t();
            }
        }
        return sVar;
    }

    /* renamed from: s */
    public final Object m21301s(Object obj) {
        C25225a.m3932a3(obj);
        if (((CallState) this.f39682e) != CallState.STATE_SELECT_PHONE_ACCOUNT) {
            C13705k c13705k = this.f39683f;
            AbstractC13702h abstractC13702h = (AbstractC13702h) c13705k.f57683a;
            if (abstractC13702h != null) {
                abstractC13702h.mo21306V0();
            }
            AbstractC13702h abstractC13702h2 = (AbstractC13702h) c13705k.f57683a;
            if (abstractC13702h2 != null) {
                abstractC13702h2.mo21304t();
            }
        }
        return s.a;
    }
}
