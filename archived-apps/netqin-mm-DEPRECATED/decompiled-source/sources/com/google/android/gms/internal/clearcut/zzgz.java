package com.google.android.gms.internal.clearcut;

import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzgz.class */
public final class zzgz extends zzfu<zzgz> implements Cloneable {

    /* renamed from: c */
    public byte[] f29297c = zzgb.f29291e;

    /* renamed from: d */
    public String f29298d = "";

    /* renamed from: e */
    public byte[][] f29299e = zzgb.f29290d;

    public zzgz() {
        this.f29280b = null;
        this.f29286a = -1;
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu, com.google.android.gms.internal.clearcut.zzfz
    /* renamed from: a */
    public final void mo10563a(zzfs zzfsVar) throws IOException {
        if (!Arrays.equals(this.f29297c, zzgb.f29291e)) {
            zzfsVar.m10649a(1, this.f29297c);
        }
        byte[][] bArr = this.f29299e;
        if (bArr != null && bArr.length > 0) {
            int i = 0;
            while (true) {
                byte[][] bArr2 = this.f29299e;
                if (i >= bArr2.length) {
                    break;
                }
                byte[] bArr3 = bArr2[i];
                if (bArr3 != null) {
                    zzfsVar.m10649a(2, bArr3);
                }
                i++;
            }
        }
        String str = this.f29298d;
        if (str != null && !str.equals("")) {
            zzfsVar.m10651a(4, this.f29298d);
        }
        super.mo10563a(zzfsVar);
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu, com.google.android.gms.internal.clearcut.zzfz
    /* renamed from: e */
    public final int mo10562e() {
        int e = super.mo10562e();
        int i = e;
        if (!Arrays.equals(this.f29297c, zzgb.f29291e)) {
            i = e + zzfs.m10637b(1, this.f29297c);
        }
        byte[][] bArr = this.f29299e;
        int i2 = i;
        if (bArr != null) {
            i2 = i;
            if (bArr.length > 0) {
                int i3 = 0;
                int i4 = 0;
                int i5 = 0;
                while (true) {
                    byte[][] bArr2 = this.f29299e;
                    if (i3 >= bArr2.length) {
                        break;
                    }
                    byte[] bArr3 = bArr2[i3];
                    i4 = i4;
                    i5 = i5;
                    if (bArr3 != null) {
                        i5++;
                        i4 += zzfs.m10635b(bArr3);
                    }
                    i3++;
                }
                i2 = i + i4 + (i5 * 1);
            }
        }
        String str = this.f29298d;
        int i6 = i2;
        if (str != null) {
            i6 = i2;
            if (!str.equals("")) {
                i6 = i2 + zzfs.m10638b(4, this.f29298d);
            }
        }
        return i6;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgz)) {
            return false;
        }
        zzgz zzgzVar = (zzgz) obj;
        if (!Arrays.equals(this.f29297c, zzgzVar.f29297c)) {
            return false;
        }
        String str = this.f29298d;
        if (str == null) {
            if (zzgzVar.f29298d != null) {
                return false;
            }
        } else if (!str.equals(zzgzVar.f29298d)) {
            return false;
        }
        if (!zzfy.m10619a(this.f29299e, zzgzVar.f29299e)) {
            return false;
        }
        zzfw zzfwVar = this.f29280b;
        if (zzfwVar != null && !zzfwVar.m10629c()) {
            return this.f29280b.equals(zzgzVar.f29280b);
        }
        zzfw zzfwVar2 = zzgzVar.f29280b;
        return zzfwVar2 == null || zzfwVar2.m10629c();
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu, com.google.android.gms.internal.clearcut.zzfz
    /* renamed from: g */
    public final /* synthetic */ zzfz mo10561g() throws CloneNotSupportedException {
        return (zzgz) clone();
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu
    /* renamed from: h */
    public final /* synthetic */ zzgz mo10560h() throws CloneNotSupportedException {
        return (zzgz) clone();
    }

    public final int hashCode() {
        int hashCode = zzgz.class.getName().hashCode();
        int hashCode2 = Arrays.hashCode(this.f29297c);
        String str = this.f29298d;
        int hashCode3 = str == null ? 0 : str.hashCode();
        int a = zzfy.m10620a(this.f29299e);
        zzfw zzfwVar = this.f29280b;
        int i = 0;
        if (zzfwVar != null) {
            i = zzfwVar.m10629c() ? 0 : this.f29280b.hashCode();
        }
        return ((((((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + a) * 31) + 1237) * 31) + i;
    }

    /* renamed from: j */
    public final zzgz clone() {
        try {
            zzgz zzgzVar = (zzgz) super.clone();
            byte[][] bArr = this.f29299e;
            if (bArr != null && bArr.length > 0) {
                zzgzVar.f29299e = (byte[][]) bArr.clone();
            }
            return zzgzVar;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }
}
