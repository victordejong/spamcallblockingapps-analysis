package p193e.p194a.p619d.p670z.p671b;

import com.truecaller.voip.VoipCallOptions;
import java.util.Set;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.service.call.CallServicePresenter$onNewOutgoingCall$1", f = "CallServicePresenter.kt", l = {69}, m = "invokeSuspend")
/* renamed from: e.a.d.z.b.g */
/* loaded from: classes15-dex2jar.jar:e/a/d/z/b/g.class */
public final class C12352g extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f36061e;

    /* renamed from: f */
    public final /* synthetic */ C12334c f36062f;

    /* renamed from: g */
    public final /* synthetic */ Set f36063g;

    /* renamed from: h */
    public final /* synthetic */ VoipCallOptions f36064h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12352g(C12334c c12334c, Set set, VoipCallOptions voipCallOptions, d dVar) {
        super(2, dVar);
        this.f36062f = c12334c;
        this.f36063g = set;
        this.f36064h = voipCallOptions;
    }

    /* renamed from: i */
    public final d<s> m23203i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C12352g(this.f36062f, this.f36063g, this.f36064h, dVar);
    }

    /* renamed from: k */
    public final Object m23202k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C12352g(this.f36062f, this.f36063g, this.f36064h, dVar).m23201s(s.a);
    }

    /* renamed from: s */
    public final Object m23201s(Object obj) {
        a aVar = a.a;
        int i = this.f36061e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            String str = "On new outgoing call, numbers: " + this.f36063g;
            C12334c c12334c = this.f36062f;
            Set<String> set = this.f36063g;
            VoipCallOptions voipCallOptions = this.f36064h;
            this.f36061e = 1;
            if (c12334c.m23238Mj(set, voipCallOptions, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        this.f36062f.m23240Kj();
        return s.a;
    }
}
