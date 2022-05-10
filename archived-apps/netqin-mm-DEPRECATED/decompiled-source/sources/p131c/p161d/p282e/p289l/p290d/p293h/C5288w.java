package p131c.p161d.p282e.p289l.p290d.p293h;

import android.content.Context;
/* renamed from: c.d.e.l.d.h.w */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/w.class */
public class C5288w {

    /* renamed from: a */
    public String f18073a;

    /* renamed from: b */
    public static String m24050b(Context context) {
        String installerPackageName = context.getPackageManager().getInstallerPackageName(context.getPackageName());
        String str = installerPackageName;
        if (installerPackageName == null) {
            str = "";
        }
        return str;
    }

    /* renamed from: a */
    public String m24051a(Context context) {
        String str;
        synchronized (this) {
            if (this.f18073a == null) {
                this.f18073a = m24050b(context);
            }
            str = "".equals(this.f18073a) ? null : this.f18073a;
        }
        return str;
    }
}
