package p193e.p194a.p372b0.p426p.p429h;

import android.content.Context;
import androidx.work.ListenableWorker;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import o3.a;
import p1727n3.p1834m0.p1835c0.C26702l;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1392y2.AbstractC21765k;
import p193e.p194a.p1392y2.p1394q.C21782c;
import p193e.p194a.p372b0.p406e.AbstractC8426f;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p372b0.p426p.AbstractC8552d;
import s1.z.c.l;
/* renamed from: e.a.b0.p.h.b */
/* loaded from: classes7-dex2jar.jar:e/a/b0/p/h/b.class */
public final class C8562b extends AbstractC21765k {

    /* renamed from: b */
    public final String f26368b = "TagKeywordsDownloadWorkAction";

    /* renamed from: c */
    public final a<AbstractC8432l> f26369c;

    /* renamed from: d */
    public final a<AbstractC8552d> f26370d;

    /* renamed from: e */
    public final a<AbstractC8426f> f26371e;

    @Inject
    public C8562b(a<AbstractC8432l> aVar, a<AbstractC8552d> aVar2, a<AbstractC8426f> aVar3) {
        l.e(aVar, "accountManager");
        l.e(aVar2, "tagManager");
        l.e(aVar3, "regionUtils");
        this.f26369c = aVar;
        this.f26370d = aVar2;
        this.f26371e = aVar3;
    }

    /* renamed from: d */
    public static final void m28385d(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        C26702l m1431n = C26702l.m1431n(context);
        l.d(m1431n, "WorkManager.getInstance(context)");
        C21782c.m9083c(m1431n, "TagKeywordsDownloadWorkAction", context, null, null, 12);
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: a */
    public ListenableWorker.AbstractC0414a mo9063a() {
        if (!((AbstractC8552d) this.f26370d.get()).mo28398f()) {
            ListenableWorker.AbstractC0414a.C0416b c0416b = new ListenableWorker.AbstractC0414a.C0416b();
            l.d(c0416b, "Result.retry()");
            return c0416b;
        }
        if (C18334g0.m15261J("tagsKeywordsFeatureCurrentVersion", 0L) != C18334g0.m15261J("tagsKeywordsFeatureLastVersion", 0L)) {
            C18334g0.m15198v0("tagsPhonebookForcedUpload", true);
        }
        C18334g0.m15192y0("tagsKeywordsFeatureLastVersion", C18334g0.m15261J("tagsKeywordsFeatureCurrentVersion", 0L));
        ListenableWorker.AbstractC0414a.C0417c c0417c = new ListenableWorker.AbstractC0414a.C0417c();
        l.d(c0417c, "Result.success()");
        return c0417c;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: b */
    public String mo9062b() {
        return this.f26368b;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: c */
    public boolean mo9061c() {
        boolean z = false;
        if (((AbstractC8432l) this.f26369c.get()).mo28580d()) {
            z = false;
            if (C18334g0.m15277B("featureAutoTagging", false)) {
                z = false;
                if (!((AbstractC8426f) this.f26371e.get()).mo28594d()) {
                    z = true;
                }
            }
        }
        return z;
    }
}
