package com.google.android.gms.internal.measurement;

import com.google.android.gms.common.api.Api;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: com.google.android.gms.internal.measurement.bs */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/bs.class */
final class C2510bs extends AbstractC2507bp<Boolean> implements AbstractC2563dr, zzfl<Boolean>, RandomAccess {

    /* renamed from: a */
    private static final C2510bs f15894a;

    /* renamed from: b */
    private boolean[] f15895b;

    /* renamed from: c */
    private int f15896c;

    static {
        C2510bs bsVar = new C2510bs(new boolean[0], 0);
        f15894a = bsVar;
        bsVar.mo2268h_();
    }

    C2510bs() {
        this(new boolean[10], 0);
    }

    private C2510bs(boolean[] zArr, int i) {
        this.f15895b = zArr;
        this.f15896c = i;
    }

    /* renamed from: a */
    private final void m2895a(int i) {
        if (i < 0 || i >= this.f15896c) {
            throw new IndexOutOfBoundsException(m2893b(i));
        }
    }

    /* renamed from: b */
    private final String m2893b(int i) {
        int i2 = this.f15896c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    /* renamed from: a */
    public final void m2894a(boolean z) {
        m2916a();
        int i = this.f15896c;
        boolean[] zArr = this.f15895b;
        if (i == zArr.length) {
            boolean[] zArr2 = new boolean[((i * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i);
            this.f15895b = zArr2;
        }
        boolean[] zArr3 = this.f15895b;
        int i2 = this.f15896c;
        this.f15896c = i2 + 1;
        zArr3[i2] = z;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2507bp, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        boolean booleanValue = ((Boolean) obj).booleanValue();
        m2916a();
        if (i < 0 || i > (i2 = this.f15896c)) {
            throw new IndexOutOfBoundsException(m2893b(i));
        }
        boolean[] zArr = this.f15895b;
        if (i2 < zArr.length) {
            System.arraycopy(zArr, i, zArr, i + 1, i2 - i);
        } else {
            boolean[] zArr2 = new boolean[((i2 * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i);
            System.arraycopy(this.f15895b, i, zArr2, i + 1, this.f15896c - i);
            this.f15895b = zArr2;
        }
        this.f15895b[i] = booleanValue;
        this.f15896c++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2507bp, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        m2894a(((Boolean) obj).booleanValue());
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2507bp, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Boolean> collection) {
        m2916a();
        zzff.m2271a(collection);
        if (!(collection instanceof C2510bs)) {
            return super.addAll(collection);
        }
        C2510bs bsVar = (C2510bs) collection;
        int i = bsVar.f15896c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f15896c;
        if (Api.BaseClientBuilder.API_PRIORITY_OTHER - i2 >= i) {
            int i3 = i2 + i;
            boolean[] zArr = this.f15895b;
            if (i3 > zArr.length) {
                this.f15895b = Arrays.copyOf(zArr, i3);
            }
            System.arraycopy(bsVar.f15895b, 0, this.f15895b, this.f15896c, bsVar.f15896c);
            this.f15896c = i3;
            this.modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2507bp, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2510bs)) {
            return super.equals(obj);
        }
        C2510bs bsVar = (C2510bs) obj;
        if (this.f15896c != bsVar.f15896c) {
            return false;
        }
        boolean[] zArr = bsVar.f15895b;
        for (int i = 0; i < this.f15896c; i++) {
            if (this.f15895b[i] != zArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        m2895a(i);
        return Boolean.valueOf(this.f15895b[i]);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2507bp, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f15896c; i2++) {
            i = (i * 31) + zzff.zza(this.f15895b[i2]);
        }
        return i;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2507bp, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m2916a();
        m2895a(i);
        boolean[] zArr = this.f15895b;
        boolean z = zArr[i];
        int i2 = this.f15896c;
        if (i < i2 - 1) {
            System.arraycopy(zArr, i + 1, zArr, i, (i2 - i) - 1);
        }
        this.f15896c--;
        this.modCount++;
        return Boolean.valueOf(z);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2507bp, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        m2916a();
        for (int i = 0; i < this.f15896c; i++) {
            if (obj.equals(Boolean.valueOf(this.f15895b[i]))) {
                boolean[] zArr = this.f15895b;
                System.arraycopy(zArr, i + 1, zArr, i, (this.f15896c - i) - 1);
                this.f15896c--;
                this.modCount++;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        m2916a();
        if (i2 >= i) {
            boolean[] zArr = this.f15895b;
            System.arraycopy(zArr, i2, zArr, i, this.f15896c - i2);
            this.f15896c -= i2 - i;
            this.modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2507bp, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        m2916a();
        m2895a(i);
        boolean[] zArr = this.f15895b;
        boolean z = zArr[i];
        zArr[i] = booleanValue;
        return Boolean.valueOf(z);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f15896c;
    }

    @Override // com.google.android.gms.internal.measurement.zzfl
    public final /* synthetic */ zzfl<Boolean> zza(int i) {
        if (i >= this.f15896c) {
            return new C2510bs(Arrays.copyOf(this.f15895b, i), this.f15896c);
        }
        throw new IllegalArgumentException();
    }
}
