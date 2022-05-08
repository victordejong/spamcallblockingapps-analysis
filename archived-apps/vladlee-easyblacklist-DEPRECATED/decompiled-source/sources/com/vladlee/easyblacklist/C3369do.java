package com.vladlee.easyblacklist;

import android.app.Activity;
import android.app.role.RoleManager;
import android.content.Context;
import android.os.Build;
import androidx.appcompat.app.DialogInterfaceC0308m;
/* renamed from: com.vladlee.easyblacklist.do */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/do.class */
public final class C3369do {
    /* renamed from: a */
    public static boolean m128a(Activity activity) {
        boolean z = !m127a((Context) activity);
        if (Build.VERSION.SDK_INT >= 19 && z) {
            DialogInterfaceC0308m.C0309a aVar = new DialogInterfaceC0308m.C0309a(activity);
            aVar.m9804a(2131624099);
            aVar.m9791b(2131624098);
            aVar.m9796a(activity.getResources().getString(2131624101), new DialogInterface$OnClickListenerC3372dr(activity));
            aVar.m9787b(activity.getResources().getString(2131624009), new DialogInterface$OnClickListenerC3373ds(activity));
            aVar.m9792b().show();
        }
        return z;
    }

    /* renamed from: a */
    public static boolean m127a(Context context) {
        return ((RoleManager) context.getSystemService("role")).isRoleHeld("android.app.role.SMS");
    }

    /* renamed from: b */
    public static void m126b(Activity activity) {
        RoleManager roleManager = (RoleManager) activity.getSystemService("role");
        if (!roleManager.isRoleHeld("android.app.role.SMS")) {
            activity.startActivityForResult(roleManager.createRequestRoleIntent("android.app.role.SMS"), 1001);
        }
    }
}
