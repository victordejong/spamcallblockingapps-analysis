package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.doubleclick.AppEventListener;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbrc.class */
public final class zzbrc implements zzdxg<zzbra> {

    /* renamed from: a */
    private final zzdxp<Set<zzbsu<AppEventListener>>> f12272a;

    private zzbrc(zzdxp<Set<zzbsu<AppEventListener>>> zzdxpVar) {
        this.f12272a = zzdxpVar;
    }

    public static zzbrc zzp(zzdxp<Set<zzbsu<AppEventListener>>> zzdxpVar) {
        return new zzbrc(zzdxpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzbra(this.f12272a.get());
    }
}
