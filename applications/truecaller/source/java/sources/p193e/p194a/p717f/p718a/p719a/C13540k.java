package p193e.p194a.p717f.p718a.p719a;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.incallui.callui.incoming.IncomingCallPresenter$marqueeDelayed$1", f = "IncomingCallPresenter.kt", l = {377}, m = "invokeSuspend")
/* renamed from: e.a.f.a.a.k */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/a/k.class */
public final class C13540k extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f39279e;

    /* renamed from: f */
    public final /* synthetic */ C13530i f39280f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13540k(C13530i c13530i, d dVar) {
        super(2, dVar);
        this.f39280f = c13530i;
    }

    /* renamed from: i */
    public final d<s> m21647i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C13540k(this.f39280f, dVar);
    }

    /* renamed from: k */
    public final Object m21646k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C13540k(this.f39280f, dVar).m21645s(s.a);
    }

    /* renamed from: s */
    public final Object m21645s(Object obj) {
        a aVar = a.a;
        int i = this.f39279e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            this.f39279e = 1;
            if (s1.a.a.a.v0.f.d.D0(1000L, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        AbstractC13528g abstractC13528g = (AbstractC13528g) this.f39280f.f57683a;
        if (abstractC13528g != null) {
            abstractC13528g.mo21445D4();
        }
        return s.a;
    }
}
