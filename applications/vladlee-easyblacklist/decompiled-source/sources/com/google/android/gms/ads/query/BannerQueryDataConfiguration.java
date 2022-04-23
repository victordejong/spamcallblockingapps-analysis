package com.google.android.gms.ads.query;

import android.content.Context;
import com.google.android.gms.ads.AdSize;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/query/BannerQueryDataConfiguration.class */
public class BannerQueryDataConfiguration extends QueryDataConfiguration {

    /* renamed from: a */
    private final AdSize f6077a;

    public BannerQueryDataConfiguration(Context context, String str, AdSize adSize) {
        super(context, str);
        this.f6077a = adSize;
    }

    public AdSize getAdSize() {
        return this.f6077a;
    }
}
