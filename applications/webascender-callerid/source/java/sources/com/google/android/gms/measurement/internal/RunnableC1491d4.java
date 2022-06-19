package com.google.android.gms.measurement.internal;

import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Bundle;
import com.google.android.gms.common.stats.C0955a;
import com.google.android.gms.internal.measurement.AbstractC1388t3;
import com.google.android.gms.internal.measurement.ka;
/* renamed from: com.google.android.gms.measurement.internal.d4 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/d4.class */
final class RunnableC1491d4 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ AbstractC1388t3 f4205f;

    /* renamed from: g */
    final /* synthetic */ ServiceConnection f4206g;

    /* renamed from: h */
    final /* synthetic */ ServiceConnectionC1498e4 f4207h;

    public RunnableC1491d4(ServiceConnectionC1498e4 serviceConnectionC1498e4, AbstractC1388t3 abstractC1388t3, ServiceConnection serviceConnection) {
        this.f4207h = serviceConnectionC1498e4;
        this.f4205f = abstractC1388t3;
        this.f4206g = serviceConnection;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str;
        Bundle bundle;
        Bundle m1983N0;
        ServiceConnectionC1498e4 serviceConnectionC1498e4 = this.f4207h;
        C1512g4 c1512g4 = serviceConnectionC1498e4.f4221b;
        str = serviceConnectionC1498e4.f4220a;
        AbstractC1388t3 abstractC1388t3 = this.f4205f;
        ServiceConnection serviceConnection = this.f4206g;
        c1512g4.f4256a.e().h();
        Bundle bundle2 = new Bundle();
        bundle2.putString("package_name", str);
        try {
            m1983N0 = abstractC1388t3.m1983N0(bundle2);
            bundle = m1983N0;
        } catch (Exception e) {
            c1512g4.f4256a.c().o().m1569b("Exception occurred while retrieving the Install Referrer", e.getMessage());
        }
        if (m1983N0 == null) {
            c1512g4.f4256a.c().o().m1570a("Install Referrer Service returned a null response");
            bundle = null;
        }
        c1512g4.f4256a.e().h();
        if (bundle != null) {
            long j = bundle.getLong("install_begin_timestamp_seconds", 0L) * 1000;
            if (j == 0) {
                c1512g4.f4256a.c().r().m1570a("Service response is missing Install Referrer install timestamp");
            } else {
                String string = bundle.getString("install_referrer");
                if (string == null || string.isEmpty()) {
                    c1512g4.f4256a.c().o().m1570a("No referrer defined in Install Referrer response");
                } else {
                    c1512g4.f4256a.c().w().m1569b("InstallReferrer API result", string);
                    Bundle j0 = c1512g4.f4256a.G().j0(Uri.parse(string.length() != 0 ? "?".concat(string) : new String("?")));
                    if (j0 == null) {
                        c1512g4.f4256a.c().o().m1570a("No campaign params defined in Install Referrer result");
                    } else {
                        String string2 = j0.getString("medium");
                        if (string2 != null && !"(not set)".equalsIgnoreCase(string2) && !"organic".equalsIgnoreCase(string2)) {
                            long j2 = bundle.getLong("referrer_click_timestamp_seconds", 0L) * 1000;
                            if (j2 == 0) {
                                c1512g4.f4256a.c().o().m1570a("Install Referrer is missing click timestamp for ad campaign");
                            } else {
                                j0.putLong("click_timestamp", j2);
                            }
                        }
                        if (j == c1512g4.f4256a.A().k.m1484a()) {
                            c1512g4.f4256a.c().w().m1570a("Install Referrer campaign has already been logged");
                        } else {
                            ka.a();
                            if (!c1512g4.f4256a.z().w((String) null, C1470a3.f4128s0) || c1512g4.f4256a.k()) {
                                c1512g4.f4256a.A().k.m1483b(j);
                                c1512g4.f4256a.c().w().m1569b("Logging Install Referrer campaign from sdk with ", "referrer API");
                                j0.putString("_cis", "referrer API");
                                c1512g4.f4256a.F().X("auto", "_cmp", j0);
                            }
                        }
                    }
                }
            }
        }
        C0955a.m3193b().m3192c(c1512g4.f4256a.b(), serviceConnection);
    }
}
