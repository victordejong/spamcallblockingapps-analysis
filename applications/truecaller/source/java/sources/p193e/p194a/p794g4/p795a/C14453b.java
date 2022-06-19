package p193e.p194a.p794g4.p795a;

import android.app.PendingIntent;
import android.content.Context;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p794g4.p795a.p796c.C14454a;
import p193e.p194a.p794g4.p795a.p797d.AbstractC14455a;
import p193e.p194a.p794g4.p795a.p797d.C14458b;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.g4.a.b */
/* loaded from: classes11-dex2jar.jar:e/a/g4/a/b.class */
public final class C14453b {

    /* renamed from: a */
    public final f f41632a;

    /* renamed from: b */
    public final f f41633b;

    /* renamed from: c */
    public final C20592g f41634c;

    /* renamed from: d */
    public final Context f41635d;

    /* renamed from: e */
    public final AbstractC19230g f41636e;

    @Inject
    public C14453b(@Named("UI") f fVar, @Named("CPU") f fVar2, C20592g c20592g, Context context, AbstractC19230g abstractC19230g) {
        l.e(fVar, "uiContext");
        l.e(fVar2, "cpuContext");
        l.e(c20592g, "featuresRegistry");
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC19230g, "deviceInfoUtil");
        this.f41632a = fVar;
        this.f41633b = fVar2;
        this.f41634c = c20592g;
        this.f41635d = context;
        this.f41636e = abstractC19230g;
    }

    /* renamed from: a */
    public final C14454a m20084a(int i, String str, PendingIntent pendingIntent, PendingIntent pendingIntent2) {
        l.e(str, RemoteMessageConst.Notification.CHANNEL_ID);
        l.e(pendingIntent, "answerIntent");
        l.e(pendingIntent2, "declineIntent");
        return new C14454a(this.f41635d, this.f41632a, this.f41633b, this.f41634c, this.f41636e, i, str, pendingIntent, pendingIntent2);
    }

    /* renamed from: b */
    public final C14458b m20083b(int i, String str, PendingIntent pendingIntent, PendingIntent pendingIntent2, PendingIntent pendingIntent3, AbstractC14455a abstractC14455a) {
        l.e(str, RemoteMessageConst.Notification.CHANNEL_ID);
        l.e(pendingIntent, "muteIntent");
        l.e(pendingIntent2, "speakerIntent");
        l.e(pendingIntent3, "hangupIntent");
        return new C14458b(this.f41635d, this.f41632a, this.f41633b, this.f41634c, this.f41636e, i, str, pendingIntent, pendingIntent2, pendingIntent3, abstractC14455a);
    }
}
