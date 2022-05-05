package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.initialization.AdapterStatus;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzagv.class */
public final class zzagv implements AdapterStatus {

    /* renamed from: a */
    private final AdapterStatus.State f10912a;

    /* renamed from: b */
    private final String f10913b;

    /* renamed from: c */
    private final int f10914c;

    public zzagv(AdapterStatus.State state, String str, int i) {
        this.f10912a = state;
        this.f10913b = str;
        this.f10914c = i;
    }

    @Override // com.google.android.gms.ads.initialization.AdapterStatus
    public final String getDescription() {
        return this.f10913b;
    }

    @Override // com.google.android.gms.ads.initialization.AdapterStatus
    public final AdapterStatus.State getInitializationState() {
        return this.f10912a;
    }

    @Override // com.google.android.gms.ads.initialization.AdapterStatus
    public final int getLatency() {
        return this.f10914c;
    }
}
