package p193e.p194a.p717f.p718a.p721b;

import com.truecaller.incallui.service.CallState;
import io.agora.rtc.Constants;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.incallui.callui.ongoing.OngoingCallPresenter$listenToCallStateChanges$1", f = "OngoingCallPresenter.kt", l = {159, Constants.ERR_ALREADY_IN_RECORDING}, m = "invokeSuspend")
/* renamed from: e.a.f.a.b.l */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/b/l.class */
public final class C13601l extends i implements p<CallState, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f39431e;

    /* renamed from: f */
    public int f39432f;

    /* renamed from: g */
    public final /* synthetic */ C13590j f39433g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13601l(C13590j c13590j, d dVar) {
        super(2, dVar);
        this.f39433g = c13590j;
    }

    /* renamed from: i */
    public final d<s> m21518i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C13601l c13601l = new C13601l(this.f39433g, dVar);
        c13601l.f39431e = obj;
        return c13601l;
    }

    /* renamed from: k */
    public final Object m21517k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C13601l c13601l = new C13601l(this.f39433g, dVar);
        c13601l.f39431e = obj;
        return c13601l.m21516s(s.a);
    }

    /* renamed from: s */
    public final Object m21516s(Object obj) {
        CallState callState;
        a aVar = a.a;
        int i = this.f39432f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            callState = (CallState) this.f39431e;
            this.f39431e = callState;
            this.f39432f = 1;
            if (s1.a.a.a.v0.f.d.D0(300L, this) == aVar) {
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
            callState = (CallState) this.f39431e;
        }
        C13590j c13590j = this.f39433g;
        this.f39431e = null;
        this.f39432f = 2;
        if (c13590j.m21531hk(callState, this) == aVar) {
            return aVar;
        }
        return s.a;
    }
}
