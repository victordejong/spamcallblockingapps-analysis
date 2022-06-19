package com.google.android.gms.common.p026n;

import android.app.AppOpsManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Binder;
import android.os.Process;
import com.google.android.gms.common.util.C0971m;
/* renamed from: com.google.android.gms.common.n.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/n/b.class */
public class C0949b {

    /* renamed from: a */
    private final Context f3576a;

    public C0949b(Context context) {
        this.f3576a = context;
    }

    /* renamed from: a */
    public int m3209a(String str) {
        return this.f3576a.checkCallingOrSelfPermission(str);
    }

    /* renamed from: b */
    public int m3208b(String str, String str2) {
        return this.f3576a.getPackageManager().checkPermission(str, str2);
    }

    /* renamed from: c */
    public ApplicationInfo m3207c(String str, int i) throws PackageManager.NameNotFoundException {
        return this.f3576a.getPackageManager().getApplicationInfo(str, i);
    }

    /* renamed from: d */
    public CharSequence m3206d(String str) throws PackageManager.NameNotFoundException {
        return this.f3576a.getPackageManager().getApplicationLabel(this.f3576a.getPackageManager().getApplicationInfo(str, 0));
    }

    /* renamed from: e */
    public PackageInfo m3205e(String str, int i) throws PackageManager.NameNotFoundException {
        return this.f3576a.getPackageManager().getPackageInfo(str, i);
    }

    /* renamed from: f */
    public boolean m3204f() {
        String nameForUid;
        if (Binder.getCallingUid() == Process.myUid()) {
            return C0948a.m3210a(this.f3576a);
        }
        if (C0971m.m3139i() && (nameForUid = this.f3576a.getPackageManager().getNameForUid(Binder.getCallingUid())) != null) {
            return this.f3576a.getPackageManager().isInstantApp(nameForUid);
        }
        return false;
    }

    /* renamed from: g */
    public final PackageInfo m3203g(String str, int i, int i2) throws PackageManager.NameNotFoundException {
        return this.f3576a.getPackageManager().getPackageInfo(str, 64);
    }

    /* renamed from: h */
    public final boolean m3202h(int i, String str) {
        if (C0971m.m3143e()) {
            try {
                ((AppOpsManager) this.f3576a.getSystemService("appops")).checkPackage(i, str);
                return true;
            } catch (SecurityException e) {
                return false;
            }
        }
        String[] packagesForUid = this.f3576a.getPackageManager().getPackagesForUid(i);
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

    /* renamed from: i */
    public final String[] m3201i(int i) {
        return this.f3576a.getPackageManager().getPackagesForUid(i);
    }
}
