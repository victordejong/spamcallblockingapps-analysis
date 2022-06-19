package p193e.p194a.p793g3;

import androidx.work.ListenableWorker;
import javax.inject.Inject;
import o3.a;
import p193e.p194a.p1392y2.AbstractC21765k;
import s1.z.c.l;
/* renamed from: e.a.g3.l */
/* loaded from: classes7-dex2jar.jar:e/a/g3/l.class */
public final class C14432l extends AbstractC21765k {

    /* renamed from: b */
    public final String f41605b = "CleverTapRefreshWorkAction";

    /* renamed from: c */
    public final a<AbstractC14430j> f41606c;

    @Inject
    public C14432l(a<AbstractC14430j> aVar) {
        l.e(aVar, "cleverTapPropManager");
        this.f41606c = aVar;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: a */
    public ListenableWorker.AbstractC0414a mo9063a() {
        ((AbstractC14430j) this.f41606c.get()).mo20107a();
        ListenableWorker.AbstractC0414a.C0417c c0417c = new ListenableWorker.AbstractC0414a.C0417c();
        l.d(c0417c, "ListenableWorker.Result.success()");
        return c0417c;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: b */
    public String mo9062b() {
        return this.f41605b;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: c */
    public boolean mo9061c() {
        return ((AbstractC14430j) this.f41606c.get()).mo20106b();
    }
}
