package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbs;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfm.class */
public final class zzfm extends zzfw {

    /* renamed from: d */
    private List<Long> f14778d = null;

    public zzfm(zzei zzeiVar, String str, String str2, zzbs.zza.zzb zzbVar, int i, int i2) {
        super(zzeiVar, str, str2, zzbVar, i, 31);
    }

    @Override // com.google.android.gms.internal.ads.zzfw
    /* renamed from: a */
    protected final void mo3267a() {
        this.f14795b.zzax(-1L);
        this.f14795b.zzay(-1L);
        if (this.f14778d == null) {
            this.f14778d = (List) this.f14796c.invoke(null, this.f14794a.getContext());
        }
        List<Long> list = this.f14778d;
        if (list != null && list.size() == 2) {
            synchronized (this.f14795b) {
                this.f14795b.zzax(this.f14778d.get(0).longValue());
                this.f14795b.zzay(this.f14778d.get(1).longValue());
            }
        }
    }
}
