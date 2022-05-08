package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdvs.class */
public final class zzdvs implements Cloneable {

    /* renamed from: a */
    private static final akv f14602a = new akv();

    /* renamed from: b */
    private boolean f14603b;

    /* renamed from: c */
    private int[] f14604c;

    /* renamed from: d */
    private akv[] f14605d;

    /* renamed from: e */
    private int f14606e;

    zzdvs() {
        this(10);
    }

    private zzdvs(int i) {
        int i2;
        this.f14603b = false;
        int i3 = i << 2;
        int i4 = 4;
        while (true) {
            i2 = i3;
            if (i4 >= 32) {
                break;
            }
            i2 = (1 << i4) - 12;
            if (i3 <= i2) {
                break;
            }
            i4++;
        }
        int i5 = i2 / 4;
        this.f14604c = new int[i5];
        this.f14605d = new akv[i5];
        this.f14606e = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final int m3321a() {
        return this.f14606e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final akv m3320a(int i) {
        return this.f14605d[i];
    }

    public final /* synthetic */ Object clone() {
        int i = this.f14606e;
        zzdvs zzdvsVar = new zzdvs(i);
        System.arraycopy(this.f14604c, 0, zzdvsVar.f14604c, 0, i);
        for (int i2 = 0; i2 < i; i2++) {
            akv[] akvVarArr = this.f14605d;
            if (akvVarArr[i2] != null) {
                zzdvsVar.f14605d[i2] = (akv) akvVarArr[i2].clone();
            }
        }
        zzdvsVar.f14606e = i;
        return zzdvsVar;
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzdvs)) {
            return false;
        }
        zzdvs zzdvsVar = (zzdvs) obj;
        int i = this.f14606e;
        if (i != zzdvsVar.f14606e) {
            return false;
        }
        int[] iArr = this.f14604c;
        int[] iArr2 = zzdvsVar.f14604c;
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
        akv[] akvVarArr = this.f14605d;
        akv[] akvVarArr2 = zzdvsVar.f14605d;
        int i3 = this.f14606e;
        int i4 = 0;
        while (true) {
            if (i4 >= i3) {
                z2 = true;
                break;
            } else if (!akvVarArr[i4].equals(akvVarArr2[i4])) {
                z2 = false;
                break;
            } else {
                i4++;
            }
        }
        return z2;
    }

    public final int hashCode() {
        int i = 17;
        for (int i2 = 0; i2 < this.f14606e; i2++) {
            i = (((i * 31) + this.f14604c[i2]) * 31) + this.f14605d[i2].hashCode();
        }
        return i;
    }
}
