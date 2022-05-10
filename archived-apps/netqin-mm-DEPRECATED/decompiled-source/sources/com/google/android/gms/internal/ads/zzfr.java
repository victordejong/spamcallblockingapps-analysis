package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.internal.ads.zzcf;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfr.class */
public final class zzfr extends zzgm {
    public zzfr(zzex zzexVar, String str, String str2, zzcf.zza.C10493zza zzaVar, int i, int i2) {
        super(zzexVar, str, str2, zzaVar, i, 24);
    }

    @Override // com.google.android.gms.internal.ads.zzgm
    /* renamed from: a */
    public final void mo12118a() throws IllegalAccessException, InvocationTargetException {
        if (this.f28235a.m12156i()) {
            m12125c();
            return;
        }
        synchronized (this.f28238d) {
            this.f28238d.m14504c((String) this.f28239e.invoke(null, this.f28235a.m12177a()));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgm
    /* renamed from: b */
    public final Void call() throws Exception {
        if (this.f28235a.m12166b()) {
            return super.call();
        }
        if (!this.f28235a.m12156i()) {
            return null;
        }
        m12125c();
        return null;
    }

    /* renamed from: c */
    public final void m12125c() {
        AdvertisingIdClient q = this.f28235a.m12148q();
        if (q != null) {
            try {
                AdvertisingIdClient.Info info = q.getInfo();
                String a = zzfg.m12139a(info.getId());
                if (a != null) {
                    synchronized (this.f28238d) {
                        this.f28238d.m14504c(a);
                        this.f28238d.m14511a(info.isLimitAdTrackingEnabled());
                        this.f28238d.m14516a(zzcf.zza.zzc.DEVICE_IDENTIFIER_ANDROID_AD_ID);
                    }
                }
            } catch (IOException e) {
            }
        }
    }
}
