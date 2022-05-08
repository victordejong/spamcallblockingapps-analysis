package com.google.android.gms.internal.ads;

import java.nio.charset.Charset;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aho.class */
public class aho extends ahl {

    /* renamed from: a */
    protected final byte[] f7364a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aho(byte[] bArr) {
        if (bArr != null) {
            this.f7364a = bArr;
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdqk
    /* renamed from: a */
    public byte mo3407a(int i) {
        return this.f7364a[i];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdqk
    /* renamed from: a */
    public final int mo3405a(int i, int i2, int i3) {
        int d = mo5399d() + i2;
        return akl.m5008a(i, this.f7364a, d, i3 + d);
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    /* renamed from: a */
    protected final String mo3403a(Charset charset) {
        return new String(this.f7364a, mo5399d(), size(), charset);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdqk
    /* renamed from: a */
    public final void mo3404a(zzdqh zzdqhVar) {
        zzdqhVar.zzh(this.f7364a, mo5399d(), size());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdqk
    /* renamed from: a */
    public void mo3400a(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.f7364a, i, bArr, i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.ahl
    /* renamed from: a */
    final boolean mo5400a(zzdqk zzdqkVar, int i, int i2) {
        if (i2 <= zzdqkVar.size()) {
            int i3 = i + i2;
            if (i3 > zzdqkVar.size()) {
                int size = zzdqkVar.size();
                StringBuilder sb = new StringBuilder(59);
                sb.append("Ran off end of other: ");
                sb.append(i);
                sb.append(", ");
                sb.append(i2);
                sb.append(", ");
                sb.append(size);
                throw new IllegalArgumentException(sb.toString());
            } else if (!(zzdqkVar instanceof aho)) {
                return zzdqkVar.zzy(i, i3).equals(zzy(0, i2));
            } else {
                aho ahoVar = (aho) zzdqkVar;
                byte[] bArr = this.f7364a;
                byte[] bArr2 = ahoVar.f7364a;
                int d = mo5399d();
                int d2 = mo5399d();
                int d3 = ahoVar.mo5399d() + i;
                while (d2 < d + i2) {
                    if (bArr[d2] != bArr2[d3]) {
                        return false;
                    }
                    d2++;
                    d3++;
                }
                return true;
            }
        } else {
            int size2 = size();
            StringBuilder sb2 = new StringBuilder(40);
            sb2.append("Length too large: ");
            sb2.append(i2);
            sb2.append(size2);
            throw new IllegalArgumentException(sb2.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdqk
    /* renamed from: b */
    public final int mo3397b(int i, int i2, int i3) {
        return zzdrv.m3352a(i, this.f7364a, mo5399d() + i2, i3);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: d */
    public int mo5399d() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzdqk) || size() != ((zzdqk) obj).size()) {
            return false;
        }
        if (size() == 0) {
            return true;
        }
        if (!(obj instanceof aho)) {
            return obj.equals(this);
        }
        aho ahoVar = (aho) obj;
        int c = m3396c();
        int c2 = ahoVar.m3396c();
        if (c == 0 || c2 == 0 || c == c2) {
            return mo5400a(ahoVar, 0, size());
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    public int size() {
        return this.f7364a.length;
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    public final boolean zzaxu() {
        int d = mo5399d();
        return akl.m5003a(this.f7364a, d, size() + d);
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    public final zzdqw zzaxv() {
        return zzdqw.m3393a(this.f7364a, mo5399d(), size(), true);
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    public byte zzfe(int i) {
        return this.f7364a[i];
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    public final zzdqk zzy(int i, int i2) {
        int c = m3395c(i, i2, size());
        return c == 0 ? zzdqk.zzhhx : new ahi(this.f7364a, mo5399d() + i, c);
    }
}
