package androidx.core.p005os;

import android.content.Context;
import android.os.Build;
import android.os.UserManager;
/* renamed from: androidx.core.os.i */
/* loaded from: classes-dex2jar.jar:androidx/core/os/i.class */
public class C0233i {
    /* renamed from: a */
    public static boolean m5936a(Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            return ((UserManager) context.getSystemService(UserManager.class)).isUserUnlocked();
        }
        return true;
    }
}
