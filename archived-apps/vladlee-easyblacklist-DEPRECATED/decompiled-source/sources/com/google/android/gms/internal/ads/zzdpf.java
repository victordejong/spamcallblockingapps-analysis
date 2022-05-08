package com.google.android.gms.internal.ads;

import java.security.KeyPairGenerator;
import java.security.Provider;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdpf.class */
public final class zzdpf implements zzdpb<KeyPairGenerator> {
    @Override // com.google.android.gms.internal.ads.zzdpb
    public final /* synthetic */ KeyPairGenerator zza(String str, Provider provider) {
        return provider == null ? KeyPairGenerator.getInstance(str) : KeyPairGenerator.getInstance(str, provider);
    }
}
