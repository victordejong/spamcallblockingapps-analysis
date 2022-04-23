package com.google.android.gms.common;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.wrappers.Wrappers;
import javax.annotation.CheckReturnValue;
@CheckReturnValue
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/GoogleSignatureVerifier.class */
public class GoogleSignatureVerifier {

    /* renamed from: a */
    private static GoogleSignatureVerifier f6157a;

    /* renamed from: b */
    private final Context f6158b;

    /* renamed from: c */
    private volatile String f6159c;

    private GoogleSignatureVerifier(Context context) {
        this.f6158b = context.getApplicationContext();
    }

    /* renamed from: a */
    private static AbstractBinderC1646e m5989a(PackageInfo packageInfo, AbstractBinderC1646e... eVarArr) {
        if (packageInfo.signatures == null) {
            return null;
        }
        if (packageInfo.signatures.length != 1) {
            Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
            return null;
        }
        BinderC1647f fVar = new BinderC1647f(packageInfo.signatures[0].toByteArray());
        for (int i = 0; i < eVarArr.length; i++) {
            if (eVarArr[i].equals(fVar)) {
                return eVarArr[i];
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00a7  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.google.android.gms.common.C1677k m5988a(java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 212
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.GoogleSignatureVerifier.m5988a(java.lang.String):com.google.android.gms.common.k");
    }

    /* renamed from: a */
    private final C1677k m5987a(String str, int i) {
        try {
            PackageInfo zza = Wrappers.packageManager(this.f6158b).zza(str, 64, i);
            boolean honorsDebugCertificates = GooglePlayServicesUtilLight.honorsDebugCertificates(this.f6158b);
            if (zza == null) {
                return C1677k.m5648a("null pkg");
            }
            if (zza.signatures.length != 1) {
                return C1677k.m5648a("single cert required");
            }
            BinderC1647f fVar = new BinderC1647f(zza.signatures[0].toByteArray());
            String str2 = zza.packageName;
            C1677k a = C1637c.m5772a(str2, fVar, honorsDebugCertificates, false);
            C1677k kVar = a;
            if (a.f6861a) {
                kVar = a;
                if (zza.applicationInfo != null) {
                    kVar = a;
                    if ((zza.applicationInfo.flags & 2) != 0) {
                        kVar = a;
                        if (C1637c.m5772a(str2, fVar, false, true).f6861a) {
                            kVar = C1677k.m5648a("debuggable release cert app rejected");
                        }
                    }
                }
            }
            return kVar;
        } catch (PackageManager.NameNotFoundException e) {
            String valueOf = String.valueOf(str);
            return C1677k.m5648a(valueOf.length() != 0 ? "no pkg ".concat(valueOf) : new String("no pkg "));
        }
    }

    public static GoogleSignatureVerifier getInstance(Context context) {
        Preconditions.checkNotNull(context);
        synchronized (GoogleSignatureVerifier.class) {
            try {
                if (f6157a == null) {
                    C1637c.m5773a(context);
                    f6157a = new GoogleSignatureVerifier(context);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f6157a;
    }

    public static boolean zza(PackageInfo packageInfo, boolean z) {
        if (packageInfo == null || packageInfo.signatures == null) {
            return false;
        }
        return (z ? m5989a(packageInfo, C1649h.f6636a) : m5989a(packageInfo, C1649h.f6636a[0])) != null;
    }

    public boolean isGooglePublicSignedPackage(PackageInfo packageInfo) {
        if (packageInfo == null) {
            return false;
        }
        if (zza(packageInfo, false)) {
            return true;
        }
        if (!zza(packageInfo, true)) {
            return false;
        }
        if (GooglePlayServicesUtilLight.honorsDebugCertificates(this.f6158b)) {
            return true;
        }
        Log.w("GoogleSignatureVerifier", "Test-keys aren't accepted on this build.");
        return false;
    }

    public boolean isPackageGoogleSigned(String str) {
        C1677k a = m5988a(str);
        a.m5644c();
        return a.f6861a;
    }

    public boolean isUidGoogleSigned(int i) {
        C1677k kVar;
        String[] packagesForUid = Wrappers.packageManager(this.f6158b).getPackagesForUid(i);
        if (packagesForUid != null && packagesForUid.length != 0) {
            kVar = null;
            int length = packagesForUid.length;
            int i2 = 0;
            while (i2 < length) {
                C1677k a = m5987a(packagesForUid[i2], i);
                kVar = a;
                if (a.f6861a) {
                    break;
                }
                i2++;
                kVar = a;
            }
        } else {
            kVar = C1677k.m5648a("no pkgs");
        }
        kVar.m5644c();
        return kVar.f6861a;
    }
}
