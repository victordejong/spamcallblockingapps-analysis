package p193e.p194a.p849h4;

import android.app.NotificationChannel;
import android.app.NotificationChannelGroup;
import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Build;
import com.razorpay.AnalyticsConstants;
import com.truecaller.notificationchannels.C4309R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import javax.inject.Inject;
import p1727n3.p1807k.p1808a.C26458x;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1272u3.C20592g;
import s1.c0.c;
import s1.d0.j;
import s1.f0.r;
import s1.f0.v;
import s1.f0.w;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.h4.d */
/* loaded from: classes11-dex2jar.jar:e/a/h4/d.class */
public final class C14910d implements AbstractC14907a {

    /* renamed from: a */
    public final C26458x f42621a;

    /* renamed from: b */
    public final Context f42622b;

    /* renamed from: c */
    public final ContentResolver f42623c;

    @Inject
    public C14910d(C26458x c26458x, Context context, ContentResolver contentResolver, C20592g c20592g) {
        l.e(c26458x, "notificationManager");
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(contentResolver, "contentResolver");
        l.e(c20592g, "featuresRegistry");
        this.f42621a = c26458x;
        this.f42622b = context;
        this.f42623c = contentResolver;
    }

    /* renamed from: a */
    public final boolean m19460a(NotificationChannel notificationChannel, String str) {
        String id = notificationChannel.getId();
        l.d(id, "id");
        if (!mo19456e(id)) {
            return false;
        }
        return l.a(str, m19459b(notificationChannel));
    }

    /* renamed from: b */
    public final String m19459b(NotificationChannel notificationChannel) {
        String id = notificationChannel.getId();
        l.d(id, "id");
        if (!mo19456e(id)) {
            return null;
        }
        String id2 = notificationChannel.getId();
        l.d(id2, "id");
        return w.j0(v.P(id2, "conversation_"), 7);
    }

    @Override // p193e.p194a.p849h4.AbstractC14907a
    /* renamed from: c */
    public NotificationChannel mo19458c(String str) {
        Object obj;
        String id;
        l.e(str, "address");
        List<NotificationChannel> m1810h = this.f42621a.m1810h();
        l.d(m1810h, "notificationManager.notificationChannels");
        Iterator<T> it = m1810h.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            Object next = it.next();
            NotificationChannel notificationChannel = (NotificationChannel) next;
            l.d(notificationChannel, "it");
            if (m19460a(notificationChannel, str)) {
                obj = next;
                break;
            }
        }
        NotificationChannel notificationChannel2 = (NotificationChannel) obj;
        if (notificationChannel2 == null || (id = notificationChannel2.getId()) == null) {
            return null;
        }
        return this.f42621a.m1812f(id);
    }

    @Override // p193e.p194a.p849h4.AbstractC14907a
    /* renamed from: d */
    public void mo19457d(String str) {
        l.e(str, "address");
        List<NotificationChannel> m1810h = this.f42621a.m1810h();
        ArrayList<NotificationChannel> m8670S = C22128a.m8670S(m1810h, "notificationManager\n    …    .notificationChannels");
        for (Object obj : m1810h) {
            NotificationChannel notificationChannel = (NotificationChannel) obj;
            l.d(notificationChannel, "it");
            if (m19460a(notificationChannel, str)) {
                m8670S.add(obj);
            }
        }
        for (NotificationChannel notificationChannel2 : m8670S) {
            C26458x c26458x = this.f42621a;
            l.d(notificationChannel2, "it");
            c26458x.m1814d(notificationChannel2.getId());
        }
    }

    @Override // p193e.p194a.p849h4.AbstractC14907a
    /* renamed from: e */
    public boolean mo19456e(String str) {
        l.e(str, "id");
        if (Build.VERSION.SDK_INT < 26) {
            return false;
        }
        return r.y(str, "conversation_", false, 2);
    }

    @Override // p193e.p194a.p849h4.AbstractC14907a
    /* renamed from: f */
    public void mo19455f() {
        if (Build.VERSION.SDK_INT < 26) {
            return;
        }
        this.f42621a.m1815c(new NotificationChannelGroup("conversations", this.f42622b.getString(C4309R.string.conversation_notification_channel_group_name)));
        List<NotificationChannel> m1810h = this.f42621a.m1810h();
        ArrayList<NotificationChannel> m8670S = C22128a.m8670S(m1810h, "notificationManager.notificationChannels");
        for (Object obj : m1810h) {
            NotificationChannel notificationChannel = (NotificationChannel) obj;
            l.d(notificationChannel, "it");
            String id = notificationChannel.getId();
            l.d(id, "it.id");
            if (mo19456e(id)) {
                m8670S.add(obj);
            }
        }
        ArrayList<String> arrayList = new ArrayList();
        for (NotificationChannel notificationChannel2 : m8670S) {
            l.d(notificationChannel2, "it");
            String m19459b = m19459b(notificationChannel2);
            if (m19459b != null) {
                arrayList.add(m19459b);
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        ContentResolver contentResolver = this.f42623c;
        Uri m15675H = C17891a1.C17902k.m15675H();
        String m8630e = C22128a.m8630e(C22128a.m8728C("normalized_destination IN ("), i.O(arrayList, (CharSequence) null, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, C14908b.f42619b, 31), ')');
        Object[] array = arrayList.toArray(new String[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        Cursor query = contentResolver.query(m15675H, new String[]{"_id", "normalized_destination"}, m8630e, (String[]) array, null);
        if (query != null) {
            while (query.moveToNext()) {
                try {
                    int columnIndexOrThrow = query.getColumnIndexOrThrow("_id");
                    int columnIndexOrThrow2 = query.getColumnIndexOrThrow("normalized_destination");
                    long j = query.getLong(columnIndexOrThrow);
                    String string = query.getString(columnIndexOrThrow2);
                    l.d(string, "it.getString(indexAddress)");
                    linkedHashMap.put(Long.valueOf(j), string);
                } finally {
                    try {
                        throw th;
                    } finally {
                    }
                }
            }
            th = null;
        }
        if (!linkedHashMap.isEmpty()) {
            ContentResolver contentResolver2 = this.f42623c;
            Uri withAppendedPath = Uri.withAppendedPath(C17891a1.f50888a, "msg/msg_conversation_participants");
            StringBuilder m8728C = C22128a.m8728C("participant_id IN (");
            ArrayList arrayList2 = new ArrayList(linkedHashMap.size());
            for (Map.Entry entry : linkedHashMap.entrySet()) {
                arrayList2.add(Long.valueOf(((Number) entry.getKey()).longValue()));
            }
            String m8630e2 = C22128a.m8630e(m8728C, i.O(arrayList2, (CharSequence) null, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, C14909c.f42620b, 31), ')');
            ArrayList arrayList3 = new ArrayList(linkedHashMap.size());
            for (Map.Entry entry2 : linkedHashMap.entrySet()) {
                arrayList3.add(String.valueOf(((Number) entry2.getKey()).longValue()));
            }
            Object[] array2 = arrayList3.toArray(new String[0]);
            Objects.requireNonNull(array2, "null cannot be cast to non-null type kotlin.Array<T>");
            query = contentResolver2.query(withAppendedPath, new String[]{"participant_id"}, m8630e2, (String[]) array2, null);
            if (query != null) {
                while (query.moveToNext()) {
                    try {
                        linkedHashMap.remove(Long.valueOf(query.getLong(query.getColumnIndexOrThrow("participant_id"))));
                    } finally {
                        try {
                            throw th;
                        } finally {
                        }
                    }
                }
                th = null;
            }
            ArrayList arrayList4 = new ArrayList(linkedHashMap.size());
            Iterator it = linkedHashMap.entrySet().iterator();
            while (true) {
                arrayList = arrayList4;
                if (!it.hasNext()) {
                    break;
                }
                arrayList4.add((String) ((Map.Entry) it.next()).getValue());
            }
        }
        for (String str : arrayList) {
            mo19457d(str);
        }
    }

    @Override // p193e.p194a.p849h4.AbstractC14907a
    /* renamed from: g */
    public void mo19454g(String str, String str2, Uri uri, boolean z) {
        l.e(str, "address");
        l.e(str2, AnalyticsConstants.NAME);
        List<NotificationChannel> m1810h = this.f42621a.m1810h();
        ArrayList m8670S = C22128a.m8670S(m1810h, "notificationManager.notificationChannels");
        for (Object obj : m1810h) {
            NotificationChannel notificationChannel = (NotificationChannel) obj;
            l.d(notificationChannel, "it");
            if (m19460a(notificationChannel, str)) {
                m8670S.add(obj);
            }
        }
        NotificationChannel notificationChannel2 = (NotificationChannel) i.D(m8670S);
        if (this.f42621a.m1811g("conversations") == null) {
            this.f42621a.m1815c(new NotificationChannelGroup("conversations", this.f42622b.getString(C4309R.string.conversation_notification_channel_group_name)));
        }
        NotificationChannel notificationChannel3 = new NotificationChannel("conversation_" + str + '-' + j.h(new s1.d0.i(100000, 999999), c.b), str2, 4);
        if (uri == null) {
            uri = notificationChannel2 != null ? notificationChannel2.getSound() : null;
        }
        if (uri != null) {
            notificationChannel3.setSound(uri, new AudioAttributes.Builder().setContentType(4).setUsage(5).build());
        }
        notificationChannel3.enableVibration(z);
        notificationChannel3.setGroup("conversations");
        Iterator it = m8670S.iterator();
        while (it.hasNext()) {
            this.f42621a.m1814d(((NotificationChannel) it.next()).getId());
        }
        C26458x c26458x = this.f42621a;
        Objects.requireNonNull(c26458x);
        if (Build.VERSION.SDK_INT >= 26) {
            c26458x.f74199b.createNotificationChannel(notificationChannel3);
        }
    }
}
