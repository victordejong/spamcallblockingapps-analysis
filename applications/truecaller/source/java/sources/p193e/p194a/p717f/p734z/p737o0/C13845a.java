package p193e.p194a.p717f.p734z.p737o0;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import com.razorpay.AnalyticsConstants;
import com.truecaller.incallui.utils.notification.actionreceiver.NotificationActionReceiver;
import javax.inject.Inject;
import p193e.p194a.p794g4.p795a.C14453b;
import s1.z.c.l;
/* renamed from: e.a.f.z.o0.a */
/* loaded from: classes10-dex2jar.jar:e/a/f/z/o0/a.class */
public final class C13845a {

    /* renamed from: a */
    public final Context f40173a;

    /* renamed from: b */
    public final C14453b f40174b;

    @Inject
    public C13845a(Context context, C14453b c14453b) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(c14453b, "callNotificationFactory");
        this.f40173a = context;
        this.f40174b = c14453b;
    }

    /* renamed from: a */
    public final PendingIntent m21003a(int i, String str) {
        PendingIntent broadcast = PendingIntent.getBroadcast(this.f40173a, i, new Intent(this.f40173a, NotificationActionReceiver.class).setAction(str), 201326592);
        l.d(broadcast, "PendingIntent.getBroadca….FLAG_IMMUTABLE\n        )");
        return broadcast;
    }
}
