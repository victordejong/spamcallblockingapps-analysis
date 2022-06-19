package p193e.p194a.p849h4;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationChannelGroup;
import android.app.NotificationManager;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.service.notification.StatusBarNotification;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.featuretoggles.FeatureKey;
import com.truecaller.log.AssertionUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Provider;
import o3.a;
import p1727n3.p1807k.p1808a.C26458x;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1146q2.AbstractC19541s;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p849h4.p850q.C14926b;
import p193e.p194a.p849h4.p850q.C14927c;
import s1.e0.k;
import s1.e0.x;
import s1.s;
import s1.u.i;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.h4.o */
/* loaded from: classes11-dex2jar.jar:e/a/h4/o.class */
public final class C14921o implements AbstractC14920n {

    /* renamed from: a */
    public final Context f42636a;

    /* renamed from: b */
    public final C26458x f42637b;

    /* renamed from: c */
    public final Map<C14927c, Provider<NotificationChannel>> f42638c;

    /* renamed from: d */
    public final Map<C14926b, Provider<NotificationChannelGroup>> f42639d;

    /* renamed from: e */
    public final a<AbstractC14915i> f42640e;

    /* renamed from: f */
    public final a<AbstractC14911e> f42641f;

    /* renamed from: g */
    public final a<AbstractC14907a> f42642g;

    /* renamed from: h */
    public final a<C20592g> f42643h;

    /* renamed from: i */
    public final AbstractC19541s f42644i;

    /* renamed from: e.a.h4.o$a */
    /* loaded from: classes11-dex2jar.jar:e/a/h4/o$a.class */
    public static final class C14922a extends m implements l<C14927c, Boolean> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14922a() {
            super(1);
            C14921o.this = r4;
        }

        /* renamed from: d */
        public Object m19408d(Object obj) {
            C14927c c14927c = (C14927c) obj;
            s1.z.c.l.e(c14927c, "spec");
            return Boolean.valueOf(c14927c.f42652e == FeatureKey.NONE || ((C20592g) C14921o.this.f42643h.get()).m10972d(c14927c.f42652e).isEnabled());
        }
    }

    /* renamed from: e.a.h4.o$b */
    /* loaded from: classes11-dex2jar.jar:e/a/h4/o$b.class */
    public static final class C14923b extends m implements l<String, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14923b() {
            super(1);
            C14921o.this = r4;
        }

        /* renamed from: d */
        public Object m19407d(Object obj) {
            String str = (String) obj;
            s1.z.c.l.e(str, "oldChannelId");
            C14921o.this.m19410p(str);
            return s.a;
        }
    }

    @Inject
    public C14921o(Context context, C26458x c26458x, Map<C14927c, Provider<NotificationChannel>> map, Map<C14926b, Provider<NotificationChannelGroup>> map2, a<AbstractC14915i> aVar, a<AbstractC14911e> aVar2, a<AbstractC14907a> aVar3, a<C20592g> aVar4, AbstractC19541s abstractC19541s) {
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        s1.z.c.l.e(c26458x, "notificationManager");
        s1.z.c.l.e(map, "channels");
        s1.z.c.l.e(map2, "channelGroups");
        s1.z.c.l.e(aVar, "channelsMigrationManager");
        s1.z.c.l.e(aVar2, "dynamicChannelIdProvider");
        s1.z.c.l.e(aVar3, "conversationNotificationChannelProvider");
        s1.z.c.l.e(aVar4, "featuresRegistry");
        s1.z.c.l.e(abstractC19541s, "dauTracker");
        this.f42636a = context;
        this.f42637b = c26458x;
        this.f42638c = map;
        this.f42639d = map2;
        this.f42640e = aVar;
        this.f42641f = aVar2;
        this.f42642g = aVar3;
        this.f42643h = aVar4;
        this.f42644i = abstractC19541s;
    }

    @Override // p193e.p194a.p849h4.AbstractC14920n
    /* renamed from: a */
    public String mo19425a(String str) {
        C14927c c14927c;
        s1.z.c.l.e(str, "channelKey");
        Map<C14927c, Provider<NotificationChannel>> map = this.f42638c;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<C14927c, Provider<NotificationChannel>> entry : map.entrySet()) {
            if (s1.z.c.l.a(entry.getKey().f42650c, str)) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        Iterator it = linkedHashMap.keySet().iterator();
        if (!it.hasNext()) {
            it = null;
        }
        if (it == null || (c14927c = (C14927c) it.next()) == null) {
            throw new IllegalArgumentException(C22128a.m8543z2(str, " channel not found"));
        }
        String mo19453a = c14927c.f42651d ? ((AbstractC14911e) this.f42641f.get()).mo19453a(str) : c14927c.f42650c;
        if (m19409q()) {
            m19412n(mo19453a, str);
        }
        return mo19453a;
    }

    @Override // p193e.p194a.p849h4.AbstractC14920n
    /* renamed from: b */
    public void mo19424b(String str, int i) {
        this.f42637b.f74199b.cancel(str, i);
    }

    @Override // p193e.p194a.p849h4.AbstractC14920n
    /* renamed from: c */
    public NotificationChannel mo19423c(String str) {
        s1.z.c.l.e(str, "channelKey");
        return this.f42637b.m1812f(mo19425a(str));
    }

    @Override // p193e.p194a.p849h4.AbstractC14920n
    /* renamed from: d */
    public String mo19422d() {
        return mo19425a("miscellaneous_channel");
    }

    @Override // p193e.p194a.p849h4.AbstractC14920n
    /* renamed from: e */
    public StatusBarNotification[] mo19421e() {
        StatusBarNotification[] statusBarNotificationArr;
        Object systemService = this.f42636a.getSystemService(RemoteMessageConst.NOTIFICATION);
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
        try {
            statusBarNotificationArr = ((NotificationManager) systemService).getActiveNotifications();
        } catch (NullPointerException e) {
            statusBarNotificationArr = new StatusBarNotification[0];
        }
        s1.z.c.l.d(statusBarNotificationArr, "try {\n                ma…mptyArray()\n            }");
        return statusBarNotificationArr;
    }

    @Override // p193e.p194a.p849h4.AbstractC14920n
    /* renamed from: f */
    public void mo19420f(int i) {
        mo19424b(null, i);
    }

    @Override // p193e.p194a.p849h4.AbstractC14920n
    /* renamed from: g */
    public void mo19419g(int i, Notification notification) {
        s1.z.c.l.e(notification, RemoteMessageConst.NOTIFICATION);
        mo19414l(null, i, notification);
    }

    @Override // p193e.p194a.p849h4.AbstractC14920n
    /* renamed from: h */
    public NotificationChannelGroup mo19418h(String str) {
        s1.z.c.l.e(str, "groupId");
        m19411o(str);
        return this.f42637b.m1811g(str);
    }

    @Override // p193e.p194a.p849h4.AbstractC14920n
    /* renamed from: i */
    public void mo19417i() {
        if (!m19409q()) {
            return;
        }
        for (C14927c c14927c : this.f42638c.keySet()) {
            m19413m(mo19425a(c14927c.f42650c));
        }
    }

    @Override // p193e.p194a.p849h4.AbstractC14920n
    /* renamed from: j */
    public boolean mo19416j() {
        return this.f42637b.m1817a();
    }

    @Override // p193e.p194a.p849h4.AbstractC14920n
    /* renamed from: k */
    public boolean mo19415k(boolean z) {
        if (!m19409q()) {
            return true;
        }
        List<NotificationChannel> m1810h = this.f42637b.m1810h();
        ArrayList<NotificationChannel> m8670S = C22128a.m8670S(m1810h, "notificationManager.notificationChannels");
        for (Object obj : m1810h) {
            NotificationChannel notificationChannel = (NotificationChannel) obj;
            AbstractC14907a abstractC14907a = (AbstractC14907a) this.f42642g.get();
            s1.z.c.l.d(notificationChannel, "it");
            String id = notificationChannel.getId();
            s1.z.c.l.d(id, "it.id");
            if (!abstractC14907a.mo19456e(id)) {
                m8670S.add(obj);
            }
        }
        ArrayList arrayList = new ArrayList(C25225a.m4004J(m8670S, 10));
        for (NotificationChannel notificationChannel2 : m8670S) {
            arrayList.add(notificationChannel2.getId());
        }
        if (z) {
            Iterator it = arrayList.iterator();
            boolean z2 = true;
            while (true) {
                boolean z3 = z2;
                if (!it.hasNext()) {
                    return z3;
                }
                String str = (String) it.next();
                s1.z.c.l.d(str, RemoteMessageConst.Notification.CHANNEL_ID);
                z2 = z3 & m19410p(str);
            }
        } else {
            k m = x.m(x.k(x.f(i.h(this.f42638c.keySet()), new C14922a()), C14924p.f42647h), ((AbstractC14911e) this.f42641f.get()).mo19451c());
            s1.z.c.l.e(m, "$this$toSet");
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            x.q(m, linkedHashSet);
            Iterator it2 = i.G0(arrayList, i.i0(linkedHashSet)).iterator();
            boolean z4 = true;
            while (true) {
                boolean z5 = z4;
                if (!it2.hasNext()) {
                    return z5;
                }
                String str2 = (String) it2.next();
                s1.z.c.l.d(str2, RemoteMessageConst.Notification.CHANNEL_ID);
                z4 = z5 & m19410p(str2);
            }
        }
    }

    @Override // p193e.p194a.p849h4.AbstractC14920n
    /* renamed from: l */
    public void mo19414l(String str, int i, Notification notification) {
        s1.z.c.l.e(notification, RemoteMessageConst.NOTIFICATION);
        if (m19409q()) {
            String channelId = Build.VERSION.SDK_INT >= 26 ? notification.getChannelId() : null;
            if (channelId == null) {
                channelId = mo19422d();
            }
            s1.z.c.l.d(channelId, "NotificationCompat.getCh…tion) ?: defaultChannelId");
            m19413m(channelId);
        }
        try {
            C26458x c26458x = this.f42637b;
            Objects.requireNonNull(c26458x);
            Bundle bundle = notification.extras;
            if (bundle != null && bundle.getBoolean("android.support.useSideChannel")) {
                c26458x.m1809i(new C26458x.C26459a(c26458x.f74198a.getPackageName(), i, str, notification));
                c26458x.f74199b.cancel(str, i);
            } else {
                c26458x.f74199b.notify(str, i, notification);
            }
            this.f42644i.mo13186a();
        } catch (Exception e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
        }
    }

    /* renamed from: m */
    public final void m19413m(String str) {
        String str2;
        if (((AbstractC14907a) this.f42642g.get()).mo19456e(str)) {
            return;
        }
        Map<C14927c, Provider<NotificationChannel>> map = this.f42638c;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<Map.Entry<C14927c, Provider<NotificationChannel>>> it = map.entrySet().iterator();
        while (true) {
            boolean z = true;
            if (!it.hasNext()) {
                break;
            }
            Map.Entry<C14927c, Provider<NotificationChannel>> next = it.next();
            C14927c key = next.getKey();
            if (key.f42651d || !s1.z.c.l.a(key.f42650c, str)) {
                z = false;
            }
            if (z) {
                linkedHashMap.put(next.getKey(), next.getValue());
            }
        }
        if (!linkedHashMap.isEmpty()) {
            str2 = str;
        } else {
            str2 = ((AbstractC14911e) this.f42641f.get()).mo19452b(str);
            if (str2 == null) {
                throw new IllegalArgumentException("Could not find channelId spec for " + str + '!');
            }
        }
        m19412n(str, str2);
    }

    /* renamed from: n */
    public final void m19412n(String str, String str2) {
        Map.Entry entry;
        if (((AbstractC14907a) this.f42642g.get()).mo19456e(str)) {
            return;
        }
        if (this.f42637b.m1812f(str) != null && !((AbstractC14915i) this.f42640e.get()).mo19433a(str2)) {
            return;
        }
        Map<C14927c, Provider<NotificationChannel>> map = this.f42638c;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<C14927c, Provider<NotificationChannel>> entry2 : map.entrySet()) {
            if (s1.z.c.l.a(entry2.getKey().f42650c, str2)) {
                linkedHashMap.put(entry2.getKey(), entry2.getValue());
            }
        }
        Iterator it = linkedHashMap.entrySet().iterator();
        if (!it.hasNext()) {
            it = null;
        }
        if (it == null || (entry = (Map.Entry) it.next()) == null) {
            return;
        }
        C14927c c14927c = (C14927c) entry.getKey();
        NotificationChannel notificationChannel = (NotificationChannel) ((Provider) entry.getValue()).get();
        if (notificationChannel == null) {
            return;
        }
        String group = notificationChannel.getGroup();
        if (group != null) {
            m19411o(group);
        }
        ((AbstractC14915i) this.f42640e.get()).mo19430d(c14927c, new C14923b());
        boolean mo19431c = ((AbstractC14915i) this.f42640e.get()).mo19431c(c14927c);
        if (mo19431c) {
            m19410p(str);
        }
        C26458x c26458x = this.f42637b;
        Objects.requireNonNull(c26458x);
        if (Build.VERSION.SDK_INT >= 26) {
            c26458x.f74199b.createNotificationChannel(notificationChannel);
        }
        if (!mo19431c) {
            return;
        }
        ((AbstractC14915i) this.f42640e.get()).mo19432b(str2, c14927c.f42653f);
    }

    /* renamed from: o */
    public final void m19411o(String str) {
        Provider provider;
        NotificationChannelGroup notificationChannelGroup;
        if (this.f42637b.m1811g(str) != null) {
            return;
        }
        Map<C14926b, Provider<NotificationChannelGroup>> map = this.f42639d;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<C14926b, Provider<NotificationChannelGroup>> entry : map.entrySet()) {
            if (s1.z.c.l.a(entry.getKey().f42649c, str)) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        Iterator it = linkedHashMap.values().iterator();
        if (!it.hasNext()) {
            it = null;
        }
        if (it == null || (provider = (Provider) it.next()) == null || (notificationChannelGroup = (NotificationChannelGroup) provider.get()) == null) {
            return;
        }
        this.f42637b.m1815c(notificationChannelGroup);
    }

    /* renamed from: p */
    public final boolean m19410p(String str) {
        boolean z = true;
        if (!m19409q()) {
            return true;
        }
        if (s1.z.c.l.a("miscellaneous", str)) {
            AssertionUtil.report("Default notification channel cannot be deleted!");
            return true;
        }
        try {
            this.f42637b.m1814d(str);
        } catch (SecurityException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
            z = false;
        }
        return z;
    }

    /* renamed from: q */
    public final boolean m19409q() {
        return Build.VERSION.SDK_INT >= 26;
    }
}
