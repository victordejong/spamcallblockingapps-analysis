package com.google.android.gms.measurement.internal;

import android.content.Context;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzco.class */
public class zzco implements zzcq {
    protected final zzbt zzadj;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzco(zzbt zzbtVar) {
        Preconditions.checkNotNull(zzbtVar);
        this.zzadj = zzbtVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzcq
    public Context getContext() {
        return this.zzadj.getContext();
    }

    public void zzaf() {
        this.zzadj.zzgn().zzaf();
    }

    @Override // com.google.android.gms.measurement.internal.zzcq
    public Clock zzbx() {
        return this.zzadj.zzbx();
    }

    public void zzga() {
        this.zzadj.zzga();
    }

    public void zzgb() {
        this.zzadj.zzgb();
    }

    public void zzgc() {
        this.zzadj.zzgn().zzgc();
    }

    public zzx zzgk() {
        return this.zzadj.zzgk();
    }

    public zzan zzgl() {
        return this.zzadj.zzgl();
    }

    public zzfk zzgm() {
        return this.zzadj.zzgm();
    }

    @Override // com.google.android.gms.measurement.internal.zzcq
    public zzbo zzgn() {
        return this.zzadj.zzgn();
    }

    @Override // com.google.android.gms.measurement.internal.zzcq
    public zzap zzgo() {
        return this.zzadj.zzgo();
    }

    public zzba zzgp() {
        return this.zzadj.zzgp();
    }

    public zzn zzgq() {
        return this.zzadj.zzgq();
    }

    @Override // com.google.android.gms.measurement.internal.zzcq
    public zzk zzgr() {
        return this.zzadj.zzgr();
    }
}
