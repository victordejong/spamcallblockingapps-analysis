package com.google.android.gms.common.stats;

import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import android.os.Process;
import android.text.TextUtils;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/stats/StatsUtils.class */
public class StatsUtils {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static String m5574a(String str) {
        String str2 = str;
        if ("com.google.android.gms".equals(str)) {
            str2 = null;
        }
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static List<String> m5573a(List<String> list) {
        List<String> list2 = list;
        if (list != null) {
            list2 = list;
            if (list.size() == 1) {
                list2 = list;
                if ("com.google.android.gms".equals(list.get(0))) {
                    list2 = null;
                }
            }
        }
        return list2;
    }

    public static String getEventKey(Context context, Intent intent) {
        return String.valueOf(System.identityHashCode(intent) | (System.identityHashCode(context) << 32));
    }

    public static String getEventKey(PowerManager.WakeLock wakeLock, String str) {
        String valueOf = String.valueOf(String.valueOf((Process.myPid() << 32) | System.identityHashCode(wakeLock)));
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = "";
        }
        String valueOf2 = String.valueOf(str2);
        return valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }
}
