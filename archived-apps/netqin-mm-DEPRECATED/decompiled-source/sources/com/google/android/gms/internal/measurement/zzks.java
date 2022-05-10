package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Arrays;
import p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4582r5;
import p131c.p161d.p170b.p224d.p252g.p258f.C4458a4;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzks.class */
public final class zzks {

    /* renamed from: f */
    public static final zzks f29519f = new zzks(0, new int[0], new Object[0], false);

    /* renamed from: a */
    public int f29520a;

    /* renamed from: b */
    public int[] f29521b;

    /* renamed from: c */
    public Object[] f29522c;

    /* renamed from: d */
    public int f29523d;

    /* renamed from: e */
    public boolean f29524e;

    public zzks() {
        this(0, new int[8], new Object[8], true);
    }

    public zzks(int i, int[] iArr, Object[] objArr, boolean z) {
        this.f29523d = -1;
        this.f29520a = i;
        this.f29521b = iArr;
        this.f29522c = objArr;
        this.f29524e = z;
    }

    /* renamed from: a */
    public static zzks m9605a(zzks zzksVar, zzks zzksVar2) {
        int i = zzksVar.f29520a + zzksVar2.f29520a;
        int[] copyOf = Arrays.copyOf(zzksVar.f29521b, i);
        System.arraycopy(zzksVar2.f29521b, 0, copyOf, zzksVar.f29520a, zzksVar2.f29520a);
        Object[] copyOf2 = Arrays.copyOf(zzksVar.f29522c, i);
        System.arraycopy(zzksVar2.f29522c, 0, copyOf2, zzksVar.f29520a, zzksVar2.f29520a);
        return new zzks(i, copyOf, copyOf2, true);
    }

    /* renamed from: a */
    public static void m9607a(int i, Object obj, AbstractC4582r5 r5Var) throws IOException {
        int i2 = i >>> 3;
        int i3 = i & 7;
        if (i3 == 0) {
            r5Var.mo25136e(i2, ((Long) obj).longValue());
        } else if (i3 == 1) {
            r5Var.mo25139d(i2, ((Long) obj).longValue());
        } else if (i3 == 2) {
            r5Var.mo25158a(i2, (zzgp) obj);
        } else if (i3 != 3) {
            if (i3 == 5) {
                r5Var.mo25140d(i2, ((Integer) obj).intValue());
                return;
            }
            throw new RuntimeException(zzij.zzf());
        } else if (r5Var.zza() == zzlp.f29528a) {
            r5Var.zza(i2);
            ((zzks) obj).m9602b(r5Var);
            r5Var.zzb(i2);
        } else {
            r5Var.zzb(i2);
            ((zzks) obj).m9602b(r5Var);
            r5Var.zza(i2);
        }
    }

    /* renamed from: d */
    public static zzks m9600d() {
        return f29519f;
    }

    /* renamed from: e */
    public static zzks m9599e() {
        return new zzks();
    }

    /* renamed from: a */
    public final void m9609a() {
        this.f29524e = false;
    }

    /* renamed from: a */
    public final void m9608a(int i, Object obj) {
        if (this.f29524e) {
            int i2 = this.f29520a;
            if (i2 == this.f29521b.length) {
                int i3 = this.f29520a + (i2 < 4 ? 8 : i2 >> 1);
                this.f29521b = Arrays.copyOf(this.f29521b, i3);
                this.f29522c = Arrays.copyOf(this.f29522c, i3);
            }
            int[] iArr = this.f29521b;
            int i4 = this.f29520a;
            iArr[i4] = i;
            this.f29522c[i4] = obj;
            this.f29520a = i4 + 1;
            return;
        }
        throw new UnsupportedOperationException();
    }

    /* renamed from: a */
    public final void m9606a(AbstractC4582r5 r5Var) throws IOException {
        if (r5Var.zza() == zzlp.f29529b) {
            for (int i = this.f29520a - 1; i >= 0; i--) {
                r5Var.mo25157a(this.f29521b[i] >>> 3, this.f29522c[i]);
            }
            return;
        }
        for (int i2 = 0; i2 < this.f29520a; i2++) {
            r5Var.mo25157a(this.f29521b[i2] >>> 3, this.f29522c[i2]);
        }
    }

    /* renamed from: a */
    public final void m9604a(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.f29520a; i2++) {
            C4458a4.m25562a(sb, i, String.valueOf(this.f29521b[i2] >>> 3), this.f29522c[i2]);
        }
    }

    /* renamed from: b */
    public final int m9603b() {
        int i = this.f29523d;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.f29520a; i3++) {
            i2 += zzhi.m9727d(this.f29521b[i3] >>> 3, (zzgp) this.f29522c[i3]);
        }
        this.f29523d = i2;
        return i2;
    }

    /* renamed from: b */
    public final void m9602b(AbstractC4582r5 r5Var) throws IOException {
        if (this.f29520a != 0) {
            if (r5Var.zza() == zzlp.f29528a) {
                for (int i = 0; i < this.f29520a; i++) {
                    m9607a(this.f29521b[i], this.f29522c[i], r5Var);
                }
                return;
            }
            for (int i2 = this.f29520a - 1; i2 >= 0; i2--) {
                m9607a(this.f29521b[i2], this.f29522c[i2], r5Var);
            }
        }
    }

    /* renamed from: c */
    public final int m9601c() {
        int i;
        int i2 = this.f29523d;
        if (i2 != -1) {
            return i2;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < this.f29520a; i4++) {
            int i5 = this.f29521b[i4];
            int i6 = i5 >>> 3;
            int i7 = i5 & 7;
            if (i7 == 0) {
                i = zzhi.m9724e(i6, ((Long) this.f29522c[i4]).longValue());
            } else if (i7 == 1) {
                i = zzhi.m9716g(i6, ((Long) this.f29522c[i4]).longValue());
            } else if (i7 == 2) {
                i = zzhi.m9732c(i6, (zzgp) this.f29522c[i4]);
            } else if (i7 == 3) {
                i = (zzhi.m9725e(i6) << 1) + ((zzks) this.f29522c[i4]).m9601c();
            } else if (i7 == 5) {
                i = zzhi.m9709i(i6, ((Integer) this.f29522c[i4]).intValue());
            } else {
                throw new IllegalStateException(zzij.zzf());
            }
            i3 += i;
        }
        this.f29523d = i3;
        return i3;
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzks)) {
            return false;
        }
        zzks zzksVar = (zzks) obj;
        int i = this.f29520a;
        if (i != zzksVar.f29520a) {
            return false;
        }
        int[] iArr = this.f29521b;
        int[] iArr2 = zzksVar.f29521b;
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
        Object[] objArr = this.f29522c;
        Object[] objArr2 = zzksVar.f29522c;
        int i3 = this.f29520a;
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
        int i = this.f29520a;
        int[] iArr = this.f29521b;
        int i2 = 17;
        int i3 = 17;
        for (int i4 = 0; i4 < i; i4++) {
            i3 = (i3 * 31) + iArr[i4];
        }
        Object[] objArr = this.f29522c;
        int i5 = this.f29520a;
        for (int i6 = 0; i6 < i5; i6++) {
            i2 = (i2 * 31) + objArr[i6].hashCode();
        }
        return ((((i + 527) * 31) + i3) * 31) + i2;
    }
}
