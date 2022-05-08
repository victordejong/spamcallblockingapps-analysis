package com.google.android.gms.internal.ads;

import java.security.Provider;
import javax.crypto.Mac;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdpe.class */
public final class zzdpe implements zzdpb<Mac> {
    @Override // com.google.android.gms.internal.ads.zzdpb
    public final /* synthetic */ Mac zza(String str, Provider provider) {
        return provider == null ? Mac.getInstance(str) : Mac.getInstance(str, provider);
    }
}
