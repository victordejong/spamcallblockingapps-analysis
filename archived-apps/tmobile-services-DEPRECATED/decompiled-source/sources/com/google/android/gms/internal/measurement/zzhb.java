package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.nio.charset.Charset;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzhb.class */
public class zzhb extends zzgy {

    /* renamed from: i */
    protected final byte[] f8472i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzhb(byte[] bArr) {
        if (bArr != null) {
            this.f8472i = bArr;
            return;
        }
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzgr
    /* renamed from: c */
    public byte mo12618c(int i) {
        return this.f8472i[i];
    }

    @Override // com.google.android.gms.internal.measurement.zzgr
    /* renamed from: d */
    public int mo12617d() {
        return this.f8472i.length;
    }

    @Override // com.google.android.gms.internal.measurement.zzgr
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgr) || mo12617d() != ((zzgr) obj).mo12617d()) {
            return false;
        }
        if (mo12617d() == 0) {
            return true;
        }
        if (!(obj instanceof zzhb)) {
            return obj.equals(this);
        }
        zzhb zzhbVar = (zzhb) obj;
        int x = m12627x();
        int x2 = zzhbVar.m12627x();
        if (x == 0 || x2 == 0 || x == x2) {
            return m12610y(zzhbVar, 0, mo12617d());
        }
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.zzgr
    /* renamed from: f */
    protected final int mo12616f(int i, int i2, int i3) {
        return zzic.m12397a(i, this.f8472i, mo12609z(), i3);
    }

    @Override // com.google.android.gms.internal.measurement.zzgr
    /* renamed from: g */
    public final zzgr mo12615g(int i, int i2) {
        int t = zzgr.m12630t(0, i2, mo12617d());
        return t == 0 ? zzgr.f8462g : new zzgu(this.f8472i, mo12609z(), t);
    }

    @Override // com.google.android.gms.internal.measurement.zzgr
    /* renamed from: n */
    protected final String mo12614n(Charset charset) {
        return new String(this.f8472i, mo12609z(), mo12617d(), charset);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzgr
    /* renamed from: p */
    public final void mo12613p(zzgo zzgoVar) throws IOException {
        zzgoVar.mo12497a(this.f8472i, mo12609z(), mo12617d());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzgr
    /* renamed from: r */
    public byte mo12612r(int i) {
        return this.f8472i[i];
    }

    @Override // com.google.android.gms.internal.measurement.zzgr
    /* renamed from: w */
    public final boolean mo12611w() {
        int z = mo12609z();
        return zzla.m12040g(this.f8472i, z, mo12617d() + z);
    }

    /* renamed from: y */
    final boolean m12610y(zzgr zzgrVar, int i, int i2) {
        if (i2 > zzgrVar.mo12617d()) {
            int d = mo12617d();
            StringBuilder sb = new StringBuilder(40);
            sb.append("Length too large: ");
            sb.append(i2);
            sb.append(d);
            throw new IllegalArgumentException(sb.toString());
        } else if (i2 > zzgrVar.mo12617d()) {
            int d2 = zzgrVar.mo12617d();
            StringBuilder sb2 = new StringBuilder(59);
            sb2.append("Ran off end of other: 0, ");
            sb2.append(i2);
            sb2.append(", ");
            sb2.append(d2);
            throw new IllegalArgumentException(sb2.toString());
        } else if (!(zzgrVar instanceof zzhb)) {
            return zzgrVar.mo12615g(0, i2).equals(mo12615g(0, i2));
        } else {
            zzhb zzhbVar = (zzhb) zzgrVar;
            byte[] bArr = this.f8472i;
            byte[] bArr2 = zzhbVar.f8472i;
            int z = mo12609z();
            int z2 = mo12609z();
            int z3 = zzhbVar.mo12609z();
            while (z2 < z + i2) {
                if (bArr[z2] != bArr2[z3]) {
                    return false;
                }
                z2++;
                z3++;
            }
            return true;
        }
    }

    /* renamed from: z */
    protected int mo12609z() {
        return 0;
    }
}
