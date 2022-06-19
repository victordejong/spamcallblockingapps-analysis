package p193e.p194a.p619d.p663x;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p637c0.C11464r;
import p193e.p194a.p619d.p663x.AbstractC12213k;
import q3.a.b3.c;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.manager.AgoraVoipManager$addPeer$1", f = "VoipManager.kt", l = {513}, m = "invokeSuspend")
/* renamed from: e.a.d.x.a */
/* loaded from: classes15-dex2jar.jar:e/a/d/x/a.class */
public final class C12192a extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public Object f35599e;

    /* renamed from: f */
    public Object f35600f;

    /* renamed from: g */
    public int f35601g;

    /* renamed from: h */
    public final /* synthetic */ C12195d f35602h;

    /* renamed from: i */
    public final /* synthetic */ int f35603i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12192a(C12195d c12195d, int i, d dVar) {
        super(2, dVar);
        this.f35602h = c12195d;
        this.f35603i = i;
    }

    /* renamed from: i */
    public final d<s> m23480i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C12192a(this.f35602h, this.f35603i, dVar);
    }

    /* renamed from: k */
    public final Object m23479k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C12192a(this.f35602h, this.f35603i, dVar).m23478s(s.a);
    }

    /* renamed from: s */
    public final Object m23478s(Object obj) {
        C11464r<AbstractC12213k> c11464r;
        c cVar;
        a aVar = a.a;
        int i = this.f35601g;
        if (i == 0) {
            C25225a.m3932a3(obj);
            c11464r = this.f35602h.f35617e;
            cVar = c11464r.f33655b;
            this.f35599e = c11464r;
            this.f35600f = cVar;
            this.f35601g = 1;
            if (cVar.b((Object) null, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            c cVar2 = (c) this.f35600f;
            c11464r = (C11464r) this.f35599e;
            C25225a.m3932a3(obj);
            cVar = cVar2;
        }
        try {
            c11464r.mo24640h().mo24639a(new AbstractC12213k.C12215b(s1.u.i.r0(this.f35602h.m23471a(), new Integer(this.f35603i))));
            s sVar = s.a;
            cVar.c((Object) null);
            return sVar;
        } catch (Throwable th) {
            cVar.c((Object) null);
            throw th;
        }
    }
}
