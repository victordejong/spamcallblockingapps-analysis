package p193e.p194a.p619d.p663x;

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
@e(c = "com.truecaller.voip.manager.AgoraVoipManager$notifyCallInterrupted$1", f = "VoipManager.kt", l = {513}, m = "invokeSuspend")
/* renamed from: e.a.d.x.g */
/* loaded from: classes15-dex2jar.jar:e/a/d/x/g.class */
public final class C12207g extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public Object f35664e;

    /* renamed from: f */
    public Object f35665f;

    /* renamed from: g */
    public int f35666g;

    /* renamed from: h */
    public final /* synthetic */ C12195d f35667h;

    /* renamed from: i */
    public final /* synthetic */ boolean f35668i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12207g(C12195d c12195d, boolean z, d dVar) {
        super(2, dVar);
        this.f35667h = c12195d;
        this.f35668i = z;
    }

    /* renamed from: i */
    public final d<s> m23446i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C12207g(this.f35667h, this.f35668i, dVar);
    }

    /* renamed from: k */
    public final Object m23445k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C12207g(this.f35667h, this.f35668i, dVar).m23444s(s.a);
    }

    /* renamed from: s */
    public final Object m23444s(Object obj) {
        C11464r<Boolean> c11464r;
        c cVar;
        a aVar = a.a;
        int i = this.f35666g;
        if (i == 0) {
            C25225a.m3932a3(obj);
            c11464r = this.f35667h.f35616d;
            cVar = c11464r.f33655b;
            this.f35664e = c11464r;
            this.f35665f = cVar;
            this.f35666g = 1;
            if (cVar.b((Object) null, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            c cVar2 = (c) this.f35665f;
            c11464r = (C11464r) this.f35664e;
            C25225a.m3932a3(obj);
            cVar = cVar2;
        }
        try {
            c11464r.mo24640h().mo24639a(Boolean.valueOf(this.f35668i));
            s sVar = s.a;
            cVar.c((Object) null);
            return sVar;
        } catch (Throwable th) {
            cVar.c((Object) null);
            throw th;
        }
    }
}
