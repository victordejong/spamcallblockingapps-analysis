package androidx.legacy.content;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import android.util.Log;
import android.util.SparseArray;
@Deprecated
/* loaded from: classes-dex2jar.jar:androidx/legacy/content/WakefulBroadcastReceiver.class */
public abstract class WakefulBroadcastReceiver extends BroadcastReceiver {

    /* renamed from: a */
    public static final SparseArray<PowerManager.WakeLock> f1374a = new SparseArray<>();

    /* renamed from: b */
    public static int f1375b = 1;

    /* renamed from: a */
    public static boolean m38326a(Intent intent) {
        int intExtra = intent.getIntExtra("androidx.contentpager.content.wakelockid", 0);
        if (intExtra == 0) {
            return false;
        }
        synchronized (f1374a) {
            PowerManager.WakeLock wakeLock = f1374a.get(intExtra);
            if (wakeLock != null) {
                wakeLock.release();
                f1374a.remove(intExtra);
                return true;
            }
            Log.w("WakefulBroadcastReceiv.", "No active wake lock id #" + intExtra);
            return true;
        }
    }

    /* renamed from: b */
    public static ComponentName m38325b(Context context, Intent intent) {
        synchronized (f1374a) {
            int i = f1375b;
            int i2 = f1375b + 1;
            f1375b = i2;
            if (i2 <= 0) {
                f1375b = 1;
            }
            intent.putExtra("androidx.contentpager.content.wakelockid", i);
            ComponentName startService = context.startService(intent);
            if (startService == null) {
                return null;
            }
            PowerManager powerManager = (PowerManager) context.getSystemService("power");
            PowerManager.WakeLock newWakeLock = powerManager.newWakeLock(1, "androidx.core:wake:" + startService.flattenToShortString());
            newWakeLock.setReferenceCounted(false);
            newWakeLock.acquire(60000L);
            f1374a.put(i, newWakeLock);
            return startService;
        }
    }
}
