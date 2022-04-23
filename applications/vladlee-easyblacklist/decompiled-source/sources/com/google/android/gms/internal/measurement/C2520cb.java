package com.google.android.gms.internal.measurement;

import java.nio.charset.Charset;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.measurement.cb */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/cb.class */
public class C2520cb extends AbstractC2521cc {

    /* renamed from: a */
    protected final byte[] f15912a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2520cb(byte[] bArr) {
        if (bArr != null) {
            this.f15912a = bArr;
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzdu
    /* renamed from: a */
    public byte mo2309a(int i) {
        return this.f15912a[i];
    }

    @Override // com.google.android.gms.internal.measurement.zzdu
    /* renamed from: a */
    protected final int mo2308a(int i, int i2) {
        return zzff.m2272a(i, this.f15912a, mo2890b(), i2);
    }

    @Override // com.google.android.gms.internal.measurement.zzdu
    /* renamed from: a */
    protected final String mo2305a(Charset charset) {
        return new String(this.f15912a, mo2890b(), zza(), charset);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzdu
    /* renamed from: a */
    public final void mo2306a(zzdv zzdvVar) {
        zzdvVar.zza(this.f15912a, mo2890b(), zza());
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2521cc
    /* renamed from: a */
    final boolean mo2889a(zzdu zzduVar, int i) {
        if (i > zzduVar.zza()) {
            int zza = zza();
            StringBuilder sb = new StringBuilder(40);
            sb.append("Length too large: ");
            sb.append(i);
            sb.append(zza);
            throw new IllegalArgumentException(sb.toString());
        } else if (i > zzduVar.zza()) {
            int zza2 = zzduVar.zza();
            StringBuilder sb2 = new StringBuilder(59);
            sb2.append("Ran off end of other: 0, ");
            sb2.append(i);
            sb2.append(", ");
            sb2.append(zza2);
            throw new IllegalArgumentException(sb2.toString());
        } else if (!(zzduVar instanceof C2520cb)) {
            return zzduVar.zza(0, i).equals(zza(0, i));
        } else {
            C2520cb cbVar = (C2520cb) zzduVar;
            byte[] bArr = this.f15912a;
            byte[] bArr2 = cbVar.f15912a;
            int b = mo2890b();
            int b2 = mo2890b();
            int b3 = cbVar.mo2890b();
            while (b2 < b + i) {
                if (bArr[b2] != bArr2[b3]) {
                    return false;
                }
                b2++;
                b3++;
            }
            return true;
        }
    }

    /* renamed from: b */
    protected int mo2890b() {
        return 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzdu
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzdu) || zza() != ((zzdu) obj).zza()) {
            return false;
        }
        if (zza() == 0) {
            return true;
        }
        if (!(obj instanceof C2520cb)) {
            return obj.equals(this);
        }
        C2520cb cbVar = (C2520cb) obj;
        int a = m2311a();
        int a2 = cbVar.m2311a();
        if (a == 0 || a2 == 0 || a == a2) {
            return mo2889a(cbVar, zza());
        }
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.zzdu
    public byte zza(int i) {
        return this.f15912a[i];
    }

    @Override // com.google.android.gms.internal.measurement.zzdu
    public int zza() {
        return this.f15912a.length;
    }

    @Override // com.google.android.gms.internal.measurement.zzdu
    public final zzdu zza(int i, int i2) {
        int a = m2307a(0, i2, zza());
        return a == 0 ? zzdu.zza : new C2517bz(this.f15912a, mo2890b(), a);
    }

    @Override // com.google.android.gms.internal.measurement.zzdu
    public final boolean zzc() {
        int b = mo2890b();
        return C2595es.m2530a(this.f15912a, b, zza() + b);
    }
}
