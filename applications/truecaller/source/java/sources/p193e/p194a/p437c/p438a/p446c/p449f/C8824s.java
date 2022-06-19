package p193e.p194a.p437c.p438a.p446c.p449f;

import com.truecaller.insights.p168ui.models.AdapterItem;
import p1727n3.p1868v.AbstractC27005g0;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.insights.ui.important.domain.SmartSmsBannerUseCase$errorResult$1", f = "SmartSmsBannerUseCase.kt", l = {38}, m = "invokeSuspend")
/* renamed from: e.a.c.a.c.f.s */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/c/f/s.class */
public final class C8824s extends i implements p<AbstractC27005g0<AdapterItem.C4109a>, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f26911e;

    /* renamed from: f */
    public int f26912f;

    public C8824s(d dVar) {
        super(2, dVar);
    }

    /* renamed from: i */
    public final d<s> m28030i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C8824s c8824s = new C8824s(dVar);
        c8824s.f26911e = obj;
        return c8824s;
    }

    /* renamed from: k */
    public final Object m28029k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C8824s c8824s = new C8824s(dVar);
        c8824s.f26911e = obj;
        return c8824s.m28028s(s.a);
    }

    /* renamed from: s */
    public final Object m28028s(Object obj) {
        a aVar = a.a;
        int i = this.f26912f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            this.f26912f = 1;
            if (((AbstractC27005g0) this.f26911e).mo1006a(null, this) == aVar) {
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
