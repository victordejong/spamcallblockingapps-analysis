package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzp;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbwh.class */
public final class zzbwh implements zzeoy<zzbwa> {

    /* renamed from: a */
    public final zzeph<Set<zzcab<zzp>>> f25576a;

    public zzbwh(zzeph<Set<zzcab<zzp>>> zzephVar) {
        this.f25576a = zzephVar;
    }

    /* renamed from: a */
    public static zzbwh m14982a(zzeph<Set<zzcab<zzp>>> zzephVar) {
        return new zzbwh(zzephVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzbwa(this.f25576a.get());
    }
}
