package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfy.class */
public final class zzfy extends zzza<zzfy> {
    private static volatile zzfy[] zzavt;
    public Integer zzave = null;
    public String zzavu = null;
    public zzfw zzavv = null;
    public Boolean zzavb = null;
    public Boolean zzavc = null;

    public zzfy() {
        this.zzcfc = null;
        this.zzcfm = -1;
    }

    public static zzfy[] zzml() {
        if (zzavt == null) {
            synchronized (zzze.zzcfl) {
                if (zzavt == null) {
                    zzavt = new zzfy[0];
                }
            }
        }
        return zzavt;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzfy)) {
            return false;
        }
        zzfy zzfyVar = (zzfy) obj;
        if (this.zzave == null) {
            if (zzfyVar.zzave != null) {
                return false;
            }
        } else if (!this.zzave.equals(zzfyVar.zzave)) {
            return false;
        }
        if (this.zzavu == null) {
            if (zzfyVar.zzavu != null) {
                return false;
            }
        } else if (!this.zzavu.equals(zzfyVar.zzavu)) {
            return false;
        }
        if (this.zzavv == null) {
            if (zzfyVar.zzavv != null) {
                return false;
            }
        } else if (!this.zzavv.equals(zzfyVar.zzavv)) {
            return false;
        }
        if (this.zzavb == null) {
            if (zzfyVar.zzavb != null) {
                return false;
            }
        } else if (!this.zzavb.equals(zzfyVar.zzavb)) {
            return false;
        }
        if (this.zzavc == null) {
            if (zzfyVar.zzavc != null) {
                return false;
            }
        } else if (!this.zzavc.equals(zzfyVar.zzavc)) {
            return false;
        }
        return (this.zzcfc == null || this.zzcfc.isEmpty()) ? zzfyVar.zzcfc == null || zzfyVar.zzcfc.isEmpty() : this.zzcfc.equals(zzfyVar.zzcfc);
    }

    public final int hashCode() {
        int hashCode = getClass().getName().hashCode();
        int hashCode2 = this.zzave == null ? 0 : this.zzave.hashCode();
        int hashCode3 = this.zzavu == null ? 0 : this.zzavu.hashCode();
        zzfw zzfwVar = this.zzavv;
        int hashCode4 = zzfwVar == null ? 0 : zzfwVar.hashCode();
        int hashCode5 = this.zzavb == null ? 0 : this.zzavb.hashCode();
        int hashCode6 = this.zzavc == null ? 0 : this.zzavc.hashCode();
        int i = 0;
        if (this.zzcfc != null) {
            i = this.zzcfc.isEmpty() ? 0 : this.zzcfc.hashCode();
        }
        return ((((((((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + i;
    }

    @Override // com.google.android.gms.internal.measurement.zzzg
    public final /* synthetic */ zzzg zza(zzyx zzyxVar) throws IOException {
        while (true) {
            int zzug = zzyxVar.zzug();
            if (zzug == 0) {
                return this;
            }
            if (zzug == 8) {
                this.zzave = Integer.valueOf(zzyxVar.zzuy());
            } else if (zzug == 18) {
                this.zzavu = zzyxVar.readString();
            } else if (zzug == 26) {
                if (this.zzavv == null) {
                    this.zzavv = new zzfw();
                }
                zzyxVar.zza(this.zzavv);
            } else if (zzug == 32) {
                this.zzavb = Boolean.valueOf(zzyxVar.zzum());
            } else if (zzug == 40) {
                this.zzavc = Boolean.valueOf(zzyxVar.zzum());
            } else if (!super.zza(zzyxVar, zzug)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final void zza(zzyy zzyyVar) throws IOException {
        if (this.zzave != null) {
            zzyyVar.zzd(1, this.zzave.intValue());
        }
        if (this.zzavu != null) {
            zzyyVar.zzb(2, this.zzavu);
        }
        if (this.zzavv != null) {
            zzyyVar.zza(3, this.zzavv);
        }
        if (this.zzavb != null) {
            zzyyVar.zzb(4, this.zzavb.booleanValue());
        }
        if (this.zzavc != null) {
            zzyyVar.zzb(5, this.zzavc.booleanValue());
        }
        super.zza(zzyyVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final int zzf() {
        int zzf = super.zzf();
        int i = zzf;
        if (this.zzave != null) {
            i = zzf + zzyy.zzh(1, this.zzave.intValue());
        }
        int i2 = i;
        if (this.zzavu != null) {
            i2 = i + zzyy.zzc(2, this.zzavu);
        }
        int i3 = i2;
        if (this.zzavv != null) {
            i3 = i2 + zzyy.zzb(3, this.zzavv);
        }
        int i4 = i3;
        if (this.zzavb != null) {
            this.zzavb.booleanValue();
            i4 = i3 + zzyy.zzbb(4) + 1;
        }
        int i5 = i4;
        if (this.zzavc != null) {
            this.zzavc.booleanValue();
            i5 = i4 + zzyy.zzbb(5) + 1;
        }
        return i5;
    }
}
