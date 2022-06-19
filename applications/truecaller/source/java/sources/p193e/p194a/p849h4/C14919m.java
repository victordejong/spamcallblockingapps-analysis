package p193e.p194a.p849h4;

import androidx.work.ListenableWorker;
import javax.inject.Inject;
import p193e.p194a.p1392y2.AbstractC21765k;
import s1.z.c.l;
/* renamed from: e.a.h4.m */
/* loaded from: classes11-dex2jar.jar:e/a/h4/m.class */
public final class C14919m extends AbstractC21765k {

    /* renamed from: b */
    public final String f42633b = "NotificationCleanupWorkAction";

    /* renamed from: c */
    public final AbstractC14920n f42634c;

    /* renamed from: d */
    public final AbstractC14907a f42635d;

    @Inject
    public C14919m(AbstractC14920n abstractC14920n, AbstractC14907a abstractC14907a) {
        l.e(abstractC14920n, "systemNotificationManager");
        l.e(abstractC14907a, "conversationNotificationChannelProvider");
        this.f42634c = abstractC14920n;
        this.f42635d = abstractC14907a;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: a */
    public ListenableWorker.AbstractC0414a mo9063a() {
        String str;
        ListenableWorker.AbstractC0414a.C0417c c0417c;
        boolean mo19415k = this.f42634c.mo19415k(false);
        this.f42635d.mo19455f();
        if (mo19415k) {
            c0417c = new ListenableWorker.AbstractC0414a.C0417c();
            str = "ListenableWorker.Result.success()";
        } else {
            c0417c = new ListenableWorker.AbstractC0414a.C0416b();
            str = "ListenableWorker.Result.retry()";
        }
        l.d(c0417c, str);
        return c0417c;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: b */
    public String mo9062b() {
        return this.f42633b;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: c */
    public boolean mo9061c() {
        return true;
    }
}
