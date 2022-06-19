package p193e.p194a.p947k.p948a.p959g;

import com.truecaller.videocallerid.p187ui.recording.RecordInputEvent;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
@e(c = "com.truecaller.videocallerid.ui.recording.RecordingPresenter$onRecordPressed$1", f = "RecordingPresenter.kt", l = {244}, m = "invokeSuspend")
/* renamed from: e.a.k.a.g.e0 */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/g/e0.class */
public final class C15714e0 extends i implements l<d<? super s>, Object> {

    /* renamed from: e */
    public int f44323e;

    /* renamed from: f */
    public final /* synthetic */ C15757y f44324f;

    /* renamed from: g */
    public final /* synthetic */ RecordInputEvent.InputMode f44325g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C15714e0(C15757y c15757y, RecordInputEvent.InputMode inputMode, d dVar) {
        super(1, dVar);
        this.f44324f = c15757y;
        this.f44325g = inputMode;
    }

    /* renamed from: d */
    public final Object m18453d(Object obj) {
        d dVar = (d) obj;
        s1.z.c.l.e(dVar, "completion");
        return new C15714e0(this.f44324f, this.f44325g, dVar).m18451s(s.a);
    }

    /* renamed from: l */
    public final d<s> m18452l(d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C15714e0(this.f44324f, this.f44325g, dVar);
    }

    /* renamed from: s */
    public final Object m18451s(Object obj) {
        s sVar = s.a;
        a aVar = a.a;
        int i = this.f44323e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            if (!this.f44324f.m18377Ij().mo18033b() && this.f44324f.m18378Hj()) {
                C15757y c15757y = this.f44324f;
                c15757y.f44400d = this.f44325g;
                this.f44323e = 1;
                if (c15757y.m18356dk(this) == aVar) {
                    return aVar;
                }
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        return sVar;
    }
}
