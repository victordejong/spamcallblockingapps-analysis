package p193e.p194a.p947k.p948a.p959g;

import io.agora.rtc.Constants;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.videocallerid.ui.recording.RecordingPresenter$marqueeDelayed$1", f = "RecordingPresenter.kt", l = {Constants.MEDIA_ENGINE_AUDIO_EVENT_MIXING_ERROR}, m = "invokeSuspend")
/* renamed from: e.a.k.a.g.a0 */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/g/a0.class */
public final class C15706a0 extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f44302e;

    /* renamed from: f */
    public final /* synthetic */ C15757y f44303f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C15706a0(C15757y c15757y, d dVar) {
        super(2, dVar);
        this.f44303f = c15757y;
    }

    /* renamed from: i */
    public final d<s> m18469i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C15706a0(this.f44303f, dVar);
    }

    /* renamed from: k */
    public final Object m18468k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C15706a0(this.f44303f, dVar).m18467s(s.a);
    }

    /* renamed from: s */
    public final Object m18467s(Object obj) {
        a aVar = a.a;
        int i = this.f44302e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            this.f44302e = 1;
            if (s1.a.a.a.v0.f.d.D0(1000L, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        AbstractC15756x abstractC15756x = (AbstractC15756x) this.f44303f.f57683a;
        if (abstractC15756x != null) {
            abstractC15756x.mo18424D4();
        }
        return s.a;
    }
}
