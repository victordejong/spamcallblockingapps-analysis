package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzey.class */
public class zzey extends zzco implements zzcq {
    protected final zzfa zzamz;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzey(zzfa zzfaVar) {
        super(zzfaVar.zzmb());
        Preconditions.checkNotNull(zzfaVar);
        this.zzamz = zzfaVar;
    }

    public zzfg zzjo() {
        return this.zzamz.zzjo();
    }

    public zzj zzjp() {
        return this.zzamz.zzjp();
    }

    public zzq zzjq() {
        return this.zzamz.zzjq();
    }
}
