package p193e.p194a.p911i3;

import androidx.work.ListenableWorker;
import javax.inject.Inject;
import o3.a;
import p193e.p194a.p1392y2.AbstractC21765k;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import s1.z.c.l;
/* renamed from: e.a.i3.f */
/* loaded from: classes7-dex2jar.jar:e/a/i3/f.class */
public final class C15270f extends AbstractC21765k {

    /* renamed from: b */
    public final String f43487b = "UpdateInstallationWorker";

    /* renamed from: c */
    public final a<AbstractC8432l> f43488c;

    /* renamed from: d */
    public final a<AbstractC15266b> f43489d;

    @Inject
    public C15270f(a<AbstractC8432l> aVar, a<AbstractC15266b> aVar2) {
        l.e(aVar, "truecallerAccountManager");
        l.e(aVar2, "configManager");
        this.f43488c = aVar;
        this.f43489d = aVar2;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: a */
    public ListenableWorker.AbstractC0414a mo9063a() {
        ListenableWorker.AbstractC0414a.C0417c c0417c;
        if (l.a(((AbstractC15266b) this.f43489d.get()).mo18984b().mo11831c(), Boolean.TRUE)) {
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
        return this.f43487b;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: c */
    public boolean mo9061c() {
        return ((AbstractC8432l) this.f43488c.get()).mo28580d();
    }
}
