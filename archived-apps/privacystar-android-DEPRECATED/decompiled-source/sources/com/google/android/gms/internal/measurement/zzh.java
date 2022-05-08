package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzh.class */
public final class zzh extends zzza<zzh> {
    private static volatile zzh[] zzod;
    public int[] zzoe = zzzj.zzcax;
    private int zzof = 0;
    private int name = 0;
    private boolean zzog = false;
    private boolean zzoh = false;

    public zzh() {
        this.zzcfc = null;
        this.zzcfm = -1;
    }

    public static zzh[] zze() {
        if (zzod == null) {
            synchronized (zzze.zzcfl) {
                if (zzod == null) {
                    zzod = new zzh[0];
                }
            }
        }
        return zzod;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzh)) {
            return false;
        }
        zzh zzhVar = (zzh) obj;
        if (zzze.equals(this.zzoe, zzhVar.zzoe) && this.zzof == zzhVar.zzof && this.name == zzhVar.name && this.zzog == zzhVar.zzog && this.zzoh == zzhVar.zzoh) {
            return (this.zzcfc == null || this.zzcfc.isEmpty()) ? zzhVar.zzcfc == null || zzhVar.zzcfc.isEmpty() : this.zzcfc.equals(zzhVar.zzcfc);
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = getClass().getName().hashCode();
        int hashCode2 = zzze.hashCode(this.zzoe);
        int i = this.zzof;
        int i2 = this.name;
        int i3 = 1237;
        int i4 = this.zzog ? 1231 : 1237;
        if (this.zzoh) {
            i3 = 1231;
        }
        return ((((((((((((hashCode + 527) * 31) + hashCode2) * 31) + i) * 31) + i2) * 31) + i4) * 31) + i3) * 31) + ((this.zzcfc == null || this.zzcfc.isEmpty()) ? 0 : this.zzcfc.hashCode());
    }

    @Override // com.google.android.gms.internal.measurement.zzzg
    public final /* synthetic */ zzzg zza(zzyx zzyxVar) throws IOException {
        while (true) {
            int zzug = zzyxVar.zzug();
            if (zzug == 0) {
                return this;
            }
            if (zzug == 8) {
                this.zzoh = zzyxVar.zzum();
            } else if (zzug == 16) {
                this.zzof = zzyxVar.zzuy();
            } else if (zzug == 24) {
                int zzb = zzzj.zzb(zzyxVar, 24);
                int length = this.zzoe == null ? 0 : this.zzoe.length;
                int[] iArr = new int[zzb + length];
                int i = length;
                if (length != 0) {
                    System.arraycopy(this.zzoe, 0, iArr, 0, length);
                    i = length;
                }
                while (i < iArr.length - 1) {
                    iArr[i] = zzyxVar.zzuy();
                    zzyxVar.zzug();
                    i++;
                }
                iArr[i] = zzyxVar.zzuy();
                this.zzoe = iArr;
            } else if (zzug == 26) {
                int zzaq = zzyxVar.zzaq(zzyxVar.zzuy());
                int position = zzyxVar.getPosition();
                int i2 = 0;
                while (zzyxVar.zzyr() > 0) {
                    zzyxVar.zzuy();
                    i2++;
                }
                zzyxVar.zzby(position);
                int length2 = this.zzoe == null ? 0 : this.zzoe.length;
                int[] iArr2 = new int[i2 + length2];
                int i3 = length2;
                if (length2 != 0) {
                    System.arraycopy(this.zzoe, 0, iArr2, 0, length2);
                    i3 = length2;
                }
                while (i3 < iArr2.length) {
                    iArr2[i3] = zzyxVar.zzuy();
                    i3++;
                }
                this.zzoe = iArr2;
                zzyxVar.zzar(zzaq);
            } else if (zzug == 32) {
                this.name = zzyxVar.zzuy();
            } else if (zzug == 48) {
                this.zzog = zzyxVar.zzum();
            } else if (!super.zza(zzyxVar, zzug)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final void zza(zzyy zzyyVar) throws IOException {
        if (this.zzoh) {
            zzyyVar.zzb(1, this.zzoh);
        }
        zzyyVar.zzd(2, this.zzof);
        if (this.zzoe != null && this.zzoe.length > 0) {
            for (int i = 0; i < this.zzoe.length; i++) {
                zzyyVar.zzd(3, this.zzoe[i]);
            }
        }
        if (this.name != 0) {
            zzyyVar.zzd(4, this.name);
        }
        if (this.zzog) {
            zzyyVar.zzb(6, this.zzog);
        }
        super.zza(zzyyVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final int zzf() {
        int zzf = super.zzf();
        int i = zzf;
        if (this.zzoh) {
            i = zzf + zzyy.zzbb(1) + 1;
        }
        int zzh = i + zzyy.zzh(2, this.zzof);
        int i2 = zzh;
        if (this.zzoe != null) {
            i2 = zzh;
            if (this.zzoe.length > 0) {
                int i3 = 0;
                for (int i4 = 0; i4 < this.zzoe.length; i4++) {
                    i3 += zzyy.zzbc(this.zzoe[i4]);
                }
                i2 = zzh + i3 + (this.zzoe.length * 1);
            }
        }
        int i5 = i2;
        if (this.name != 0) {
            i5 = i2 + zzyy.zzh(4, this.name);
        }
        int i6 = i5;
        if (this.zzog) {
            i6 = i5 + zzyy.zzbb(6) + 1;
        }
        return i6;
    }
}
