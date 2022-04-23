package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbs;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfo.class */
public final class zzfo extends zzfw {

    /* renamed from: d */
    private final StackTraceElement[] f14779d;

    public zzfo(zzei zzeiVar, String str, String str2, zzbs.zza.zzb zzbVar, int i, int i2, StackTraceElement[] stackTraceElementArr) {
        super(zzeiVar, str, str2, zzbVar, i, 45);
        this.f14779d = stackTraceElementArr;
    }

    @Override // com.google.android.gms.internal.ads.zzfw
    /* renamed from: a */
    protected final void mo3267a() {
        zzbs.zza.zzb zzbVar;
        zzcd zzcdVar;
        if (this.f14779d != null) {
            zzeg zzegVar = new zzeg((String) this.f14796c.invoke(null, this.f14779d));
            synchronized (this.f14795b) {
                this.f14795b.zzbi(zzegVar.zzxh.longValue());
                if (zzegVar.zzxi.booleanValue()) {
                    zzbVar = this.f14795b;
                    zzcdVar = zzegVar.zzxj.booleanValue() ? zzcd.ENUM_FALSE : zzcd.ENUM_TRUE;
                } else {
                    zzbVar = this.f14795b;
                    zzcdVar = zzcd.ENUM_FAILURE;
                }
                zzbVar.zzg(zzcdVar);
            }
        }
    }
}
