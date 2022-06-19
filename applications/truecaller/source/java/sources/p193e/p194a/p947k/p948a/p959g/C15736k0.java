package p193e.p194a.p947k.p948a.p959g;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p947k.C16117k;
import p193e.p194a.p947k.p973n.p977g.AbstractC16223e;
import p193e.p194a.p947k.p973n.p977g.C16228j;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
@e(c = "com.truecaller.videocallerid.ui.recording.RecordingPresenter$onVideoDeleted$1", f = "RecordingPresenter.kt", l = {375}, m = "invokeSuspend")
/* renamed from: e.a.k.a.g.k0 */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/g/k0.class */
public final class C15736k0 extends i implements l<d<? super s>, Object> {

    /* renamed from: e */
    public int f44364e;

    /* renamed from: f */
    public final /* synthetic */ C15757y f44365f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C15736k0(C15757y c15757y, d dVar) {
        super(1, dVar);
        this.f44365f = c15757y;
    }

    /* renamed from: d */
    public final Object m18430d(Object obj) {
        d dVar = (d) obj;
        s1.z.c.l.e(dVar, "completion");
        return new C15736k0(this.f44365f, dVar).m18428s(s.a);
    }

    /* renamed from: l */
    public final d<s> m18429l(d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C15736k0(this.f44365f, dVar);
    }

    /* renamed from: s */
    public final Object m18428s(Object obj) {
        a aVar = a.a;
        int i = this.f44364e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC16223e abstractC16223e = this.f44365f.f44408l;
            this.f44364e = 1;
            if (((C16228j) abstractC16223e).m17700e(this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        this.f44365f.f44411o.setEnabled(false);
        ((C16117k) this.f44365f.f44410n).m17806e();
        AbstractC15756x abstractC15756x = (AbstractC15756x) this.f44365f.f57683a;
        if (abstractC15756x != null) {
            abstractC15756x.mo18384t();
        }
        return s.a;
    }
}
