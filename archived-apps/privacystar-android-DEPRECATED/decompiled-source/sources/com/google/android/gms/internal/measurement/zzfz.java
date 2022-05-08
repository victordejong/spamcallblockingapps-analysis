package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfz.class */
public final class zzfz extends zzza<zzfz> {
    public Integer zzavw = null;
    public String zzavx = null;
    public Boolean zzavy = null;
    public String[] zzavz = zzzj.zzcfv;

    public zzfz() {
        this.zzcfc = null;
        this.zzcfm = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: zzd */
    public final zzfz zza(zzyx zzyxVar) throws IOException {
        while (true) {
            int zzug = zzyxVar.zzug();
            if (zzug == 0) {
                return this;
            }
            if (zzug == 8) {
                int position = zzyxVar.getPosition();
                try {
                    int zzuy = zzyxVar.zzuy();
                    if (zzuy < 0 || zzuy > 6) {
                        StringBuilder sb = new StringBuilder(41);
                        sb.append(zzuy);
                        sb.append(" is not a valid enum MatchType");
                        throw new IllegalArgumentException(sb.toString());
                        break;
                    }
                    this.zzavw = Integer.valueOf(zzuy);
                } catch (IllegalArgumentException e) {
                    zzyxVar.zzby(position);
                    zza(zzyxVar, zzug);
                }
            } else if (zzug == 18) {
                this.zzavx = zzyxVar.readString();
            } else if (zzug == 24) {
                this.zzavy = Boolean.valueOf(zzyxVar.zzum());
            } else if (zzug == 34) {
                int zzb = zzzj.zzb(zzyxVar, 34);
                int length = this.zzavz == null ? 0 : this.zzavz.length;
                String[] strArr = new String[zzb + length];
                int i = length;
                if (length != 0) {
                    System.arraycopy(this.zzavz, 0, strArr, 0, length);
                    i = length;
                }
                while (i < strArr.length - 1) {
                    strArr[i] = zzyxVar.readString();
                    zzyxVar.zzug();
                    i++;
                }
                strArr[i] = zzyxVar.readString();
                this.zzavz = strArr;
            } else if (!super.zza(zzyxVar, zzug)) {
                return this;
            }
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzfz)) {
            return false;
        }
        zzfz zzfzVar = (zzfz) obj;
        if (this.zzavw == null) {
            if (zzfzVar.zzavw != null) {
                return false;
            }
        } else if (!this.zzavw.equals(zzfzVar.zzavw)) {
            return false;
        }
        if (this.zzavx == null) {
            if (zzfzVar.zzavx != null) {
                return false;
            }
        } else if (!this.zzavx.equals(zzfzVar.zzavx)) {
            return false;
        }
        if (this.zzavy == null) {
            if (zzfzVar.zzavy != null) {
                return false;
            }
        } else if (!this.zzavy.equals(zzfzVar.zzavy)) {
            return false;
        }
        if (!zzze.equals(this.zzavz, zzfzVar.zzavz)) {
            return false;
        }
        return (this.zzcfc == null || this.zzcfc.isEmpty()) ? zzfzVar.zzcfc == null || zzfzVar.zzcfc.isEmpty() : this.zzcfc.equals(zzfzVar.zzcfc);
    }

    public final int hashCode() {
        int hashCode = getClass().getName().hashCode();
        int intValue = this.zzavw == null ? 0 : this.zzavw.intValue();
        int hashCode2 = this.zzavx == null ? 0 : this.zzavx.hashCode();
        int hashCode3 = this.zzavy == null ? 0 : this.zzavy.hashCode();
        int hashCode4 = zzze.hashCode(this.zzavz);
        int i = 0;
        if (this.zzcfc != null) {
            i = this.zzcfc.isEmpty() ? 0 : this.zzcfc.hashCode();
        }
        return ((((((((((hashCode + 527) * 31) + intValue) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i;
    }

    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final void zza(zzyy zzyyVar) throws IOException {
        if (this.zzavw != null) {
            zzyyVar.zzd(1, this.zzavw.intValue());
        }
        if (this.zzavx != null) {
            zzyyVar.zzb(2, this.zzavx);
        }
        if (this.zzavy != null) {
            zzyyVar.zzb(3, this.zzavy.booleanValue());
        }
        if (this.zzavz != null && this.zzavz.length > 0) {
            for (int i = 0; i < this.zzavz.length; i++) {
                String str = this.zzavz[i];
                if (str != null) {
                    zzyyVar.zzb(4, str);
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
        if (this.zzavw != null) {
            i = zzf + zzyy.zzh(1, this.zzavw.intValue());
        }
        int i2 = i;
        if (this.zzavx != null) {
            i2 = i + zzyy.zzc(2, this.zzavx);
        }
        int i3 = i2;
        if (this.zzavy != null) {
            this.zzavy.booleanValue();
            i3 = i2 + zzyy.zzbb(3) + 1;
        }
        int i4 = i3;
        if (this.zzavz != null) {
            i4 = i3;
            if (this.zzavz.length > 0) {
                int i5 = 0;
                int i6 = 0;
                for (int i7 = 0; i7 < this.zzavz.length; i7++) {
                    String str = this.zzavz[i7];
                    i5 = i5;
                    i6 = i6;
                    if (str != null) {
                        i6++;
                        i5 += zzyy.zzfx(str);
                    }
                }
                i4 = i3 + i5 + (i6 * 1);
            }
        }
        return i4;
    }
}
