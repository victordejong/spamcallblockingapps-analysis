package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.reward.AdMetadataListener;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbvx.class */
public final class zzbvx implements zzeoy<zzbvv> {

    /* renamed from: a */
    public final zzeph<Set<zzcab<AdMetadataListener>>> f25572a;

    public zzbvx(zzeph<Set<zzcab<AdMetadataListener>>> zzephVar) {
        this.f25572a = zzephVar;
    }

    /* renamed from: a */
    public static zzbvx m15010a(zzeph<Set<zzcab<AdMetadataListener>>> zzephVar) {
        return new zzbvx(zzephVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzbvv(this.f25572a.get());
    }
}
