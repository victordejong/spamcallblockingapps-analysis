package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzn.class */
public final class zzn extends zzza<zzn> {
    private static volatile zzn[] zzqc;
    public String name = "";
    private zzp zzqd = null;
    public zzj zzqe = null;

    public zzn() {
        this.zzcfc = null;
        this.zzcfm = -1;
    }

    public static zzn[] zzj() {
        if (zzqc == null) {
            synchronized (zzze.zzcfl) {
                if (zzqc == null) {
                    zzqc = new zzn[0];
                }
            }
        }
        return zzqc;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzn)) {
            return false;
        }
        zzn zznVar = (zzn) obj;
        if (this.name == null) {
            if (zznVar.name != null) {
                return false;
            }
        } else if (!this.name.equals(zznVar.name)) {
            return false;
        }
        if (this.zzqd == null) {
            if (zznVar.zzqd != null) {
                return false;
            }
        } else if (!this.zzqd.equals(zznVar.zzqd)) {
            return false;
        }
        if (this.zzqe == null) {
            if (zznVar.zzqe != null) {
                return false;
            }
        } else if (!this.zzqe.equals(zznVar.zzqe)) {
            return false;
        }
        return (this.zzcfc == null || this.zzcfc.isEmpty()) ? zznVar.zzcfc == null || zznVar.zzcfc.isEmpty() : this.zzcfc.equals(zznVar.zzcfc);
    }

    public final int hashCode() {
        int hashCode = getClass().getName().hashCode();
        int hashCode2 = this.name == null ? 0 : this.name.hashCode();
        zzp zzpVar = this.zzqd;
        int hashCode3 = zzpVar == null ? 0 : zzpVar.hashCode();
        zzj zzjVar = this.zzqe;
        int hashCode4 = zzjVar == null ? 0 : zzjVar.hashCode();
        int i = 0;
        if (this.zzcfc != null) {
            i = this.zzcfc.isEmpty() ? 0 : this.zzcfc.hashCode();
        }
        return ((((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i;
    }

    @Override // com.google.android.gms.internal.measurement.zzzg
    public final /* synthetic */ zzzg zza(zzyx zzyxVar) throws IOException {
        while (true) {
            int zzug = zzyxVar.zzug();
            if (zzug == 0) {
                return this;
            }
            if (zzug == 10) {
                this.name = zzyxVar.readString();
            } else if (zzug == 18) {
                if (this.zzqd == null) {
                    this.zzqd = new zzp();
                }
                zzyxVar.zza(this.zzqd);
            } else if (zzug == 26) {
                if (this.zzqe == null) {
                    this.zzqe = new zzj();
                }
                zzyxVar.zza(this.zzqe);
            } else if (!super.zza(zzyxVar, zzug)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final void zza(zzyy zzyyVar) throws IOException {
        if (this.name != null && !this.name.equals("")) {
            zzyyVar.zzb(1, this.name);
        }
        if (this.zzqd != null) {
            zzyyVar.zza(2, this.zzqd);
        }
        if (this.zzqe != null) {
            zzyyVar.zza(3, this.zzqe);
        }
        super.zza(zzyyVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final int zzf() {
        int zzf = super.zzf();
        int i = zzf;
        if (this.name != null) {
            i = zzf;
            if (!this.name.equals("")) {
                i = zzf + zzyy.zzc(1, this.name);
            }
        }
        int i2 = i;
        if (this.zzqd != null) {
            i2 = i + zzyy.zzb(2, this.zzqd);
        }
        int i3 = i2;
        if (this.zzqe != null) {
            i3 = i2 + zzyy.zzb(3, this.zzqe);
        }
        return i3;
    }
}
