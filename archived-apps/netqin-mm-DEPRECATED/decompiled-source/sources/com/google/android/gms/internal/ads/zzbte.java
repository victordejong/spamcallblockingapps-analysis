package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.zzazp;
import com.google.android.gms.internal.ads.zzbbx;
import com.google.android.gms.internal.ads.zzdnv;
import com.google.android.gms.internal.ads.zzdok;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbte.class */
public final class zzbte implements zzeoy<zzdvu<zzdnv, zzazp>> {

    /* renamed from: a */
    public final zzeph<Context> f25493a;

    /* renamed from: b */
    public final zzeph<zzbbx> f25494b;

    /* renamed from: c */
    public final zzeph<zzdok> f25495c;

    public zzbte(zzeph<Context> zzephVar, zzeph<zzbbx> zzephVar2, zzeph<zzdok> zzephVar3) {
        this.f25493a = zzephVar;
        this.f25494b = zzephVar2;
        this.f25495c = zzephVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        final Context context = this.f25493a.get();
        final zzbbx zzbbxVar = this.f25494b.get();
        final zzdok zzdokVar = this.f25495c.get();
        zzdvu hdVar = new zzdvu(context, zzbbxVar, zzdokVar) { // from class: c.d.b.d.g.a.hd

            /* renamed from: a */
            public final Context f13450a;

            /* renamed from: b */
            public final zzbbx f13451b;

            /* renamed from: c */
            public final zzdok f13452c;

            {
                this.f13450a = context;
                this.f13451b = zzbbxVar;
                this.f13452c = zzdokVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdvu
            public final Object apply(Object obj) {
                Context context2 = this.f13450a;
                zzbbx zzbbxVar2 = this.f13451b;
                zzdok zzdokVar2 = this.f13452c;
                zzdnv zzdnvVar = (zzdnv) obj;
                zzazp zzazpVar = new zzazp(context2);
                zzazpVar.m16007c(zzdnvVar.f27554A);
                zzazpVar.m16005d(zzdnvVar.f27555B.toString());
                zzazpVar.m16009b(zzbbxVar2.f24759a);
                zzazpVar.m16013a(zzdokVar2.f27644f);
                return zzazpVar;
            }
        };
        zzepe.m12187a(hdVar, "Cannot return null from a non-@Nullable @Provides method");
        return hdVar;
    }
}
