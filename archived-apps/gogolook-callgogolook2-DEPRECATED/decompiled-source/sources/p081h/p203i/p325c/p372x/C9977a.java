package p081h.p203i.p325c.p372x;

import android.annotation.TargetApi;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: h.i.c.x.a */
/* loaded from: classes2-dex2jar.jar:h/i/c/x/a.class */
public final class C9977a {

    /* renamed from: a */
    public static final AtomicInteger f22575a = new AtomicInteger((int) SystemClock.elapsedRealtime());

    /* renamed from: h.i.c.x.a$a */
    /* loaded from: classes2-dex2jar.jar:h/i/c/x/a$a.class */
    public static class C9978a {

        /* renamed from: a */
        public final NotificationCompat.Builder f22576a;

        /* renamed from: b */
        public final String f22577b;

        /* renamed from: c */
        public final int f22578c;

        public C9978a(NotificationCompat.Builder builder, String str, int i) {
            this.f22576a = builder;
            this.f22577b = str;
            this.f22578c = i;
        }
    }

    /* renamed from: a */
    public static int m13784a() {
        return f22575a.incrementAndGet();
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0086, code lost:
        if (m13775a(r6, r0) == false) goto L_0x0089;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00d4, code lost:
        if (m13775a(r6, r10) == false) goto L_0x00d7;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m13777a(android.content.pm.PackageManager r5, android.content.res.Resources r6, java.lang.String r7, java.lang.String r8, android.os.Bundle r9) {
        /*
            Method dump skipped, instructions count: 222
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p325c.p372x.C9977a.m13777a(android.content.pm.PackageManager, android.content.res.Resources, java.lang.String, java.lang.String, android.os.Bundle):int");
    }

    /* renamed from: a */
    public static int m13774a(C9998q qVar) {
        int i = qVar.m13713a("gcm.n.default_sound") ? 1 : 0;
        int i2 = i;
        if (qVar.m13713a("gcm.n.default_vibrate_timings")) {
            i2 = i | 2;
        }
        int i3 = i2;
        if (qVar.m13713a("gcm.n.default_light_settings")) {
            i3 = i2 | 4;
        }
        return i3;
    }

    /* renamed from: a */
    public static PendingIntent m13783a(Context context, Intent intent) {
        return PendingIntent.getBroadcast(context, m13784a(), new Intent("com.google.firebase.MESSAGING_EVENT").setComponent(new ComponentName(context, "com.google.firebase.iid.FirebaseInstanceIdReceiver")).putExtra("wrapped_intent", intent), 1073741824);
    }

    @Nullable
    /* renamed from: a */
    public static PendingIntent m13782a(Context context, C9998q qVar) {
        if (!m13768c(qVar)) {
            return null;
        }
        return m13783a(context, new Intent("com.google.firebase.messaging.NOTIFICATION_DISMISS").putExtras(qVar.m13697i()));
    }

    /* renamed from: a */
    public static PendingIntent m13781a(Context context, C9998q qVar, PendingIntent pendingIntent) {
        return m13783a(context, new Intent("com.google.firebase.messaging.NOTIFICATION_OPEN").putExtras(qVar.m13697i()).putExtra("pending_intent", pendingIntent));
    }

    @Nullable
    /* renamed from: a */
    public static PendingIntent m13780a(Context context, C9998q qVar, String str, PackageManager packageManager) {
        Intent a = m13773a(str, qVar, packageManager);
        if (a == null) {
            return null;
        }
        a.addFlags(67108864);
        a.putExtras(qVar.m13695j());
        PendingIntent activity = PendingIntent.getActivity(context, m13784a(), a, 1073741824);
        PendingIntent pendingIntent = activity;
        if (m13768c(qVar)) {
            pendingIntent = m13781a(context, qVar, activity);
        }
        return pendingIntent;
    }

    /* renamed from: a */
    public static Intent m13773a(String str, C9998q qVar, PackageManager packageManager) {
        String g = qVar.m13700g("gcm.n.click_action");
        if (!TextUtils.isEmpty(g)) {
            Intent intent = new Intent(g);
            intent.setPackage(str);
            intent.setFlags(268435456);
            return intent;
        }
        Uri b = qVar.m13712b();
        if (b == null) {
            return packageManager.getLaunchIntentForPackage(str);
        }
        Intent intent2 = new Intent("android.intent.action.VIEW");
        intent2.setPackage(str);
        intent2.setData(b);
        return intent2;
    }

    /* renamed from: a */
    public static Uri m13772a(String str, C9998q qVar, Resources resources) {
        String f = qVar.m13703f();
        if (TextUtils.isEmpty(f)) {
            return null;
        }
        if ("default".equals(f) || resources.getIdentifier(f, "raw", str) == 0) {
            return RingtoneManager.getDefaultUri(2);
        }
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 24 + String.valueOf(f).length());
        sb.append("android.resource://");
        sb.append(str);
        sb.append("/raw/");
        sb.append(f);
        return Uri.parse(sb.toString());
    }

    /* renamed from: a */
    public static Bundle m13776a(PackageManager packageManager, String str) {
        try {
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(str, 128);
            if (!(applicationInfo == null || applicationInfo.metaData == null)) {
                return applicationInfo.metaData;
            }
        } catch (PackageManager.NameNotFoundException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 35);
            sb.append("Couldn't get own application info: ");
            sb.append(valueOf);
            sb.toString();
        }
        return Bundle.EMPTY;
    }

    /* renamed from: a */
    public static C9978a m13778a(Context context, String str, C9998q qVar, String str2, Resources resources, PackageManager packageManager, Bundle bundle) {
        NotificationCompat.Builder builder = new NotificationCompat.Builder(context, str2);
        String b = qVar.m13711b(resources, str, "gcm.n.title");
        if (!TextUtils.isEmpty(b)) {
            builder.setContentTitle(b);
        }
        String b2 = qVar.m13711b(resources, str, "gcm.n.body");
        if (!TextUtils.isEmpty(b2)) {
            builder.setContentText(b2);
            builder.setStyle(new NotificationCompat.BigTextStyle().bigText(b2));
        }
        builder.setSmallIcon(m13777a(packageManager, resources, str, qVar.m13700g("gcm.n.icon"), bundle));
        Uri a = m13772a(str, qVar, resources);
        if (a != null) {
            builder.setSound(a);
        }
        builder.setContentIntent(m13780a(context, qVar, str, packageManager));
        PendingIntent a2 = m13782a(context, qVar);
        if (a2 != null) {
            builder.setDeleteIntent(a2);
        }
        Integer a3 = m13779a(context, qVar.m13700g("gcm.n.color"), bundle);
        if (a3 != null) {
            builder.setColor(a3.intValue());
        }
        builder.setAutoCancel(!qVar.m13713a("gcm.n.sticky"));
        builder.setLocalOnly(qVar.m13713a("gcm.n.local_only"));
        String g = qVar.m13700g("gcm.n.ticker");
        if (g != null) {
            builder.setTicker(g);
        }
        Integer e = qVar.m13705e();
        if (e != null) {
            builder.setPriority(e.intValue());
        }
        Integer h = qVar.m13699h();
        if (h != null) {
            builder.setVisibility(h.intValue());
        }
        Integer d = qVar.m13707d();
        if (d != null) {
            builder.setNumber(d.intValue());
        }
        Long f = qVar.m13702f("gcm.n.event_time");
        if (f != null) {
            builder.setShowWhen(true);
            builder.setWhen(f.longValue());
        }
        long[] g2 = qVar.m13701g();
        if (g2 != null) {
            builder.setVibrate(g2);
        }
        int[] a4 = qVar.m13716a();
        if (a4 != null) {
            builder.setLights(a4[0], a4[1], a4[2]);
        }
        builder.setDefaults(m13774a(qVar));
        return new C9978a(builder, m13769b(qVar), 0);
    }

    /* renamed from: a */
    public static Integer m13779a(Context context, String str, Bundle bundle) {
        if (Build.VERSION.SDK_INT < 21) {
            return null;
        }
        if (!TextUtils.isEmpty(str)) {
            try {
                return Integer.valueOf(Color.parseColor(str));
            } catch (IllegalArgumentException e) {
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 56);
                sb.append("Color is invalid: ");
                sb.append(str);
                sb.append(". Notification will use default color.");
                sb.toString();
            }
        }
        int i = bundle.getInt("com.google.firebase.messaging.default_notification_color", 0);
        if (i == 0) {
            return null;
        }
        try {
            return Integer.valueOf(ContextCompat.getColor(context, i));
        } catch (Resources.NotFoundException e2) {
            return null;
        }
    }

    @TargetApi(26)
    /* renamed from: a */
    public static boolean m13775a(Resources resources, int i) {
        if (Build.VERSION.SDK_INT != 26) {
            return true;
        }
        try {
            if (!(resources.getDrawable(i, null) instanceof AdaptiveIconDrawable)) {
                return true;
            }
            StringBuilder sb = new StringBuilder(77);
            sb.append("Adaptive icons cannot be used in notifications. Ignoring icon id: ");
            sb.append(i);
            Log.e("FirebaseMessaging", sb.toString());
            return false;
        } catch (Resources.NotFoundException e) {
            StringBuilder sb2 = new StringBuilder(66);
            sb2.append("Couldn't find resource ");
            sb2.append(i);
            sb2.append(", treating it as an invalid icon");
            Log.e("FirebaseMessaging", sb2.toString());
            return false;
        }
    }

    /* renamed from: b */
    public static C9978a m13771b(Context context, C9998q qVar) {
        Bundle a = m13776a(context.getPackageManager(), context.getPackageName());
        return m13778a(context, context.getPackageName(), qVar, m13770b(context, qVar.m13709c(), a), context.getResources(), context.getPackageManager(), a);
    }

    @TargetApi(26)
    /* renamed from: b */
    public static String m13770b(Context context, String str, Bundle bundle) {
        if (Build.VERSION.SDK_INT < 26) {
            return null;
        }
        try {
            if (context.getPackageManager().getApplicationInfo(context.getPackageName(), 0).targetSdkVersion < 26) {
                return null;
            }
            NotificationManager notificationManager = (NotificationManager) context.getSystemService(NotificationManager.class);
            if (!TextUtils.isEmpty(str)) {
                if (notificationManager.getNotificationChannel(str) != null) {
                    return str;
                }
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 122);
                sb.append("Notification Channel requested (");
                sb.append(str);
                sb.append(") has not been created by the app. Manifest configuration, or default, value will be used.");
                sb.toString();
            }
            String string = bundle.getString("com.google.firebase.messaging.default_notification_channel_id");
            if (!TextUtils.isEmpty(string) && notificationManager.getNotificationChannel(string) != null) {
                return string;
            }
            if (notificationManager.getNotificationChannel("fcm_fallback_notification_channel") != null) {
                return "fcm_fallback_notification_channel";
            }
            notificationManager.createNotificationChannel(new NotificationChannel("fcm_fallback_notification_channel", context.getString(context.getResources().getIdentifier("fcm_fallback_notification_channel_label", "string", context.getPackageName())), 3));
            return "fcm_fallback_notification_channel";
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    /* renamed from: b */
    public static String m13769b(C9998q qVar) {
        String g = qVar.m13700g("gcm.n.tag");
        if (!TextUtils.isEmpty(g)) {
            return g;
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        StringBuilder sb = new StringBuilder(37);
        sb.append("FCM-Notification:");
        sb.append(uptimeMillis);
        return sb.toString();
    }

    /* renamed from: c */
    public static boolean m13768c(@NonNull C9998q qVar) {
        return qVar.m13713a("google.c.a.e");
    }
}
