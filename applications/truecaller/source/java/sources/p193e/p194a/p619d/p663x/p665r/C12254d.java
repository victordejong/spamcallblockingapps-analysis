package p193e.p194a.p619d.p663x.p665r;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.manager.rtm.AgoraRtmLoginManager$logoutAsync$2", f = "RtmLoginManager.kt", l = {271}, m = "invokeSuspend")
/* renamed from: e.a.d.x.r.d */
/* loaded from: classes15-dex2jar.jar:e/a/d/x/r/d.class */
public final class C12254d extends i implements p<i0, d<? super Boolean>, Object> {

    /* renamed from: e */
    public int f35801e;

    /* renamed from: f */
    public final /* synthetic */ C12242c f35802f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12254d(C12242c c12242c, d dVar) {
        super(2, dVar);
        this.f35802f = c12242c;
    }

    /* renamed from: i */
    public final d<s> m23362i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C12254d(this.f35802f, dVar);
    }

    /* renamed from: k */
    public final Object m23361k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C12254d(this.f35802f, dVar).m23360s(s.a);
    }

    /* renamed from: s */
    public final Object m23360s(Object obj) {
        a aVar = a.a;
        int i = this.f35801e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C12242c c12242c = this.f35802f;
            this.f35801e = 1;
            Object m23384i = c12242c.m23384i(this);
            obj = m23384i;
            if (m23384i == aVar) {
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
