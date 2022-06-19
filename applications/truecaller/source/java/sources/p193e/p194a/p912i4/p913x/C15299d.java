package p193e.p194a.p912i4.p913x;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Looper;
import android.service.notification.StatusBarNotification;
import android.text.TextUtils;
import com.amazon.device.ads.DtbConstants;
import com.truecaller.C2752R;
import com.truecaller.data.entity.Contact;
import com.truecaller.notifications.NotificationHandlerService;
import com.truecaller.notifications.enhancing.SourcedContact;
import com.truecaller.notifications.enhancing.SourcedContactListActivity;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import p1727n3.p1807k.p1808a.C26450q;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1161q5.AbstractC19688d;
import p193e.p194a.p1161q5.p1162k.AbstractC19695a;
import p193e.p194a.p372b0.p430q.C8620y;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p912i4.AbstractC15275e;
import p193e.p194a.p912i4.AbstractC15284n;
/* renamed from: e.a.i4.x.d */
/* loaded from: classes11-dex2jar.jar:e/a/i4/x/d.class */
public class C15299d extends AbstractC15284n {

    /* renamed from: a */
    public final Context f43536a;

    /* renamed from: b */
    public final AbstractC19022f0 f43537b;

    /* renamed from: d */
    public final BroadcastReceiver f43539d;

    /* renamed from: e */
    public final SharedPreferences f43540e;

    /* renamed from: f */
    public final C8620y f43541f;

    /* renamed from: h */
    public final AbstractC15275e f43543h;

    /* renamed from: i */
    public final AbstractC19688d f43544i;

    /* renamed from: j */
    public final AbstractC19695a f43545j;

    /* renamed from: g */
    public final LinkedHashSet<SourcedContact> f43542g = new LinkedHashSet<>();

    /* renamed from: c */
    public final Handler f43538c = new Handler(Looper.getMainLooper());

    /* renamed from: e.a.i4.x.d$a */
    /* loaded from: classes11-dex2jar.jar:e/a/i4/x/d$a.class */
    public class C15300a extends BroadcastReceiver {
        public C15300a() {
            C15299d.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            long[] longArrayExtra = intent.getLongArrayExtra("ids");
            boolean z = false;
            if (longArrayExtra != null) {
                z = false;
                if (longArrayExtra.length > 0) {
                    Iterator<SourcedContact> it = C15299d.this.f43542g.iterator();
                    z = false;
                    while (it.hasNext()) {
                        SourcedContact next = it.next();
                        int length = longArrayExtra.length;
                        int i = 0;
                        while (true) {
                            if (i < length) {
                                long j = longArrayExtra[i];
                                Long l = next.f14104c;
                                if (l != null && l.longValue() == j) {
                                    C15299d.this.f43540e.edit().putLong(next.f14107f, System.currentTimeMillis()).apply();
                                    it.remove();
                                    z = true;
                                    break;
                                }
                                i++;
                            }
                        }
                    }
                }
            }
            if (z) {
                C15299d.this.m18946e();
            }
        }
    }

    @Inject
    public C15299d(Context context, C8620y c8620y, AbstractC19022f0 abstractC19022f0, AbstractC15275e abstractC15275e, AbstractC19688d abstractC19688d, AbstractC19695a abstractC19695a) {
        this.f43536a = context;
        this.f43537b = abstractC19022f0;
        this.f43543h = abstractC15275e;
        this.f43541f = c8620y;
        this.f43540e = context.getSharedPreferences("enhancedNumbers", 0);
        this.f43544i = abstractC19688d;
        this.f43545j = abstractC19695a;
        C15300a c15300a = new C15300a();
        this.f43539d = c15300a;
        context.registerReceiver(c15300a, new IntentFilter("com.truecaller.ACTION_ENHANCED_NOTIFICATION_DELETED"), "com.truecaller.permission.ENHANCED_NOTIFICATION", null);
    }

    @Override // p193e.p194a.p912i4.AbstractC15284n
    /* renamed from: a */
    public void mo18948a() {
        this.f43536a.unregisterReceiver(this.f43539d);
    }

    @Override // p193e.p194a.p912i4.AbstractC15284n
    /* renamed from: b */
    public void mo18947b(StatusBarNotification statusBarNotification) {
        if (!(this.f43544i.mo12990u().m12997a() && this.f43537b.mo14245a() && NotificationHandlerService.f14083k.contains(statusBarNotification.getPackageName()))) {
            return;
        }
        try {
            m18943h(statusBarNotification);
        } catch (RuntimeException e) {
            C10480a.m26057J1(e, "Error handling notification");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v75 */
    /* JADX WARN: Type inference failed for: r0v78, types: [long] */
    /* JADX WARN: Type inference failed for: r0v79 */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* renamed from: e */
    public final void m18946e() {
        String str;
        String str2;
        this.f43542g.size();
        Thread.currentThread().getName();
        if (this.f43542g.isEmpty()) {
            this.f43543h.mo18968f(C2752R.C2754id.notification_listener_notification_id);
            return;
        }
        long[] jArr = new long[this.f43542g.size()];
        Iterator<SourcedContact> it = this.f43542g.iterator();
        int i = 0;
        while (it.hasNext()) {
            Long l = it.next().f14104c;
            jArr[i] = (l == null ? 0 : l.longValue()) == true ? 1 : 0;
            i++;
        }
        Intent intent = new Intent("com.truecaller.ACTION_ENHANCED_NOTIFICATION_DELETED");
        intent.putExtra("ids", jArr);
        Intent m34849pa = SourcedContactListActivity.m34849pa(this.f43536a, this.f43542g);
        Resources resources = this.f43536a.getResources();
        String quantityString = resources.getQuantityString(C2752R.plurals.EnhancedNotificationTitle, this.f43542g.size(), Integer.valueOf(this.f43542g.size()));
        if (this.f43542g.size() == 1) {
            SourcedContact next = this.f43542g.iterator().next();
            str2 = next.f14106e;
            str = resources.getString(C2752R.string.EnhancedNotificationContentText, next.f14103b);
        } else {
            str2 = resources.getQuantityString(C2752R.plurals.EnhancedNotificationTitle, this.f43542g.size(), Integer.valueOf(this.f43542g.size()));
            str = resources.getString(C2752R.string.EnhancedNotificationContentTextOther);
        }
        C26450q c26450q = new C26450q(this.f43536a, this.f43543h.mo18970d());
        c26450q.m1843z(quantityString);
        c26450q.m1855n(str2);
        c26450q.m1856m(str);
        PendingIntent broadcast = PendingIntent.getBroadcast(this.f43536a, C2752R.C2754id.req_code_enhanced_notification_dismiss, intent, 335544320);
        Notification notification = c26450q.f74137R;
        notification.deleteIntent = broadcast;
        notification.icon = 2131236603;
        c26450q.m1853p(16, true);
        c26450q.f74147g = PendingIntent.getActivity(this.f43536a, C2752R.C2754id.req_code_enhanced_notification_open, m34849pa, 335544320);
        Context context = this.f43536a;
        Object obj = C26467a.f74235a;
        c26450q.f74123D = C26467a.C26471d.m1787a(context, 2131099684);
        this.f43543h.mo18964j(C2752R.C2754id.notification_listener_notification_id, c26450q.m1865d(), "enhanceNotification");
        AbstractC19688d abstractC19688d = this.f43544i;
        abstractC19688d.mo12994q(abstractC19688d.mo12995m() + 1);
    }

    /* renamed from: f */
    public final String m18945f(StatusBarNotification statusBarNotification) {
        CharSequence charSequence;
        try {
            PackageManager packageManager = this.f43536a.getPackageManager();
            charSequence = packageManager.getPackageInfo(statusBarNotification.getPackageName(), 0).applicationInfo.loadLabel(packageManager);
        } catch (PackageManager.NameNotFoundException | RuntimeException e) {
            charSequence = "";
        }
        return String.valueOf(charSequence);
    }

    /* renamed from: g */
    public final void m18944g(StatusBarNotification statusBarNotification, Collection<SourcedContact> collection, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        List<String> m28190a = this.f43541f.m28190a(str);
        TextUtils.join(", ", m28190a);
        String m18945f = m18945f(statusBarNotification);
        for (String str2 : m28190a) {
            long j = this.f43540e.getLong(str2, 0L);
            boolean z = j == 0 || System.currentTimeMillis() - DtbConstants.SIS_CHECKIN_INTERVAL > j;
            boolean m16042z = C17422k.m16042z(this.f43536a, str2);
            if (z && !m16042z) {
                Contact m18957d = m18957d(this.f43536a, str2);
                if (m18957d == null || TextUtils.isEmpty(m18957d.m35491w())) {
                    if (m18957d != null) {
                        m18957d.m35491w();
                    }
                    this.f43545j.mo12973h(m18945f);
                } else {
                    this.f43545j.mo12969m(m18945f);
                    collection.add(new SourcedContact(statusBarNotification.getPackageName(), m18945f, m18957d.getId(), m18957d.getTcId(), m18957d.m35491w(), str2, C12864a2.m22592B(m18957d, false), C12864a2.m22592B(m18957d, true)));
                }
            }
        }
    }

    /* renamed from: h */
    public final void m18943h(StatusBarNotification statusBarNotification) {
        Notification notification = statusBarNotification.getNotification();
        if (notification == null) {
            return;
        }
        final LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (!TextUtils.isEmpty(notification.tickerText)) {
            m18944g(statusBarNotification, linkedHashSet, notification.tickerText.toString());
        }
        m18944g(statusBarNotification, linkedHashSet, notification.extras.getString("android.title"));
        String[] stringArray = notification.extras.getStringArray("android.people");
        if (stringArray != null) {
            for (String str : stringArray) {
                m18944g(statusBarNotification, linkedHashSet, str);
            }
        }
        if (linkedHashSet.isEmpty()) {
            return;
        }
        this.f43545j.mo12974f(m18945f(statusBarNotification));
        this.f43538c.post(new Runnable() { // from class: e.a.i4.x.a
            @Override // java.lang.Runnable
            public final void run() {
                C15299d c15299d = C15299d.this;
                Collection collection = linkedHashSet;
                Objects.requireNonNull(c15299d);
                LinkedHashSet linkedHashSet2 = new LinkedHashSet(c15299d.f43542g);
                linkedHashSet2.addAll(collection);
                if (!c15299d.f43542g.containsAll(linkedHashSet2)) {
                    LinkedHashSet linkedHashSet3 = new LinkedHashSet(collection);
                    linkedHashSet3.removeAll(c15299d.f43542g);
                    Iterator it = linkedHashSet3.iterator();
                    while (it.hasNext()) {
                        c15299d.f43545j.mo12972i(((SourcedContact) it.next()).f14103b);
                    }
                    c15299d.f43542g.addAll(linkedHashSet2);
                    c15299d.m18946e();
                }
            }
        });
    }
}
