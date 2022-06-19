package p193e.p194a.p947k.p969c;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.videocallerid.worker.ShareVideoUpdateWorker;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import p1727n3.p1834m0.C26825d;
import p1727n3.p1834m0.C26842r;
import p1727n3.p1834m0.EnumC26674a;
import p1727n3.p1834m0.EnumC26832h;
import p1727n3.p1834m0.EnumC26841q;
import p1727n3.p1834m0.p1835c0.C26702l;
import s1.z.c.l;
/* renamed from: e.a.k.c.m0 */
/* loaded from: classes15-dex2jar.jar:e/a/k/c/m0.class */
public final class C16028m0 {

    /* renamed from: a */
    public final Context f45195a;

    @Inject
    public C16028m0(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f45195a = context;
    }

    /* renamed from: a */
    public void m17983a() {
        Context context = this.f45195a;
        l.e(context, AnalyticsConstants.CONTEXT);
        C26702l m1431n = C26702l.m1431n(context);
        String simpleName = ShareVideoUpdateWorker.class.getSimpleName();
        EnumC26832h enumC26832h = EnumC26832h.REPLACE;
        C26825d.C26826a c26826a = new C26825d.C26826a();
        c26826a.f75068c = EnumC26841q.CONNECTED;
        C26825d c26825d = new C26825d(c26826a);
        l.d(c26825d, "Constraints.Builder()\n  …\n                .build()");
        C26842r.C26843a c26843a = new C26842r.C26843a(ShareVideoUpdateWorker.class);
        c26843a.f75127c.f74911j = c26825d;
        C26842r.C26843a m1269e = c26843a.m1269e(EnumC26674a.EXPONENTIAL, 30L, TimeUnit.SECONDS);
        m1269e.f75128d.add(ShareVideoUpdateWorker.class.getSimpleName());
        C26842r m1272b = m1269e.m1272b();
        l.d(m1272b, "OneTimeWorkRequest.Build…\n                .build()");
        m1431n.m1279i(simpleName, enumC26832h, m1272b);
    }
}
