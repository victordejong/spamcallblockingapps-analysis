package com.google.android.gms.common;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.util.Log;
import com.google.android.gms.common.internal.C0931r;
import com.google.android.gms.common.p026n.C0950c;
/* renamed from: com.google.android.gms.common.i */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/i.class */
public class C0894i {

    /* renamed from: b */
    private static C0894i f3479b;

    /* renamed from: a */
    private final Context f3480a;

    private C0894i(Context context) {
        this.f3480a = context.getApplicationContext();
    }

    /* renamed from: a */
    public static C0894i m3460a(Context context) {
        C0931r.m3308k(context);
        synchronized (C0894i.class) {
            try {
                if (f3479b == null) {
                    C0953q.m3196c(context);
                    f3479b = new C0894i(context);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f3479b;
    }

    /* renamed from: d */
    private static r m3457d(PackageInfo packageInfo, r... rVarArr) {
        Signature[] signatureArr = packageInfo.signatures;
        if (signatureArr == null) {
            return null;
        }
        if (signatureArr.length != 1) {
            Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
            return null;
        }
        u uVar = new u(packageInfo.signatures[0].toByteArray());
        for (int i = 0; i < rVarArr.length; i++) {
            if (rVarArr[i].equals(uVar)) {
                return rVarArr[i];
            }
        }
        return null;
    }

    /* renamed from: e */
    private final C0983z m3456e(String str, int i) {
        ApplicationInfo applicationInfo;
        try {
            PackageInfo m3203g = C0950c.m3200a(this.f3480a).m3203g(str, 64, i);
            boolean m3468g = C0893h.m3468g(this.f3480a);
            if (m3203g == null) {
                return C0983z.m3109b("null pkg");
            }
            Signature[] signatureArr = m3203g.signatures;
            if (signatureArr != null && signatureArr.length == 1) {
                u uVar = new u(m3203g.signatures[0].toByteArray());
                String str2 = m3203g.packageName;
                C0983z m3198a = C0953q.m3198a(str2, uVar, m3468g, false);
                return (!m3198a.f3617a || (applicationInfo = m3203g.applicationInfo) == null || (applicationInfo.flags & 2) == 0 || !C0953q.m3198a(str2, uVar, false, true).f3617a) ? m3198a : C0983z.m3109b("debuggable release cert app rejected");
            }
            return C0983z.m3109b("single cert required");
        } catch (PackageManager.NameNotFoundException e) {
            String valueOf = String.valueOf(str);
            return C0983z.m3109b(valueOf.length() != 0 ? "no pkg ".concat(valueOf) : new String("no pkg "));
        }
    }

    /* renamed from: f */
    public static boolean m3455f(PackageInfo packageInfo, boolean z) {
        if (packageInfo == null || packageInfo.signatures == null) {
            return false;
        }
        return (z ? m3457d(packageInfo, C0982w.f3615a) : m3457d(packageInfo, C0982w.f3615a[0])) != null;
    }

    /* renamed from: b */
    public boolean m3459b(PackageInfo packageInfo) {
        if (packageInfo == null) {
            return false;
        }
        if (m3455f(packageInfo, false)) {
            return true;
        }
        if (!m3455f(packageInfo, true)) {
            return false;
        }
        if (C0893h.m3468g(this.f3480a)) {
            return true;
        }
        Log.w("GoogleSignatureVerifier", "Test-keys aren't accepted on this build.");
        return false;
    }

    /* renamed from: c */
    public boolean m3458c(int i) {
        C0983z c0983z;
        String[] m3201i = C0950c.m3200a(this.f3480a).m3201i(i);
        if (m3201i != null && m3201i.length != 0) {
            c0983z = null;
            int length = m3201i.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    C0931r.m3308k(c0983z);
                    c0983z = c0983z;
                    break;
                }
                c0983z = m3456e(m3201i[i2], i);
                if (c0983z.f3617a) {
                    break;
                }
                i2++;
            }
        } else {
            c0983z = C0983z.m3109b("no pkgs");
        }
        c0983z.m3104g();
        return c0983z.f3617a;
    }
}
