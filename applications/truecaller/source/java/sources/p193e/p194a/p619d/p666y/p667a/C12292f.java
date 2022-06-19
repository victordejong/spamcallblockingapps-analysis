package p193e.p194a.p619d.p666y.p667a;

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
@e(c = "com.truecaller.voip.notification.blocked.VoipBlockedCallsPresenter$onNewBlockedCall$1", f = "VoipBlockedCallsPresenter.kt", l = {25}, m = "invokeSuspend")
/* renamed from: e.a.d.y.a.f */
/* loaded from: classes15-dex2jar.jar:e/a/d/y/a/f.class */
public final class C12292f extends i implements p<i0, d<? super ListenableWorker.AbstractC0414a>, Object> {

    /* renamed from: e */
    public int f35919e;

    /* renamed from: f */
    public final /* synthetic */ C12293g f35920f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12292f(C12293g c12293g, d dVar) {
        super(2, dVar);
        this.f35920f = c12293g;
    }

    /* renamed from: i */
    public final d<s> m23310i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C12292f(this.f35920f, dVar);
    }

    /* renamed from: k */
    public final Object m23309k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C12292f(this.f35920f, dVar).m23308s(s.a);
    }

    /* renamed from: s */
    public final Object m23308s(Object obj) {
        ListenableWorker.AbstractC0414a.C0417c c0417c;
        a aVar = a.a;
        int i = this.f35919e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C12293g c12293g = this.f35920f;
            this.f35919e = 1;
            Object m23307Ij = c12293g.m23307Ij(this);
            obj = m23307Ij;
            if (m23307Ij == aVar) {
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
            c0417c = new ListenableWorker.AbstractC0414a.C0415a();
        }
        return c0417c;
    }
}
