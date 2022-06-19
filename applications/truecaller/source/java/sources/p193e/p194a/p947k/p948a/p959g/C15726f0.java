package p193e.p194a.p947k.p948a.p959g;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
@e(c = "com.truecaller.videocallerid.ui.recording.RecordingPresenter$onRecordReleased$1", f = "RecordingPresenter.kt", l = {248}, m = "invokeSuspend")
/* renamed from: e.a.k.a.g.f0 */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/g/f0.class */
public final class C15726f0 extends i implements l<d<? super s>, Object> {

    /* renamed from: e */
    public int f44349e;

    /* renamed from: f */
    public final /* synthetic */ C15757y f44350f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C15726f0(C15757y c15757y, d dVar) {
        super(1, dVar);
        this.f44350f = c15757y;
    }

    /* renamed from: d */
    public final Object m18445d(Object obj) {
        d dVar = (d) obj;
        s1.z.c.l.e(dVar, "completion");
        return new C15726f0(this.f44350f, dVar).m18443s(s.a);
    }

    /* renamed from: l */
    public final d<s> m18444l(d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C15726f0(this.f44350f, dVar);
    }

    /* renamed from: s */
    public final Object m18443s(Object obj) {
        a aVar = a.a;
        int i = this.f44349e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C15757y c15757y = this.f44350f;
            this.f44349e = 1;
            if (c15757y.m18355ek(this) == aVar) {
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
