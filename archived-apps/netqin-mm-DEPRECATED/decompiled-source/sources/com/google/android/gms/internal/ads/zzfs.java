package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzcf;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfs.class */
public final class zzfs extends zzgm {

    /* renamed from: h */
    public long f28213h;

    public zzfs(zzex zzexVar, String str, String str2, zzcf.zza.C10493zza zzaVar, long j, int i, int i2) {
        super(zzexVar, str, str2, zzaVar, i, 25);
        this.f28213h = j;
    }

    @Override // com.google.android.gms.internal.ads.zzgm
    /* renamed from: a */
    public final void mo12118a() throws IllegalAccessException, InvocationTargetException {
        long longValue = ((Long) this.f28239e.invoke(null, new Object[0])).longValue();
        synchronized (this.f28238d) {
            this.f28238d.m14488k(longValue);
            if (this.f28213h != 0) {
                this.f28238d.m14478t(longValue - this.f28213h);
                this.f28238d.m14475w(this.f28213h);
            }
        }
    }
}
