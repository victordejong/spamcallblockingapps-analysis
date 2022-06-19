package p193e.p194a.p912i4;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.service.notification.StatusBarNotification;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.notifications.AnalyticsNotificationReceiver;
import java.util.HashMap;
import java.util.Random;
import javax.inject.Inject;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19502g;
import p193e.p194a.p849h4.AbstractC14920n;
import s1.f0.w;
import s1.z.c.l;
/* renamed from: e.a.i4.f */
/* loaded from: classes11-dex2jar.jar:e/a/i4/f.class */
public final class C15276f implements AbstractC15275e {

    /* renamed from: a */
    public final Random f43496a = new Random();

    /* renamed from: b */
    public final Context f43497b;

    /* renamed from: c */
    public final AbstractC14920n f43498c;

    /* renamed from: d */
    public final AbstractC19462a f43499d;

    @Inject
    public C15276f(Context context, AbstractC14920n abstractC14920n, AbstractC19462a abstractC19462a) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC14920n, "systemNotificationManager");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f43497b = context;
        this.f43498c = abstractC14920n;
        this.f43499d = abstractC19462a;
    }

    @Override // p193e.p194a.p912i4.AbstractC15275e
    /* renamed from: a */
    public String mo18973a(String str) {
        l.e(str, "channelKey");
        return this.f43498c.mo19425a(str);
    }

    @Override // p193e.p194a.p912i4.AbstractC15275e
    /* renamed from: b */
    public void mo18972b(String str, int i) {
        l.e(str, RemoteMessageConst.Notification.TAG);
        this.f43498c.mo19424b(str, i);
    }

    @Override // p193e.p194a.p912i4.AbstractC15275e
    /* renamed from: c */
    public void mo18971c(String str, int i, Notification notification, String str2, Bundle bundle) {
        l.e(notification, RemoteMessageConst.NOTIFICATION);
        if (str2 != null) {
            m18961m(str2, "Shown", bundle);
            Intent m18963k = m18963k(str2, notification.contentIntent, "Opened", bundle);
            Intent m18963k2 = m18963k(str2, notification.deleteIntent, "Dismissed", bundle);
            notification.contentIntent = PendingIntent.getBroadcast(this.f43497b, m18962l(), m18963k, 335544320);
            notification.deleteIntent = PendingIntent.getBroadcast(this.f43497b, m18962l(), m18963k2, 335544320);
        }
        this.f43498c.mo19414l(str, i, notification);
    }

    @Override // p193e.p194a.p912i4.AbstractC15275e
    /* renamed from: d */
    public String mo18970d() {
        return this.f43498c.mo19422d();
    }

    @Override // p193e.p194a.p912i4.AbstractC15275e
    /* renamed from: e */
    public StatusBarNotification[] mo18969e() {
        return this.f43498c.mo19421e();
    }

    @Override // p193e.p194a.p912i4.AbstractC15275e
    /* renamed from: f */
    public void mo18968f(int i) {
        this.f43498c.mo19420f(i);
    }

    @Override // p193e.p194a.p912i4.AbstractC15275e
    /* renamed from: g */
    public void mo18967g(Intent intent) {
        l.e(intent, "intent");
        try {
            PendingIntent pendingIntent = (PendingIntent) intent.getParcelableExtra("original_pending_intent");
            if (pendingIntent != null) {
                pendingIntent.send();
            }
        } catch (PendingIntent.CanceledException e) {
        }
        String stringExtra = intent.getStringExtra("notification_type");
        if (stringExtra != null) {
            l.d(stringExtra, "intent.getStringExtra(EX…IFICATION_TYPE) ?: return");
            String stringExtra2 = intent.getStringExtra("notification_status");
            if (stringExtra2 == null) {
                return;
            }
            l.d(stringExtra2, "intent.getStringExtra(EX…ICATION_STATUS) ?: return");
            m18961m(stringExtra, stringExtra2, (Bundle) intent.getParcelableExtra("additional_params"));
        }
    }

    @Override // p193e.p194a.p912i4.AbstractC15275e
    /* renamed from: h */
    public PendingIntent mo18966h(PendingIntent pendingIntent, String str, String str2) {
        l.e(str, "type");
        l.e(str2, "notificationStatus");
        PendingIntent broadcast = PendingIntent.getBroadcast(this.f43497b, m18962l(), m18963k(str, pendingIntent, str2, null), 335544320);
        l.d(broadcast, "PendingIntent.getBroadca….FLAG_IMMUTABLE\n        )");
        return broadcast;
    }

    @Override // p193e.p194a.p912i4.AbstractC15275e
    /* renamed from: i */
    public void mo18965i(String str, int i, Notification notification, String str2) {
        l.e(notification, RemoteMessageConst.NOTIFICATION);
        mo18971c(str, i, notification, str2, null);
    }

    @Override // p193e.p194a.p912i4.AbstractC15275e
    /* renamed from: j */
    public void mo18964j(int i, Notification notification, String str) {
        l.e(notification, RemoteMessageConst.NOTIFICATION);
        mo18971c(null, i, notification, str, null);
    }

    /* renamed from: k */
    public final Intent m18963k(String str, PendingIntent pendingIntent, String str2, Bundle bundle) {
        Intent intent = new Intent(this.f43497b, AnalyticsNotificationReceiver.class);
        intent.putExtra("notification_type", str);
        intent.putExtra("original_pending_intent", pendingIntent);
        intent.putExtra("notification_status", str2);
        intent.putExtra("additional_params", bundle);
        return intent;
    }

    /* renamed from: l */
    public final int m18962l() {
        return this.f43496a.nextInt();
    }

    /* renamed from: m */
    public final void m18961m(String str, String str2, Bundle bundle) {
        String str3 = "trackNotification " + str + ' ' + str2 + ' ' + bundle;
        String n0 = w.n0(str, 40);
        HashMap hashMap = new HashMap();
        hashMap.put("Status", str2);
        if (bundle != null) {
            for (String str4 : bundle.keySet()) {
                Object obj = bundle.get(str4);
                String obj2 = obj != null ? obj.toString() : null;
                if (obj2 == null) {
                    obj2 = "";
                }
                hashMap.put(str4, obj2);
            }
        }
        AbstractC19462a abstractC19462a = this.f43499d;
        AbstractC19502g.C19504b.C19505a c19505a = new AbstractC19502g.C19504b.C19505a(n0, null, hashMap, null);
        l.d(c19505a, "event.build()");
        abstractC19462a.mo13271e(c19505a);
    }
}
