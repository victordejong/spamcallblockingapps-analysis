package p193e.p194a.p911i3;

import androidx.work.ListenableWorker;
import javax.inject.Inject;
import o3.a;
import p193e.p194a.p1392y2.AbstractC21765k;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import s1.z.c.l;
/* renamed from: e.a.i3.e */
/* loaded from: classes7-dex2jar.jar:e/a/i3/e.class */
public final class C15269e extends AbstractC21765k {

    /* renamed from: b */
    public final String f43484b = "UpdateConfigWorkAction";

    /* renamed from: c */
    public a<AbstractC8432l> f43485c;

    /* renamed from: d */
    public a<AbstractC15266b> f43486d;

    @Inject
    public C15269e(a<AbstractC8432l> aVar, a<AbstractC15266b> aVar2) {
        l.e(aVar, "accountManager");
        l.e(aVar2, "configManager");
        this.f43485c = aVar;
        this.f43486d = aVar2;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: a */
    public ListenableWorker.AbstractC0414a mo9063a() {
        ListenableWorker.AbstractC0414a.C0417c c0417c;
        if (l.a(((AbstractC15266b) this.f43486d.get()).mo18985a().mo11831c(), Boolean.TRUE)) {
            c0417c = new ListenableWorker.AbstractC0414a.C0417c();
            l.d(c0417c, "Result.success()");
        } else {
            c0417c = new ListenableWorker.AbstractC0414a.C0416b();
            l.d(c0417c, "Result.retry()");
        }
        return c0417c;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: b */
    public String mo9062b() {
        return this.f43484b;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: c */
    public boolean mo9061c() {
        return ((AbstractC8432l) this.f43485c.get()).mo28580d();
    }
}
