package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdrt;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdur.class */
public final class zzdur {

    /* renamed from: a */
    private static final zzdur f14585a = new zzdur(0, new int[0], new Object[0], false);

    /* renamed from: b */
    private int f14586b;

    /* renamed from: c */
    private int[] f14587c;

    /* renamed from: d */
    private Object[] f14588d;

    /* renamed from: e */
    private int f14589e;

    /* renamed from: f */
    private boolean f14590f;

    private zzdur() {
        this(0, new int[8], new Object[8], true);
    }

    private zzdur(int i, int[] iArr, Object[] objArr, boolean z) {
        this.f14589e = -1;
        this.f14586b = i;
        this.f14587c = iArr;
        this.f14588d = objArr;
        this.f14590f = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static zzdur m3332a() {
        return new zzdur();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static zzdur m3328a(zzdur zzdurVar, zzdur zzdurVar2) {
        int i = zzdurVar.f14586b + zzdurVar2.f14586b;
        int[] copyOf = Arrays.copyOf(zzdurVar.f14587c, i);
        System.arraycopy(zzdurVar2.f14587c, 0, copyOf, zzdurVar.f14586b, zzdurVar2.f14586b);
        Object[] copyOf2 = Arrays.copyOf(zzdurVar.f14588d, i);
        System.arraycopy(zzdurVar2.f14588d, 0, copyOf2, zzdurVar.f14586b, zzdurVar2.f14586b);
        return new zzdur(i, copyOf, copyOf2, true);
    }

    /* renamed from: a */
    private static void m3330a(int i, Object obj, aku akuVar) {
        int i2 = i >>> 3;
        int i3 = i & 7;
        if (i3 == 0) {
            akuVar.mo4985a(i2, ((Long) obj).longValue());
        } else if (i3 == 1) {
            akuVar.mo4964d(i2, ((Long) obj).longValue());
        } else if (i3 == 2) {
            akuVar.mo4983a(i2, (zzdqk) obj);
        } else if (i3 != 3) {
            if (i3 == 5) {
                akuVar.mo4965d(i2, ((Integer) obj).intValue());
                return;
            }
            throw new RuntimeException(zzdse.m3342f());
        } else if (akuVar.mo4990a() == zzdrt.zze.zzhnd) {
            akuVar.mo4989a(i2);
            ((zzdur) obj).zzb(akuVar);
            akuVar.mo4975b(i2);
        } else {
            akuVar.mo4975b(i2);
            ((zzdur) obj).zzb(akuVar);
            akuVar.mo4989a(i2);
        }
    }

    public static zzdur zzbcf() {
        return f14585a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m3331a(int i, Object obj) {
        if (this.f14590f) {
            int i2 = this.f14586b;
            if (i2 == this.f14587c.length) {
                int i3 = this.f14586b + (i2 < 4 ? 8 : i2 >> 1);
                this.f14587c = Arrays.copyOf(this.f14587c, i3);
                this.f14588d = Arrays.copyOf(this.f14588d, i3);
            }
            int[] iArr = this.f14587c;
            int i4 = this.f14586b;
            iArr[i4] = i;
            this.f14588d[i4] = obj;
            this.f14586b = i4 + 1;
            return;
        }
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m3329a(aku akuVar) {
        if (akuVar.mo4990a() == zzdrt.zze.zzhne) {
            for (int i = this.f14586b - 1; i >= 0; i--) {
                akuVar.mo4982a(this.f14587c[i] >>> 3, this.f14588d[i]);
            }
            return;
        }
        for (int i2 = 0; i2 < this.f14586b; i2++) {
            akuVar.mo4982a(this.f14587c[i2] >>> 3, this.f14588d[i2]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m3327a(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.f14586b; i2++) {
            aiw.m5293a(sb, i, String.valueOf(this.f14587c[i2] >>> 3), this.f14588d[i2]);
        }
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzdur)) {
            return false;
        }
        zzdur zzdurVar = (zzdur) obj;
        int i = this.f14586b;
        if (i != zzdurVar.f14586b) {
            return false;
        }
        int[] iArr = this.f14587c;
        int[] iArr2 = zzdurVar.f14587c;
        int i2 = 0;
        while (true) {
            if (i2 >= i) {
                z = true;
                break;
            } else if (iArr[i2] != iArr2[i2]) {
                z = false;
                break;
            } else {
                i2++;
            }
        }
        if (!z) {
            return false;
        }
        Object[] objArr = this.f14588d;
        Object[] objArr2 = zzdurVar.f14588d;
        int i3 = this.f14586b;
        int i4 = 0;
        while (true) {
            if (i4 >= i3) {
                z2 = true;
                break;
            } else if (!objArr[i4].equals(objArr2[i4])) {
                z2 = false;
                break;
            } else {
                i4++;
            }
        }
        return z2;
    }

    public final int hashCode() {
        int i = this.f14586b;
        int[] iArr = this.f14587c;
        int i2 = 17;
        int i3 = 17;
        for (int i4 = 0; i4 < i; i4++) {
            i3 = (i3 * 31) + iArr[i4];
        }
        Object[] objArr = this.f14588d;
        int i5 = this.f14586b;
        for (int i6 = 0; i6 < i5; i6++) {
            i2 = (i2 * 31) + objArr[i6].hashCode();
        }
        return ((((i + 527) * 31) + i3) * 31) + i2;
    }

    public final void zzaxq() {
        this.f14590f = false;
    }

    public final int zzazu() {
        int i;
        int i2 = this.f14589e;
        if (i2 != -1) {
            return i2;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < this.f14586b; i4++) {
            int i5 = this.f14587c[i4];
            int i6 = i5 >>> 3;
            int i7 = i5 & 7;
            if (i7 == 0) {
                i = zzdrb.zzk(i6, ((Long) this.f14588d[i4]).longValue());
            } else if (i7 == 1) {
                i = zzdrb.zzm(i6, ((Long) this.f14588d[i4]).longValue());
            } else if (i7 == 2) {
                i = zzdrb.zzc(i6, (zzdqk) this.f14588d[i4]);
            } else if (i7 == 3) {
                i = (zzdrb.zzfz(i6) << 1) + ((zzdur) this.f14588d[i4]).zzazu();
            } else if (i7 == 5) {
                i = zzdrb.zzai(i6, ((Integer) this.f14588d[i4]).intValue());
            } else {
                throw new IllegalStateException(zzdse.m3342f());
            }
            i3 += i;
        }
        this.f14589e = i3;
        return i3;
    }

    public final void zzb(aku akuVar) {
        if (this.f14586b != 0) {
            if (akuVar.mo4990a() == zzdrt.zze.zzhnd) {
                for (int i = 0; i < this.f14586b; i++) {
                    m3330a(this.f14587c[i], this.f14588d[i], akuVar);
                }
                return;
            }
            for (int i2 = this.f14586b - 1; i2 >= 0; i2--) {
                m3330a(this.f14587c[i2], this.f14588d[i2], akuVar);
            }
        }
    }

    public final int zzbch() {
        int i = this.f14589e;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.f14586b; i3++) {
            i2 += zzdrb.zzd(this.f14587c[i3] >>> 3, (zzdqk) this.f14588d[i3]);
        }
        this.f14589e = i2;
        return i2;
    }
}
