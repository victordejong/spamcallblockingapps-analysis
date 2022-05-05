package com.google.android.gms.internal.ads;

import java.security.Provider;
import javax.crypto.Cipher;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdpa.class */
public final class zzdpa implements zzdpb<Cipher> {
    @Override // com.google.android.gms.internal.ads.zzdpb
    public final /* synthetic */ Cipher zza(String str, Provider provider) {
        return provider == null ? Cipher.getInstance(str) : Cipher.getInstance(str, provider);
    }
}
