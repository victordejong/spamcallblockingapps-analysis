package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.doubleclick.AppEventListener;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbsb.class */
public final class zzbsb implements zzdxg<Set<zzbsu<AppEventListener>>> {

    /* renamed from: a */
    private final zzbrm f12355a;

    private zzbsb(zzbrm zzbrmVar) {
        this.f12355a = zzbrmVar;
    }

    public static zzbsb zzs(zzbrm zzbrmVar) {
        return new zzbsb(zzbrmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (Set) zzdxm.zza(this.f12355a.zzahr(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
