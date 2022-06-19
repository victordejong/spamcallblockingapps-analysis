package p193e.p194a.p717f.p718a.p721b;

import com.truecaller.data.entity.CallContextMessage;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1080o.AbstractC18765c;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.incallui.callui.ongoing.OngoingCallPresenter$onCallContextMessageDismissed$1", f = "OngoingCallPresenter.kt", l = {337}, m = "invokeSuspend")
/* renamed from: e.a.f.a.b.q */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/b/q.class */
public final class C13606q extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public Object f39447e;

    /* renamed from: f */
    public int f39448f;

    /* renamed from: g */
    public final /* synthetic */ C13590j f39449g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13606q(C13590j c13590j, d dVar) {
        super(2, dVar);
        this.f39449g = c13590j;
    }

    /* renamed from: i */
    public final d<s> m21503i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C13606q(this.f39449g, dVar);
    }

    /* renamed from: k */
    public final Object m21502k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C13606q(this.f39449g, dVar).m21501s(s.a);
    }

    /* renamed from: s */
    public final Object m21501s(Object obj) {
        Object obj2;
        String str;
        s sVar = s.a;
        a aVar = a.a;
        int i = this.f39448f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            String mo21200g = this.f39449g.f39376p.mo21200g();
            if (mo21200g != null) {
                AbstractC18765c abstractC18765c = this.f39449g.f39384x;
                this.f39447e = mo21200g;
                this.f39448f = 1;
                obj2 = abstractC18765c.mo14514k(mo21200g, this);
                if (obj2 == aVar) {
                    return aVar;
                }
                str = mo21200g;
            }
            return sVar;
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            str = (String) this.f39447e;
            C25225a.m3932a3(obj);
            obj2 = obj;
        }
        CallContextMessage callContextMessage = (CallContextMessage) obj2;
        if (callContextMessage != null && l.a(callContextMessage.f11497b, str)) {
            callContextMessage.f11502g = true;
        }
        return sVar;
    }
}
