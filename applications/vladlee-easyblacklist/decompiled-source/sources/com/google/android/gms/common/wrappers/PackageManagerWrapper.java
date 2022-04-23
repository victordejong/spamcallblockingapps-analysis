package com.google.android.gms.common.wrappers;

import android.app.AppOpsManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Binder;
import android.os.Process;
import com.google.android.gms.common.util.PlatformVersion;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/wrappers/PackageManagerWrapper.class */
public class PackageManagerWrapper {

    /* renamed from: a */
    private final Context f7016a;

    public PackageManagerWrapper(Context context) {
        this.f7016a = context;
    }

    public int checkCallingOrSelfPermission(String str) {
        return this.f7016a.checkCallingOrSelfPermission(str);
    }

    public int checkPermission(String str, String str2) {
        return this.f7016a.getPackageManager().checkPermission(str, str2);
    }

    public ApplicationInfo getApplicationInfo(String str, int i) {
        return this.f7016a.getPackageManager().getApplicationInfo(str, i);
    }

    public CharSequence getApplicationLabel(String str) {
        return this.f7016a.getPackageManager().getApplicationLabel(this.f7016a.getPackageManager().getApplicationInfo(str, 0));
    }

    public PackageInfo getPackageInfo(String str, int i) {
        return this.f7016a.getPackageManager().getPackageInfo(str, i);
    }

    public final String[] getPackagesForUid(int i) {
        return this.f7016a.getPackageManager().getPackagesForUid(i);
    }

    public boolean isCallerInstantApp() {
        String nameForUid;
        if (Binder.getCallingUid() == Process.myUid()) {
            return InstantApps.isInstantApp(this.f7016a);
        }
        if (!PlatformVersion.isAtLeastO() || (nameForUid = this.f7016a.getPackageManager().getNameForUid(Binder.getCallingUid())) == null) {
            return false;
        }
        return this.f7016a.getPackageManager().isInstantApp(nameForUid);
    }

    public final PackageInfo zza(String str, int i, int i2) {
        return this.f7016a.getPackageManager().getPackageInfo(str, 64);
    }

    public final boolean zzb(int i, String str) {
        if (PlatformVersion.isAtLeastKitKat()) {
            try {
                ((AppOpsManager) this.f7016a.getSystemService("appops")).checkPackage(i, str);
                return true;
            } catch (SecurityException e) {
                return false;
            }
        } else {
            String[] packagesForUid = this.f7016a.getPackageManager().getPackagesForUid(i);
            if (str == null || packagesForUid == null) {
                return false;
            }
            for (String str2 : packagesForUid) {
                if (str.equals(str2)) {
                    return true;
                }
            }
            return false;
        }
    }
}
