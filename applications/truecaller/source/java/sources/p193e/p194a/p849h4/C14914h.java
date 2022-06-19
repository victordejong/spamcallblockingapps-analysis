package p193e.p194a.p849h4;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Build;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1114o5.AbstractC19056l1;
import s1.c0.c;
import s1.z.c.l;
/* renamed from: e.a.h4.h */
/* loaded from: classes11-dex2jar.jar:e/a/h4/h.class */
public final class C14914h implements AbstractC14913g {

    /* renamed from: a */
    public final NotificationManager f42625a;

    /* renamed from: b */
    public final SharedPreferences f42626b;

    /* renamed from: c */
    public final AbstractC19056l1 f42627c;

    @Inject
    public C14914h(Context context, AbstractC19056l1 abstractC19056l1) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC19056l1, "customSettings");
        this.f42627c = abstractC19056l1;
        this.f42625a = (NotificationManager) context.getSystemService(RemoteMessageConst.NOTIFICATION);
        SharedPreferences sharedPreferences = context.getSharedPreferences("notifications.settings", 0);
        l.d(sharedPreferences, "context.getSharedPrefere…E, Activity.MODE_PRIVATE)");
        this.f42626b = sharedPreferences;
    }

    @Override // p193e.p194a.p849h4.AbstractC14913g
    /* renamed from: a */
    public void mo19450a() {
        int hashCode = (mo19448c() ? 1 : 0) + String.valueOf(mo19443h()).hashCode();
        StringBuilder m8728C = C22128a.m8728C("personal_chats");
        c.a aVar = c.b;
        m8728C.append(aVar.b());
        this.f42626b.edit().putString("im_personal_chats_channel_id_key", m8728C.toString()).putInt("im_personal_chats_settings_hash_key", hashCode).apply();
        this.f42626b.edit().putString("im_group_chats_channel_id_key", "group_chats" + aVar.b()).putInt("im_group_chats_settings_hash_key", hashCode).apply();
    }

    @Override // p193e.p194a.p849h4.AbstractC14913g
    /* renamed from: b */
    public Uri mo19449b() {
        Uri uri;
        String m19441j = m19441j();
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationManager notificationManager = this.f42625a;
            NotificationChannel notificationChannel = notificationManager != null ? notificationManager.getNotificationChannel(m19441j) : null;
            if (notificationChannel != null) {
                uri = notificationChannel.getSound();
                return uri;
            }
        }
        uri = mo19444g();
        return uri;
    }

    @Override // p193e.p194a.p849h4.AbstractC14913g
    /* renamed from: c */
    public boolean mo19448c() {
        return this.f42627c.mo14180f();
    }

    @Override // p193e.p194a.p849h4.AbstractC14913g
    /* renamed from: d */
    public void mo19447d() {
        int hashCode = String.valueOf(mo19444g()).hashCode();
        boolean mo19448c = mo19448c();
        StringBuilder m8728C = C22128a.m8728C("non_spam_sms_v2");
        m8728C.append(c.b.b());
        this.f42626b.edit().putString("non_spam_sms_channel_id_key", m8728C.toString()).putInt("non_spam_sms_settings_hash_key", (mo19448c ? 1 : 0) + hashCode).apply();
    }

    @Override // p193e.p194a.p849h4.AbstractC14913g
    /* renamed from: e */
    public Uri mo19446e() {
        Uri uri;
        String m19442i = m19442i();
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationManager notificationManager = this.f42625a;
            NotificationChannel notificationChannel = notificationManager != null ? notificationManager.getNotificationChannel(m19442i) : null;
            if (notificationChannel != null) {
                uri = notificationChannel.getSound();
                return uri;
            }
        }
        uri = mo19443h();
        return uri;
    }

    @Override // p193e.p194a.p849h4.AbstractC14913g
    /* renamed from: f */
    public boolean mo19445f() {
        return m19437n(m19441j());
    }

    @Override // p193e.p194a.p849h4.AbstractC14913g
    /* renamed from: g */
    public Uri mo19444g() {
        return this.f42627c.mo14182d();
    }

    @Override // p193e.p194a.p849h4.AbstractC14913g
    /* renamed from: h */
    public Uri mo19443h() {
        return this.f42627c.mo14179g();
    }

    /* renamed from: i */
    public final String m19442i() {
        String str = "personal_chats";
        String string = this.f42626b.getString("im_personal_chats_channel_id_key", "personal_chats");
        if (string != null) {
            str = string;
        }
        return str;
    }

    /* renamed from: j */
    public final String m19441j() {
        String str = "non_spam_sms_v2";
        String string = this.f42626b.getString("non_spam_sms_channel_id_key", "non_spam_sms_v2");
        if (string != null) {
            str = string;
        }
        return str;
    }

    /* renamed from: k */
    public boolean m19440k() {
        String str = "group_chats";
        String string = this.f42626b.getString("im_group_chats_channel_id_key", "group_chats");
        if (string != null) {
            str = string;
        }
        return m19437n(str);
    }

    /* renamed from: l */
    public boolean m19439l() {
        return m19437n(m19442i());
    }

    /* renamed from: m */
    public Uri m19438m() {
        return this.f42627c.mo14184b();
    }

    /* renamed from: n */
    public final boolean m19437n(String str) {
        NotificationChannel notificationChannel;
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationManager notificationManager = this.f42625a;
            Boolean valueOf = (notificationManager == null || (notificationChannel = notificationManager.getNotificationChannel(str)) == null) ? null : Boolean.valueOf(notificationChannel.shouldVibrate());
            if (valueOf != null) {
                return valueOf.booleanValue();
            }
        }
        return mo19448c();
    }

    /* renamed from: o */
    public long[] m19436o() {
        return this.f42627c.mo14185a();
    }

    /* renamed from: p */
    public String m19435p() {
        String str = "group_chats";
        String string = this.f42626b.getString("im_group_chats_channel_id_key", "group_chats");
        if (string != null) {
            str = string;
        }
        return str;
    }

    /* renamed from: q */
    public String m19434q() {
        return m19442i();
    }
}
