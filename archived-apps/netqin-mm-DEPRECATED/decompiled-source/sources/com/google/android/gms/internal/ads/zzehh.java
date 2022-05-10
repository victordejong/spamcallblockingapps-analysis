package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.Provider;
import javax.crypto.Mac;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzehh.class */
public final class zzehh implements zzehe<Mac> {
    @Override // com.google.android.gms.internal.ads.zzehe
    /* renamed from: a */
    public final /* synthetic */ Mac mo12559a(String str, Provider provider) throws GeneralSecurityException {
        return provider == null ? Mac.getInstance(str) : Mac.getInstance(str, provider);
    }
}
