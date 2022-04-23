package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzo;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbqm.class */
public final class zzbqm implements zzdxg<zzbqj> {

    /* renamed from: a */
    private final zzdxp<Set<zzbsu<zzo>>> f12264a;

    private zzbqm(zzdxp<Set<zzbsu<zzo>>> zzdxpVar) {
        this.f12264a = zzdxpVar;
    }

    public static zzbqm zzn(zzdxp<Set<zzbsu<zzo>>> zzdxpVar) {
        return new zzbqm(zzdxpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzbqj(this.f12264a.get());
    }
}
