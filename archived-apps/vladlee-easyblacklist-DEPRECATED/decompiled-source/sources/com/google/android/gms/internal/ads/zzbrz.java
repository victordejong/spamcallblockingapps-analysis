package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.reward.AdMetadataListener;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbrz.class */
public final class zzbrz implements zzdxg<Set<zzbsu<AdMetadataListener>>> {

    /* renamed from: a */
    private final zzbrm f12308a;

    private zzbrz(zzbrm zzbrmVar) {
        this.f12308a = zzbrmVar;
    }

    public static zzbrz zzp(zzbrm zzbrmVar) {
        return new zzbrz(zzbrmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (Set) zzdxm.zza(this.f12308a.zzahq(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
