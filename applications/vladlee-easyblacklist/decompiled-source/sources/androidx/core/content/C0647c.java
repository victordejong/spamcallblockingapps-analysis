package androidx.core.content;

import android.app.AppOpsManager;
import android.content.Context;
import android.os.Build;
import android.os.Process;
/* renamed from: androidx.core.content.c */
/* loaded from: classes-dex2jar.jar:androidx/core/content/c.class */
public final class C0647c {
    /* renamed from: a */
    public static int m8609a(Context context, String str) {
        int myPid = Process.myPid();
        int myUid = Process.myUid();
        String packageName = context.getPackageName();
        if (context.checkPermission(str, myPid, myUid) == -1) {
            return -1;
        }
        String permissionToOp = Build.VERSION.SDK_INT >= 23 ? AppOpsManager.permissionToOp(str) : null;
        if (permissionToOp == null) {
            return 0;
        }
        String str2 = packageName;
        if (packageName == null) {
            String[] packagesForUid = context.getPackageManager().getPackagesForUid(myUid);
            if (packagesForUid == null || packagesForUid.length <= 0) {
                return -1;
            }
            str2 = packagesForUid[0];
        }
        return (Build.VERSION.SDK_INT >= 23 ? ((AppOpsManager) context.getSystemService(AppOpsManager.class)).noteProxyOpNoThrow(permissionToOp, str2) : 1) != 0 ? -2 : 0;
    }
}
