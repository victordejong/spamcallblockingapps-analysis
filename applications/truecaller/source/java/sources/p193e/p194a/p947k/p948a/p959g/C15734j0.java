package p193e.p194a.p947k.p948a.p959g;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.n0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
@e(c = "com.truecaller.videocallerid.ui.recording.RecordingPresenter$onSwitchCameraPressed$1", f = "RecordingPresenter.kt", l = {286}, m = "invokeSuspend")
/* renamed from: e.a.k.a.g.j0 */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/g/j0.class */
public final class C15734j0 extends i implements l<d<? super s>, Object> {

    /* renamed from: e */
    public int f44361e;

    /* renamed from: f */
    public final /* synthetic */ C15757y f44362f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C15734j0(C15757y c15757y, d dVar) {
        super(1, dVar);
        this.f44362f = c15757y;
    }

    /* renamed from: d */
    public final Object m18433d(Object obj) {
        d dVar = (d) obj;
        s1.z.c.l.e(dVar, "completion");
        return new C15734j0(this.f44362f, dVar).m18431s(s.a);
    }

    /* renamed from: l */
    public final d<s> m18432l(d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C15734j0(this.f44362f, dVar);
    }

    /* renamed from: s */
    public final Object m18431s(Object obj) {
        s sVar = s.a;
        a aVar = a.a;
        int i = this.f44361e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            if (!this.f44362f.m18378Hj()) {
                return sVar;
            }
            n0<s> mo18027h = this.f44362f.m18377Ij().mo18027h();
            this.f44361e = 1;
            if (mo18027h.s(this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        C15757y.m18346nk(this.f44362f, false, false, 3);
        return sVar;
    }
}
