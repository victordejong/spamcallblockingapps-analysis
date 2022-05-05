package com.google.android.gms.ads.mediation.admob;

import android.os.Bundle;
import com.google.ads.mediation.NetworkExtras;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/admob/AdMobExtras.class */
public final class AdMobExtras implements NetworkExtras {

    /* renamed from: a */
    private final Bundle f6058a;

    public AdMobExtras(Bundle bundle) {
        this.f6058a = bundle != null ? new Bundle(bundle) : null;
    }

    public final Bundle getExtras() {
        return this.f6058a;
    }
}
