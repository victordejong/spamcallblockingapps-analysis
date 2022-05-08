package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbs;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfs.class */
public final class zzfs extends zzfw {
    public zzfs(zzei zzeiVar, String str, String str2, zzbs.zza.zzb zzbVar, int i, int i2) {
        super(zzeiVar, str, str2, zzbVar, i, 48);
    }

    @Override // com.google.android.gms.internal.ads.zzfw
    /* renamed from: a */
    protected final void mo3267a() {
        zzbs.zza.zzb zzbVar;
        zzcd zzcdVar;
        this.f14795b.zze(zzcd.ENUM_FAILURE);
        boolean booleanValue = ((Boolean) this.f14796c.invoke(null, this.f14794a.getContext())).booleanValue();
        synchronized (this.f14795b) {
            if (booleanValue) {
                zzbVar = this.f14795b;
                zzcdVar = zzcd.ENUM_TRUE;
            } else {
                zzbVar = this.f14795b;
                zzcdVar = zzcd.ENUM_FALSE;
            }
            zzbVar.zze(zzcdVar);
        }
    }
}
