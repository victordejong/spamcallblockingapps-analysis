package com.google.android.gms.ads.mediation;

import android.os.Bundle;
import com.google.android.gms.ads.AdFormat;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/MediationConfiguration.class */
public class MediationConfiguration {

    /* renamed from: a */
    private final AdFormat f6014a;

    /* renamed from: b */
    private final Bundle f6015b;

    public MediationConfiguration(AdFormat adFormat, Bundle bundle) {
        this.f6014a = adFormat;
        this.f6015b = bundle;
    }

    public AdFormat getFormat() {
        return this.f6014a;
    }

    public Bundle getServerParameters() {
        return this.f6015b;
    }
}
