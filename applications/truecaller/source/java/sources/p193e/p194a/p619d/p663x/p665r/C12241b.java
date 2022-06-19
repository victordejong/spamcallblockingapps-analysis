package p193e.p194a.p619d.p663x.p665r;

import io.agora.rtc.Constants;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.b3.c;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.manager.rtm.AgoraRtmLoginManager$listenConnectionStates$1", f = "RtmLoginManager.kt", l = {Constants.ERR_PUBLISH_STREAM_CDN_ERROR}, m = "invokeSuspend")
/* renamed from: e.a.d.x.r.b */
/* loaded from: classes15-dex2jar.jar:e/a/d/x/r/b.class */
public final class C12241b extends i implements p<Integer, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ int f35748e;

    /* renamed from: f */
    public Object f35749f;

    /* renamed from: g */
    public Object f35750g;

    /* renamed from: h */
    public int f35751h;

    /* renamed from: i */
    public final /* synthetic */ C12242c f35752i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12241b(C12242c c12242c, d dVar) {
        super(2, dVar);
        this.f35752i = c12242c;
    }

    /* renamed from: i */
    public final d<s> m23389i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C12241b c12241b = new C12241b(this.f35752i, dVar);
        Number number = (Number) obj;
        number.intValue();
        c12241b.f35748e = number.intValue();
        return c12241b;
    }

    /* renamed from: k */
    public final Object m23388k(Object obj, Object obj2) {
        return m23389i(obj, (d) obj2).m23387s(s.a);
    }

    /* renamed from: s */
    public final Object m23387s(Object obj) {
        int i;
        C12242c c12242c;
        a aVar = a.a;
        int i2 = this.f35751h;
        try {
            if (i2 == 0) {
                C25225a.m3932a3(obj);
                i = this.f35748e;
                c12242c = this.f35752i;
                c cVar = c12242c.f35754b;
                this.f35749f = c12242c;
                this.f35750g = c12242c;
                this.f35748e = i;
                this.f35751h = 1;
                if (s1.a.a.a.v0.f.d.z2(cVar, (Object) null, this, 1, (Object) null) == aVar) {
                    return aVar;
                }
            } else if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                i = this.f35748e;
                C12242c c12242c2 = (C12242c) this.f35750g;
                C12242c c12242c3 = (C12242c) this.f35749f;
                C25225a.m3932a3(obj);
                c12242c = c12242c2;
            }
            s sVar = s.a;
            boolean z = i == 3;
            if (this.f35752i.f35754b.a()) {
                s1.a.a.a.v0.f.d.U3(this.f35752i.f35754b, (Object) null, 1, (Object) null);
            }
            c12242c.f35753a = z;
            return sVar;
        } catch (Throwable th) {
            if (this.f35752i.f35754b.a()) {
                s1.a.a.a.v0.f.d.U3(this.f35752i.f35754b, (Object) null, 1, (Object) null);
            }
            throw th;
        }
    }
}
