package p193e.p194a.p619d.p652q;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p661w.AbstractC12111g;
import p193e.p194a.p619d.p661w.AbstractC12114h;
import q3.a.x2.g;
import q3.a.x2.i1;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.q;
@e(c = "com.truecaller.voip.callconnection.VoipCallConnectionImpl$setStateFromInvitation$$inlined$flatMapLatest$1", f = "VoipCallConnection.kt", l = {217}, m = "invokeSuspend")
/* renamed from: e.a.d.q.s */
/* loaded from: classes15-dex2jar.jar:e/a/d/q/s.class */
public final class C11773s extends i implements q<g<? super AbstractC12114h>, AbstractC12111g.C12112a, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f34581e;

    /* renamed from: f */
    public /* synthetic */ Object f34582f;

    /* renamed from: g */
    public int f34583g;

    public C11773s(d dVar) {
        super(3, dVar);
    }

    /* renamed from: h */
    public final Object m24021h(Object obj, Object obj2, Object obj3) {
        C11773s c11773s = new C11773s((d) obj3);
        c11773s.f34581e = (g) obj;
        c11773s.f34582f = obj2;
        return c11773s.m24020s(s.a);
    }

    /* renamed from: s */
    public final Object m24020s(Object obj) {
        a aVar = a.a;
        int i = this.f34583g;
        if (i == 0) {
            C25225a.m3932a3(obj);
            g gVar = (g) this.f34581e;
            i1<AbstractC12114h> state = ((AbstractC12111g.C12112a) this.f34582f).f35449a.getState();
            this.f34583g = 1;
            if (state.c(gVar, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        return s.a;
    }
}
