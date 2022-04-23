package com.vladlee.easyblacklist;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.media.AudioAttributes;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import androidx.core.app.C0612j;
/* renamed from: com.vladlee.easyblacklist.dz */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/dz.class */
public final class C3381dz {
    /* renamed from: a */
    public static void m109a(Context context) {
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        try {
            notificationManager.cancel(1002);
            notificationManager.cancel(10003);
            notificationManager.cancel(10004);
        } catch (NullPointerException | SecurityException e) {
        }
    }

    /* renamed from: a */
    public static void m108a(Context context, String str, String str2, String str3) {
        boolean a = C3392ee.m80a(context, "pref_show_notifications", true);
        boolean a2 = Build.VERSION.SDK_INT >= 19 ? C3392ee.m80a(context, "pref_show_notifications_incoming", true) : true;
        if (a && a2) {
            m109a(context);
            Intent intent = new Intent(context, EasyBlacklistActivity.class);
            Bundle bundle = new Bundle();
            bundle.putBoolean(C3356db.f19477f, true);
            bundle.putString(C3356db.f19479h, str2);
            bundle.putString(C3356db.f19472a, str);
            intent.putExtras(bundle);
            intent.setFlags(67108864);
            intent.putExtra("notification", true);
            PendingIntent activity = PendingIntent.getActivity(context, (int) System.currentTimeMillis(), intent, 0);
            Uri defaultUri = RingtoneManager.getDefaultUri(2);
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            if (Build.VERSION.SDK_INT >= 26) {
                Notification.Builder builder = new Notification.Builder(context, "3");
                builder.setContentIntent(activity);
                builder.setContentTitle(str2);
                builder.setContentText(str3);
                builder.setSmallIcon(2131230897);
                AudioAttributes build = new AudioAttributes.Builder().setContentType(4).setUsage(6).build();
                NotificationChannel notificationChannel = new NotificationChannel("3", context.getPackageName(), 3);
                notificationChannel.setDescription("");
                notificationChannel.setSound(defaultUri, build);
                notificationManager.createNotificationChannel(notificationChannel);
                notificationManager.notify(10003, builder.build());
                return;
            }
            notificationManager.notify(10003, new C0612j.C0615c(context, (byte) 0).m8730a(2131230897).m8724a((CharSequence) str2).m8721b(str3).m8726a(defaultUri).m8727a(activity).m8716e());
        }
    }

    /* renamed from: a */
    public static void m107a(Context context, boolean z) {
        boolean a = C3392ee.m80a(context, "pref_show_notifications", true);
        boolean a2 = Build.VERSION.SDK_INT >= 19 ? C3392ee.m80a(context, "pref_show_notifications_blocking", true) : true;
        if (a && a2) {
            m109a(context);
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            String string = context.getString(z ? 2131624005 : 2131624193);
            Intent intent = new Intent(context, EasyBlacklistActivity.class);
            Bundle bundle = new Bundle();
            bundle.putBoolean(C3356db.f19476e, true);
            intent.putExtras(bundle);
            intent.setFlags(67108864);
            intent.putExtra("notification", true);
            PendingIntent activity = PendingIntent.getActivity(context, (int) System.currentTimeMillis(), intent, 0);
            if (Build.VERSION.SDK_INT >= 26) {
                Notification.Builder builder = new Notification.Builder(context, "2");
                builder.setContentIntent(activity);
                builder.setContentTitle(string);
                builder.setContentText(context.getString(2131624012));
                builder.setSmallIcon(2131230896);
                NotificationChannel notificationChannel = new NotificationChannel("2", context.getPackageName(), 2);
                notificationChannel.setDescription("");
                notificationManager.createNotificationChannel(notificationChannel);
                notificationManager.notify(1002, builder.build());
                return;
            }
            notificationManager.notify(1002, new C0612j.C0615c(context, (byte) 0).m8730a(2131230896).m8724a((CharSequence) context.getString(2131623974)).m8721b(context.getString(2131624012)).m8727a(activity).m8716e());
        }
    }
}
