package p193e.p194a.p918j.p930c.p931d;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import p1727n3.p1834m0.p1835c0.C26702l;
import p193e.p194a.p1392y2.p1394q.C21782c;
import s1.z.c.l;
/* renamed from: e.a.j.c.d.e */
/* loaded from: classes14-dex2jar.jar:e/a/j/c/d/e.class */
public final class C15464e extends AbstractC25677q.AbstractC25679b {

    /* renamed from: a */
    public final /* synthetic */ Context f43838a;

    public C15464e(Context context) {
        this.f43838a = context;
    }

    @Override // p1727n3.p1751c0.AbstractC25677q.AbstractC25679b
    /* renamed from: b */
    public void mo3061b(AbstractC26147b abstractC26147b) {
        l.e(abstractC26147b, "db");
        Context context = this.f43838a;
        l.e(context, AnalyticsConstants.CONTEXT);
        C26702l m1431n = C26702l.m1431n(context);
        l.d(m1431n, "WorkManager.getInstance(context)");
        C21782c.m9083c(m1431n, "FetchSurveysWorkAction", context, null, null, 12);
    }
}
