package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.internal.ads.zzbs;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfr.class */
public final class zzfr extends zzfw {

    /* renamed from: d */
    private final View f14784d;

    public zzfr(zzei zzeiVar, String str, String str2, zzbs.zza.zzb zzbVar, int i, int i2, View view) {
        super(zzeiVar, str, str2, zzbVar, i, 57);
        this.f14784d = view;
    }

    @Override // com.google.android.gms.internal.ads.zzfw
    /* renamed from: a */
    protected final void mo3267a() {
        if (this.f14784d != null) {
            Boolean bool = (Boolean) zzve.zzoy().zzd(zzzn.zzclp);
            zzes zzesVar = new zzes((String) this.f14796c.invoke(null, this.f14784d, this.f14794a.getContext().getResources().getDisplayMetrics(), bool));
            zzbs.zza.zzf.C3494zza zzat = zzbs.zza.zzf.zzat();
            zzat.zzdc(zzesVar.zzzf.longValue()).zzdd(zzesVar.zzzg.longValue()).zzde(zzesVar.zzzh.longValue());
            if (bool.booleanValue()) {
                zzat.zzdf(zzesVar.zzzi.longValue());
            }
            this.f14795b.zzb((zzbs.zza.zzf) ((zzdrt) zzat.zzbaf()));
        }
    }
}
