package androidx.core.app;

import android.app.AppOpsManager;
import android.content.Context;
import android.os.Build;
/* renamed from: androidx.core.app.d */
/* loaded from: classes-dex2jar.jar:androidx/core/app/d.class */
public final class C0180d {
    /* renamed from: a */
    public static int m6183a(Context context, String str, String str2) {
        if (Build.VERSION.SDK_INT >= 23) {
            return ((AppOpsManager) context.getSystemService(AppOpsManager.class)).noteProxyOpNoThrow(str, str2);
        }
        return 1;
    }

    /* renamed from: b */
    public static String m6182b(String str) {
        if (Build.VERSION.SDK_INT >= 23) {
            return AppOpsManager.permissionToOp(str);
        }
        return null;
    }
}
