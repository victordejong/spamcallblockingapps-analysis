package com.google.android.gms.common;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.wrappers.Wrappers;
import p131c.p161d.p170b.p224d.p238d.AbstractBinderC3317i;
import p131c.p161d.p170b.p224d.p238d.BinderC3320l;
import p131c.p161d.p170b.p224d.p238d.C3316h;
import p131c.p161d.p170b.p224d.p238d.C3322n;
import p131c.p161d.p170b.p224d.p238d.C3324p;
@ShowFirstParty
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/GoogleSignatureVerifier.class */
public class GoogleSignatureVerifier {

    /* renamed from: b */
    public static GoogleSignatureVerifier f23023b;

    /* renamed from: a */
    public final Context f23024a;

    public GoogleSignatureVerifier(Context context) {
        this.f23024a = context.getApplicationContext();
    }

    /* renamed from: a */
    public static AbstractBinderC3317i m17793a(PackageInfo packageInfo, AbstractBinderC3317i... iVarArr) {
        Signature[] signatureArr = packageInfo.signatures;
        if (signatureArr == null) {
            return null;
        }
        if (signatureArr.length != 1) {
            Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
            return null;
        }
        BinderC3320l lVar = new BinderC3320l(packageInfo.signatures[0].toByteArray());
        for (int i = 0; i < iVarArr.length; i++) {
            if (iVarArr[i].equals(lVar)) {
                return iVarArr[i];
            }
        }
        return null;
    }

    @KeepForSdk
    /* renamed from: a */
    public static GoogleSignatureVerifier m17796a(Context context) {
        Preconditions.m17288a(context);
        synchronized (GoogleSignatureVerifier.class) {
            try {
                if (f23023b == null) {
                    C3316h.m27257a(context);
                    f23023b = new GoogleSignatureVerifier(context);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f23023b;
    }

    /* renamed from: a */
    public static boolean m17794a(PackageInfo packageInfo, boolean z) {
        if (packageInfo == null || packageInfo.signatures == null) {
            return false;
        }
        return (z ? m17793a(packageInfo, C3322n.f12046a) : m17793a(packageInfo, C3322n.f12046a[0])) != null;
    }

    /* renamed from: a */
    public final C3324p m17792a(String str, int i) {
        try {
            PackageInfo a = Wrappers.m17026b(this.f23024a).m17031a(str, 64, i);
            boolean honorsDebugCertificates = GooglePlayServicesUtilLight.honorsDebugCertificates(this.f23024a);
            if (a == null) {
                return C3324p.m27252a("null pkg");
            }
            if (a.signatures != null && a.signatures.length == 1) {
                BinderC3320l lVar = new BinderC3320l(a.signatures[0].toByteArray());
                String str2 = a.packageName;
                C3324p a2 = C3316h.m27256a(str2, lVar, honorsDebugCertificates, false);
                return (!a2.f12048a || a.applicationInfo == null || (a.applicationInfo.flags & 2) == 0 || !C3316h.m27256a(str2, lVar, false, true).f12048a) ? a2 : C3324p.m27252a("debuggable release cert app rejected");
            }
            return C3324p.m27252a("single cert required");
        } catch (PackageManager.NameNotFoundException e) {
            String valueOf = String.valueOf(str);
            return C3324p.m27252a(valueOf.length() != 0 ? "no pkg ".concat(valueOf) : new String("no pkg "));
        }
    }

    @ShowFirstParty
    @KeepForSdk
    /* renamed from: a */
    public boolean m17797a(int i) {
        C3324p pVar;
        String[] a = Wrappers.m17026b(this.f23024a).m17035a(i);
        if (a != null && a.length != 0) {
            pVar = null;
            int length = a.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    Preconditions.m17288a(pVar);
                    pVar = pVar;
                    break;
                }
                pVar = m17792a(a[i2], i);
                if (pVar.f12048a) {
                    break;
                }
                i2++;
            }
        } else {
            pVar = C3324p.m27252a("no pkgs");
        }
        pVar.m27248b();
        return pVar.f12048a;
    }

    @KeepForSdk
    /* renamed from: a */
    public boolean m17795a(PackageInfo packageInfo) {
        if (packageInfo == null) {
            return false;
        }
        if (m17794a(packageInfo, false)) {
            return true;
        }
        if (!m17794a(packageInfo, true)) {
            return false;
        }
        if (GooglePlayServicesUtilLight.honorsDebugCertificates(this.f23024a)) {
            return true;
        }
        Log.w("GoogleSignatureVerifier", "Test-keys aren't accepted on this build.");
        return false;
    }
}
