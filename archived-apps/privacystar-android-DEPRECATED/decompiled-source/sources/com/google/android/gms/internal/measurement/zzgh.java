package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzgh.class */
public final class zzgh extends zzza<zzgh> {
    public zzgi[] zzawy = zzgi.zzms();

    public zzgh() {
        this.zzcfc = null;
        this.zzcfm = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgh)) {
            return false;
        }
        zzgh zzghVar = (zzgh) obj;
        if (!zzze.equals(this.zzawy, zzghVar.zzawy)) {
            return false;
        }
        return (this.zzcfc == null || this.zzcfc.isEmpty()) ? zzghVar.zzcfc == null || zzghVar.zzcfc.isEmpty() : this.zzcfc.equals(zzghVar.zzcfc);
    }

    public final int hashCode() {
        int hashCode = getClass().getName().hashCode();
        return ((((hashCode + 527) * 31) + zzze.hashCode(this.zzawy)) * 31) + ((this.zzcfc == null || this.zzcfc.isEmpty()) ? 0 : this.zzcfc.hashCode());
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
                int length = this.zzawy == null ? 0 : this.zzawy.length;
                zzgi[] zzgiVarArr = new zzgi[zzb + length];
                int i = length;
                if (length != 0) {
                    System.arraycopy(this.zzawy, 0, zzgiVarArr, 0, length);
                    i = length;
                }
                while (i < zzgiVarArr.length - 1) {
                    zzgiVarArr[i] = new zzgi();
                    zzyxVar.zza(zzgiVarArr[i]);
                    zzyxVar.zzug();
                    i++;
                }
                zzgiVarArr[i] = new zzgi();
                zzyxVar.zza(zzgiVarArr[i]);
                this.zzawy = zzgiVarArr;
            } else if (!super.zza(zzyxVar, zzug)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final void zza(zzyy zzyyVar) throws IOException {
        if (this.zzawy != null && this.zzawy.length > 0) {
            for (int i = 0; i < this.zzawy.length; i++) {
                zzgi zzgiVar = this.zzawy[i];
                if (zzgiVar != null) {
                    zzyyVar.zza(1, zzgiVar);
                }
            }
        }
        super.zza(zzyyVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final int zzf() {
        int zzf = super.zzf();
        int i = zzf;
        if (this.zzawy != null) {
            i = zzf;
            if (this.zzawy.length > 0) {
                int i2 = 0;
                while (true) {
                    i = zzf;
                    if (i2 >= this.zzawy.length) {
                        break;
                    }
                    zzgi zzgiVar = this.zzawy[i2];
                    zzf = zzf;
                    if (zzgiVar != null) {
                        zzf += zzyy.zzb(1, zzgiVar);
                    }
                    i2++;
                }
            }
        }
        return i;
    }
}
