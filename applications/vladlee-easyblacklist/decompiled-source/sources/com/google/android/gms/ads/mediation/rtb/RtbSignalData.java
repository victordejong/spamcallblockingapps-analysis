package com.google.android.gms.ads.mediation.rtb;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/rtb/RtbSignalData.class */
public class RtbSignalData {

    /* renamed from: a */
    private final Context f6071a;

    /* renamed from: b */
    private final List<MediationConfiguration> f6072b;

    /* renamed from: c */
    private final Bundle f6073c;

    /* renamed from: d */
    private final AdSize f6074d;

    public RtbSignalData(Context context, List<MediationConfiguration> list, Bundle bundle, AdSize adSize) {
        this.f6071a = context;
        this.f6072b = list;
        this.f6073c = bundle;
        this.f6074d = adSize;
    }

    public AdSize getAdSize() {
        return this.f6074d;
    }

    @Deprecated
    public MediationConfiguration getConfiguration() {
        List<MediationConfiguration> list = this.f6072b;
        if (list == null || list.size() <= 0) {
            return null;
        }
        return this.f6072b.get(0);
    }

    public List<MediationConfiguration> getConfigurations() {
        return this.f6072b;
    }

    public Context getContext() {
        return this.f6071a;
    }

    public Bundle getNetworkExtras() {
        return this.f6073c;
    }
}
