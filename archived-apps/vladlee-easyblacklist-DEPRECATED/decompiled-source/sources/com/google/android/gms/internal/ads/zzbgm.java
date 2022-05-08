package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbgm.class */
public final class zzbgm implements zzdxg<zzaqy> {

    /* renamed from: a */
    private final zzdxp<Context> f11838a;

    public zzbgm(zzdxp<Context> zzdxpVar) {
        this.f11838a = zzdxpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        Context context = this.f11838a.get();
        return (zzaqy) zzdxm.zza(new zzaqw(context, new zzard(context).zztz()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
