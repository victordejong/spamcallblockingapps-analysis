package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzo.class */
public final class zzo extends zzza<zzo> {
    public zzn[] zzqf = zzn.zzj();
    public zzl zzqg = null;
    public String zzqh = "";

    public zzo() {
        this.zzcfc = null;
        this.zzcfm = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzo)) {
            return false;
        }
        zzo zzoVar = (zzo) obj;
        if (!zzze.equals(this.zzqf, zzoVar.zzqf)) {
            return false;
        }
        if (this.zzqg == null) {
            if (zzoVar.zzqg != null) {
                return false;
            }
        } else if (!this.zzqg.equals(zzoVar.zzqg)) {
            return false;
        }
        if (this.zzqh == null) {
            if (zzoVar.zzqh != null) {
                return false;
            }
        } else if (!this.zzqh.equals(zzoVar.zzqh)) {
            return false;
        }
        return (this.zzcfc == null || this.zzcfc.isEmpty()) ? zzoVar.zzcfc == null || zzoVar.zzcfc.isEmpty() : this.zzcfc.equals(zzoVar.zzcfc);
    }

    public final int hashCode() {
        int hashCode = getClass().getName().hashCode();
        int hashCode2 = zzze.hashCode(this.zzqf);
        zzl zzlVar = this.zzqg;
        int hashCode3 = zzlVar == null ? 0 : zzlVar.hashCode();
        int hashCode4 = this.zzqh == null ? 0 : this.zzqh.hashCode();
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
                int zzb = zzzj.zzb(zzyxVar, 10);
                int length = this.zzqf == null ? 0 : this.zzqf.length;
                zzn[] zznVarArr = new zzn[zzb + length];
                int i = length;
                if (length != 0) {
                    System.arraycopy(this.zzqf, 0, zznVarArr, 0, length);
                    i = length;
                }
                while (i < zznVarArr.length - 1) {
                    zznVarArr[i] = new zzn();
                    zzyxVar.zza(zznVarArr[i]);
                    zzyxVar.zzug();
                    i++;
                }
                zznVarArr[i] = new zzn();
                zzyxVar.zza(zznVarArr[i]);
                this.zzqf = zznVarArr;
            } else if (zzug == 18) {
                if (this.zzqg == null) {
                    this.zzqg = new zzl();
                }
                zzyxVar.zza(this.zzqg);
            } else if (zzug == 26) {
                this.zzqh = zzyxVar.readString();
            } else if (!super.zza(zzyxVar, zzug)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final void zza(zzyy zzyyVar) throws IOException {
        if (this.zzqf != null && this.zzqf.length > 0) {
            for (int i = 0; i < this.zzqf.length; i++) {
                zzn zznVar = this.zzqf[i];
                if (zznVar != null) {
                    zzyyVar.zza(1, zznVar);
                }
            }
        }
        if (this.zzqg != null) {
            zzyyVar.zza(2, this.zzqg);
        }
        if (this.zzqh != null && !this.zzqh.equals("")) {
            zzyyVar.zzb(3, this.zzqh);
        }
        super.zza(zzyyVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final int zzf() {
        int zzf = super.zzf();
        int i = zzf;
        if (this.zzqf != null) {
            i = zzf;
            if (this.zzqf.length > 0) {
                int i2 = 0;
                while (true) {
                    i = zzf;
                    if (i2 >= this.zzqf.length) {
                        break;
                    }
                    zzn zznVar = this.zzqf[i2];
                    zzf = zzf;
                    if (zznVar != null) {
                        zzf += zzyy.zzb(1, zznVar);
                    }
                    i2++;
                }
            }
        }
        int i3 = i;
        if (this.zzqg != null) {
            i3 = i + zzyy.zzb(2, this.zzqg);
        }
        int i4 = i3;
        if (this.zzqh != null) {
            i4 = i3;
            if (!this.zzqh.equals("")) {
                i4 = i3 + zzyy.zzc(3, this.zzqh);
            }
        }
        return i4;
    }
}
