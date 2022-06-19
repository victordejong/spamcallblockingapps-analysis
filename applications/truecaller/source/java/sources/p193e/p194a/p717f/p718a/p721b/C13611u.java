package p193e.p194a.p717f.p718a.p721b;

import com.truecaller.data.entity.CallContextMessage;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1080o.AbstractC18765c;
import p193e.p194a.p717f.p718a.C13642g;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.incallui.callui.ongoing.OngoingCallPresenter$showCallContextAndVCIDToast$2", f = "OngoingCallPresenter.kt", l = {419, 426}, m = "invokeSuspend")
/* renamed from: e.a.f.a.b.u */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/b/u.class */
public final class C13611u extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f39459e;

    /* renamed from: f */
    public final /* synthetic */ C13590j f39460f;

    /* renamed from: g */
    public final /* synthetic */ C13642g f39461g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13611u(C13590j c13590j, C13642g c13642g, d dVar) {
        super(2, dVar);
        this.f39460f = c13590j;
        this.f39461g = c13642g;
    }

    /* renamed from: i */
    public final d<s> m21488i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C13611u(this.f39460f, this.f39461g, dVar);
    }

    /* renamed from: k */
    public final Object m21487k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C13611u(this.f39460f, this.f39461g, dVar).m21486s(s.a);
    }

    /* renamed from: s */
    public final Object m21486s(Object obj) {
        s sVar = s.a;
        a aVar = a.a;
        int i = this.f39459e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            if (!l.a(this.f39460f.f39377q.mo21071N1(), Boolean.TRUE)) {
                return sVar;
            }
            this.f39460f.f39377q.mo21076B0(Boolean.FALSE);
            AbstractC18765c abstractC18765c = this.f39460f.f39384x;
            String str = this.f39461g.f39515e;
            this.f39459e = 1;
            Object mo14514k = abstractC18765c.mo14514k(str, this);
            obj = mo14514k;
            if (mo14514k == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            C25225a.m3932a3(obj);
            return sVar;
        } else {
            C25225a.m3932a3(obj);
        }
        CallContextMessage callContextMessage = (CallContextMessage) obj;
        if (callContextMessage != null && l.a(callContextMessage.f11497b, this.f39461g.f39515e) && !callContextMessage.f11502g) {
            C13590j.m21548Qj(this.f39460f, callContextMessage);
            callContextMessage.f11502g = true;
        }
        C13590j c13590j = this.f39460f;
        C13642g c13642g = this.f39461g;
        this.f39459e = 2;
        if (c13590j.m21533fk(c13642g, this) == aVar) {
            return aVar;
        }
        return sVar;
    }
}
