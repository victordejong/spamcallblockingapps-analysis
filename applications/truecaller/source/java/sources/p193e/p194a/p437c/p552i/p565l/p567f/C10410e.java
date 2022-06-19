package p193e.p194a.p437c.p552i.p565l.p567f;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.widget.RemoteViews;
import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.C4030R;
import com.truecaller.insights.core.smartnotifications.smsparser.models.NotificationBanner;
import com.truecaller.log.AssertionUtil;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import javax.inject.Inject;
import javax.inject.Named;
import p1727n3.p1734b.p1736b.p1737a.C25440a;
import p1727n3.p1807k.p1808a.C26450q;
import p1727n3.p1807k.p1808a.C26451r;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1406z3.C21852d;
import p193e.p194a.p1406z3.p1409i.AbstractC21873e;
import p193e.p194a.p1406z3.p1409i.C21869a;
import p193e.p194a.p372b0.p419m.p422c.AbstractC8511a;
import p193e.p194a.p372b0.p430q.C8605o;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p552i.p565l.C10393a;
import p193e.p194a.p437c.p552i.p565l.p566e.C10401a;
import p193e.p194a.p437c.p552i.p565l.p568g.C10418d;
import p193e.p194a.p437c.p580r.p589j.C10583b0;
import p193e.p194a.p437c.p580r.p589j.C10612m;
import p193e.p194a.p437c.p580r.p590k.C10643a;
import p193e.p194a.p437c.p580r.p590k.C10644b;
import p193e.p194a.p437c.p580r.p590k.C10645c;
import p193e.p194a.p437c.p580r.p590k.C10647e;
import p193e.p194a.p437c.p580r.p590k.C10648f;
import p193e.p194a.p437c.p598v.p603h.C10741g;
import p193e.p194a.p849h4.AbstractC14920n;
import p193e.p194a.p849h4.p850q.AbstractC14932g;
import q3.a.h1;
import q3.a.i0;
import q3.a.j0;
import s1.f0.r;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.c.i.l.f.e */
/* loaded from: classes10-dex2jar.jar:e/a/c/i/l/f/e.class */
public final class C10410e implements AbstractC10406a {

    /* renamed from: a */
    public Set<Integer> f30975a;

    /* renamed from: b */
    public final Context f30976b;

    /* renamed from: c */
    public final f f30977c;

    /* renamed from: d */
    public final AbstractC8511a f30978d;

    /* renamed from: e */
    public final AbstractC9691j f30979e;

    /* renamed from: f */
    public final C10418d f30980f;

    @e(c = "com.truecaller.insights.core.smartnotifications.helper.SmartNotificationManagerImpl$removeNotifyId$1", f = "SmartNotificationManager.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.c.i.l.f.e$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/l/f/e$a.class */
    public static final class C10411a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: f */
        public final /* synthetic */ int f30982f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10411a(int i, d dVar) {
            super(2, dVar);
            C10410e.this = r5;
            this.f30982f = i;
        }

        /* renamed from: i */
        public final d<s> m26202i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C10411a(this.f30982f, dVar);
        }

        /* renamed from: k */
        public final Object m26201k(Object obj, Object obj2) {
            s sVar = s.a;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C10410e c10410e = C10410e.this;
            int i = this.f30982f;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            Set<Integer> set = c10410e.f30975a;
            if (set == null || set.isEmpty()) {
                c10410e.f30975a = c10410e.m26208j();
            }
            c10410e.f30975a.remove(new Integer(i));
            c10410e.m26204n(c10410e.f30975a);
            return sVar;
        }

        /* renamed from: s */
        public final Object m26200s(Object obj) {
            C25225a.m3932a3(obj);
            Set<Integer> set = C10410e.this.f30975a;
            if (set == null || set.isEmpty()) {
                C10410e c10410e = C10410e.this;
                c10410e.f30975a = c10410e.m26208j();
            }
            C10410e.this.f30975a.remove(new Integer(this.f30982f));
            C10410e c10410e2 = C10410e.this;
            c10410e2.m26204n(c10410e2.f30975a);
            return s.a;
        }
    }

    @Inject
    public C10410e(Context context, @Named("Parser_Async") f fVar, AbstractC8511a abstractC8511a, AbstractC9691j abstractC9691j, C10418d c10418d) {
        l.e(context, "appContext");
        l.e(fVar, "asyncContext");
        l.e(abstractC8511a, "addressProfileLoader");
        l.e(abstractC9691j, "insightsStatusProvider");
        l.e(c10418d, "updateNotificationBuilder");
        this.f30976b = context;
        this.f30977c = fVar;
        this.f30978d = abstractC8511a;
        this.f30979e = abstractC9691j;
        this.f30980f = c10418d;
        Set<Integer> synchronizedSet = Collections.synchronizedSet(new HashSet());
        l.d(synchronizedSet, "Collections.synchronizedSet(HashSet<Int>())");
        this.f30975a = synchronizedSet;
    }

    @Override // p193e.p194a.p437c.p552i.p565l.p567f.AbstractC10406a
    /* renamed from: a */
    public void mo26217a(C10643a c10643a, AbstractC10412f abstractC10412f, C10401a c10401a, int i, boolean z, boolean z2) {
        l.e(c10643a, "customSmartNotifwithActions");
        l.e(abstractC10412f, "smartNotificationsHelper");
        l.e(c10401a, "notificationBannerHelper");
        C10644b c10644b = c10643a.f31703a;
        C10645c c10645c = c10643a.f31704b;
        C26450q c26450q = new C26450q(this.f30976b, m26212f().mo19425a("non_spam_sms_v2"));
        int i2 = C4030R.layout.insights_custom_notif_big;
        RemoteViews m26211g = m26211g(i2, c10644b, c10645c, false);
        RemoteViews m26211g2 = m26211g(i2, c10644b, c10645c, true);
        RemoteViews m26211g3 = m26211g(C4030R.layout.insights_custom_notif_small, c10644b, c10645c, false);
        Context context = this.f30976b;
        String obj = c10644b.f31707c.toString();
        List<C10583b0> list = c10644b.f31715k;
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(obj, "contentText");
        l.e(list, "contentTextColor");
        SpannableString spannableString = new SpannableString(obj);
        for (C10583b0 c10583b0 : list) {
            Integer num = c10583b0.f31572c;
            if (num != null) {
                spannableString.setSpan(new ForegroundColorSpan(C17422k.m16105M(context, num.intValue())), c10583b0.f31570a, c10583b0.f31571b, 33);
            }
        }
        m26206l(c26450q);
        c26450q.m1845x(new C26451r());
        c26450q.m1844y(c10644b.f31713i);
        c26450q.m1855n(spannableString);
        c26450q.m1856m(c10644b.f31708d);
        c26450q.f74127H = m26211g;
        c26450q.f74126G = m26211g3;
        c26450q.f74128I = m26211g2;
        boolean z3 = false;
        c26450q.f74124E = 0;
        c26450q.f74152l = 2;
        c26450q.m1853p(16, true);
        C10647e c10647e = c10645c.f31721d;
        c26450q.f74137R.deleteIntent = c10647e != null ? c10647e.f31726b : null;
        Notification m1865d = c26450q.m1865d();
        l.d(m1865d, "notificationBuilder.build()");
        m26209i(m1865d, c10644b.f31714j.getSenderId(), m26211g, i);
        m26209i(m1865d, c10644b.f31714j.getSenderId(), m26211g2, i);
        m26209i(m1865d, c10644b.f31714j.getSenderId(), m26211g3, i);
        NotificationBanner notificationBanner = c10644b.f31716l;
        if (notificationBanner != null) {
            if (this.f30979e.mo27238v()) {
                String image = notificationBanner.getImage();
                AbstractC21873e.C21874a c21874a = AbstractC21873e.C21874a.f60765c;
                l.e(c21874a, "size");
                Uri uri = null;
                if (image != null) {
                    if (image.length() == 0) {
                        z3 = true;
                    }
                    if (z3) {
                        image = null;
                    }
                    uri = null;
                    if (image != null) {
                        uri = Uri.parse(image);
                    }
                }
                m26211g.setImageViewBitmap(C4030R.C4032id.bannerImage, C17891a1.C17902k.m15656N0(new C21869a(uri, c21874a), this.f30976b));
                c10401a.m26222b(notificationBanner.getName());
            } else {
                C10393a c10393a = new C10393a(this.f30976b, C4030R.C4032id.bannerImage, m26211g, m1865d, i, this.f30979e);
                C21852d<Bitmap> mo8415f = C17891a1.C17902k.m15664K1(this.f30976b).mo8415f();
                mo8415f.m8972l0(notificationBanner.getImage());
                C10407b c10407b = new C10407b(c10401a, notificationBanner);
                mo8415f.f61768K = null;
                mo8415f.mo8433H(c10407b);
                mo8415f.m8429M(c10393a);
            }
        }
        m26212f().mo19419g(i, m1865d);
        if (this.f30975a.isEmpty()) {
            this.f30975a = m26208j();
        }
        this.f30975a.add(Integer.valueOf(i));
        m26204n(this.f30975a);
        m26203o();
    }

    @Override // p193e.p194a.p437c.p552i.p565l.p567f.AbstractC10406a
    /* renamed from: b */
    public void mo26216b(int i) {
        s1.a.a.a.v0.f.d.w2(h1.a, this.f30977c, (j0) null, new C10411a(i, null), 2, (Object) null);
    }

    @Override // p193e.p194a.p437c.p552i.p565l.p567f.AbstractC10406a
    /* renamed from: c */
    public void mo26215c(C10648f c10648f, int i) {
        String str;
        l.e(c10648f, "updateNotification");
        C10418d c10418d = this.f30980f;
        AbstractC14920n m26212f = m26212f();
        Objects.requireNonNull(c10418d);
        l.e(c10648f, "updateNotification");
        l.e(m26212f, "notificationManager");
        C26450q c26450q = new C26450q(c10418d.f31010a, m26212f.mo19425a("non_spam_sms_v2"));
        RemoteViews m26185a = c10418d.m26185a(C4030R.layout.insights_update_notif_small, c10648f, c10648f.f31728b);
        RemoteViews m26185a2 = c10418d.m26185a(C4030R.layout.insights_update_notif_big, c10648f, c10648f.f31727a);
        Context context = c10418d.f31010a;
        String str2 = c10648f.f31730d;
        if (c10648f.f31737k.isIM()) {
            str = context.getString(C4030R.string.NotificationSenderTextMessage, str2);
            l.d(str, "context.getString(R.stri…rTextMessage, senderName)");
        } else {
            str = context.getString(C4030R.string.NotificationSenderTextSMS, str2);
            l.d(str, "context.getString(R.stri…enderTextSMS, senderName)");
        }
        String string = c10418d.f31010a.getString(C4030R.string.UpdateNotificationContentText, c10648f.f31727a);
        l.d(string, "appContext.getString(R.s…Notification.messageText)");
        c26450q.f74137R.icon = C4030R.C4031drawable.ic_notification_message;
        l.d(c26450q, "setSmallIcon(R.drawable.ic_notification_message)");
        Context context2 = c10418d.f31010a;
        int i2 = C4030R.color.accent_default;
        Object obj = C26467a.f74235a;
        c26450q.f74123D = C26467a.C26471d.m1787a(context2, i2);
        c26450q.m1845x(new C26451r());
        c26450q.m1844y(str);
        c26450q.m1855n(c10648f.f31730d);
        c26450q.m1856m(string);
        c26450q.f74126G = m26185a;
        c26450q.f74127H = m26185a2;
        c26450q.f74128I = m26185a;
        c26450q.f74124E = 0;
        c26450q.f74152l = 2;
        c26450q.m1853p(16, true);
        c26450q.f74137R.deleteIntent = c10648f.f31734h;
        Notification m1865d = c26450q.m1865d();
        l.d(m1865d, "notificationBuilder.build()");
        Uri uri = c10648f.f31731e;
        if (uri != null) {
            c10418d.m26184b(m1865d, uri, m26185a, i, c10648f.f31732f);
            c10418d.m26184b(m1865d, uri, m26185a2, i, c10648f.f31732f);
        }
        m26212f.mo19419g(i, m1865d);
        if (this.f30975a.isEmpty()) {
            this.f30975a = m26208j();
        }
        this.f30975a.add(Integer.valueOf(i));
        m26204n(this.f30975a);
        m26203o();
    }

    @Override // p193e.p194a.p437c.p552i.p565l.p567f.AbstractC10406a
    /* renamed from: d */
    public boolean mo26214d(int i) {
        Set<Integer> set = this.f30975a;
        if (set == null || set.isEmpty()) {
            this.f30975a = m26208j();
        }
        return this.f30975a.contains(Integer.valueOf(i));
    }

    @Override // p193e.p194a.p437c.p552i.p565l.p567f.AbstractC10406a
    /* renamed from: e */
    public void mo26213e(C10741g c10741g) {
        PendingIntent pendingIntent;
        l.e(c10741g, "notificationAttributes");
        C26450q c26450q = new C26450q(this.f30976b, m26212f().mo19425a("non_spam_sms_v2"));
        RemoteViews m26210h = m26210h(C4030R.layout.insights_custom_notif_big, c10741g);
        RemoteViews m26210h2 = m26210h(C4030R.layout.insights_custom_notif_small, c10741g);
        m26206l(c26450q);
        c26450q.m1845x(new C26451r());
        c26450q.m1855n(c10741g.f31910e);
        c26450q.m1856m("• " + c10741g.f31912g);
        c26450q.f74127H = m26210h;
        c26450q.f74126G = m26210h2;
        c26450q.f74128I = m26210h;
        c26450q.f74124E = 0;
        c26450q.f74152l = 2;
        C10647e c10647e = c10741g.f31920o;
        if (c10647e != null && (pendingIntent = c10647e.f31726b) != null) {
            c26450q.f74147g = pendingIntent;
        }
        c26450q.m1853p(16, true);
        PendingIntent pendingIntent2 = c10741g.f31921p;
        if (pendingIntent2 != null) {
            c26450q.f74137R.deleteIntent = pendingIntent2;
        }
        Notification m1865d = c26450q.m1865d();
        l.d(m1865d, "with(notificationBuilder…        build()\n        }");
        String str = c10741g.f31908c;
        if (str != null) {
            m26209i(m1865d, str, m26210h, c10741g.f31922q);
            m26209i(m1865d, str, m26210h2, c10741g.f31922q);
        }
        m26212f().mo19419g(c10741g.f31922q, m1865d);
        if (this.f30975a.isEmpty()) {
            this.f30975a = m26208j();
        }
        this.f30975a.add(Integer.valueOf(c10741g.f31922q));
        m26204n(this.f30975a);
        m26203o();
    }

    /* renamed from: f */
    public final AbstractC14920n m26212f() {
        Context applicationContext = this.f30976b.getApplicationContext();
        Context context = applicationContext;
        if (!(applicationContext instanceof AbstractC14932g)) {
            context = null;
        }
        AbstractC14932g abstractC14932g = (AbstractC14932g) context;
        if (abstractC14932g != null) {
            return abstractC14932g.mo19403n();
        }
        throw new RuntimeException(C22128a.m8643a2(AbstractC14932g.class, C22128a.m8728C("Application class does not implement ")));
    }

    /* JADX WARN: Code restructure failed: missing block: B:55:0x0255, code lost:
        if (r14 != null) goto L57;
     */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.widget.RemoteViews m26211g(int r8, p193e.p194a.p437c.p580r.p590k.C10644b r9, p193e.p194a.p437c.p580r.p590k.C10645c r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 783
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p552i.p565l.p567f.C10410e.m26211g(int, e.a.c.r.k.b, e.a.c.r.k.c, boolean):android.widget.RemoteViews");
    }

    /* renamed from: h */
    public final RemoteViews m26210h(int i, C10741g c10741g) {
        PendingIntent pendingIntent;
        RemoteViews remoteViews = new RemoteViews(this.f30976b.getPackageName(), i);
        boolean z = true;
        remoteViews.setTextViewText(C4030R.C4032id.time, this.f30976b.getString(C4030R.string.NotificationTime, c10741g.f31909d));
        remoteViews.setTextViewText(C4030R.C4032id.contentTitle, c10741g.f31910e);
        if (r.p(c10741g.f31911f)) {
            remoteViews.setViewVisibility(C4030R.C4032id.contentTextContainer, 8);
        } else {
            remoteViews.setTextViewText(C4030R.C4032id.contentText, c10741g.f31911f);
            remoteViews.setViewVisibility(C4030R.C4032id.contentTextContainer, 0);
        }
        if (r.p(c10741g.f31912g)) {
            remoteViews.setViewVisibility(C4030R.C4032id.infoRightTitle, 8);
        } else {
            int i2 = C4030R.C4032id.infoRightTitle;
            remoteViews.setTextViewText(i2, c10741g.f31912g);
            remoteViews.setViewVisibility(i2, 0);
        }
        Integer num = c10741g.f31913h;
        if (num != null) {
            remoteViews.setTextColor(C4030R.C4032id.infoRightTitle, C17422k.m16105M(this.f30976b, num.intValue()));
        }
        String str = c10741g.f31914i;
        if (str.length() <= 0) {
            z = false;
        }
        if (z) {
            int i3 = C4030R.C4032id.infoRightText;
            remoteViews.setViewVisibility(i3, 0);
            remoteViews.setTextViewText(i3, str);
            Integer num2 = c10741g.f31915j;
            if (num2 != null) {
                remoteViews.setTextColor(i3, C17422k.m16105M(this.f30976b, num2.intValue()));
            }
        } else {
            remoteViews.setViewVisibility(C4030R.C4032id.infoRightText, 8);
        }
        C10612m c10612m = c10741g.f31917l;
        m26207k(c10612m.f31636a, Integer.valueOf(c10612m.f31637b), Integer.valueOf(c10741g.f31917l.f31638c), remoteViews);
        C10647e c10647e = c10741g.f31918m;
        if (c10647e != null) {
            m26205m(remoteViews, C4030R.C4032id.primaryAction, c10647e);
        }
        C10647e c10647e2 = c10741g.f31919n;
        if (c10647e2 != null) {
            m26205m(remoteViews, C4030R.C4032id.secondaryAction, c10647e2);
        }
        C10647e c10647e3 = c10741g.f31920o;
        if (c10647e3 != null && (pendingIntent = c10647e3.f31726b) != null) {
            remoteViews.setOnClickPendingIntent(C4030R.C4032id.contentContainer, pendingIntent);
        }
        return remoteViews;
    }

    /* renamed from: i */
    public final void m26209i(Notification notification, String str, RemoteViews remoteViews, int i) {
        if (!this.f30979e.mo27238v()) {
            this.f30978d.mo28429Iz(str, new C10409d(this, remoteViews, new C10393a(this.f30976b, C4030R.C4032id.primaryIcon, remoteViews, notification, i, this.f30979e)));
            return;
        }
        C21869a c21869a = new C21869a(this.f30978d.mo28428Kw(str).f26292c, AbstractC21873e.C21875b.f60766c);
        c21869a.f60757a = true;
        Bitmap m15656N0 = C17891a1.C17902k.m15656N0(c21869a, this.f30976b);
        if (m15656N0 == null) {
            return;
        }
        remoteViews.setImageViewBitmap(C4030R.C4032id.primaryIcon, m15656N0);
        remoteViews.setViewVisibility(C4030R.C4032id.primarySubIcon, 8);
    }

    /* renamed from: j */
    public final Set<Integer> m26208j() {
        FileInputStream openFileInput;
        Set<Integer> synchronizedSet = Collections.synchronizedSet(new HashSet());
        l.d(synchronizedSet, "Collections.synchronizedSet(HashSet<Int>())");
        try {
            openFileInput = this.f30976b.openFileInput("smartNotifications.state");
        } catch (IOException e) {
        }
        try {
            DataInputStream dataInputStream = new DataInputStream(openFileInput);
            int readInt = dataInputStream.readInt();
            while (true) {
                synchronizedSet.add(Integer.valueOf(readInt));
                readInt = dataInputStream.readInt();
            }
        } catch (EOFException e2) {
            if (openFileInput != null) {
                openFileInput.close();
            }
            return synchronizedSet;
        } catch (Throwable th) {
            if (openFileInput != null) {
                try {
                    openFileInput.close();
                } catch (IOException e3) {
                }
            }
            throw th;
        }
    }

    /* renamed from: k */
    public final void m26207k(int i, Integer num, Integer num2, RemoteViews remoteViews) {
        Context context = this.f30976b;
        int i2 = C4030R.color.notification_subtitle_grey;
        Drawable m3540a = C25440a.m3540a(context, i);
        if (m3540a != null) {
            m3540a.setTint(context.getResources().getColor(i2));
        } else {
            m3540a = null;
        }
        remoteViews.setImageViewBitmap(C4030R.C4032id.icon, C8605o.m28237c(m3540a));
        int i3 = C4030R.C4032id.primarySubIcon;
        remoteViews.setViewVisibility(i3, 0);
        remoteViews.setImageViewBitmap(i3, C8605o.m28237c(C17422k.m16104N(this.f30976b, i, num != null ? num.intValue() : C4030R.attr.tcx_avatarTextBlue)));
        remoteViews.setImageViewBitmap(C4030R.C4032id.primaryIcon, C8605o.m28237c(C17422k.m16104N(this.f30976b, C4030R.C4031drawable.circle_bg_smart_sms, num2 != null ? num2.intValue() : C4030R.attr.tcx_brandBackgroundBlue)));
    }

    /* renamed from: l */
    public final void m26206l(C26450q c26450q) {
        c26450q.f74137R.icon = C4030R.C4031drawable.ic_notification_message;
        l.d(c26450q, "builder.setSmallIcon(R.d….ic_notification_message)");
        Context context = this.f30976b;
        int i = C4030R.color.accent_default;
        Object obj = C26467a.f74235a;
        c26450q.f74123D = C26467a.C26471d.m1787a(context, i);
    }

    /* renamed from: m */
    public final void m26205m(RemoteViews remoteViews, int i, C10647e c10647e) {
        remoteViews.setTextColor(i, C17422k.m16105M(this.f30976b, C4030R.attr.tcx_brandBackgroundBlue));
        remoteViews.setTextViewText(i, c10647e.f31725a);
        PendingIntent pendingIntent = c10647e.f31726b;
        if (pendingIntent != null) {
            remoteViews.setOnClickPendingIntent(i, pendingIntent);
        }
        remoteViews.setViewVisibility(i, 0);
    }

    /* renamed from: n */
    public final void m26204n(Collection<Integer> collection) {
        try {
            FileOutputStream openFileOutput = this.f30976b.openFileOutput("smartNotifications.state", 0);
            DataOutputStream dataOutputStream = new DataOutputStream(openFileOutput);
            synchronized (collection) {
                for (Number number : collection) {
                    dataOutputStream.write(number.intValue());
                }
            }
            if (openFileOutput == null) {
                return;
            }
            try {
                openFileOutput.close();
            } catch (IOException e) {
            }
        } catch (IOException e2) {
            AssertionUtil.reportThrowableButNeverCrash(e2);
        }
    }

    /* renamed from: o */
    public final void m26203o() {
        this.f30979e.mo27279P(true);
    }
}
