package p193e.p194a.p912i4;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.p183ui.TruecallerInit;
import java.util.Objects;
import javax.inject.Inject;
import p1727n3.p1807k.p1808a.C26447o;
import p1727n3.p1807k.p1808a.C26450q;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p194a.AbstractC21187w1;
import s1.z.c.l;
/* renamed from: e.a.i4.t */
/* loaded from: classes11-dex2jar.jar:e/a/i4/t.class */
public final class C15291t implements AbstractC15290s {

    /* renamed from: a */
    public final AbstractC15275e f43515a;

    @Inject
    public C15291t(AbstractC15275e abstractC15275e) {
        l.e(abstractC15275e, "notificationManager");
        this.f43515a = abstractC15275e;
    }

    @Override // p193e.p194a.p912i4.AbstractC15290s
    /* renamed from: a */
    public void mo18954a(Context context, int i, int i2, String str) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(str, "type");
        Intent intent = new Intent(context, TruecallerInit.class);
        intent.addFlags(268468224);
        intent.putExtra("EXTRA_REG_NUDGE", str);
        Context applicationContext = context.getApplicationContext();
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.GraphHolder");
        C26450q c26450q = new C26450q(context, ((AbstractC21187w1) applicationContext).mo10154s().mo12458a1().mo19422d());
        c26450q.m1855n(context.getString(i));
        c26450q.m1856m(context.getString(i2));
        C26447o c26447o = new C26447o();
        c26447o.m1873k(context.getString(i2));
        c26450q.m1845x(c26447o);
        Object obj = C26467a.f74235a;
        c26450q.f74123D = C26467a.C26471d.m1787a(context, 2131101323);
        c26450q.m1854o(-1);
        c26450q.f74137R.icon = 2131236603;
        c26450q.f74147g = PendingIntent.getActivity(context, 0, intent, 67108864);
        c26450q.m1853p(16, true);
        l.d(c26450q, "NotificationCompat.Build…     .setAutoCancel(true)");
        AbstractC15275e abstractC15275e = this.f43515a;
        Notification m1865d = c26450q.m1865d();
        l.d(m1865d, "builder.build()");
        abstractC15275e.mo18964j(C2752R.C2754id.dialer_reminder_notification_id, m1865d, "notificationRegistrationNudge");
    }
}
