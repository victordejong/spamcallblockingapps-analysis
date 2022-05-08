package com.google.android.gms.internal.ads;

import java.security.Provider;
import java.security.Signature;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdpg.class */
public final class zzdpg implements zzdpb<Signature> {
    @Override // com.google.android.gms.internal.ads.zzdpb
    public final /* synthetic */ Signature zza(String str, Provider provider) {
        return provider == null ? Signature.getInstance(str) : Signature.getInstance(str, provider);
    }
}
