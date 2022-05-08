package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzrq.class */
public final class zzrq extends zzza<zzrq> {
    public long zzbps = 0;
    public zzl zzqg = null;
    public zzo zzbpt = null;

    public zzrq() {
        this.zzcfc = null;
        this.zzcfm = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzrq)) {
            return false;
        }
        zzrq zzrqVar = (zzrq) obj;
        if (this.zzbps != zzrqVar.zzbps) {
            return false;
        }
        if (this.zzqg == null) {
            if (zzrqVar.zzqg != null) {
                return false;
            }
        } else if (!this.zzqg.equals(zzrqVar.zzqg)) {
            return false;
        }
        if (this.zzbpt == null) {
            if (zzrqVar.zzbpt != null) {
                return false;
            }
        } else if (!this.zzbpt.equals(zzrqVar.zzbpt)) {
            return false;
        }
        return (this.zzcfc == null || this.zzcfc.isEmpty()) ? zzrqVar.zzcfc == null || zzrqVar.zzcfc.isEmpty() : this.zzcfc.equals(zzrqVar.zzcfc);
    }

    public final int hashCode() {
        int hashCode = getClass().getName().hashCode();
        int i = (int) (this.zzbps ^ (this.zzbps >>> 32));
        zzl zzlVar = this.zzqg;
        int hashCode2 = zzlVar == null ? 0 : zzlVar.hashCode();
        zzo zzoVar = this.zzbpt;
        int hashCode3 = zzoVar == null ? 0 : zzoVar.hashCode();
        int i2 = 0;
        if (this.zzcfc != null) {
            i2 = this.zzcfc.isEmpty() ? 0 : this.zzcfc.hashCode();
        }
        return ((((((((hashCode + 527) * 31) + i) * 31) + hashCode2) * 31) + hashCode3) * 31) + i2;
    }

    @Override // com.google.android.gms.internal.measurement.zzzg
    public final /* synthetic */ zzzg zza(zzyx zzyxVar) throws IOException {
        while (true) {
            int zzug = zzyxVar.zzug();
            if (zzug == 0) {
                return this;
            }
            if (zzug == 8) {
                this.zzbps = zzyxVar.zzuz();
            } else if (zzug == 18) {
                if (this.zzqg == null) {
                    this.zzqg = new zzl();
                }
                zzyxVar.zza(this.zzqg);
            } else if (zzug == 26) {
                if (this.zzbpt == null) {
                    this.zzbpt = new zzo();
                }
                zzyxVar.zza(this.zzbpt);
            } else if (!super.zza(zzyxVar, zzug)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final void zza(zzyy zzyyVar) throws IOException {
        zzyyVar.zzi(1, this.zzbps);
        if (this.zzqg != null) {
            zzyyVar.zza(2, this.zzqg);
        }
        if (this.zzbpt != null) {
            zzyyVar.zza(3, this.zzbpt);
        }
        super.zza(zzyyVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final int zzf() {
        int zzf = super.zzf() + zzyy.zzd(1, this.zzbps);
        int i = zzf;
        if (this.zzqg != null) {
            i = zzf + zzyy.zzb(2, this.zzqg);
        }
        int i2 = i;
        if (this.zzbpt != null) {
            i2 = i + zzyy.zzb(3, this.zzbpt);
        }
        return i2;
    }
}
