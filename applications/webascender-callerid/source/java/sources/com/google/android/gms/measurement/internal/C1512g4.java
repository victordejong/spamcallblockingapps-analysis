package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import com.google.android.gms.common.p026n.C0949b;
import com.google.android.gms.common.p026n.C0950c;
import com.google.android.gms.common.stats.C0955a;
import java.util.List;
/* renamed from: com.google.android.gms.measurement.internal.g4 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/g4.class */
public final class C1512g4 {

    /* renamed from: a */
    final r4 f4256a;

    C1512g4(r4 r4Var) {
        this.f4256a = r4Var;
    }

    /* renamed from: a */
    protected final void m1653a(String str) {
        if (str == null || str.isEmpty()) {
            this.f4256a.c().s().m1570a("Install Referrer Reporter was called with invalid app package name");
            return;
        }
        this.f4256a.e().h();
        if (!m1652b()) {
            this.f4256a.c().u().m1570a("Install Referrer Reporter is not available");
            return;
        }
        ServiceConnectionC1498e4 serviceConnectionC1498e4 = new ServiceConnectionC1498e4(this, str);
        this.f4256a.e().h();
        Intent intent = new Intent("com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE");
        intent.setComponent(new ComponentName("com.android.vending", "com.google.android.finsky.externalreferrer.GetInstallReferrerService"));
        PackageManager packageManager = this.f4256a.b().getPackageManager();
        if (packageManager == null) {
            this.f4256a.c().s().m1570a("Failed to obtain Package Manager to verify binding conditions for Install Referrer");
            return;
        }
        List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 0);
        if (queryIntentServices == null || queryIntentServices.isEmpty()) {
            this.f4256a.c().u().m1570a("Play Service for fetching Install Referrer is unavailable on device");
            return;
        }
        ServiceInfo serviceInfo = queryIntentServices.get(0).serviceInfo;
        if (serviceInfo == null) {
            return;
        }
        String str2 = serviceInfo.packageName;
        if (serviceInfo.name == null || !"com.android.vending".equals(str2) || !m1652b()) {
            this.f4256a.c().r().m1570a("Play Store version 8.3.73 or higher required for Install Referrer");
            return;
        }
        try {
            this.f4256a.c().w().m1569b("Install Referrer Service is", true != C0955a.m3193b().m3194a(this.f4256a.b(), new Intent(intent), serviceConnectionC1498e4, 1) ? "not available" : "available");
        } catch (Exception e) {
            this.f4256a.c().o().m1569b("Exception occurred while binding to Install Referrer Service", e.getMessage());
        }
    }

    /* renamed from: b */
    final boolean m1652b() {
        boolean z = false;
        try {
            C0949b m3200a = C0950c.m3200a(this.f4256a.b());
            if (m3200a == null) {
                this.f4256a.c().w().m1570a("Failed to get PackageManager for Install Referrer Play Store compatibility check");
                return false;
            }
            if (m3200a.m3205e("com.android.vending", 128).versionCode >= 80837300) {
                z = true;
            }
            return z;
        } catch (Exception e) {
            this.f4256a.c().w().m1569b("Failed to retrieve Play Store version for Install Referrer", e);
            return false;
        }
    }
}
