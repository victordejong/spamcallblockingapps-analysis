package androidx.core.content;

import android.content.Context;
import android.os.Process;
import androidx.core.app.C0180d;
/* renamed from: androidx.core.content.b */
/* loaded from: classes-dex2jar.jar:androidx/core/content/b.class */
public final class C0205b {
    /* renamed from: a */
    public static int m6046a(Context context, String str, int i, int i2, String str2) {
        if (context.checkPermission(str, i, i2) == -1) {
            return -1;
        }
        String m6182b = C0180d.m6182b(str);
        if (m6182b == null) {
            return 0;
        }
        String str3 = str2;
        if (str2 == null) {
            String[] packagesForUid = context.getPackageManager().getPackagesForUid(i2);
            if (packagesForUid == null || packagesForUid.length <= 0) {
                return -1;
            }
            str3 = packagesForUid[0];
        }
        return C0180d.m6183a(context, m6182b, str3) != 0 ? -2 : 0;
    }

    /* renamed from: b */
    public static int m6045b(Context context, String str) {
        return m6046a(context, str, Process.myPid(), Process.myUid(), context.getPackageName());
    }
}
