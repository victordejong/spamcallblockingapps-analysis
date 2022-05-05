package com.google.android.gms.internal.measurement;

import com.google.android.gms.common.api.Api;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: com.google.android.gms.internal.measurement.ct */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ct.class */
final class C2538ct extends AbstractC2507bp<Integer> implements AbstractC2563dr, zzfj, RandomAccess {

    /* renamed from: a */
    private static final C2538ct f15952a;

    /* renamed from: b */
    private int[] f15953b;

    /* renamed from: c */
    private int f15954c;

    static {
        C2538ct ctVar = new C2538ct(new int[0], 0);
        f15952a = ctVar;
        ctVar.mo2268h_();
    }

    C2538ct() {
        this(new int[10], 0);
    }

    private C2538ct(int[] iArr, int i) {
        this.f15953b = iArr;
        this.f15954c = i;
    }

    /* renamed from: b */
    public static C2538ct m2828b() {
        return f15952a;
    }

    /* renamed from: c */
    private final void m2826c(int i) {
        if (i < 0 || i >= this.f15954c) {
            throw new IndexOutOfBoundsException(m2825d(i));
        }
    }

    /* renamed from: d */
    private final String m2825d(int i) {
        int i2 = this.f15954c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    /* renamed from: a */
    public final int m2829a(int i) {
        m2826c(i);
        return this.f15953b[i];
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2507bp, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        int intValue = ((Integer) obj).intValue();
        m2916a();
        if (i < 0 || i > (i2 = this.f15954c)) {
            throw new IndexOutOfBoundsException(m2825d(i));
        }
        int[] iArr = this.f15953b;
        if (i2 < iArr.length) {
            System.arraycopy(iArr, i, iArr, i + 1, i2 - i);
        } else {
            int[] iArr2 = new int[((i2 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i);
            System.arraycopy(this.f15953b, i, iArr2, i + 1, this.f15954c - i);
            this.f15953b = iArr2;
        }
        this.f15953b[i] = intValue;
        this.f15954c++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2507bp, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        m2827b(((Integer) obj).intValue());
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2507bp, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Integer> collection) {
        m2916a();
        zzff.m2271a(collection);
        if (!(collection instanceof C2538ct)) {
            return super.addAll(collection);
        }
        C2538ct ctVar = (C2538ct) collection;
        int i = ctVar.f15954c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f15954c;
        if (Api.BaseClientBuilder.API_PRIORITY_OTHER - i2 >= i) {
            int i3 = i2 + i;
            int[] iArr = this.f15953b;
            if (i3 > iArr.length) {
                this.f15953b = Arrays.copyOf(iArr, i3);
            }
            System.arraycopy(ctVar.f15953b, 0, this.f15953b, this.f15954c, ctVar.f15954c);
            this.f15954c = i3;
            this.modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    /* renamed from: b */
    public final void m2827b(int i) {
        m2916a();
        int i2 = this.f15954c;
        int[] iArr = this.f15953b;
        if (i2 == iArr.length) {
            int[] iArr2 = new int[((i2 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            this.f15953b = iArr2;
        }
        int[] iArr3 = this.f15953b;
        int i3 = this.f15954c;
        this.f15954c = i3 + 1;
        iArr3[i3] = i;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2507bp, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2538ct)) {
            return super.equals(obj);
        }
        C2538ct ctVar = (C2538ct) obj;
        if (this.f15954c != ctVar.f15954c) {
            return false;
        }
        int[] iArr = ctVar.f15953b;
        for (int i = 0; i < this.f15954c; i++) {
            if (this.f15953b[i] != iArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return Integer.valueOf(m2829a(i));
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2507bp, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f15954c; i2++) {
            i = (i * 31) + this.f15953b[i2];
        }
        return i;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2507bp, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m2916a();
        m2826c(i);
        int[] iArr = this.f15953b;
        int i2 = iArr[i];
        int i3 = this.f15954c;
        if (i < i3 - 1) {
            System.arraycopy(iArr, i + 1, iArr, i, (i3 - i) - 1);
        }
        this.f15954c--;
        this.modCount++;
        return Integer.valueOf(i2);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2507bp, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        m2916a();
        for (int i = 0; i < this.f15954c; i++) {
            if (obj.equals(Integer.valueOf(this.f15953b[i]))) {
                int[] iArr = this.f15953b;
                System.arraycopy(iArr, i + 1, iArr, i, (this.f15954c - i) - 1);
                this.f15954c--;
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
            int[] iArr = this.f15953b;
            System.arraycopy(iArr, i2, iArr, i, this.f15954c - i2);
            this.f15954c -= i2 - i;
            this.modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2507bp, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        int intValue = ((Integer) obj).intValue();
        m2916a();
        m2826c(i);
        int[] iArr = this.f15953b;
        int i2 = iArr[i];
        iArr[i] = intValue;
        return Integer.valueOf(i2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f15954c;
    }

    @Override // com.google.android.gms.internal.measurement.zzfj
    /* renamed from: zzb */
    public final zzfj zza(int i) {
        if (i >= this.f15954c) {
            return new C2538ct(Arrays.copyOf(this.f15953b, i), this.f15954c);
        }
        throw new IllegalArgumentException();
    }
}
