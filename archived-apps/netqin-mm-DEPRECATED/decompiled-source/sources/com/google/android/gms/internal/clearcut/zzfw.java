package com.google.android.gms.internal.clearcut;

import p131c.p161d.p170b.p224d.p252g.p255c.C4412s2;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzfw.class */
public final class zzfw implements Cloneable {

    /* renamed from: a */
    public int[] f29282a;

    /* renamed from: b */
    public C4412s2[] f29283b;

    /* renamed from: c */
    public int f29284c;

    static {
        new C4412s2();
    }

    public zzfw() {
        this(10);
    }

    public zzfw(int i) {
        int i2;
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
        this.f29282a = new int[i5];
        this.f29283b = new C4412s2[i5];
        this.f29284c = 0;
    }

    /* renamed from: a */
    public final C4412s2 m10630a(int i) {
        return this.f29283b[i];
    }

    /* renamed from: c */
    public final boolean m10629c() {
        return this.f29284c == 0;
    }

    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        int i = this.f29284c;
        zzfw zzfwVar = new zzfw(i);
        System.arraycopy(this.f29282a, 0, zzfwVar.f29282a, 0, i);
        for (int i2 = 0; i2 < i; i2++) {
            C4412s2[] s2VarArr = this.f29283b;
            if (s2VarArr[i2] != null) {
                zzfwVar.f29283b[i2] = (C4412s2) s2VarArr[i2].clone();
            }
        }
        zzfwVar.f29284c = i;
        return zzfwVar;
    }

    /* renamed from: e */
    public final int m10628e() {
        return this.f29284c;
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzfw)) {
            return false;
        }
        zzfw zzfwVar = (zzfw) obj;
        int i = this.f29284c;
        if (i != zzfwVar.f29284c) {
            return false;
        }
        int[] iArr = this.f29282a;
        int[] iArr2 = zzfwVar.f29282a;
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
        C4412s2[] s2VarArr = this.f29283b;
        C4412s2[] s2VarArr2 = zzfwVar.f29283b;
        int i3 = this.f29284c;
        int i4 = 0;
        while (true) {
            if (i4 >= i3) {
                z2 = true;
                break;
            } else if (!s2VarArr[i4].equals(s2VarArr2[i4])) {
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
        for (int i2 = 0; i2 < this.f29284c; i2++) {
            i = (((i * 31) + this.f29282a[i2]) * 31) + this.f29283b[i2].hashCode();
        }
        return i;
    }
}
