package com.android.contacts;

import android.app.ActivityManager;
import android.app.Notification;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.util.Log;
import com.android.contacts.activities.MainDialtactsActivity;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/android/contacts/AsusContactsForegroundService.class */
public class AsusContactsForegroundService extends Service {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f418a = true;

    private boolean a(Class<?> cls) {
        boolean z;
        Iterator<ActivityManager.RunningServiceInfo> it;
        try {
            it = ((ActivityManager) getSystemService("activity")).getRunningServices(Integer.MAX_VALUE).iterator();
        } catch (NullPointerException e) {
            Log.w("AsusContactsForegroundService", e.toString());
        }
        do {
            if (!it.hasNext()) {
                z = false;
                break;
            }
        } while (!cls.getName().equals(it.next().service.getClassName()));
        z = true;
        return z;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        Log.d("AsusContactsForegroundService", "onCreate()");
        super.onCreate();
        Intent intent = new Intent(this, MainDialtactsActivity.class);
        intent.setFlags(603979776);
        PendingIntent.getActivity(this, 0, intent, 0);
    }

    @Override // android.app.Service
    public void onDestroy() {
        Log.d("AsusContactsForegroundService", "onDestroy()");
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        Log.d("AsusContactsForegroundService", "onStartCommand");
        if (intent != null && intent.getBooleanExtra("isStop", false)) {
            AsusContactsForegroundFakeService.f417a = false;
            f418a = true;
            Log.d("AsusContactsForegroundService", "real service stopForeground");
            stopForeground(true);
            stopSelf();
            return 2;
        } else if (!f418a) {
            return 2;
        } else {
            f418a = false;
            if (a(AsusContactsForegroundFakeService.class)) {
                Log.d("AsusContactsForegroundService", "FackService is running, stop it.");
                Notification notification = new Notification();
                notification.flags |= 32;
                startForeground(1235, notification);
                Intent intent2 = new Intent(this, AsusContactsForegroundFakeService.class);
                intent2.putExtra("isStop", true);
                startService(intent2);
                return 2;
            }
            Log.d("AsusContactsForegroundService", "FackService is not running, stop self.");
            stopSelf();
            return 2;
        }
    }
}
