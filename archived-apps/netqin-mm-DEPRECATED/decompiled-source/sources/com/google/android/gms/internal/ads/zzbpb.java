package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzbbx;
import com.google.android.gms.internal.ads.zzdnv;
import com.google.android.gms.internal.ads.zzdok;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbpb.class */
public final class zzbpb implements zzeoy<zzcab<zzbvs>> {

    /* renamed from: a */
    public final zzbot f25308a;

    /* renamed from: b */
    public final zzeph<Context> f25309b;

    /* renamed from: c */
    public final zzeph<zzbbx> f25310c;

    /* renamed from: d */
    public final zzeph<zzdnv> f25311d;

    /* renamed from: e */
    public final zzeph<zzdok> f25312e;

    public zzbpb(zzbot zzbotVar, zzeph<Context> zzephVar, zzeph<zzbbx> zzephVar2, zzeph<zzdnv> zzephVar3, zzeph<zzdok> zzephVar4) {
        this.f25308a = zzbotVar;
        this.f25309b = zzephVar;
        this.f25310c = zzephVar2;
        this.f25311d = zzephVar3;
        this.f25312e = zzephVar4;
    }

    /* renamed from: a */
    public static zzcab<zzbvs> m15218a(zzbot zzbotVar, final Context context, final zzbbx zzbbxVar, final zzdnv zzdnvVar, final zzdok zzdokVar) {
        zzcab<zzbvs> zzcabVar = new zzcab<>(new zzbvs(context, zzbbxVar, zzdnvVar, zzdokVar) { // from class: c.d.b.d.g.a.qc

            /* renamed from: a */
            public final Context f14792a;

            /* renamed from: b */
            public final zzbbx f14793b;

            /* renamed from: c */
            public final zzdnv f14794c;

            /* renamed from: d */
            public final zzdok f14795d;

            {
                this.f14792a = context;
                this.f14793b = zzbbxVar;
                this.f14794c = zzdnvVar;
                this.f14795d = zzdokVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbvs
            /* renamed from: x */
            public final void mo13495x() {
                zzp.m17959m().m15997b(this.f14792a, this.f14793b.f24759a, this.f14794c.f27555B.toString(), this.f14795d.f27644f);
            }
        }, zzbbz.f24769f);
        zzepe.m12187a(zzcabVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcabVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return m15218a(this.f25308a, this.f25309b.get(), this.f25310c.get(), this.f25311d.get(), this.f25312e.get());
    }
}
