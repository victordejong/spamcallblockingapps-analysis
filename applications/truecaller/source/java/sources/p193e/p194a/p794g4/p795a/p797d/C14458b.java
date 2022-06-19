package p193e.p194a.p794g4.p795a.p797d;

import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.widget.RemoteViews;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.notification.call.C4304R;
import p1727n3.p1807k.p1808a.C26450q;
import p1727n3.p1807k.p1808a.C26451r;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p794g4.p795a.AbstractC14447a;
import p193e.p194a.p794g4.p795a.p797d.AbstractC14455a;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.g4.a.d.b */
/* loaded from: classes11-dex2jar.jar:e/a/g4/a/d/b.class */
public final class C14458b extends AbstractC14447a {

    /* renamed from: j */
    public final RemoteViews f41646j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14458b(Context context, f fVar, f fVar2, C20592g c20592g, AbstractC19230g abstractC19230g, int i, String str, PendingIntent pendingIntent, PendingIntent pendingIntent2, PendingIntent pendingIntent3, AbstractC14455a abstractC14455a) {
        super(fVar, fVar2, context, c20592g, abstractC19230g, i, str);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(fVar, "uiContext");
        l.e(fVar2, "cpuContext");
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC19230g, "deviceInfoUtil");
        l.e(str, RemoteMessageConst.Notification.CHANNEL_ID);
        l.e(pendingIntent, "muteIntent");
        l.e(pendingIntent2, "speakerIntent");
        l.e(pendingIntent3, "hangupIntent");
        RemoteViews remoteViews = m20099f() ? new RemoteViews(context.getPackageName(), C4304R.layout.notification_call_ongoing_dark) : new RemoteViews(context.getPackageName(), C4304R.layout.notification_call_ongoing_default);
        this.f41646j = remoteViews;
        int i2 = C4304R.C4306id.image_mute;
        remoteViews.setOnClickPendingIntent(i2, pendingIntent);
        remoteViews.setOnClickPendingIntent(C4304R.C4306id.image_speaker, pendingIntent2);
        remoteViews.setOnClickPendingIntent(C4304R.C4306id.image_hangup, pendingIntent3);
        if (abstractC14455a != null) {
            remoteViews.setOnClickPendingIntent(C4304R.C4306id.image_start_record, abstractC14455a.mo20080a());
            remoteViews.setOnClickPendingIntent(C4304R.C4306id.panel_record, abstractC14455a.mo20080a());
            remoteViews.setViewVisibility(i2, 8);
            if (abstractC14455a instanceof AbstractC14455a.C14457b) {
                m20074s(((AbstractC14455a.C14457b) abstractC14455a).f41644b);
            } else if (abstractC14455a instanceof AbstractC14455a.C14456a) {
                m20070w();
            }
        }
        C26450q m20101c = m20101c();
        m20101c.m1845x(new C26451r());
        m20101c.f74126G = remoteViews;
        m20101c.m1846w(null);
        m20101c.f74137R.vibrate = new long[]{0};
        if (C18334g0.m15272D0()) {
            remoteViews.setViewVisibility(C4304R.C4306id.image_avatar, 8);
        }
        m20071v();
        m20069x();
    }

    @Override // p193e.p194a.p794g4.p795a.AbstractC14447a
    /* renamed from: e */
    public void mo20079e() {
    }

    @Override // p193e.p194a.p794g4.p795a.AbstractC14447a
    /* renamed from: h */
    public void mo20078h(String str, int i, int i2) {
        l.e(str, "label");
    }

    @Override // p193e.p194a.p794g4.p795a.AbstractC14447a
    /* renamed from: j */
    public void mo20077j(String str) {
        l.e(str, "title");
        this.f41646j.setTextViewText(C4304R.C4306id.title, str);
    }

    @Override // p193e.p194a.p794g4.p795a.AbstractC14447a
    /* renamed from: l */
    public void mo20076l(Bitmap bitmap) {
        l.e(bitmap, RemoteMessageConst.Notification.ICON);
        super.mo20076l(bitmap);
        if (!C18334g0.m15272D0()) {
            this.f41646j.setImageViewBitmap(C4304R.C4306id.image_avatar, bitmap);
            return;
        }
        C26450q m20101c = m20101c();
        m20101c.m1852q(bitmap);
        l.d(m20101c, "notificationBuilder.setLargeIcon(icon)");
    }

    /* renamed from: r */
    public final void m20075r() {
        m20096k(this.f41646j, C4304R.C4306id.image_mute, C4304R.C4305drawable.notification_call_ic_button_mute_checked, true);
    }

    /* renamed from: s */
    public final void m20074s(long j) {
        this.f41646j.setViewVisibility(C4304R.C4306id.panel_record, 0);
        this.f41646j.setViewVisibility(C4304R.C4306id.image_start_record, 8);
        RemoteViews remoteViews = this.f41646j;
        int i = C4304R.C4306id.record_time;
        remoteViews.setChronometer(i, j, null, true);
        this.f41646j.setTextColor(i, -16777216);
    }

    /* renamed from: t */
    public final void m20073t() {
        m20096k(this.f41646j, C4304R.C4306id.image_speaker, C4304R.C4305drawable.notification_call_ic_button_speaker_checked, true);
    }

    /* renamed from: u */
    public void m20072u(String str) {
        l.e(str, "text");
        this.f41646j.setTextViewText(C4304R.C4306id.description, str);
    }

    /* renamed from: v */
    public final void m20071v() {
        m20096k(this.f41646j, C4304R.C4306id.image_mute, C4304R.C4305drawable.notification_call_ic_button_mute_normal, false);
    }

    /* renamed from: w */
    public final void m20070w() {
        this.f41646j.setViewVisibility(C4304R.C4306id.panel_record, 8);
        RemoteViews remoteViews = this.f41646j;
        int i = C4304R.C4306id.image_start_record;
        remoteViews.setViewVisibility(i, 0);
        m20096k(this.f41646j, i, C4304R.C4305drawable.ic_call_record_24dp, false);
    }

    /* renamed from: x */
    public final void m20069x() {
        m20096k(this.f41646j, C4304R.C4306id.image_speaker, C4304R.C4305drawable.notification_call_ic_button_speaker_normal, false);
    }
}
