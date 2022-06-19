package p193e.p194a.p947k.p948a.p959g;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
@e(c = "com.truecaller.videocallerid.ui.recording.RecordingPresenter$onSubmitButtonPressed$1", f = "RecordingPresenter.kt", l = {393, 396}, m = "invokeSuspend")
/* renamed from: e.a.k.a.g.i0 */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/g/i0.class */
public final class C15732i0 extends i implements l<d<? super s>, Object> {

    /* renamed from: e */
    public int f44358e;

    /* renamed from: f */
    public final /* synthetic */ C15757y f44359f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C15732i0(C15757y c15757y, d dVar) {
        super(1, dVar);
        this.f44359f = c15757y;
    }

    /* renamed from: d */
    public final Object m18436d(Object obj) {
        d dVar = (d) obj;
        s1.z.c.l.e(dVar, "completion");
        return new C15732i0(this.f44359f, dVar).m18434s(s.a);
    }

    /* renamed from: l */
    public final d<s> m18435l(d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C15732i0(this.f44359f, dVar);
    }

    /* renamed from: s */
    public final Object m18434s(Object obj) {
        a aVar = a.a;
        int i = this.f44358e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            int ordinal = this.f44359f.f44399c.ordinal();
            if (ordinal == 2) {
                C15757y c15757y = this.f44359f;
                this.f44358e = 1;
                if (c15757y.m18354fk(this) == aVar) {
                    return aVar;
                }
            } else if (ordinal == 3) {
                C15757y c15757y2 = this.f44359f;
                this.f44358e = 2;
                if (c15757y2.m18354fk(this) == aVar) {
                    return aVar;
                }
            }
        } else if (i != 1 && i != 2) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        return s.a;
    }
}
