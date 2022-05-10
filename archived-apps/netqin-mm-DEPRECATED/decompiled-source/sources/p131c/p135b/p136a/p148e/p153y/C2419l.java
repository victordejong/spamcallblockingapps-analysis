package p131c.p135b.p136a.p148e.p153y;

import android.content.pm.PackageManager;
/* renamed from: c.b.a.e.y.l */
/* loaded from: classes-dex2jar.jar:c/b/a/e/y/l.class */
public class C2419l {
    /* renamed from: a */
    public static int m29874a(String str, String str2, PackageManager packageManager) {
        int i;
        try {
            i = packageManager.checkPermission(str, str2);
        } catch (Throwable th) {
            i = -1;
        }
        return i;
    }
}
