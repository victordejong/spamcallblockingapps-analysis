package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzq;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbnw.class */
public final class zzbnw implements zzbqx {

    /* renamed from: a */
    private final Context f12210a;

    /* renamed from: b */
    private final zzczu f12211b;

    /* renamed from: c */
    private final zzazb f12212c;

    /* renamed from: d */
    private final zzavu f12213d;

    /* renamed from: e */
    private final zzceq f12214e;

    public zzbnw(Context context, zzczu zzczuVar, zzazb zzazbVar, zzavu zzavuVar, zzceq zzceqVar) {
        this.f12210a = context;
        this.f12211b = zzczuVar;
        this.f12212c = zzazbVar;
        this.f12213d = zzavuVar;
        this.f12214e = zzceqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbqx
    public final void zzb(zzaqk zzaqkVar) {
        if (((Boolean) zzve.zzoy().zzd(zzzn.zzcmr)).booleanValue()) {
            zzq.zzky().zza(this.f12210a, this.f12212c, this.f12211b.zzgmm, this.f12213d.zzwa());
        }
        this.f12214e.zzall();
    }

    @Override // com.google.android.gms.internal.ads.zzbqx
    public final void zzb(zzczt zzcztVar) {
    }
}
