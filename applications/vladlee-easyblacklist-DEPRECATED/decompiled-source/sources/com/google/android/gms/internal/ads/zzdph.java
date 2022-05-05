package com.google.android.gms.internal.ads;

import java.security.MessageDigest;
import java.security.Provider;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdph.class */
public final class zzdph implements zzdpb<MessageDigest> {
    @Override // com.google.android.gms.internal.ads.zzdpb
    public final /* synthetic */ MessageDigest zza(String str, Provider provider) {
        return provider == null ? MessageDigest.getInstance(str) : MessageDigest.getInstance(str, provider);
    }
}
