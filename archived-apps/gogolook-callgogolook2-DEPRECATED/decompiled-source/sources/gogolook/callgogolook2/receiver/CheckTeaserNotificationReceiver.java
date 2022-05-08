package gogolook.callgogolook2.receiver;

import android.annotation.TargetApi;
import android.app.NotificationManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompat;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.main.MainActivity;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14173t4;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/receiver/CheckTeaserNotificationReceiver.class */
public class CheckTeaserNotificationReceiver extends BroadcastReceiver {
    @TargetApi(23)
    /* renamed from: b */
    public static void m26396b(@NonNull Context context) {
        if (!C13878a3.m3250a()) {
            String string = context.getString(R$string.permission_callscreen_notification_title);
            String string2 = context.getString(R$string.permission_callscreen_notification_content);
            ((NotificationManager) context.getSystemService("notification")).notify(1990, C14173t4.m2307a(context).setContentTitle(string).setContentText(string2).setContentIntent(C14217x3.m2188a(context, C13878a3.m3222c(context), 1990)).setTicker(string).setStyle(new NotificationCompat.BigTextStyle().setSummaryText(null).bigText(string2)).setDefaults(2).setPriority(1).build());
        }
    }

    /* renamed from: c */
    public static void m26395c(@NonNull Context context) {
        if (!C13878a3.m3196v()) {
            Intent intent = new Intent(context, MainActivity.class);
            String string = context.getString(R$string.permission_notification_title);
            String string2 = context.getString(R$string.permission_notification_content);
            ((NotificationManager) context.getSystemService("notification")).notify(1989, C14173t4.m2307a(context).setContentTitle(string).setContentText(string2).setContentIntent(C14217x3.m2188a(context, intent, 1989)).setTicker(string).setStyle(new NotificationCompat.BigTextStyle().setSummaryText(null).bigText(string2)).setDefaults(2).setPriority(1).build());
        }
    }

    /* renamed from: a */
    public String m26398a(int i) {
        return C14206w4.m2225a(i);
    }

    /* renamed from: a */
    public final void m26397a(Context context) {
        Intent intent;
        if (C14017g4.m2830F()) {
            try {
                context.getPackageManager().getPackageInfo("com.facebook.katana", 0);
                intent = new Intent("android.intent.action.VIEW", Uri.parse("fb://page/148353431949142"));
            } catch (Exception e) {
                intent = new Intent("android.intent.action.VIEW", Uri.parse("https://www.facebook.com/WhosCall.Taiwan"));
            }
        } else if (C14017g4.m2835A()) {
            try {
                context.getPackageManager().getPackageInfo("com.facebook.katana", 0);
                intent = new Intent("android.intent.action.VIEW", Uri.parse("fb://page/1485838128371013"));
            } catch (Exception e2) {
                intent = new Intent("android.intent.action.VIEW", Uri.parse("https://www.facebook.com/whoscallBrasil"));
            }
        } else if (C14017g4.m2829G()) {
            try {
                context.getPackageManager().getPackageInfo("com.facebook.katana", 0);
                intent = new Intent("android.intent.action.VIEW", Uri.parse("fb://page/1411621989099588"));
            } catch (Exception e3) {
                intent = new Intent("android.intent.action.VIEW", Uri.parse("https://www.facebook.com/whoscall.thailand"));
            }
        } else {
            try {
                context.getPackageManager().getPackageInfo("com.facebook.katana", 0);
                intent = new Intent("android.intent.action.VIEW", Uri.parse("fb://page/253352914728379"));
            } catch (Exception e4) {
                intent = new Intent("android.intent.action.VIEW", Uri.parse("https://www.facebook.com/WhosCall"));
            }
        }
        String a = m26398a(R$string.notification_likewhoscalltaiwan_title);
        String a2 = m26398a(R$string.notification_likewhoscalltaiwan_content);
        intent.addFlags(335544320);
        ((NotificationManager) context.getSystemService("notification")).notify(404, C14173t4.m2307a(context).setContentTitle(a).setContentText(a2).setTicker(a).setStyle(new NotificationCompat.BigTextStyle().bigText(a2)).setContentIntent(C14217x3.m2188a(context, intent, 404)).setDefaults(0).setPriority(0).build());
        C13915b3.m3055b("whoscall.facebook_push_notification_teaser_action", true);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent.getAction().equals("whoscall.facebook_push_notification_teaser_action")) {
            m26397a(context);
        } else if (intent.getAction().equals("notification_required_permissions")) {
            m26395c(context);
        }
    }
}
