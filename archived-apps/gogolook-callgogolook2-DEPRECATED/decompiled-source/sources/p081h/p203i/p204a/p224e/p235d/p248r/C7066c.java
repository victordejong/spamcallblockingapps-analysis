package p081h.p203i.p204a.p224e.p235d.p248r;

import android.os.PowerManager;
import android.os.Process;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import java.util.List;
/* renamed from: h.i.a.e.d.r.c */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/r/c.class */
public class C7066c {
    /* renamed from: a */
    public static String m21180a(PowerManager.WakeLock wakeLock, String str) {
        String valueOf = String.valueOf(String.valueOf((Process.myPid() << 32) | System.identityHashCode(wakeLock)));
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = "";
        }
        String valueOf2 = String.valueOf(str2);
        return valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }

    @Nullable
    /* renamed from: a */
    public static String m21179a(String str) {
        String str2 = str;
        if ("com.google.android.gms".equals(str)) {
            str2 = null;
        }
        return str2;
    }

    @Nullable
    /* renamed from: a */
    public static List<String> m21178a(@Nullable List<String> list) {
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
}
