package p193e.p194a.p937j4.p939b.p940a;

import android.content.Context;
import com.truecaller.network.notification.NotificationScope;
import com.truecaller.network.notification.NotificationType;
import com.truecaller.notifications.internal.InternalTruecallerNotification;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeSet;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1053m0.p1057c1.SharedPreferencesC18033b0;
import p193e.p194a.p751f4.p761f.C13999c;
/* renamed from: e.a.j4.b.a.f */
/* loaded from: classes11-dex2jar.jar:e/a/j4/b/a/f.class */
public class C15569f extends AbstractC15572i<InternalTruecallerNotification> {
    public C15569f(Context context) {
        super(context);
    }

    @Override // p193e.p194a.p937j4.p939b.p940a.AbstractC15564b
    /* renamed from: a */
    public final String mo18661a() {
        return "Notifications";
    }

    /* renamed from: j */
    public int m18670j(Collection<InternalTruecallerNotification> collection, Boolean bool) {
        if (bool.booleanValue()) {
            HashMap hashMap = new HashMap();
            for (InternalTruecallerNotification internalTruecallerNotification : collection) {
                Long l = (Long) hashMap.get(internalTruecallerNotification.f14111j.f40461a.f40465c);
                if (l == null || l.longValue() < internalTruecallerNotification.f14111j.f40461a.f40463a) {
                    C13999c.C14000a.C14001a c14001a = internalTruecallerNotification.f14111j.f40461a;
                    hashMap.put(c14001a.f40465c, Long.valueOf(c14001a.f40463a));
                }
            }
            for (Map.Entry entry : hashMap.entrySet()) {
                m18663q((NotificationScope) entry.getKey(), (Long) entry.getValue());
            }
        }
        return m18624c(collection);
    }

    /* renamed from: k */
    public Map<NotificationScope, Long> m18669k() {
        HashMap hashMap = new HashMap();
        NotificationScope[] values = NotificationScope.values();
        for (int i = 0; i < 3; i++) {
            NotificationScope notificationScope = values[i];
            StringBuilder m8728C = C22128a.m8728C("LAST_ID_");
            m8728C.append(notificationScope.value);
            hashMap.put(notificationScope, Long.valueOf(((SharedPreferencesC18033b0) m18678b()).getLong(m8728C.toString(), 0L)));
        }
        return hashMap;
    }

    /* renamed from: l */
    public int m18668l() {
        Iterator it = ((TreeSet) m18666n()).iterator();
        int i = 0;
        while (it.hasNext()) {
            if (((InternalTruecallerNotification) it.next()).f14112k == InternalTruecallerNotification.NotificationState.NEW) {
                i++;
            }
        }
        return i;
    }

    /* renamed from: m */
    public InternalTruecallerNotification m18667m() {
        NotificationType notificationType = NotificationType.SOFTWARE_UPDATE;
        ArrayList arrayList = (ArrayList) m18622e();
        Iterator it = arrayList.iterator();
        ArrayList arrayList2 = null;
        while (it.hasNext()) {
            InternalTruecallerNotification internalTruecallerNotification = (InternalTruecallerNotification) it.next();
            if (internalTruecallerNotification.m34842q() == notificationType) {
                ArrayList arrayList3 = arrayList2;
                if (arrayList2 == null) {
                    arrayList3 = new ArrayList(arrayList.size());
                }
                arrayList3.add(internalTruecallerNotification);
                arrayList2 = arrayList3;
            }
        }
        if (arrayList2 == null || arrayList2.size() <= 0) {
            return null;
        }
        return (InternalTruecallerNotification) arrayList2.get(0);
    }

    /* renamed from: n */
    public Collection<InternalTruecallerNotification> m18666n() {
        return m18665o(m18622e());
    }

    /* renamed from: o */
    public Collection<InternalTruecallerNotification> m18665o(Collection<InternalTruecallerNotification> collection) {
        TreeSet treeSet = new TreeSet();
        for (InternalTruecallerNotification internalTruecallerNotification : collection) {
            if ((internalTruecallerNotification.m34842q() == NotificationType.PROMO_DOWNLOAD_URL || internalTruecallerNotification.m34842q() == NotificationType.PROMO_OPEN_URL || internalTruecallerNotification.m34842q() == NotificationType.UNSUPPORTED) ? false : true) {
                treeSet.add(internalTruecallerNotification);
            }
        }
        return treeSet;
    }

    /* renamed from: p */
    public final void m18664p(Collection<InternalTruecallerNotification> collection, InternalTruecallerNotification.NotificationState notificationState) {
        for (InternalTruecallerNotification internalTruecallerNotification : collection) {
            internalTruecallerNotification.f14112k = notificationState;
        }
        m18620g(collection);
    }

    /* renamed from: q */
    public final void m18663q(NotificationScope notificationScope, Long l) {
        StringBuilder m8728C = C22128a.m8728C("LAST_ID_");
        m8728C.append(notificationScope.value);
        String sb = m8728C.toString();
        long longValue = l.longValue();
        SharedPreferencesC18033b0.SharedPreferences$EditorC18038e sharedPreferences$EditorC18038e = (SharedPreferencesC18033b0.SharedPreferences$EditorC18038e) ((SharedPreferencesC18033b0) m18678b()).edit();
        sharedPreferences$EditorC18038e.putLong(sb, longValue);
        sharedPreferences$EditorC18038e.apply();
    }

    /* renamed from: r */
    public Collection<InternalTruecallerNotification> m18662r(Collection<C13999c.C14000a> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        for (C13999c.C14000a c14000a : collection) {
            arrayList.add(new InternalTruecallerNotification(c14000a));
        }
        return m18618i(arrayList);
    }
}
