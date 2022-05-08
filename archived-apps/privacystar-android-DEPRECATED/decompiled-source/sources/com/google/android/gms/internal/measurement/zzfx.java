package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfx.class */
public final class zzfx extends zzza<zzfx> {
    public Integer zzavo = null;
    public Boolean zzavp = null;
    public String zzavq = null;
    public String zzavr = null;
    public String zzavs = null;

    public zzfx() {
        this.zzcfc = null;
        this.zzcfm = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: zzc */
    public final zzfx zza(zzyx zzyxVar) throws IOException {
        while (true) {
            int zzug = zzyxVar.zzug();
            if (zzug == 0) {
                return this;
            }
            if (zzug == 8) {
                int position = zzyxVar.getPosition();
                try {
                    int zzuy = zzyxVar.zzuy();
                    if (zzuy < 0 || zzuy > 4) {
                        StringBuilder sb = new StringBuilder(46);
                        sb.append(zzuy);
                        sb.append(" is not a valid enum ComparisonType");
                        throw new IllegalArgumentException(sb.toString());
                        break;
                    }
                    this.zzavo = Integer.valueOf(zzuy);
                } catch (IllegalArgumentException e) {
                    zzyxVar.zzby(position);
                    zza(zzyxVar, zzug);
                }
            } else if (zzug == 16) {
                this.zzavp = Boolean.valueOf(zzyxVar.zzum());
            } else if (zzug == 26) {
                this.zzavq = zzyxVar.readString();
            } else if (zzug == 34) {
                this.zzavr = zzyxVar.readString();
            } else if (zzug == 42) {
                this.zzavs = zzyxVar.readString();
            } else if (!super.zza(zzyxVar, zzug)) {
                return this;
            }
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzfx)) {
            return false;
        }
        zzfx zzfxVar = (zzfx) obj;
        if (this.zzavo == null) {
            if (zzfxVar.zzavo != null) {
                return false;
            }
        } else if (!this.zzavo.equals(zzfxVar.zzavo)) {
            return false;
        }
        if (this.zzavp == null) {
            if (zzfxVar.zzavp != null) {
                return false;
            }
        } else if (!this.zzavp.equals(zzfxVar.zzavp)) {
            return false;
        }
        if (this.zzavq == null) {
            if (zzfxVar.zzavq != null) {
                return false;
            }
        } else if (!this.zzavq.equals(zzfxVar.zzavq)) {
            return false;
        }
        if (this.zzavr == null) {
            if (zzfxVar.zzavr != null) {
                return false;
            }
        } else if (!this.zzavr.equals(zzfxVar.zzavr)) {
            return false;
        }
        if (this.zzavs == null) {
            if (zzfxVar.zzavs != null) {
                return false;
            }
        } else if (!this.zzavs.equals(zzfxVar.zzavs)) {
            return false;
        }
        return (this.zzcfc == null || this.zzcfc.isEmpty()) ? zzfxVar.zzcfc == null || zzfxVar.zzcfc.isEmpty() : this.zzcfc.equals(zzfxVar.zzcfc);
    }

    public final int hashCode() {
        int hashCode = getClass().getName().hashCode();
        int intValue = this.zzavo == null ? 0 : this.zzavo.intValue();
        int hashCode2 = this.zzavp == null ? 0 : this.zzavp.hashCode();
        int hashCode3 = this.zzavq == null ? 0 : this.zzavq.hashCode();
        int hashCode4 = this.zzavr == null ? 0 : this.zzavr.hashCode();
        int hashCode5 = this.zzavs == null ? 0 : this.zzavs.hashCode();
        int i = 0;
        if (this.zzcfc != null) {
            i = this.zzcfc.isEmpty() ? 0 : this.zzcfc.hashCode();
        }
        return ((((((((((((hashCode + 527) * 31) + intValue) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + i;
    }

    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final void zza(zzyy zzyyVar) throws IOException {
        if (this.zzavo != null) {
            zzyyVar.zzd(1, this.zzavo.intValue());
        }
        if (this.zzavp != null) {
            zzyyVar.zzb(2, this.zzavp.booleanValue());
        }
        if (this.zzavq != null) {
            zzyyVar.zzb(3, this.zzavq);
        }
        if (this.zzavr != null) {
            zzyyVar.zzb(4, this.zzavr);
        }
        if (this.zzavs != null) {
            zzyyVar.zzb(5, this.zzavs);
        }
        super.zza(zzyyVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final int zzf() {
        int zzf = super.zzf();
        int i = zzf;
        if (this.zzavo != null) {
            i = zzf + zzyy.zzh(1, this.zzavo.intValue());
        }
        int i2 = i;
        if (this.zzavp != null) {
            this.zzavp.booleanValue();
            i2 = i + zzyy.zzbb(2) + 1;
        }
        int i3 = i2;
        if (this.zzavq != null) {
            i3 = i2 + zzyy.zzc(3, this.zzavq);
        }
        int i4 = i3;
        if (this.zzavr != null) {
            i4 = i3 + zzyy.zzc(4, this.zzavr);
        }
        int i5 = i4;
        if (this.zzavs != null) {
            i5 = i4 + zzyy.zzc(5, this.zzavs);
        }
        return i5;
    }
}
