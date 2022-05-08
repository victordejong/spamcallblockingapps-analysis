package com.vladlee.easyblacklist;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.telephony.TelephonyManager;
import androidx.core.app.C0612j;
import com.android.internal.telephony.ITelephony;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/BlockService.class */
public class BlockService extends Service {

    /* renamed from: a */
    static long f19234a;

    /* renamed from: b */
    static BlockService f19235b;

    /* renamed from: c */
    static C3292bd f19236c;

    /* renamed from: d */
    static CallReceiver f19237d;

    /* renamed from: e */
    static SmsReceiverHighPriority f19238e;

    /* renamed from: f */
    static ContentObserver f19239f;

    /* renamed from: a */
    public static void m367a(Context context) {
        Intent intent = new Intent(context, BlockService.class);
        if (Build.VERSION.SDK_INT < 26) {
            context.startService(intent);
        } else if (!C3391ed.m89a(context, "pref_block_calls_option", true) || !C3391ed.m89a(context, "pref_show_status_bar_icon", true)) {
            try {
                context.startService(intent);
            } catch (IllegalStateException e) {
            }
        } else {
            context.startForegroundService(intent);
        }
    }

    /* renamed from: a */
    public static void m365a(Context context, boolean z) {
        if (C3392ee.m80a(context, "pref_schedule_enable", false) != z) {
            C3392ee.m74b(context, "pref_schedule_enable", z);
            if (z) {
                AlarmReceiver.m373a(context);
            } else {
                m364a(context, true, new Handler());
            }
        }
    }

    /* renamed from: a */
    public static void m364a(Context context, boolean z, Handler handler) {
        boolean a = C3392ee.m80a(context, "pref_enable_blocking", true);
        boolean z2 = true;
        if (!C3392ee.m80a(context, "pref_block_calls_option", true)) {
            z2 = C3392ee.m80a(context, "pref_block_sms_option", true);
        }
        C3392ee.m74b(context, "pref_enable_blocking", z);
        if (!z || a || !z2) {
            if (!z && a && handler != null) {
                handler.post(new RunnableC3280au(context));
            }
        } else if (handler != null) {
            handler.post(new RunnableC3279at(context));
        }
    }

    /* renamed from: a */
    public static void m363a(AudioManager audioManager, int i) {
        if (i != 2) {
            return;
        }
        if (Build.VERSION.SDK_INT < 23) {
            try {
                audioManager.setStreamMute(2, true);
            } catch (NullPointerException e) {
            }
        } else {
            try {
                audioManager.adjustStreamVolume(2, -100, 8);
            } catch (Exception e2) {
            }
        }
    }

    /* renamed from: a */
    public static boolean m368a() {
        return f19235b == null || System.currentTimeMillis() - f19234a > 86400000;
    }

    /* renamed from: a */
    public static boolean m366a(Context context, String str) {
        if (!C3275aq.m267a(context, str)) {
            return false;
        }
        m360b(context);
        try {
            C3455gm.m36a();
        } catch (Exception e) {
            try {
                ITelephony a = C3455gm.m35a(context);
                if (a != null) {
                    a.endCall();
                } else {
                    Runtime.getRuntime().exec("service call phone 5 \n");
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        Intent intent = new Intent(context, CallBlockHandler.class);
        intent.putExtra(C3356db.f19472a, str);
        context.startService(intent);
        return true;
    }

    /* renamed from: a */
    public static boolean m362a(String str) {
        BlockService blockService = f19235b;
        if (blockService == null || !C3275aq.m267a(blockService, str)) {
            return false;
        }
        m360b(f19235b);
        try {
            C3455gm.m36a();
        } catch (Exception e) {
            try {
                ITelephony a = C3455gm.m35a(f19235b);
                if (a != null) {
                    a.endCall();
                } else {
                    Runtime.getRuntime().exec("service call phone 5 \n");
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        Intent intent = new Intent(f19235b, CallBlockHandler.class);
        intent.putExtra(C3356db.f19472a, str);
        f19235b.startService(intent);
        return true;
    }

    /* renamed from: b */
    private static void m360b(Context context) {
        new Thread(new RunnableC3278as(context)).start();
    }

    /* renamed from: b */
    public static void m359b(AudioManager audioManager, int i) {
        if (i != 2) {
            return;
        }
        if (Build.VERSION.SDK_INT < 23) {
            try {
                audioManager.setStreamMute(2, false);
            } catch (NullPointerException e) {
            }
        } else {
            try {
                audioManager.adjustStreamVolume(2, 100, 8);
            } catch (Exception e2) {
            }
        }
    }

    /* renamed from: b */
    public static boolean m361b() {
        return f19235b != null && f19234a > 0;
    }

    /* renamed from: c */
    private void m358c() {
        HashMap<String, String> a = C3392ee.m84a(this);
        if ((!C3392ee.m77a(a, "pref_block_calls_option") && !C3392ee.m77a(a, "pref_block_sms_option")) || !C3392ee.m77a(a, "pref_enable_blocking") || !C3392ee.m77a(a, "pref_show_status_bar_icon")) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            Intent intent = new Intent(f19235b, EasyBlacklistActivity.class);
            intent.addFlags(67108864);
            PendingIntent activity = PendingIntent.getActivity(this, 0, intent, 134217728);
            NotificationChannel notificationChannel = new NotificationChannel("1", getPackageName(), 2);
            notificationChannel.setShowBadge(false);
            ((NotificationManager) getSystemService("notification")).createNotificationChannel(notificationChannel);
            Notification.Builder builder = new Notification.Builder(this, "1");
            builder.setContentIntent(activity);
            builder.setContentTitle(getString(2131623996));
            builder.setContentText(null);
            builder.setSmallIcon(2131230917);
            startForeground(10001, builder.build());
            return;
        }
        Intent intent2 = new Intent(this, EasyBlacklistActivity.class);
        intent2.addFlags(67108864);
        PendingIntent activity2 = PendingIntent.getActivity(this, 0, intent2, 134217728);
        C0612j.C0615c cVar = new C0612j.C0615c(this, (byte) 0);
        cVar.m8727a(activity2);
        cVar.m8724a((CharSequence) getString(2131623974));
        cVar.m8721b(getString(2131623996));
        cVar.m8730a(2131230917);
        startForeground(10001, cVar.m8716e());
    }

    /* renamed from: d */
    private void m357d() {
        f19234a = 0L;
        TelephonyManager telephonyManager = (TelephonyManager) getSystemService("phone");
        C3292bd bdVar = f19236c;
        if (bdVar != null) {
            telephonyManager.listen(bdVar, 0);
            f19236c = null;
        }
        SmsReceiverHighPriority smsReceiverHighPriority = f19238e;
        if (smsReceiverHighPriority != null) {
            try {
                unregisterReceiver(smsReceiverHighPriority);
            } catch (IllegalArgumentException e) {
            }
            f19238e = null;
        }
        CallReceiver callReceiver = f19237d;
        if (callReceiver != null) {
            try {
                unregisterReceiver(callReceiver);
            } catch (IllegalArgumentException e2) {
            }
            f19237d = null;
        }
        if (f19239f != null) {
            getContentResolver().unregisterContentObserver(f19239f);
            f19239f = null;
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        f19234a = 0L;
        f19235b = this;
    }

    @Override // android.app.Service
    public void onDestroy() {
        m357d();
        f19235b = null;
        f19236c = null;
        f19238e = null;
        f19237d = null;
        f19239f = null;
        sendBroadcast(new Intent("com.vladlee.actions.service_restart"));
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        m358c();
        if (!m361b()) {
            if (!C3392ee.m80a((Context) this, "pref_schedule_enable", false) || C3395eg.m70a(this)) {
                try {
                    C3392ee.m74b((Context) this, "pref_enable_blocking", true);
                } catch (IllegalArgumentException e) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put(AppMeasurementSdk.ConditionalUserProperty.NAME, "pref_enable_blocking");
                    contentValues.put(AppMeasurementSdk.ConditionalUserProperty.VALUE, "true");
                    C3317bx.m204a(this).getWritableDatabase().insert("preferences", null, contentValues);
                }
            }
            m357d();
            f19234a = System.currentTimeMillis();
            TelephonyManager telephonyManager = (TelephonyManager) getSystemService("phone");
            f19236c = new C3292bd(this);
            telephonyManager.listen(f19236c, 32);
            if (Build.VERSION.SDK_INT < 19) {
                f19238e = new SmsReceiverHighPriority();
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.provider.Telephony.SMS_RECEIVED");
                intentFilter.setPriority(Api.BaseClientBuilder.API_PRIORITY_OTHER);
                registerReceiver(f19238e, intentFilter);
            }
            getPackageManager().setComponentEnabledSetting(new ComponentName(this, CallReceiver.class), 1, 1);
            f19237d = new CallReceiver();
            IntentFilter intentFilter2 = new IntentFilter();
            intentFilter2.addAction("android.intent.action.PHONE_STATE");
            intentFilter2.setPriority(Api.BaseClientBuilder.API_PRIORITY_OTHER);
            registerReceiver(f19237d, intentFilter2);
            if (C3392ee.m80a((Context) this, "pref_schedule_enable", false)) {
                AlarmReceiver.m373a(this);
            }
            if (Build.VERSION.SDK_INT < 19) {
                return 1;
            }
            f19239f = new C3277ar(this, new Handler());
            getContentResolver().registerContentObserver(Uri.parse("content://sms/"), true, f19239f);
            return 1;
        } else if (m368a()) {
            stopSelf();
            m367a(this);
            return 1;
        } else {
            HashMap<String, String> a = C3392ee.m84a(this);
            boolean a2 = C3392ee.m77a(a, "pref_show_status_bar_icon");
            boolean z = C3392ee.m77a(a, "pref_block_calls_option") || C3392ee.m77a(a, "pref_block_sms_option");
            boolean z2 = false;
            if (C3392ee.m77a(a, "pref_enable_blocking")) {
                z2 = false;
                if (z) {
                    z2 = true;
                }
            }
            if (!a2 || !z2) {
                stopForeground(true);
                return 1;
            }
            m358c();
            return 1;
        }
    }

    @Override // android.app.Service
    public void onTaskRemoved(Intent intent) {
    }
}
