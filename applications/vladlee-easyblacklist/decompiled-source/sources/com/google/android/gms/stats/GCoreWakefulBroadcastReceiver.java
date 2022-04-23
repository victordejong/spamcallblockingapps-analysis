package com.google.android.gms.stats;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
import androidx.legacy.content.WakefulBroadcastReceiver;
import com.google.android.gms.common.stats.WakeLockTracker;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/stats/GCoreWakefulBroadcastReceiver.class */
public abstract class GCoreWakefulBroadcastReceiver extends WakefulBroadcastReceiver {

    /* renamed from: a */
    private static String f17350a = "GCoreWakefulBroadcastReceiver";

    public static boolean completeWakefulIntent(Context context, Intent intent) {
        if (intent == null) {
            return false;
        }
        if (context != null) {
            WakeLockTracker.getInstance().registerReleaseEvent(context, intent);
        } else {
            String str = f17350a;
            String valueOf = String.valueOf(intent.toUri(0));
            Log.w(str, valueOf.length() != 0 ? "context shouldn't be null. intent: ".concat(valueOf) : new String("context shouldn't be null. intent: "));
        }
        return WakefulBroadcastReceiver.completeWakefulIntent(intent);
    }
}
