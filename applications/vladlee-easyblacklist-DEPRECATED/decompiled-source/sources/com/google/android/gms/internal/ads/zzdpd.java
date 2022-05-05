package com.google.android.gms.internal.ads;

import java.security.Provider;
import javax.crypto.KeyAgreement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdpd.class */
public final class zzdpd implements zzdpb<KeyAgreement> {
    @Override // com.google.android.gms.internal.ads.zzdpb
    public final /* synthetic */ KeyAgreement zza(String str, Provider provider) {
        return provider == null ? KeyAgreement.getInstance(str) : KeyAgreement.getInstance(str, provider);
    }
}
