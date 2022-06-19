package p193e.p194a.p619d.p663x.p664q;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p637c0.C11464r;
import p193e.p194a.p619d.p663x.p664q.AbstractC12237i;
import q3.a.b3.c;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.manager.rtc.AgoraRtcManager$deletePeer$1", f = "RtcManager.kt", l = {455}, m = "invokeSuspend")
/* renamed from: e.a.d.x.q.c */
/* loaded from: classes15-dex2jar.jar:e/a/d/x/q/c.class */
public final class C12224c extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public Object f35701e;

    /* renamed from: f */
    public Object f35702f;

    /* renamed from: g */
    public int f35703g;

    /* renamed from: h */
    public final /* synthetic */ C12225d f35704h;

    /* renamed from: i */
    public final /* synthetic */ int f35705i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12224c(C12225d c12225d, int i, d dVar) {
        super(2, dVar);
        this.f35704h = c12225d;
        this.f35705i = i;
    }

    /* renamed from: i */
    public final d<s> m23427i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C12224c(this.f35704h, this.f35705i, dVar);
    }

    /* renamed from: k */
    public final Object m23426k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C12224c(this.f35704h, this.f35705i, dVar).m23425s(s.a);
    }

    /* renamed from: s */
    public final Object m23425s(Object obj) {
        C11464r<AbstractC12237i> c11464r;
        c cVar;
        a aVar = a.a;
        int i = this.f35703g;
        if (i == 0) {
            C25225a.m3932a3(obj);
            c11464r = this.f35704h.f35708c;
            cVar = c11464r.f33655b;
            this.f35701e = c11464r;
            this.f35702f = cVar;
            this.f35703g = 1;
            if (cVar.b((Object) null, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            c cVar2 = (c) this.f35702f;
            c11464r = (C11464r) this.f35701e;
            C25225a.m3932a3(obj);
            cVar = cVar2;
        }
        try {
            c11464r.mo24640h().mo24639a(new AbstractC12237i.C12239b(s1.u.i.c0(this.f35704h.mo23394h(), new Integer(this.f35705i))));
            s sVar = s.a;
            cVar.c((Object) null);
            return sVar;
        } catch (Throwable th) {
            cVar.c((Object) null);
            throw th;
        }
    }
}
