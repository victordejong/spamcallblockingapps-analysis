package com.google.android.gms.internal.icing;

import com.google.android.gms.common.util.VisibleForTesting;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzy.class */
public final class zzy {
    private zzj zzaj;
    private zzg zzan;
    private long zzak = -1;
    private int zzal = -1;
    private int zzap = -1;
    private boolean zzao = false;
    private int zzaq = 0;

    public final zzy zza(long j) {
        this.zzak = j;
        return this;
    }

    public final zzy zza(zzg zzgVar) {
        this.zzan = zzgVar;
        return this;
    }

    public final zzy zza(zzj zzjVar) {
        this.zzaj = zzjVar;
        return this;
    }

    public final zzy zzb(int i) {
        this.zzal = i;
        return this;
    }

    public final zzx zzc() {
        return new zzx(this.zzaj, this.zzak, this.zzal, null, this.zzan, this.zzao, this.zzap, this.zzaq);
    }

    public final zzy zzc(int i) {
        this.zzaq = i;
        return this;
    }

    public final zzy zzd(boolean z) {
        this.zzao = z;
        return this;
    }
}
