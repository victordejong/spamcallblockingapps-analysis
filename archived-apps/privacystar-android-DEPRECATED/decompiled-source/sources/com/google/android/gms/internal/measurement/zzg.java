package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzg.class */
public final class zzg {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzg$zza.class */
    public static final class zza extends zzza<zza> {
        public static final zzzb<zzp, zza> zzpt = zzzb.zza(11, zza.class, 810);
        private static final zza[] zzpu = new zza[0];
        public int[] zzpv = zzzj.zzcax;
        public int[] zzpw = zzzj.zzcax;
        public int[] zzpx = zzzj.zzcax;
        private int zzpy = 0;
        public int[] zzpz = zzzj.zzcax;
        public int zzqa = 0;
        private int zzqb = 0;

        public zza() {
            this.zzcfc = null;
            this.zzcfm = -1;
        }

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zza)) {
                return false;
            }
            zza zzaVar = (zza) obj;
            if (zzze.equals(this.zzpv, zzaVar.zzpv) && zzze.equals(this.zzpw, zzaVar.zzpw) && zzze.equals(this.zzpx, zzaVar.zzpx) && this.zzpy == zzaVar.zzpy && zzze.equals(this.zzpz, zzaVar.zzpz) && this.zzqa == zzaVar.zzqa && this.zzqb == zzaVar.zzqb) {
                return (this.zzcfc == null || this.zzcfc.isEmpty()) ? zzaVar.zzcfc == null || zzaVar.zzcfc.isEmpty() : this.zzcfc.equals(zzaVar.zzcfc);
            }
            return false;
        }

        public final int hashCode() {
            int hashCode = getClass().getName().hashCode();
            int hashCode2 = zzze.hashCode(this.zzpv);
            int hashCode3 = zzze.hashCode(this.zzpw);
            int hashCode4 = zzze.hashCode(this.zzpx);
            int i = this.zzpy;
            int hashCode5 = zzze.hashCode(this.zzpz);
            int i2 = this.zzqa;
            return ((((((((((((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i) * 31) + hashCode5) * 31) + i2) * 31) + this.zzqb) * 31) + ((this.zzcfc == null || this.zzcfc.isEmpty()) ? 0 : this.zzcfc.hashCode());
        }

        @Override // com.google.android.gms.internal.measurement.zzzg
        public final /* synthetic */ zzzg zza(zzyx zzyxVar) throws IOException {
            while (true) {
                int zzug = zzyxVar.zzug();
                switch (zzug) {
                    case 0:
                        return this;
                    case 8:
                        int zzb = zzzj.zzb(zzyxVar, 8);
                        int length = this.zzpv == null ? 0 : this.zzpv.length;
                        int[] iArr = new int[zzb + length];
                        int i = length;
                        if (length != 0) {
                            System.arraycopy(this.zzpv, 0, iArr, 0, length);
                            i = length;
                        }
                        while (i < iArr.length - 1) {
                            iArr[i] = zzyxVar.zzuy();
                            zzyxVar.zzug();
                            i++;
                        }
                        iArr[i] = zzyxVar.zzuy();
                        this.zzpv = iArr;
                        break;
                    case 10:
                        int zzaq = zzyxVar.zzaq(zzyxVar.zzuy());
                        int position = zzyxVar.getPosition();
                        int i2 = 0;
                        while (zzyxVar.zzyr() > 0) {
                            zzyxVar.zzuy();
                            i2++;
                        }
                        zzyxVar.zzby(position);
                        int length2 = this.zzpv == null ? 0 : this.zzpv.length;
                        int[] iArr2 = new int[i2 + length2];
                        int i3 = length2;
                        if (length2 != 0) {
                            System.arraycopy(this.zzpv, 0, iArr2, 0, length2);
                            i3 = length2;
                        }
                        while (i3 < iArr2.length) {
                            iArr2[i3] = zzyxVar.zzuy();
                            i3++;
                        }
                        this.zzpv = iArr2;
                        zzyxVar.zzar(zzaq);
                        break;
                    case 16:
                        int zzb2 = zzzj.zzb(zzyxVar, 16);
                        int length3 = this.zzpw == null ? 0 : this.zzpw.length;
                        int[] iArr3 = new int[zzb2 + length3];
                        int i4 = length3;
                        if (length3 != 0) {
                            System.arraycopy(this.zzpw, 0, iArr3, 0, length3);
                            i4 = length3;
                        }
                        while (i4 < iArr3.length - 1) {
                            iArr3[i4] = zzyxVar.zzuy();
                            zzyxVar.zzug();
                            i4++;
                        }
                        iArr3[i4] = zzyxVar.zzuy();
                        this.zzpw = iArr3;
                        break;
                    case 18:
                        int zzaq2 = zzyxVar.zzaq(zzyxVar.zzuy());
                        int position2 = zzyxVar.getPosition();
                        int i5 = 0;
                        while (zzyxVar.zzyr() > 0) {
                            zzyxVar.zzuy();
                            i5++;
                        }
                        zzyxVar.zzby(position2);
                        int length4 = this.zzpw == null ? 0 : this.zzpw.length;
                        int[] iArr4 = new int[i5 + length4];
                        int i6 = length4;
                        if (length4 != 0) {
                            System.arraycopy(this.zzpw, 0, iArr4, 0, length4);
                            i6 = length4;
                        }
                        while (i6 < iArr4.length) {
                            iArr4[i6] = zzyxVar.zzuy();
                            i6++;
                        }
                        this.zzpw = iArr4;
                        zzyxVar.zzar(zzaq2);
                        break;
                    case 24:
                        int zzb3 = zzzj.zzb(zzyxVar, 24);
                        int length5 = this.zzpx == null ? 0 : this.zzpx.length;
                        int[] iArr5 = new int[zzb3 + length5];
                        int i7 = length5;
                        if (length5 != 0) {
                            System.arraycopy(this.zzpx, 0, iArr5, 0, length5);
                            i7 = length5;
                        }
                        while (i7 < iArr5.length - 1) {
                            iArr5[i7] = zzyxVar.zzuy();
                            zzyxVar.zzug();
                            i7++;
                        }
                        iArr5[i7] = zzyxVar.zzuy();
                        this.zzpx = iArr5;
                        break;
                    case 26:
                        int zzaq3 = zzyxVar.zzaq(zzyxVar.zzuy());
                        int position3 = zzyxVar.getPosition();
                        int i8 = 0;
                        while (zzyxVar.zzyr() > 0) {
                            zzyxVar.zzuy();
                            i8++;
                        }
                        zzyxVar.zzby(position3);
                        int length6 = this.zzpx == null ? 0 : this.zzpx.length;
                        int[] iArr6 = new int[i8 + length6];
                        int i9 = length6;
                        if (length6 != 0) {
                            System.arraycopy(this.zzpx, 0, iArr6, 0, length6);
                            i9 = length6;
                        }
                        while (i9 < iArr6.length) {
                            iArr6[i9] = zzyxVar.zzuy();
                            i9++;
                        }
                        this.zzpx = iArr6;
                        zzyxVar.zzar(zzaq3);
                        break;
                    case 32:
                        this.zzpy = zzyxVar.zzuy();
                        break;
                    case 40:
                        int zzb4 = zzzj.zzb(zzyxVar, 40);
                        int length7 = this.zzpz == null ? 0 : this.zzpz.length;
                        int[] iArr7 = new int[zzb4 + length7];
                        int i10 = length7;
                        if (length7 != 0) {
                            System.arraycopy(this.zzpz, 0, iArr7, 0, length7);
                            i10 = length7;
                        }
                        while (i10 < iArr7.length - 1) {
                            iArr7[i10] = zzyxVar.zzuy();
                            zzyxVar.zzug();
                            i10++;
                        }
                        iArr7[i10] = zzyxVar.zzuy();
                        this.zzpz = iArr7;
                        break;
                    case 42:
                        int zzaq4 = zzyxVar.zzaq(zzyxVar.zzuy());
                        int position4 = zzyxVar.getPosition();
                        int i11 = 0;
                        while (zzyxVar.zzyr() > 0) {
                            zzyxVar.zzuy();
                            i11++;
                        }
                        zzyxVar.zzby(position4);
                        int length8 = this.zzpz == null ? 0 : this.zzpz.length;
                        int[] iArr8 = new int[i11 + length8];
                        int i12 = length8;
                        if (length8 != 0) {
                            System.arraycopy(this.zzpz, 0, iArr8, 0, length8);
                            i12 = length8;
                        }
                        while (i12 < iArr8.length) {
                            iArr8[i12] = zzyxVar.zzuy();
                            i12++;
                        }
                        this.zzpz = iArr8;
                        zzyxVar.zzar(zzaq4);
                        break;
                    case 48:
                        this.zzqa = zzyxVar.zzuy();
                        break;
                    case 56:
                        this.zzqb = zzyxVar.zzuy();
                        break;
                    default:
                        if (super.zza(zzyxVar, zzug)) {
                            break;
                        } else {
                            return this;
                        }
                }
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
        public final void zza(zzyy zzyyVar) throws IOException {
            if (this.zzpv != null && this.zzpv.length > 0) {
                for (int i = 0; i < this.zzpv.length; i++) {
                    zzyyVar.zzd(1, this.zzpv[i]);
                }
            }
            if (this.zzpw != null && this.zzpw.length > 0) {
                for (int i2 = 0; i2 < this.zzpw.length; i2++) {
                    zzyyVar.zzd(2, this.zzpw[i2]);
                }
            }
            if (this.zzpx != null && this.zzpx.length > 0) {
                for (int i3 = 0; i3 < this.zzpx.length; i3++) {
                    zzyyVar.zzd(3, this.zzpx[i3]);
                }
            }
            if (this.zzpy != 0) {
                zzyyVar.zzd(4, this.zzpy);
            }
            if (this.zzpz != null && this.zzpz.length > 0) {
                for (int i4 = 0; i4 < this.zzpz.length; i4++) {
                    zzyyVar.zzd(5, this.zzpz[i4]);
                }
            }
            if (this.zzqa != 0) {
                zzyyVar.zzd(6, this.zzqa);
            }
            if (this.zzqb != 0) {
                zzyyVar.zzd(7, this.zzqb);
            }
            super.zza(zzyyVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
        public final int zzf() {
            int zzf = super.zzf();
            int i = zzf;
            if (this.zzpv != null) {
                i = zzf;
                if (this.zzpv.length > 0) {
                    int i2 = 0;
                    for (int i3 = 0; i3 < this.zzpv.length; i3++) {
                        i2 += zzyy.zzbc(this.zzpv[i3]);
                    }
                    i = zzf + i2 + (this.zzpv.length * 1);
                }
            }
            int i4 = i;
            if (this.zzpw != null) {
                i4 = i;
                if (this.zzpw.length > 0) {
                    int i5 = 0;
                    for (int i6 = 0; i6 < this.zzpw.length; i6++) {
                        i5 += zzyy.zzbc(this.zzpw[i6]);
                    }
                    i4 = i + i5 + (this.zzpw.length * 1);
                }
            }
            int i7 = i4;
            if (this.zzpx != null) {
                i7 = i4;
                if (this.zzpx.length > 0) {
                    int i8 = 0;
                    for (int i9 = 0; i9 < this.zzpx.length; i9++) {
                        i8 += zzyy.zzbc(this.zzpx[i9]);
                    }
                    i7 = i4 + i8 + (this.zzpx.length * 1);
                }
            }
            int i10 = i7;
            if (this.zzpy != 0) {
                i10 = i7 + zzyy.zzh(4, this.zzpy);
            }
            int i11 = i10;
            if (this.zzpz != null) {
                i11 = i10;
                if (this.zzpz.length > 0) {
                    int i12 = 0;
                    for (int i13 = 0; i13 < this.zzpz.length; i13++) {
                        i12 += zzyy.zzbc(this.zzpz[i13]);
                    }
                    i11 = i10 + i12 + (this.zzpz.length * 1);
                }
            }
            int i14 = i11;
            if (this.zzqa != 0) {
                i14 = i11 + zzyy.zzh(6, this.zzqa);
            }
            int i15 = i14;
            if (this.zzqb != 0) {
                i15 = i14 + zzyy.zzh(7, this.zzqb);
            }
            return i15;
        }
    }
}
