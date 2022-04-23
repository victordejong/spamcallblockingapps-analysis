package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.initialization.AdapterStatus;
import com.google.android.gms.ads.initialization.InitializationStatus;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzagy.class */
public final class zzagy implements InitializationStatus {

    /* renamed from: a */
    private final Map<String, AdapterStatus> f10915a;

    public zzagy(Map<String, AdapterStatus> map) {
        this.f10915a = map;
    }

    @Override // com.google.android.gms.ads.initialization.InitializationStatus
    public final Map<String, AdapterStatus> getAdapterStatusMap() {
        return this.f10915a;
    }
}
