package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.doubleclick.AppEventListener;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcek.class */
public final class zzcek implements zzdxg<Set<zzbsu<AppEventListener>>> {

    /* renamed from: a */
    private final zzcee f13035a;

    /* renamed from: b */
    private final zzdxp<zzceo> f13036b;

    /* renamed from: c */
    private final zzdxp<Executor> f13037c;

    private zzcek(zzcee zzceeVar, zzdxp<zzceo> zzdxpVar, zzdxp<Executor> zzdxpVar2) {
        this.f13035a = zzceeVar;
        this.f13036b = zzdxpVar;
        this.f13037c = zzdxpVar2;
    }

    public static zzcek zzf(zzcee zzceeVar, zzdxp<zzceo> zzdxpVar, zzdxp<Executor> zzdxpVar2) {
        return new zzcek(zzceeVar, zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (Set) zzdxm.zza(zzcee.zzb(this.f13036b.get(), this.f13037c.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
