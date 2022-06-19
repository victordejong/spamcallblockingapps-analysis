package p193e.p194a.p703e3.p708i;

import com.truecaller.data.entity.Number;
import com.truecaller.videocallerid.data.OutgoingVideoDetails;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p947k.AbstractC16111h;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.call_alert.push.CallAlertNetworkImpl$sendCallerIdNotificationInternal$outgoingVideoDetails$1", f = "CallAlertNetwork.kt", l = {101}, m = "invokeSuspend")
/* renamed from: e.a.e3.i.f */
/* loaded from: classes6-dex2jar.jar:e/a/e3/i/f.class */
public final class C13406f extends i implements p<i0, d<? super OutgoingVideoDetails>, Object> {

    /* renamed from: e */
    public int f38889e;

    /* renamed from: f */
    public final /* synthetic */ C13402c f38890f;

    /* renamed from: g */
    public final /* synthetic */ Number f38891g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13406f(C13402c c13402c, Number number, d dVar) {
        super(2, dVar);
        this.f38890f = c13402c;
        this.f38891g = number;
    }

    /* renamed from: i */
    public final d<s> m21858i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C13406f(this.f38890f, this.f38891g, dVar);
    }

    /* renamed from: k */
    public final Object m21857k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C13406f(this.f38890f, this.f38891g, dVar).m21856s(s.a);
    }

    /* renamed from: s */
    public final Object m21856s(Object obj) {
        a aVar = a.a;
        int i = this.f38889e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC16111h abstractC16111h = this.f38890f.f38882h;
            Number number = this.f38891g;
            this.f38889e = 1;
            Object mo17855M = abstractC16111h.mo17855M(number, this);
            obj = mo17855M;
            if (mo17855M == aVar) {
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
