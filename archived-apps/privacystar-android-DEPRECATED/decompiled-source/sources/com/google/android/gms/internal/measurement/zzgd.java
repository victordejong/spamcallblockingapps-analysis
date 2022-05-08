package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzgd.class */
public final class zzgd extends zzza<zzgd> {
    private static volatile zzgd[] zzawl;
    public Integer zzauy = null;
    public zzgj zzawm = null;
    public zzgj zzawn = null;
    public Boolean zzawo = null;

    public zzgd() {
        this.zzcfc = null;
        this.zzcfm = -1;
    }

    public static zzgd[] zzmo() {
        if (zzawl == null) {
            synchronized (zzze.zzcfl) {
                if (zzawl == null) {
                    zzawl = new zzgd[0];
                }
            }
        }
        return zzawl;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgd)) {
            return false;
        }
        zzgd zzgdVar = (zzgd) obj;
        if (this.zzauy == null) {
            if (zzgdVar.zzauy != null) {
                return false;
            }
        } else if (!this.zzauy.equals(zzgdVar.zzauy)) {
            return false;
        }
        if (this.zzawm == null) {
            if (zzgdVar.zzawm != null) {
                return false;
            }
        } else if (!this.zzawm.equals(zzgdVar.zzawm)) {
            return false;
        }
        if (this.zzawn == null) {
            if (zzgdVar.zzawn != null) {
                return false;
            }
        } else if (!this.zzawn.equals(zzgdVar.zzawn)) {
            return false;
        }
        if (this.zzawo == null) {
            if (zzgdVar.zzawo != null) {
                return false;
            }
        } else if (!this.zzawo.equals(zzgdVar.zzawo)) {
            return false;
        }
        return (this.zzcfc == null || this.zzcfc.isEmpty()) ? zzgdVar.zzcfc == null || zzgdVar.zzcfc.isEmpty() : this.zzcfc.equals(zzgdVar.zzcfc);
    }

    public final int hashCode() {
        int hashCode = getClass().getName().hashCode();
        int hashCode2 = this.zzauy == null ? 0 : this.zzauy.hashCode();
        zzgj zzgjVar = this.zzawm;
        int hashCode3 = zzgjVar == null ? 0 : zzgjVar.hashCode();
        zzgj zzgjVar2 = this.zzawn;
        int hashCode4 = zzgjVar2 == null ? 0 : zzgjVar2.hashCode();
        int hashCode5 = this.zzawo == null ? 0 : this.zzawo.hashCode();
        int i = 0;
        if (this.zzcfc != null) {
            i = this.zzcfc.isEmpty() ? 0 : this.zzcfc.hashCode();
        }
        return ((((((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + i;
    }

    @Override // com.google.android.gms.internal.measurement.zzzg
    public final /* synthetic */ zzzg zza(zzyx zzyxVar) throws IOException {
        while (true) {
            int zzug = zzyxVar.zzug();
            if (zzug == 0) {
                return this;
            }
            if (zzug == 8) {
                this.zzauy = Integer.valueOf(zzyxVar.zzuy());
            } else if (zzug == 18) {
                if (this.zzawm == null) {
                    this.zzawm = new zzgj();
                }
                zzyxVar.zza(this.zzawm);
            } else if (zzug == 26) {
                if (this.zzawn == null) {
                    this.zzawn = new zzgj();
                }
                zzyxVar.zza(this.zzawn);
            } else if (zzug == 32) {
                this.zzawo = Boolean.valueOf(zzyxVar.zzum());
            } else if (!super.zza(zzyxVar, zzug)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final void zza(zzyy zzyyVar) throws IOException {
        if (this.zzauy != null) {
            zzyyVar.zzd(1, this.zzauy.intValue());
        }
        if (this.zzawm != null) {
            zzyyVar.zza(2, this.zzawm);
        }
        if (this.zzawn != null) {
            zzyyVar.zza(3, this.zzawn);
        }
        if (this.zzawo != null) {
            zzyyVar.zzb(4, this.zzawo.booleanValue());
        }
        super.zza(zzyyVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final int zzf() {
        int zzf = super.zzf();
        int i = zzf;
        if (this.zzauy != null) {
            i = zzf + zzyy.zzh(1, this.zzauy.intValue());
        }
        int i2 = i;
        if (this.zzawm != null) {
            i2 = i + zzyy.zzb(2, this.zzawm);
        }
        int i3 = i2;
        if (this.zzawn != null) {
            i3 = i2 + zzyy.zzb(3, this.zzawn);
        }
        int i4 = i3;
        if (this.zzawo != null) {
            this.zzawo.booleanValue();
            i4 = i3 + zzyy.zzbb(4) + 1;
        }
        return i4;
    }
}
