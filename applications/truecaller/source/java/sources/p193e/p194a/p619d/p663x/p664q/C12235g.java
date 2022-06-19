package p193e.p194a.p619d.p663x.p664q;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p637c0.C11464r;
import q3.a.b3.c;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.manager.rtc.AgoraRtcManager$notifyCallInterrupted$1", f = "RtcManager.kt", l = {455}, m = "invokeSuspend")
/* renamed from: e.a.d.x.q.g */
/* loaded from: classes15-dex2jar.jar:e/a/d/x/q/g.class */
public final class C12235g extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public Object f35738e;

    /* renamed from: f */
    public Object f35739f;

    /* renamed from: g */
    public int f35740g;

    /* renamed from: h */
    public final /* synthetic */ C12225d f35741h;

    /* renamed from: i */
    public final /* synthetic */ boolean f35742i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12235g(C12225d c12225d, boolean z, d dVar) {
        super(2, dVar);
        this.f35741h = c12225d;
        this.f35742i = z;
    }

    /* renamed from: i */
    public final d<s> m23404i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C12235g(this.f35741h, this.f35742i, dVar);
    }

    /* renamed from: k */
    public final Object m23403k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C12235g(this.f35741h, this.f35742i, dVar).m23402s(s.a);
    }

    /* renamed from: s */
    public final Object m23402s(Object obj) {
        C11464r<Boolean> c11464r;
        c cVar;
        a aVar = a.a;
        int i = this.f35740g;
        if (i == 0) {
            C25225a.m3932a3(obj);
            c11464r = this.f35741h.f35707b;
            cVar = c11464r.f33655b;
            this.f35738e = c11464r;
            this.f35739f = cVar;
            this.f35740g = 1;
            if (cVar.b((Object) null, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            c cVar2 = (c) this.f35739f;
            c11464r = (C11464r) this.f35738e;
            C25225a.m3932a3(obj);
            cVar = cVar2;
        }
        try {
            c11464r.mo24640h().mo24639a(Boolean.valueOf(this.f35742i));
            s sVar = s.a;
            cVar.c((Object) null);
            return sVar;
        } catch (Throwable th) {
            cVar.c((Object) null);
            throw th;
        }
    }
}
