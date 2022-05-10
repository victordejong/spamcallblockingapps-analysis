package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzcf;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgi.class */
public final class zzgi extends zzgm {
    public zzgi(zzex zzexVar, String str, String str2, zzcf.zza.C10493zza zzaVar, int i, int i2) {
        super(zzexVar, str, str2, zzaVar, i, 48);
    }

    @Override // com.google.android.gms.internal.ads.zzgm
    /* renamed from: a */
    public final void mo12118a() throws IllegalAccessException, InvocationTargetException {
        this.f28238d.m14513a(zzcn.ENUM_FAILURE);
        boolean booleanValue = ((Boolean) this.f28239e.invoke(null, this.f28235a.m12177a())).booleanValue();
        synchronized (this.f28238d) {
            if (booleanValue) {
                this.f28238d.m14513a(zzcn.ENUM_TRUE);
            } else {
                this.f28238d.m14513a(zzcn.ENUM_FALSE);
            }
        }
    }
}
