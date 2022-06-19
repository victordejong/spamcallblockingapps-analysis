package p193e.p194a.p372b0.p426p.p429h;

import android.content.Context;
import androidx.work.ListenableWorker;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import o3.a;
import p1727n3.p1834m0.p1835c0.C26702l;
import p193e.p194a.p1392y2.AbstractC21765k;
import p193e.p194a.p1392y2.p1394q.C21782c;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p372b0.p426p.AbstractC8552d;
import s1.i;
import s1.z.c.l;
/* renamed from: e.a.b0.p.h.a */
/* loaded from: classes7-dex2jar.jar:e/a/b0/p/h/a.class */
public final class C8561a extends AbstractC21765k {

    /* renamed from: b */
    public final String f26365b = "AvailableTagsDownloadWorkAction";

    /* renamed from: c */
    public final a<AbstractC8432l> f26366c;

    /* renamed from: d */
    public final a<AbstractC8552d> f26367d;

    @Inject
    public C8561a(a<AbstractC8432l> aVar, a<AbstractC8552d> aVar2) {
        l.e(aVar, "accountManager");
        l.e(aVar2, "tagManager");
        this.f26366c = aVar;
        this.f26367d = aVar2;
    }

    /* renamed from: d */
    public static final void m28386d(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        C26702l m1431n = C26702l.m1431n(context);
        l.d(m1431n, "WorkManager.getInstance(context)");
        C21782c.m9083c(m1431n, "AvailableTagsDownloadWorkAction", context, null, null, 12);
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: a */
    public ListenableWorker.AbstractC0414a mo9063a() {
        ListenableWorker.AbstractC0414a.C0417c c0417c;
        boolean mo28401c = ((AbstractC8552d) this.f26367d.get()).mo28401c();
        if (mo28401c) {
            c0417c = new ListenableWorker.AbstractC0414a.C0417c();
        } else if (mo28401c) {
            throw new i();
        } else {
            c0417c = new ListenableWorker.AbstractC0414a.C0416b();
        }
        l.d(c0417c, "when (tagManager.get().f…e -> Result.retry()\n    }");
        return c0417c;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: b */
    public String mo9062b() {
        return this.f26365b;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: c */
    public boolean mo9061c() {
        return ((AbstractC8432l) this.f26366c.get()).mo28580d();
    }
}
