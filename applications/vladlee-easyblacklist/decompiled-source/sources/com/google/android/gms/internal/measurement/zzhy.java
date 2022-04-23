package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzfd;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzhy.class */
public final class zzhy {

    /* renamed from: a */
    private static final zzhy f16308a = new zzhy(0, new int[0], new Object[0], false);

    /* renamed from: b */
    private int f16309b;

    /* renamed from: c */
    private int[] f16310c;

    /* renamed from: d */
    private Object[] f16311d;

    /* renamed from: e */
    private int f16312e;

    /* renamed from: f */
    private boolean f16313f;

    private zzhy() {
        this(0, new int[8], new Object[8], true);
    }

    private zzhy(int i, int[] iArr, Object[] objArr, boolean z) {
        this.f16312e = -1;
        this.f16309b = i;
        this.f16310c = iArr;
        this.f16311d = objArr;
        this.f16313f = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static zzhy m2249a() {
        return new zzhy();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static zzhy m2245a(zzhy zzhyVar, zzhy zzhyVar2) {
        int i = zzhyVar.f16309b + zzhyVar2.f16309b;
        int[] copyOf = Arrays.copyOf(zzhyVar.f16310c, i);
        System.arraycopy(zzhyVar2.f16310c, 0, copyOf, zzhyVar.f16309b, zzhyVar2.f16309b);
        Object[] copyOf2 = Arrays.copyOf(zzhyVar.f16311d, i);
        System.arraycopy(zzhyVar2.f16311d, 0, copyOf2, zzhyVar.f16309b, zzhyVar2.f16309b);
        return new zzhy(i, copyOf, copyOf2, true);
    }

    /* renamed from: a */
    private static void m2247a(int i, Object obj, AbstractC2606fc fcVar) {
        int i2 = i >>> 3;
        int i3 = i & 7;
        if (i3 == 0) {
            fcVar.mo2508a(i2, ((Long) obj).longValue());
        } else if (i3 == 1) {
            fcVar.mo2487d(i2, ((Long) obj).longValue());
        } else if (i3 == 2) {
            fcVar.mo2506a(i2, (zzdu) obj);
        } else if (i3 != 3) {
            if (i3 == 5) {
                fcVar.mo2488d(i2, ((Integer) obj).intValue());
                return;
            }
            throw new RuntimeException(zzfo.m2262f());
        } else if (fcVar.mo2513a() == zzfd.zze.zzj) {
            fcVar.mo2512a(i2);
            ((zzhy) obj).zzb(fcVar);
            fcVar.mo2498b(i2);
        } else {
            fcVar.mo2498b(i2);
            ((zzhy) obj).zzb(fcVar);
            fcVar.mo2512a(i2);
        }
    }

    public static zzhy zza() {
        return f16308a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m2248a(int i, Object obj) {
        if (this.f16313f) {
            int i2 = this.f16309b;
            if (i2 == this.f16310c.length) {
                int i3 = this.f16309b + (i2 < 4 ? 8 : i2 >> 1);
                this.f16310c = Arrays.copyOf(this.f16310c, i3);
                this.f16311d = Arrays.copyOf(this.f16311d, i3);
            }
            int[] iArr = this.f16310c;
            int i4 = this.f16309b;
            iArr[i4] = i;
            this.f16311d[i4] = obj;
            this.f16309b = i4 + 1;
            return;
        }
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m2246a(AbstractC2606fc fcVar) {
        if (fcVar.mo2513a() == zzfd.zze.zzk) {
            for (int i = this.f16309b - 1; i >= 0; i--) {
                fcVar.mo2505a(this.f16310c[i] >>> 3, this.f16311d[i]);
            }
            return;
        }
        for (int i2 = 0; i2 < this.f16309b; i2++) {
            fcVar.mo2505a(this.f16310c[i2] >>> 3, this.f16311d[i2]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m2244a(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.f16309b; i2++) {
            C2555dj.m2794a(sb, i, String.valueOf(this.f16310c[i2] >>> 3), this.f16311d[i2]);
        }
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzhy)) {
            return false;
        }
        zzhy zzhyVar = (zzhy) obj;
        int i = this.f16309b;
        if (i != zzhyVar.f16309b) {
            return false;
        }
        int[] iArr = this.f16310c;
        int[] iArr2 = zzhyVar.f16310c;
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
        Object[] objArr = this.f16311d;
        Object[] objArr2 = zzhyVar.f16311d;
        int i3 = this.f16309b;
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
        int i = this.f16309b;
        int[] iArr = this.f16310c;
        int i2 = 17;
        int i3 = 17;
        for (int i4 = 0; i4 < i; i4++) {
            i3 = (i3 * 31) + iArr[i4];
        }
        Object[] objArr = this.f16311d;
        int i5 = this.f16309b;
        for (int i6 = 0; i6 < i5; i6++) {
            i2 = (i2 * 31) + objArr[i6].hashCode();
        }
        return ((((i + 527) * 31) + i3) * 31) + i2;
    }

    public final void zzb(AbstractC2606fc fcVar) {
        if (this.f16309b != 0) {
            if (fcVar.mo2513a() == zzfd.zze.zzj) {
                for (int i = 0; i < this.f16309b; i++) {
                    m2247a(this.f16310c[i], this.f16311d[i], fcVar);
                }
                return;
            }
            for (int i2 = this.f16309b - 1; i2 >= 0; i2--) {
                m2247a(this.f16310c[i2], this.f16311d[i2], fcVar);
            }
        }
    }

    public final void zzc() {
        this.f16313f = false;
    }

    public final int zzd() {
        int i = this.f16312e;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.f16309b; i3++) {
            i2 += zzen.zzd(this.f16310c[i3] >>> 3, (zzdu) this.f16311d[i3]);
        }
        this.f16312e = i2;
        return i2;
    }

    public final int zze() {
        int i;
        int i2 = this.f16312e;
        if (i2 != -1) {
            return i2;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < this.f16309b; i4++) {
            int i5 = this.f16310c[i4];
            int i6 = i5 >>> 3;
            int i7 = i5 & 7;
            if (i7 == 0) {
                i = zzen.zze(i6, ((Long) this.f16311d[i4]).longValue());
            } else if (i7 == 1) {
                i = zzen.zzg(i6, ((Long) this.f16311d[i4]).longValue());
            } else if (i7 == 2) {
                i = zzen.zzc(i6, (zzdu) this.f16311d[i4]);
            } else if (i7 == 3) {
                i = (zzen.zze(i6) << 1) + ((zzhy) this.f16311d[i4]).zze();
            } else if (i7 == 5) {
                i = zzen.zzi(i6, ((Integer) this.f16311d[i4]).intValue());
            } else {
                throw new IllegalStateException(zzfo.m2262f());
            }
            i3 += i;
        }
        this.f16312e = i3;
        return i3;
    }
}
