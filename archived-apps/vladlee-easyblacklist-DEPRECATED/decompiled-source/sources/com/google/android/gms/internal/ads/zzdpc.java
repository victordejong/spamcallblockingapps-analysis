package com.google.android.gms.internal.ads;

import java.security.KeyFactory;
import java.security.Provider;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdpc.class */
public final class zzdpc implements zzdpb<KeyFactory> {
    @Override // com.google.android.gms.internal.ads.zzdpb
    public final /* synthetic */ KeyFactory zza(String str, Provider provider) {
        return provider == null ? KeyFactory.getInstance(str) : KeyFactory.getInstance(str, provider);
    }
}
