package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.wrappers.PackageManagerWrapper;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.measurement.zzd;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfl.class */
public final class zzfl {

    /* renamed from: a */
    final zzga f17171a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfl(zzga zzgaVar) {
        this.f17171a = zzgaVar;
    }

    /* renamed from: a */
    private final boolean m1844a() {
        try {
            PackageManagerWrapper packageManager = Wrappers.packageManager(this.f17171a.zzn());
            if (packageManager != null) {
                return packageManager.getPackageInfo("com.android.vending", 128).versionCode >= 80837300;
            }
            this.f17171a.zzr().zzv().zza("Failed to retrieve Package Manager to check Play Store compatibility");
            return false;
        } catch (Exception e) {
            this.f17171a.zzr().zzv().zza("Failed to retrieve Play Store version", e);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final Bundle m1842a(String str, zzd zzdVar) {
        this.f17171a.zzq().zzd();
        if (zzdVar == null) {
            this.f17171a.zzr().zzi().zza("Attempting to use Install Referrer Service while it is not initialized");
            return null;
        }
        Bundle bundle = new Bundle();
        bundle.putString("package_name", str);
        try {
            Bundle zza = zzdVar.zza(bundle);
            if (zza != null) {
                return zza;
            }
            this.f17171a.zzr().zzf().zza("Install Referrer Service returned a null response");
            return null;
        } catch (Exception e) {
            this.f17171a.zzr().zzf().zza("Exception occurred while retrieving the Install Referrer", e.getMessage());
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void m1843a(String str) {
        if (str == null || str.isEmpty()) {
            this.f17171a.zzr().zzv().zza("Install Referrer Reporter was called with invalid app package name");
            return;
        }
        this.f17171a.zzq().zzd();
        if (!m1844a()) {
            this.f17171a.zzr().zzv().zza("Install Referrer Reporter is not available");
            return;
        }
        this.f17171a.zzr().zzv().zza("Install Referrer Reporter is initializing");
        zzfo zzfoVar = new zzfo(this, str);
        this.f17171a.zzq().zzd();
        Intent intent = new Intent("com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE");
        intent.setComponent(new ComponentName("com.android.vending", "com.google.android.finsky.externalreferrer.GetInstallReferrerService"));
        PackageManager packageManager = this.f17171a.zzn().getPackageManager();
        if (packageManager == null) {
            this.f17171a.zzr().zzi().zza("Failed to obtain Package Manager to verify binding conditions");
            return;
        }
        List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 0);
        if (queryIntentServices == null || queryIntentServices.isEmpty()) {
            this.f17171a.zzr().zzv().zza("Play Service for fetching Install Referrer is unavailable on device");
            return;
        }
        ResolveInfo resolveInfo = queryIntentServices.get(0);
        if (resolveInfo.serviceInfo != null) {
            String str2 = resolveInfo.serviceInfo.packageName;
            if (resolveInfo.serviceInfo.name == null || !"com.android.vending".equals(str2) || !m1844a()) {
                this.f17171a.zzr().zzv().zza("Play Store missing or incompatible. Version 8.3.73 or later required");
                return;
            }
            try {
                this.f17171a.zzr().zzv().zza("Install Referrer Service is", ConnectionTracker.getInstance().bindService(this.f17171a.zzn(), new Intent(intent), zzfoVar, 1) ? "available" : "not available");
            } catch (Exception e) {
                this.f17171a.zzr().zzf().zza("Exception occurred while binding to Install Referrer Service", e.getMessage());
            }
        }
    }
}
