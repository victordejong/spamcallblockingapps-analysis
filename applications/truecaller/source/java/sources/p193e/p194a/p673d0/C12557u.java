package p193e.p194a.p673d0;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Build;
import android.text.format.DateUtils;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.blocking.ActionSource;
import com.truecaller.calling.notifications.CallingNotificationsBroadcastReceiver;
import com.truecaller.data.dto.ContactDto;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.Number;
import com.truecaller.p183ui.TruecallerInit;
import com.truecaller.service.MissedCallsNotificationService;
import com.truecaller.service.Receiver;
import com.truecaller.settings.CallingSettings;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import p1727n3.p1807k.p1808a.C26447o;
import p1727n3.p1807k.p1808a.C26450q;
import p1727n3.p1807k.p1808a.C26452s;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1114o5.C19030g1;
import p193e.p194a.p291a3.C7427c;
import p193e.p194a.p372b0.p430q.C8574c0;
import p193e.p194a.p372b0.p430q.C8602m;
import p193e.p194a.p372b0.p430q.C8605o;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p912i4.AbstractC15275e;
import p193e.p194a.p937j4.p939b.p940a.C15570g;
import p193e.p194a.p937j4.p939b.p941b.C15579e;
import s1.u.i;
import s1.z.c.l;
import w3.c.a.a.a.h;
/* renamed from: e.a.d0.u */
/* loaded from: classes6-dex2jar.jar:e/a/d0/u.class */
public final class C12557u implements AbstractC12555t {

    /* renamed from: a */
    public final Context f36662a;

    /* renamed from: b */
    public final CallingSettings f36663b;

    /* renamed from: c */
    public final AbstractC15275e f36664c;

    /* renamed from: d */
    public final boolean f36665d;

    @Inject
    public C12557u(Context context, CallingSettings callingSettings, AbstractC15275e abstractC15275e, boolean z) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(callingSettings, "settings");
        l.e(abstractC15275e, "analyticsNotificationManager");
        this.f36662a = context;
        this.f36663b = callingSettings;
        this.f36664c = abstractC15275e;
        this.f36665d = z;
    }

    @Override // p193e.p194a.p673d0.AbstractC12555t
    /* renamed from: a */
    public void mo22882a() {
        PendingIntent pendingIntent;
        PendingIntent mo18966h;
        PendingIntent mo18966h2;
        Context context = this.f36662a;
        l.e(context, AnalyticsConstants.CONTEXT);
        PendingIntent m35737a = CallingNotificationsBroadcastReceiver.m35737a(context, "com.truecaller.request_ignore_battery_optimizations");
        if (Build.VERSION.SDK_INT >= 31) {
            pendingIntent = m35737a;
        } else {
            mo18966h2 = this.f36664c.mo18966h(m35737a, "notificationIgnoreBatteryOptimizations", (r9 & 4) != 0 ? "Opened" : null);
            pendingIntent = mo18966h2;
        }
        AbstractC15275e abstractC15275e = this.f36664c;
        Context context2 = this.f36662a;
        l.e(context2, AnalyticsConstants.CONTEXT);
        mo18966h = abstractC15275e.mo18966h(CallingNotificationsBroadcastReceiver.m35737a(context2, "com.truecaller.never_ask_again_ignore_battery_optimizations"), "neverAskAgainIgnoreBatteryOptimizations", (r9 & 4) != 0 ? "Opened" : null);
        C26450q c26450q = new C26450q(this.f36662a, this.f36664c.mo18970d());
        c26450q.f74137R.icon = 2131236603;
        Context context3 = this.f36662a;
        Object obj = C26467a.f74235a;
        c26450q.f74123D = C26467a.C26471d.m1787a(context3, 2131101323);
        c26450q.m1843z(this.f36662a.getString(C2752R.string.AppName));
        c26450q.m1855n(this.f36662a.getString(C2752R.string.promo_disable_battery_optimization_title));
        C26447o c26447o = new C26447o();
        c26447o.m1873k(this.f36662a.getString(C2752R.string.promo_disable_battery_optimization_subtitle));
        c26450q.m1845x(c26447o);
        c26450q.m1856m(this.f36662a.getString(C2752R.string.promo_disable_battery_optimization_subtitle));
        c26450q.f74147g = m35737a;
        c26450q.m1853p(16, true);
        c26450q.m1868a(0, this.f36662a.getString(C2752R.string.promo_disable_battery_optimization_lets_do_it), pendingIntent);
        c26450q.m1868a(0, this.f36662a.getString(C2752R.string.promo_disable_battery_optimization_dont_ask_again), mo18966h);
        Notification m1865d = c26450q.m1865d();
        l.d(m1865d, "NotificationCompat.Build…ent)\n            .build()");
        this.f36664c.mo18964j(C2752R.C2754id.request_ignore_battery_optimizations_notification, m1865d, C10480a.m26052K2("notificationIgnoreBatteryOptimizations"));
    }

    @Override // p193e.p194a.p673d0.AbstractC12555t
    /* renamed from: b */
    public void mo22881b() {
        Context context = this.f36662a;
        l.e(context, AnalyticsConstants.CONTEXT);
        m22874i(CallingNotificationsBroadcastReceiver.m35737a(context, "com.truecaller.request_allow_draw_over_other_apps"), C2752R.string.CallNotificationAllowDrawOverAppsBody, C2752R.C2754id.draw_over_other_apps_permissions_request_id, "notificationDrawOverOtherApps");
    }

    @Override // p193e.p194a.p673d0.AbstractC12555t
    /* renamed from: c */
    public void mo22880c() {
        int i;
        PendingIntent pendingIntent;
        if (Build.VERSION.SDK_INT <= 29) {
            Context context = this.f36662a;
            l.e(context, AnalyticsConstants.CONTEXT);
            pendingIntent = CallingNotificationsBroadcastReceiver.m35737a(context, "com.truecaller.request_allow_draw_over_other_apps");
            i = 2131886393;
        } else {
            Context context2 = this.f36662a;
            l.e(context2, AnalyticsConstants.CONTEXT);
            pendingIntent = CallingNotificationsBroadcastReceiver.m35737a(context2, "com.truecaller.request_set_as_call_screening_app");
            i = 2131886396;
        }
        m22874i(pendingIntent, i, C2752R.C2754id.draw_over_other_apps_permissions_request_id, "notificationDrawOverOtherApps");
    }

    @Override // p193e.p194a.p673d0.AbstractC12555t
    /* renamed from: d */
    public void mo22879d() {
        MissedCallsNotificationService.C4462a.m34757a(this.f36662a);
    }

    @Override // p193e.p194a.p673d0.AbstractC12555t
    /* renamed from: e */
    public void mo22878e() {
        Context context = this.f36662a;
        PendingIntent activity = PendingIntent.getActivity(context, 0, TruecallerInit.m34554wa(context, "notificationRevokedPermission"), 335544320);
        l.d(activity, BaseGmsClient.KEY_PENDING_INTENT);
        m22874i(activity, C2752R.string.CallNotificationCheckPermissionsText, C2752R.C2754id.revoked_permission_notification_id, "notificationRevokedPermission");
    }

    @Override // p193e.p194a.p673d0.AbstractC12555t
    /* renamed from: f */
    public void mo22877f() {
        C26450q c26450q = new C26450q(this.f36662a, this.f36664c.mo18970d());
        c26450q.f74137R.icon = 2131236603;
        Context context = this.f36662a;
        Object obj = C26467a.f74235a;
        c26450q.f74123D = C26467a.C26471d.m1787a(context, 2131101323);
        c26450q.m1855n(this.f36662a.getString(C2752R.string.CallNotificationUnableToBlockCallTitle));
        c26450q.m1853p(16, true);
        c26450q.m1853p(2, true);
        Context context2 = this.f36662a;
        l.e(context2, AnalyticsConstants.CONTEXT);
        c26450q.f74147g = CallingNotificationsBroadcastReceiver.m35737a(context2, "com.truecaller.request_set_as_default_phone_app");
        c26450q.m1856m(this.f36662a.getString(C2752R.string.CallNotificationUnableToBlockCallBody));
        Notification m1865d = c26450q.m1865d();
        l.d(m1865d, "NotificationCompat.Build…dy))\n            .build()");
        this.f36664c.mo18964j(C2752R.C2754id.unable_to_block_call_id, m1865d, C10480a.m26052K2("notificationUnableToBlockCall"));
    }

    @Override // p193e.p194a.p673d0.AbstractC12555t
    /* renamed from: g */
    public void mo22876g() {
        Context context = this.f36662a;
        l.e(context, AnalyticsConstants.CONTEXT);
        m22874i(CallingNotificationsBroadcastReceiver.m35737a(context, "com.truecaller.request_set_as_call_screening_app"), C2752R.string.CallNotificationSetAsCallerIdApp, C2752R.C2754id.draw_over_other_apps_permissions_request_id, "notificationDrawOverOtherApps");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v438, types: [java.util.List] */
    @Override // p193e.p194a.p673d0.AbstractC12555t
    /* renamed from: h */
    public void mo22875h(C12560v c12560v) {
        ArrayList arrayList;
        String str;
        String str2;
        String str3;
        l.e(c12560v, "callState");
        Contact contact = c12560v.f36680l;
        if (contact == null || !c12560v.m22872b() || !this.f36663b.getBoolean("blockCallNotification", true)) {
            return;
        }
        boolean z = c12560v.f36676h == 1;
        C15570g c15570g = new C15570g(this.f36662a);
        long j = c12560v.f36672d;
        Number number = c12560v.f36669a;
        l.d(number, "callState.number");
        String m35473l = number.m35473l();
        String m35491w = contact.m35491w();
        int m22873a = c12560v.m22873a();
        ActionSource actionSource = c12560v.f36681m.f10454c;
        Number number2 = c12560v.f36669a;
        l.d(number2, "callState.number");
        C15579e c15579e = new C15579e(j, m35473l, m35491w, String.valueOf(m22873a), true, z, actionSource, ((ContactDto.Contact.PhoneNumber) number2.mRow).dialingCode);
        synchronized (C15570g.f44034c) {
            try {
                List m18659d = c15570g.m18659d();
                m18659d.remove(c15579e);
                m18659d.add(c15579e);
                c15570g.m18656g();
            } catch (Throwable th) {
                th = th;
                while (true) {
                    try {
                        break;
                    } catch (Throwable th2) {
                        th = th2;
                    }
                }
                throw th;
            }
        }
        List<C15579e> m18659d2 = c15570g.m18659d();
        if (m18659d2 == null) {
            arrayList = Collections.emptyList();
        } else {
            arrayList = new ArrayList();
            for (C15579e c15579e2 : m18659d2) {
                if (c15579e2.f44061e) {
                    arrayList.add(c15579e2);
                }
            }
        }
        ArrayList arrayList2 = new ArrayList(arrayList);
        int i = z ? 2131887136 : 2131887138;
        int i2 = z ? 2131755038 : 2131755039;
        arrayList2.size();
        if (Build.VERSION.SDK_INT >= 24) {
            Context context = this.f36662a;
            AbstractC15275e abstractC15275e = this.f36664c;
            CallingSettings callingSettings = this.f36663b;
            boolean z2 = this.f36665d;
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(abstractC15275e, "analyticsNotificationManager");
            l.e(callingSettings, "settings");
            l.e(arrayList2, "items");
            List z3 = i.z(arrayList2);
            if (!(!callingSettings.getBoolean("blockCallNotification", true))) {
                abstractC15275e.mo18972b("OsNotificationUtils", 222);
                abstractC15275e.mo18972b("com.truecaller.SINGLE_BLOCKED_NOTIFICATION", 222);
                Resources resources = context.getResources();
                ArrayList arrayList3 = (ArrayList) z3;
                String quantityString = resources.getQuantityString(i2, arrayList3.size(), Integer.valueOf(arrayList3.size()));
                l.d(quantityString, "context.resources.getQua… phoneNotifications.size)");
                PendingIntent m14228d = C19030g1.m14228d(context, C18334g0.m15279A(context, z2), C2752R.C2754id.req_code_blocked_notification_open);
                l.e(context, AnalyticsConstants.CONTEXT);
                Intent intent = new Intent(context, Receiver.class);
                intent.setAction("com.truecaller.intent.action.PHONE_NOTIFICATION_CANCELLED");
                Intent putExtra = intent.putExtra("notificationType", 1);
                l.d(putExtra, "with(Intent(context, Rec…ATION_TYPE_BLOCKED)\n    }");
                PendingIntent broadcast = PendingIntent.getBroadcast(context, C2752R.C2754id.req_code_blocked_notification_dismiss, putExtra, 335544320);
                C26450q c26450q = new C26450q(context, abstractC15275e.mo18970d());
                c26450q.f74137R.icon = 2131232467;
                Object obj = C26467a.f74235a;
                c26450q.f74123D = C26467a.C26471d.m1787a(context, 2131100884);
                c26450q.m1855n(context.getResources().getString(i));
                c26450q.m1856m(quantityString);
                c26450q.f74162v = "com.truecaller.BLOCKED_CALLS_GROUP";
                c26450q.f74163w = true;
                c26450q.m1853p(16, true);
                c26450q.f74147g = m14228d;
                c26450q.f74137R.deleteIntent = broadcast;
                c26450q.f74153m = false;
                c26450q.f74152l = 0;
                l.d(c26450q, "NotificationCompat.Build…Compat.PRIORITY_DEFAULT }");
                Notification m1865d = c26450q.m1865d();
                l.d(m1865d, "builder.build()");
                abstractC15275e.mo18964j(223, m1865d, C10480a.m26052K2("notificationBlockedCall"));
                Iterator it = arrayList3.iterator();
                while (it.hasNext()) {
                    C15579e c15579e3 = (C15579e) it.next();
                    Intent m15279A = C18334g0.m15279A(context, z2);
                    m15279A.setData(C18334g0.m15259K());
                    l.e(context, AnalyticsConstants.CONTEXT);
                    Intent intent2 = new Intent(context, Receiver.class);
                    intent2.setAction("com.truecaller.intent.action.PHONE_NOTIFICATION_CANCELLED");
                    Intent putExtra2 = intent2.putExtra("notificationType", 1);
                    l.d(putExtra2, "with(Intent(context, Rec…ATION_TYPE_BLOCKED)\n    }");
                    PendingIntent broadcast2 = PendingIntent.getBroadcast(context, C2752R.C2754id.req_code_blocked_notification_dismiss, putExtra2, 335544320);
                    String mo18973a = abstractC15275e.mo18973a("blocked_calls");
                    if (c15579e3.f44063g == ActionSource.UNKNOWN) {
                        str2 = context.getString(2131888179);
                    } else {
                        String m28348k = C8574c0.m28348k(context, c15579e3.f44058b, false);
                        String str4 = c15579e3.f44059c;
                        if (!(str4 == null || str4.length() == 0)) {
                            if (!(m28348k == null || m28348k.length() == 0) && (!l.a(c15579e3.f44059c, m28348k))) {
                                str2 = context.getString(C2752R.string.NotificationCallerNameAndNumber, c15579e3.f44059c, m28348k);
                            }
                        }
                        str2 = c15579e3.f44058b;
                    }
                    StringBuilder sb = new StringBuilder();
                    sb.append(context.getString(c15579e3.f44062f ? 2131888096 : 2131890366));
                    if (!C7427c.f23600a.contains(c15579e3.f44063g)) {
                        sb.append(" • ");
                        ActionSource actionSource2 = c15579e3.f44063g;
                        l.d(actionSource2, "notification.actionSource");
                        sb.append(context.getString(C7427c.m29643b(actionSource2)));
                    }
                    if (c15579e3.f44063g == ActionSource.BLACKLISTED_COUNTRY && (str3 = c15579e3.f44064h) != null) {
                        sb.append(" +");
                        sb.append(str3);
                    }
                    C26450q c26450q2 = new C26450q(context, mo18973a);
                    c26450q2.m1843z(context.getString(C2752R.string.AppName));
                    Object obj2 = C26467a.f74235a;
                    c26450q2.m1852q(C8605o.m28237c(C26467a.C26470c.m1789b(context, 2131232658)));
                    c26450q2.f74137R.deleteIntent = broadcast2;
                    c26450q2.m1855n(sb);
                    c26450q2.m1856m(str2);
                    c26450q2.f74147g = C19030g1.m14228d(context, m15279A, C2752R.C2754id.req_code_blocked_notification_open);
                    c26450q2.m1853p(16, true);
                    c26450q2.f74162v = "com.truecaller.BLOCKED_CALLS_GROUP";
                    c26450q2.f74153m = true;
                    c26450q2.f74137R.when = c15579e3.f44057a;
                    c26450q2.f74123D = C26467a.C26471d.m1787a(context, 2131100884);
                    c26450q2.f74137R.icon = c15579e3.f44062f ? 2131232467 : 2131232590;
                    Notification m1865d2 = c26450q2.m1865d();
                    l.d(m1865d2, "NotificationCompat.Build…4dp)\n            .build()");
                    abstractC15275e.mo18965i("OsNotificationUtils_" + c15579e3.f44058b + AnalyticsConstants.DELIMITER_MAIN + c15579e3.f44057a, 222, m1865d2, C10480a.m26052K2("notificationBlockedCall"));
                }
            }
            c15570g.m18657f(1);
        } else if (arrayList2.size() == 1) {
            Contact contact2 = c12560v.f36680l;
            if (contact2 == null) {
                return;
            }
            l.d(contact2, "callState.contact ?: return");
            if (!this.f36663b.getBoolean("blockCallNotification", true)) {
                return;
            }
            C26450q c26450q3 = new C26450q(this.f36662a, this.f36664c.mo18973a("blocked_calls"));
            c26450q3.f74137R.icon = 2131232128;
            Context context2 = this.f36662a;
            Object obj3 = C26467a.f74235a;
            c26450q3.f74123D = C26467a.C26471d.m1787a(context2, 2131101323);
            c26450q3.m1843z(this.f36662a.getString(C2752R.string.AppName));
            l.d(c26450q3, "NotificationCompat.Build…String(R.string.AppName))");
            Number number3 = c12560v.f36669a;
            l.d(number3, "callState.number");
            String m35477g = number3.m35477g();
            if (m35477g == null) {
                m35477g = "";
            }
            l.d(m35477g, "callState.number.numberForDisplay ?: \"\"");
            Intent m15279A2 = C18334g0.m15279A(this.f36662a, this.f36665d);
            Context context3 = this.f36662a;
            Number number4 = c12560v.f36669a;
            l.d(number4, "callState.number");
            String m28348k2 = C8574c0.m28348k(context3, m35477g, C8574c0.m28353f(number4.m35473l()));
            l.d(m28348k2, "PhoneNumberUtils.numberT…lState.number.rawNumber))");
            if (h.m(contact2.m35491w())) {
                m28348k2 = this.f36662a.getString(C2752R.string.NotificationCallerNameAndNumber, contact2.m35491w(), m28348k2);
                l.d(m28348k2, "context.getString(R.stri…displayName, contentText)");
            }
            int i3 = 2131887142;
            int i4 = 2131232121;
            if (c12560v.f36676h == 1) {
                i3 = 2131887140;
            } else {
                i4 = 2131232131;
            }
            c26450q3.f74137R.icon = i4;
            c26450q3.m1852q(C8605o.m28237c(C26467a.C26470c.m1789b(this.f36662a, 2131232658)));
            String string = this.f36662a.getString(i3);
            l.d(string, "context.getString(titleResId)");
            Intent intent3 = new Intent(this.f36662a, Receiver.class);
            intent3.setAction("com.truecaller.intent.action.PHONE_NOTIFICATION_CANCELLED");
            intent3.putExtra("notificationType", 1);
            c26450q3.f74137R.deleteIntent = PendingIntent.getBroadcast(this.f36662a, C2752R.C2754id.req_code_blocked_notification_dismiss, intent3, 335544320);
            m15279A2.setData(C18334g0.m15259K());
            c26450q3.m1855n(string);
            c26450q3.m1856m(m28348k2);
            c26450q3.f74147g = C19030g1.m14228d(this.f36662a, m15279A2, C2752R.C2754id.req_code_blocked_notification_open);
            c26450q3.m1853p(16, true);
            this.f36664c.mo18972b("OsNotificationUtils", 222);
            AbstractC15275e abstractC15275e2 = this.f36664c;
            Notification m1865d3 = c26450q3.m1865d();
            l.d(m1865d3, "builder.build()");
            abstractC15275e2.mo18965i("OsNotificationUtils", 222, m1865d3, C10480a.m26052K2("notificationBlockedCall"));
        } else {
            Resources resources2 = this.f36662a.getResources();
            String quantityString2 = resources2.getQuantityString(i2, arrayList2.size(), Integer.valueOf(arrayList2.size()));
            l.d(quantityString2, "res.getQuantityString(nu… phoneNotifications.size)");
            C26450q c26450q4 = new C26450q(this.f36662a, this.f36664c.mo18970d());
            c26450q4.f74137R.icon = 2131232128;
            Context context4 = this.f36662a;
            Object obj4 = C26467a.f74235a;
            c26450q4.f74123D = C26467a.C26471d.m1787a(context4, 2131101323);
            c26450q4.m1855n(i != 0 ? resources2.getString(i) : quantityString2);
            l.d(c26450q4, "NotificationCompat.Build…e numNotificationsString)");
            C26452s c26452s = new C26452s();
            c26452s.m1840l(quantityString2);
            int size = arrayList2.size();
            while (true) {
                size--;
                if (size < 0) {
                    break;
                }
                C15579e c15579e4 = (C15579e) arrayList2.get(size);
                Context context5 = this.f36662a;
                if (DateUtils.isToday(c15579e4.f44057a)) {
                    str = C8602m.m28252f(this.f36662a, c15579e4.f44057a);
                    l.d(str, "DateTimeUtils.getFormatt…me(context, pn.timestamp)");
                } else {
                    str = C8602m.m28255c(this.f36662a, c15579e4.f44057a);
                    l.d(str, "DateTimeUtils.getFormatt…ar(context, pn.timestamp)");
                }
                Context context6 = this.f36662a;
                String str5 = c15579e4.f44058b;
                String m28348k3 = C8574c0.m28348k(context6, str5, C8574c0.m28353f(str5));
                l.d(m28348k3, "PhoneNumberUtils.numberT…sNumberHidden(pn.number))");
                if (h.m(c15579e4.f44059c)) {
                    m28348k3 = this.f36662a.getString(C2752R.string.NotificationCallerNameAndNumber, c15579e4.f44059c, m28348k3);
                    l.d(m28348k3, "context.getString(R.stri…ber, pn.name, callerText)");
                }
                String string2 = context5.getString(C2752R.string.NotificationTimeAndCaller, str, m28348k3);
                l.d(string2, "context.getString(R.stri…n), createCallerText(pn))");
                c26452s.m1841k(string2);
            }
            if (arrayList2.size() > 5) {
                String string3 = this.f36662a.getString(C2752R.string.missed_calls_notification_more, Integer.valueOf(arrayList2.size() - 5));
                l.d(string3, "context.getString(R.stri…neNotifications.size - 5)");
                c26452s.m1839m(string3);
            }
            if (i == 0) {
                quantityString2 = this.f36662a.getString(C2752R.string.OSNotificationCalls);
                l.d(quantityString2, "context.getString(R.string.OSNotificationCalls)");
            }
            c26450q4.m1856m(quantityString2);
            c26450q4.m1845x(c26452s);
            Intent intent4 = new Intent(this.f36662a, Receiver.class);
            intent4.setAction("com.truecaller.intent.action.PHONE_NOTIFICATION_CANCELLED");
            intent4.putExtra("notificationType", 1);
            c26450q4.f74137R.deleteIntent = PendingIntent.getBroadcast(this.f36662a, C2752R.C2754id.req_code_blocked_notification_dismiss, intent4, 335544320);
            c26450q4.f74147g = C19030g1.m14228d(this.f36662a, C18334g0.m15279A(this.f36662a, this.f36665d), C2752R.C2754id.req_code_blocked_notification_open);
            c26450q4.m1853p(16, true);
            c26450q4.f74152l = 0;
            c26450q4.m1854o(0);
            AbstractC15275e abstractC15275e3 = this.f36664c;
            Notification m1865d4 = c26450q4.m1865d();
            l.d(m1865d4, "builder.build()");
            abstractC15275e3.mo18965i("OsNotificationUtils", 222, m1865d4, C10480a.m26052K2("notificationBlockedCall"));
        }
    }

    /* renamed from: i */
    public final void m22874i(PendingIntent pendingIntent, int i, int i2, String str) {
        AbstractC15275e abstractC15275e = this.f36664c;
        C26450q c26450q = new C26450q(this.f36662a, abstractC15275e.mo18970d());
        c26450q.f74137R.icon = 2131236603;
        Context context = this.f36662a;
        Object obj = C26467a.f74235a;
        c26450q.f74123D = C26467a.C26471d.m1787a(context, 2131101323);
        c26450q.m1855n(this.f36662a.getString(C2752R.string.CallNotificationAllowDrawOverAppsTitle));
        c26450q.m1853p(16, true);
        C26447o c26447o = new C26447o();
        c26447o.m1873k(this.f36662a.getString(i));
        c26450q.m1845x(c26447o);
        c26450q.m1853p(2, true);
        c26450q.f74147g = pendingIntent;
        c26450q.m1856m(this.f36662a.getString(i));
        l.d(c26450q, "NotificationCompat.Build…t.getString(contentText))");
        Notification m1865d = c26450q.m1865d();
        l.d(m1865d, "createNotification(pendi…ent, contentText).build()");
        abstractC15275e.mo18964j(i2, m1865d, C10480a.m26052K2(str));
    }
}
