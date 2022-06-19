package p193e.p194a.p619d.p666y.p669c;

import androidx.work.ListenableWorker;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.notification.missed.MissedVoipCallsPresenter$onNewMissedCalls$1", f = "MissedVoipCallsPresenter.kt", l = {32}, m = "invokeSuspend")
/* renamed from: e.a.d.y.c.i */
/* loaded from: classes15-dex2jar.jar:e/a/d/y/c/i.class */
public final class C12322i extends i implements p<i0, d<? super ListenableWorker.AbstractC0414a>, Object> {

    /* renamed from: e */
    public int f35986e;

    /* renamed from: f */
    public final /* synthetic */ C12323j f35987f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12322i(C12323j c12323j, d dVar) {
        super(2, dVar);
        this.f35987f = c12323j;
    }

    /* renamed from: i */
    public final d<s> m23270i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C12322i(this.f35987f, dVar);
    }

    /* renamed from: k */
    public final Object m23269k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C12322i(this.f35987f, dVar).m23268s(s.a);
    }

    /* renamed from: s */
    public final Object m23268s(Object obj) {
        ListenableWorker.AbstractC0414a.C0417c c0417c;
        a aVar = a.a;
        int i = this.f35986e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C12323j c12323j = this.f35987f;
            this.f35986e = 1;
            Object m23267Ij = c12323j.m23267Ij(this);
            obj = m23267Ij;
            if (m23267Ij == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        boolean booleanValue = ((Boolean) obj).booleanValue();
        if (booleanValue) {
            c0417c = new ListenableWorker.AbstractC0414a.C0417c();
        } else if (booleanValue) {
            throw new s1.i();
        } else {
            c0417c = new ListenableWorker.AbstractC0414a.C0416b();
        }
        return c0417c;
    }
}
