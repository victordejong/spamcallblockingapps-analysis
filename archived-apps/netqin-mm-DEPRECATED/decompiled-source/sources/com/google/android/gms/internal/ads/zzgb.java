package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzcf;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgb.class */
public final class zzgb extends zzgm {

    /* renamed from: h */
    public final boolean f28220h;

    public zzgb(zzex zzexVar, String str, String str2, zzcf.zza.C10493zza zzaVar, int i, int i2) {
        super(zzexVar, str, str2, zzaVar, i, 61);
        this.f28220h = zzexVar.m12161d();
    }

    @Override // com.google.android.gms.internal.ads.zzgm
    /* renamed from: a */
    public final void mo12118a() throws IllegalAccessException, InvocationTargetException {
        long longValue = ((Long) this.f28239e.invoke(null, this.f28235a.m12177a(), Boolean.valueOf(this.f28220h))).longValue();
        synchronized (this.f28238d) {
            this.f28238d.m14493h(longValue);
        }
    }
}
