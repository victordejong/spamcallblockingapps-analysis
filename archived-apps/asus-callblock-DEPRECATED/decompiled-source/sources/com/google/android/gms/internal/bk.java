package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.AppOpsManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import com.google.android.gms.common.a.k;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/bk.class */
public final class bk {

    /* renamed from: a  reason: collision with root package name */
    protected final Context f4162a;

    public bk(Context context) {
        this.f4162a = context;
    }

    public final ApplicationInfo a(String str, int i) {
        return this.f4162a.getPackageManager().getApplicationInfo(str, i);
    }

    public final PackageInfo a(String str) {
        return this.f4162a.getPackageManager().getPackageInfo(str, 64);
    }

    @TargetApi(19)
    public final boolean a(int i, String str) {
        boolean z;
        if (k.a(19)) {
            try {
                ((AppOpsManager) this.f4162a.getSystemService("appops")).checkPackage(i, str);
                z = true;
            } catch (SecurityException e) {
                z = false;
            }
        } else {
            String[] packagesForUid = this.f4162a.getPackageManager().getPackagesForUid(i);
            z = false;
            if (packagesForUid != null) {
                int i2 = 0;
                while (true) {
                    z = false;
                    if (i2 >= packagesForUid.length) {
                        break;
                    } else if (str.equals(packagesForUid[i2])) {
                        z = true;
                        break;
                    } else {
                        i2++;
                    }
                }
            }
        }
        return z;
    }
}
