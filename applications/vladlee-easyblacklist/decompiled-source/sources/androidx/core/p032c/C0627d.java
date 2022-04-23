package androidx.core.p032c;

import android.content.Context;
import android.os.Build;
import android.os.UserManager;
/* renamed from: androidx.core.c.d */
/* loaded from: classes-dex2jar.jar:androidx/core/c/d.class */
public final class C0627d {
    /* renamed from: a */
    public static boolean m8686a(Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            return ((UserManager) context.getSystemService(UserManager.class)).isUserUnlocked();
        }
        return true;
    }
}
