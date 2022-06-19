package p193e.p194a.p947k.p948a.p959g;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
@e(c = "com.truecaller.videocallerid.ui.recording.RecordingPresenter$onStop$1", f = "RecordingPresenter.kt", l = {451}, m = "invokeSuspend")
/* renamed from: e.a.k.a.g.h0 */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/g/h0.class */
public final class C15730h0 extends i implements l<d<? super s>, Object> {

    /* renamed from: e */
    public int f44355e;

    /* renamed from: f */
    public final /* synthetic */ C15757y f44356f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C15730h0(C15757y c15757y, d dVar) {
        super(1, dVar);
        this.f44356f = c15757y;
    }

    /* renamed from: d */
    public final Object m18439d(Object obj) {
        d dVar = (d) obj;
        s1.z.c.l.e(dVar, "completion");
        return new C15730h0(this.f44356f, dVar).m18437s(s.a);
    }

    /* renamed from: l */
    public final d<s> m18438l(d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C15730h0(this.f44356f, dVar);
    }

    /* renamed from: s */
    public final Object m18437s(Object obj) {
        a aVar = a.a;
        int i = this.f44355e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C15757y c15757y = this.f44356f;
            if (c15757y.f44399c == EnumC15740m0.Recording) {
                this.f44355e = 1;
                if (c15757y.m18349kk(this) == aVar) {
                    return aVar;
                }
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        return s.a;
    }
}
