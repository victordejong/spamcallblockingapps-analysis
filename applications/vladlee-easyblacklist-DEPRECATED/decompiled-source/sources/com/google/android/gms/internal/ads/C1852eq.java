package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import java.io.IOException;
/* renamed from: com.google.android.gms.internal.ads.eq */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/eq.class */
final class C1852eq extends zzavo {

    /* renamed from: a */
    private Context f8436a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1852eq(Context context) {
        this.f8436a = context;
    }

    @Override // com.google.android.gms.internal.ads.zzavo
    public final void zztu() {
        boolean z;
        try {
            z = AdvertisingIdClient.getIsAdIdFakeForDebugLogging(this.f8436a);
        } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException | IOException | IllegalStateException e) {
            zzavs.zzc("Fail to get isAdIdFakeForDebugLogging", e);
            z = false;
        }
        zzayo.zzar(z);
        StringBuilder sb = new StringBuilder(43);
        sb.append("Update ad debug logging enablement as ");
        sb.append(z);
        zzavs.zzez(sb.toString());
    }
}
