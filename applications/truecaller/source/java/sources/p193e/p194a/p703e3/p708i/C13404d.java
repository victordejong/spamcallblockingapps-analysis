package p193e.p194a.p703e3.p708i;

import com.truecaller.data.entity.CallContextMessage;
import com.truecaller.data.entity.Number;
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
@e(c = "com.truecaller.call_alert.push.CallAlertNetworkImpl$sendCallerIdNotificationInternal$callContextMessage$1", f = "CallAlertNetwork.kt", l = {100}, m = "invokeSuspend")
/* renamed from: e.a.e3.i.d */
/* loaded from: classes6-dex2jar.jar:e/a/e3/i/d.class */
public final class C13404d extends i implements p<i0, d<? super CallContextMessage>, Object> {

    /* renamed from: e */
    public int f38884e;

    /* renamed from: f */
    public final /* synthetic */ C13402c f38885f;

    /* renamed from: g */
    public final /* synthetic */ Number f38886g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13404d(C13402c c13402c, Number number, d dVar) {
        super(2, dVar);
        this.f38885f = c13402c;
        this.f38886g = number;
    }

    /* renamed from: i */
    public final d<s> m21864i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C13404d(this.f38885f, this.f38886g, dVar);
    }

    /* renamed from: k */
    public final Object m21863k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C13404d(this.f38885f, this.f38886g, dVar).m21862s(s.a);
    }

    /* renamed from: s */
    public final Object m21862s(Object obj) {
        a aVar = a.a;
        int i = this.f38884e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C13402c c13402c = this.f38885f;
            Number number = this.f38886g;
            this.f38884e = 1;
            AbstractC18765c abstractC18765c = c13402c.f38880f;
            String m35479e = number.m35479e();
            l.d(m35479e, "number.normalizedNumber");
            Object mo14514k = abstractC18765c.mo14514k(m35479e, this);
            obj = mo14514k;
            if (mo14514k == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        return obj;
    }
}
