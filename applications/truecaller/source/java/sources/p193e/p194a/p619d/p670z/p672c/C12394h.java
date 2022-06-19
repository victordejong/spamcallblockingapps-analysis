package p193e.p194a.p619d.p670z.p672c;

import com.truecaller.voip.VoipGroupPushNotification;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.b3.c;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.service.invitation.InvitationServicePresenter$onNewInvitation$1", f = "InvitationServicePresenter.kt", l = {325, 80}, m = "invokeSuspend")
/* renamed from: e.a.d.z.c.h */
/* loaded from: classes15-dex2jar.jar:e/a/d/z/c/h.class */
public final class C12394h extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public Object f36165e;

    /* renamed from: f */
    public int f36166f;

    /* renamed from: g */
    public final /* synthetic */ C12382e f36167g;

    /* renamed from: h */
    public final /* synthetic */ VoipGroupPushNotification f36168h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12394h(C12382e c12382e, VoipGroupPushNotification voipGroupPushNotification, d dVar) {
        super(2, dVar);
        this.f36167g = c12382e;
        this.f36168h = voipGroupPushNotification;
    }

    /* renamed from: i */
    public final d<s> m23122i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C12394h(this.f36167g, this.f36168h, dVar);
    }

    /* renamed from: k */
    public final Object m23121k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C12394h(this.f36167g, this.f36168h, dVar).m23120s(s.a);
    }

    /* renamed from: s */
    public final Object m23120s(Object obj) {
        c cVar;
        c cVar2;
        a aVar = a.a;
        int i = this.f36166f;
        try {
            if (i == 0) {
                C25225a.m3932a3(obj);
                c cVar3 = this.f36167g.f36119e;
                this.f36165e = cVar3;
                this.f36166f = 1;
                cVar = cVar3;
                if (cVar3.b((Object) null, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c cVar4 = (c) this.f36165e;
                cVar2 = cVar4;
                try {
                    C25225a.m3932a3(obj);
                    cVar = cVar4;
                    C12382e.m23150Ij(this.f36167g);
                    cVar2 = cVar;
                    s sVar = s.a;
                    cVar.c((Object) null);
                    return sVar;
                } catch (Throwable th) {
                    cVar = cVar2;
                    th = th;
                    cVar.c((Object) null);
                    throw th;
                }
            } else {
                C25225a.m3932a3(obj);
                cVar = (c) this.f36165e;
            }
            String str = "New invitation is received. Notification: " + this.f36168h;
            C12382e c12382e = this.f36167g;
            VoipGroupPushNotification voipGroupPushNotification = this.f36168h;
            this.f36165e = cVar;
            this.f36166f = 2;
            if (c12382e.m23146Mj(voipGroupPushNotification, this) == aVar) {
                return aVar;
            }
            C12382e.m23150Ij(this.f36167g);
            cVar2 = cVar;
            s sVar2 = s.a;
            cVar.c((Object) null);
            return sVar2;
        } catch (Throwable th2) {
            th = th2;
            cVar.c((Object) null);
            throw th;
        }
    }
}
