package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbwk;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbpk.class */
public final class zzbpk implements zzeoy<zzcab<zzbxz>> {

    /* renamed from: a */
    public final zzeph<zzbwk> f25326a;

    public zzbpk(zzbot zzbotVar, zzeph<zzbwk> zzephVar) {
        this.f25326a = zzephVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        final zzbwk zzbwkVar = this.f25326a.get();
        zzcab zzcabVar = new zzcab(new zzbxz(zzbwkVar) { // from class: c.d.b.d.g.a.pc

            /* renamed from: a */
            public final zzbwk f14526a;

            {
                this.f14526a = zzbwkVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbxz
            /* renamed from: n */
            public final void mo14957n() {
                this.f14526a.m14977q();
            }
        }, zzbbz.f24769f);
        zzepe.m12187a(zzcabVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcabVar;
    }
}
