package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.Provider;
import java.security.Signature;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzehj.class */
public final class zzehj implements zzehe<Signature> {
    @Override // com.google.android.gms.internal.ads.zzehe
    /* renamed from: a */
    public final /* synthetic */ Signature mo12559a(String str, Provider provider) throws GeneralSecurityException {
        return provider == null ? Signature.getInstance(str) : Signature.getInstance(str, provider);
    }
}
