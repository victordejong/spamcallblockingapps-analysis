package p193e.p194a.p947k.p948a.p959g;

import android.graphics.PointF;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.videocallerid.ui.recording.RecordingPresenter$listenCameraFocusPoints$1", f = "RecordingPresenter.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.k.a.g.z */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/g/z.class */
public final class C15783z extends i implements p<PointF, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f44536e;

    /* renamed from: f */
    public final /* synthetic */ C15757y f44537f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C15783z(C15757y c15757y, d dVar) {
        super(2, dVar);
        this.f44537f = c15757y;
    }

    /* renamed from: i */
    public final d<s> m18317i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C15783z c15783z = new C15783z(this.f44537f, dVar);
        c15783z.f44536e = obj;
        return c15783z;
    }

    /* renamed from: k */
    public final Object m18316k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C15757y c15757y = this.f44537f;
        dVar.getContext();
        s sVar = s.a;
        C25225a.m3932a3(sVar);
        PointF pointF = (PointF) obj;
        AbstractC15756x abstractC15756x = (AbstractC15756x) c15757y.f57683a;
        if (abstractC15756x != null) {
            abstractC15756x.mo18381w8(pointF);
        }
        return sVar;
    }

    /* renamed from: s */
    public final Object m18315s(Object obj) {
        C25225a.m3932a3(obj);
        PointF pointF = (PointF) this.f44536e;
        AbstractC15756x abstractC15756x = (AbstractC15756x) this.f44537f.f57683a;
        if (abstractC15756x != null) {
            abstractC15756x.mo18381w8(pointF);
        }
        return s.a;
    }
}
