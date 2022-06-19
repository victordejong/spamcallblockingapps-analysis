package p193e.p194a.p794g4.p795a.p796c;

import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.widget.RemoteViews;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.notification.call.C4304R;
import p1727n3.p1807k.p1808a.C26450q;
import p1727n3.p1807k.p1808a.C26451r;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p794g4.p795a.AbstractC14447a;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.g4.a.c.a */
/* loaded from: classes11-dex2jar.jar:e/a/g4/a/c/a.class */
public final class C14454a extends AbstractC14447a {

    /* renamed from: j */
    public final RemoteViews f41637j;

    /* renamed from: k */
    public final RemoteViews f41638k;

    /* renamed from: l */
    public final Context f41639l;

    /* renamed from: m */
    public final PendingIntent f41640m;

    /* renamed from: n */
    public final PendingIntent f41641n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14454a(Context context, f fVar, f fVar2, C20592g c20592g, AbstractC19230g abstractC19230g, int i, String str, PendingIntent pendingIntent, PendingIntent pendingIntent2) {
        super(fVar, fVar2, context, c20592g, abstractC19230g, i, str);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(fVar, "uiContext");
        l.e(fVar2, "cpuContext");
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC19230g, "deviceInfoUtil");
        l.e(str, RemoteMessageConst.Notification.CHANNEL_ID);
        l.e(pendingIntent, "answerIntent");
        l.e(pendingIntent2, "declineIntent");
        this.f41639l = context;
        this.f41640m = pendingIntent;
        this.f41641n = pendingIntent2;
        RemoteViews remoteViews = m20099f() ? new RemoteViews(context.getPackageName(), C4304R.layout.notification_call_incoming_dark) : new RemoteViews(context.getPackageName(), C4304R.layout.notification_call_incoming_default);
        this.f41637j = remoteViews;
        RemoteViews remoteViews2 = m20099f() ? new RemoteViews(context.getPackageName(), C4304R.layout.notification_call_incoming_big_dark) : new RemoteViews(context.getPackageName(), C4304R.layout.notification_call_incoming_big_default);
        this.f41638k = remoteViews2;
        int i2 = C4304R.C4306id.button_decline;
        remoteViews.setOnClickPendingIntent(i2, pendingIntent2);
        int i3 = C4304R.C4306id.button_answer;
        remoteViews.setOnClickPendingIntent(i3, pendingIntent);
        remoteViews2.setOnClickPendingIntent(i2, pendingIntent2);
        remoteViews2.setOnClickPendingIntent(i3, pendingIntent);
        C26450q m20101c = m20101c();
        m20101c.m1845x(new C26451r());
        m20101c.f74126G = remoteViews;
        m20101c.f74127H = remoteViews2;
        m20101c.f74128I = remoteViews2;
        if (C18334g0.m15272D0()) {
            int i4 = C4304R.C4306id.image_avatar;
            remoteViews.setViewVisibility(i4, 8);
            remoteViews2.setViewVisibility(i4, 8);
        }
    }

    @Override // p193e.p194a.p794g4.p795a.AbstractC14447a
    /* renamed from: e */
    public void mo20079e() {
        this.f41638k.setViewVisibility(C4304R.C4306id.text_caller_label, 8);
    }

    @Override // p193e.p194a.p794g4.p795a.AbstractC14447a
    /* renamed from: h */
    public void mo20078h(String str, int i, int i2) {
        l.e(str, "label");
        RemoteViews remoteViews = this.f41638k;
        int i3 = C4304R.C4306id.text_caller_label;
        remoteViews.setTextViewText(i3, str);
        Context context = this.f41639l;
        Object obj = C26467a.f74235a;
        remoteViews.setTextColor(i3, C26467a.C26471d.m1787a(context, i2));
        remoteViews.setInt(i3, "setBackgroundResource", i);
        remoteViews.setViewVisibility(i3, 0);
    }

    @Override // p193e.p194a.p794g4.p795a.AbstractC14447a
    /* renamed from: j */
    public void mo20077j(String str) {
        l.e(str, "title");
        RemoteViews remoteViews = this.f41637j;
        int i = C4304R.C4306id.title;
        remoteViews.setTextViewText(i, str);
        this.f41638k.setTextViewText(i, str);
    }

    @Override // p193e.p194a.p794g4.p795a.AbstractC14447a
    /* renamed from: l */
    public void mo20076l(Bitmap bitmap) {
        l.e(bitmap, RemoteMessageConst.Notification.ICON);
        super.mo20076l(bitmap);
        if (C18334g0.m15272D0()) {
            C26450q m20101c = m20101c();
            m20101c.m1852q(bitmap);
            l.d(m20101c, "notificationBuilder.setLargeIcon(icon)");
            return;
        }
        RemoteViews remoteViews = this.f41637j;
        int i = C4304R.C4306id.image_avatar;
        remoteViews.setImageViewBitmap(i, bitmap);
        this.f41638k.setImageViewBitmap(i, bitmap);
    }

    /* renamed from: r */
    public void m20081r(String str) {
        l.e(str, "text");
        RemoteViews remoteViews = this.f41637j;
        int i = C4304R.C4306id.description;
        remoteViews.setTextViewText(i, str);
        this.f41638k.setTextViewText(i, str);
    }
}
