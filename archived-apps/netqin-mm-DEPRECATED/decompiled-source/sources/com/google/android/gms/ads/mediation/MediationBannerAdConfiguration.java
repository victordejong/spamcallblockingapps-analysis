package com.google.android.gms.ads.mediation;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.AdSize;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/MediationBannerAdConfiguration.class */
public class MediationBannerAdConfiguration extends MediationAdConfiguration {

    /* renamed from: g */
    public final AdSize f22856g;

    public MediationBannerAdConfiguration(Context context, String str, Bundle bundle, Bundle bundle2, boolean z, Location location, int i, int i2, String str2, AdSize adSize, String str3) {
        super(context, str, bundle, bundle2, z, location, i, i2, str2, str3);
        this.f22856g = adSize;
    }

    /* renamed from: g */
    public AdSize m17934g() {
        return this.f22856g;
    }
}
