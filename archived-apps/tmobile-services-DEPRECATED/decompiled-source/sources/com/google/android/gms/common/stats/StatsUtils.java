package com.google.android.gms.common.stats;

import android.os.PowerManager;
import android.os.Process;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.List;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/stats/StatsUtils.class */
public class StatsUtils {
    @KeepForSdk
    /* renamed from: a */
    public static String m14369a(PowerManager.WakeLock wakeLock, String str) {
        String valueOf = String.valueOf(String.valueOf((Process.myPid() << 32) | System.identityHashCode(wakeLock)));
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = "";
        }
        String valueOf2 = String.valueOf(str2);
        return valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    /* renamed from: b */
    public static List<String> m14368b(@Nullable List<String> list) {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    /* renamed from: c */
    public static String m14367c(String str) {
        String str2 = str;
        if ("com.google.android.gms".equals(str)) {
            str2 = null;
        }
        return str2;
    }
}
