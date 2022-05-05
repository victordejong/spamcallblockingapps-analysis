package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.internal.ads.zzbs;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfe.class */
public final class zzfe extends zzfw {
    public zzfe(zzei zzeiVar, String str, String str2, zzbs.zza.zzb zzbVar, int i, int i2) {
        super(zzeiVar, str, str2, zzbVar, i, 24);
    }

    /* renamed from: b */
    private final void m3270b() {
        AdvertisingIdClient zzcj = this.f14794a.zzcj();
        if (zzcj != null) {
            try {
                AdvertisingIdClient.Info info = zzcj.getInfo();
                String zzat = zzep.zzat(info.getId());
                if (zzat != null) {
                    synchronized (this.f14795b) {
                        this.f14795b.zzan(zzat);
                        this.f14795b.zzb(info.isLimitAdTrackingEnabled());
                        this.f14795b.zzb(zzbs.zza.zzc.DEVICE_IDENTIFIER_ANDROID_AD_ID);
                    }
                }
            } catch (IOException e) {
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfw
    /* renamed from: a */
    protected final void mo3267a() {
        if (this.f14794a.zzcb()) {
            m3270b();
            return;
        }
        synchronized (this.f14795b) {
            this.f14795b.zzan((String) this.f14796c.invoke(null, this.f14794a.getContext()));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfw, java.util.concurrent.Callable
    public final /* synthetic */ Object call() {
        return call();
    }

    @Override // com.google.android.gms.internal.ads.zzfw
    public final Void zzcp() {
        if (this.f14794a.isInitialized()) {
            return super.call();
        }
        if (!this.f14794a.zzcb()) {
            return null;
        }
        m3270b();
        return null;
    }
}
