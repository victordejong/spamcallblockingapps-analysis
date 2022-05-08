package com.google.android.gms.ads.mediation.admob;

import android.os.Bundle;
import com.google.ads.mediation.NetworkExtras;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/mediation/admob/AdMobExtras.class */
public final class AdMobExtras implements NetworkExtras {
    public final Bundle mExtras;

    public AdMobExtras(Bundle bundle) {
        this.mExtras = bundle != null ? new Bundle(bundle) : null;
    }

    public final Bundle getExtras() {
        return this.mExtras;
    }
}
