package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.nio.charset.Charset;
import p131c.p161d.p170b.p224d.p252g.p258f.C4547m5;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzgz.class */
public class zzgz extends zzha {
    public final byte[] zzb;

    public zzgz(byte[] bArr) {
        if (bArr != null) {
            this.zzb = bArr;
            return;
        }
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzgp
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgp) || zza() != ((zzgp) obj).zza()) {
            return false;
        }
        if (zza() == 0) {
            return true;
        }
        if (!(obj instanceof zzgz)) {
            return obj.equals(this);
        }
        zzgz zzgzVar = (zzgz) obj;
        int zzd = zzd();
        int zzd2 = zzgzVar.zzd();
        if (zzd == 0 || zzd2 == 0 || zzd == zzd2) {
            return zza(zzgzVar, 0, zza());
        }
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.zzgp
    public byte zza(int i) {
        return this.zzb[i];
    }

    @Override // com.google.android.gms.internal.measurement.zzgp
    public int zza() {
        return this.zzb.length;
    }

    @Override // com.google.android.gms.internal.measurement.zzgp
    public final int zza(int i, int i2, int i3) {
        return zzia.m9641a(i, this.zzb, zze(), i3);
    }

    @Override // com.google.android.gms.internal.measurement.zzgp
    public final zzgp zza(int i, int i2) {
        int zzb = zzgp.zzb(0, i2, zza());
        return zzb == 0 ? zzgp.zza : new zzgw(this.zzb, zze(), zzb);
    }

    @Override // com.google.android.gms.internal.measurement.zzgp
    public final String zza(Charset charset) {
        return new String(this.zzb, zze(), zza(), charset);
    }

    @Override // com.google.android.gms.internal.measurement.zzgp
    public final void zza(zzgq zzgqVar) throws IOException {
        zzgqVar.mo9687a(this.zzb, zze(), zza());
    }

    @Override // com.google.android.gms.internal.measurement.zzha
    public final boolean zza(zzgp zzgpVar, int i, int i2) {
        if (i2 > zzgpVar.zza()) {
            int zza = zza();
            StringBuilder sb = new StringBuilder(40);
            sb.append("Length too large: ");
            sb.append(i2);
            sb.append(zza);
            throw new IllegalArgumentException(sb.toString());
        } else if (i2 > zzgpVar.zza()) {
            int zza2 = zzgpVar.zza();
            StringBuilder sb2 = new StringBuilder(59);
            sb2.append("Ran off end of other: 0, ");
            sb2.append(i2);
            sb2.append(", ");
            sb2.append(zza2);
            throw new IllegalArgumentException(sb2.toString());
        } else if (!(zzgpVar instanceof zzgz)) {
            return zzgpVar.zza(0, i2).equals(zza(0, i2));
        } else {
            zzgz zzgzVar = (zzgz) zzgpVar;
            byte[] bArr = this.zzb;
            byte[] bArr2 = zzgzVar.zzb;
            int zze = zze();
            int zze2 = zze();
            int zze3 = zzgzVar.zze();
            while (zze2 < zze + i2) {
                if (bArr[zze2] != bArr2[zze3]) {
                    return false;
                }
                zze2++;
                zze3++;
            }
            return true;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzgp
    public byte zzb(int i) {
        return this.zzb[i];
    }

    @Override // com.google.android.gms.internal.measurement.zzgp
    public final boolean zzc() {
        int zze = zze();
        return C4547m5.m25362a(this.zzb, zze, zza() + zze);
    }

    public int zze() {
        return 0;
    }
}
