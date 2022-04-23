package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.reward.AdMetadataListener;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbqc.class */
public final class zzbqc implements zzdxg<zzbqa> {

    /* renamed from: a */
    private final zzdxp<Set<zzbsu<AdMetadataListener>>> f12262a;

    private zzbqc(zzdxp<Set<zzbsu<AdMetadataListener>>> zzdxpVar) {
        this.f12262a = zzdxpVar;
    }

    public static zzbqc zzl(zzdxp<Set<zzbsu<AdMetadataListener>>> zzdxpVar) {
        return new zzbqc(zzdxpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzbqa(this.f12262a.get());
    }
}
