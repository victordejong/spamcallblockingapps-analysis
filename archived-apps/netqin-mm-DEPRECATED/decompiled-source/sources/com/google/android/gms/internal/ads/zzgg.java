package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzcf;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgg.class */
public final class zzgg extends zzgm {

    /* renamed from: h */
    public final zzfi f28225h;

    /* renamed from: i */
    public long f28226i;

    public zzgg(zzex zzexVar, String str, String str2, zzcf.zza.C10493zza zzaVar, int i, int i2, zzfi zzfiVar) {
        super(zzexVar, str, str2, zzaVar, i, 53);
        this.f28225h = zzfiVar;
        if (zzfiVar != null) {
            this.f28226i = zzfiVar.m12130c();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgm
    /* renamed from: a */
    public final void mo12118a() throws IllegalAccessException, InvocationTargetException {
        if (this.f28225h != null) {
            this.f28238d.m14500e(((Long) this.f28239e.invoke(null, Long.valueOf(this.f28226i))).longValue());
        }
    }
}
