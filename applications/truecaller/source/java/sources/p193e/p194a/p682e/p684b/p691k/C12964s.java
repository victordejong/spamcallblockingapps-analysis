package p193e.p194a.p682e.p684b.p691k;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import p1727n3.p1834m0.AbstractC26857y;
import p193e.p194a.p1049l4.AbstractC17419h;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1392y2.p1394q.C21782c;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import s1.z.c.l;
/* renamed from: e.a.e.b.k.s */
/* loaded from: classes15-dex2jar.jar:e/a/e/b/k/s.class */
public final class C12964s {

    /* renamed from: a */
    public final AbstractC8541a f37629a;

    /* renamed from: b */
    public final AbstractC26857y f37630b;

    /* renamed from: c */
    public final AbstractC19854f<AbstractC17419h> f37631c;

    @Inject
    public C12964s(AbstractC8541a abstractC8541a, AbstractC26857y abstractC26857y, AbstractC19854f<AbstractC17419h> abstractC19854f) {
        l.e(abstractC8541a, "coreSettings");
        l.e(abstractC26857y, "workManager");
        l.e(abstractC19854f, "presenceManager");
        this.f37629a = abstractC8541a;
        this.f37630b = abstractC26857y;
        this.f37631c = abstractC19854f;
    }

    /* renamed from: a */
    public final void m22372a(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        AbstractC26857y abstractC26857y = this.f37630b;
        Context applicationContext = context.getApplicationContext();
        l.d(applicationContext, "context.applicationContext");
        C21782c.m9083c(abstractC26857y, "SendPresenceSettingWorkAction", applicationContext, null, null, 12);
        this.f37629a.remove("key_last_set_last_seen_time");
        this.f37631c.mo11854a().mo16129c();
    }
}
