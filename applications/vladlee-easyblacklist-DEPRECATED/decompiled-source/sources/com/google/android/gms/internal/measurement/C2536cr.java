package com.google.android.gms.internal.measurement;

import com.google.android.gms.common.api.Api;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: com.google.android.gms.internal.measurement.cr */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/cr.class */
final class C2536cr extends AbstractC2507bp<Float> implements AbstractC2563dr, zzfl<Float>, RandomAccess {

    /* renamed from: a */
    private static final C2536cr f15948a;

    /* renamed from: b */
    private float[] f15949b;

    /* renamed from: c */
    private int f15950c;

    static {
        C2536cr crVar = new C2536cr(new float[0], 0);
        f15948a = crVar;
        crVar.mo2268h_();
    }

    C2536cr() {
        this(new float[10], 0);
    }

    private C2536cr(float[] fArr, int i) {
        this.f15949b = fArr;
        this.f15950c = i;
    }

    /* renamed from: a */
    private final void m2832a(int i) {
        if (i < 0 || i >= this.f15950c) {
            throw new IndexOutOfBoundsException(m2831b(i));
        }
    }

    /* renamed from: b */
    private final String m2831b(int i) {
        int i2 = this.f15950c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    /* renamed from: a */
    public final void m2833a(float f) {
        m2916a();
        int i = this.f15950c;
        float[] fArr = this.f15949b;
        if (i == fArr.length) {
            float[] fArr2 = new float[((i * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i);
            this.f15949b = fArr2;
        }
        float[] fArr3 = this.f15949b;
        int i2 = this.f15950c;
        this.f15950c = i2 + 1;
        fArr3[i2] = f;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2507bp, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        float floatValue = ((Float) obj).floatValue();
        m2916a();
        if (i < 0 || i > (i2 = this.f15950c)) {
            throw new IndexOutOfBoundsException(m2831b(i));
        }
        float[] fArr = this.f15949b;
        if (i2 < fArr.length) {
            System.arraycopy(fArr, i, fArr, i + 1, i2 - i);
        } else {
            float[] fArr2 = new float[((i2 * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i);
            System.arraycopy(this.f15949b, i, fArr2, i + 1, this.f15950c - i);
            this.f15949b = fArr2;
        }
        this.f15949b[i] = floatValue;
        this.f15950c++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2507bp, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        m2833a(((Float) obj).floatValue());
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2507bp, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Float> collection) {
        m2916a();
        zzff.m2271a(collection);
        if (!(collection instanceof C2536cr)) {
            return super.addAll(collection);
        }
        C2536cr crVar = (C2536cr) collection;
        int i = crVar.f15950c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f15950c;
        if (Api.BaseClientBuilder.API_PRIORITY_OTHER - i2 >= i) {
            int i3 = i2 + i;
            float[] fArr = this.f15949b;
            if (i3 > fArr.length) {
                this.f15949b = Arrays.copyOf(fArr, i3);
            }
            System.arraycopy(crVar.f15949b, 0, this.f15949b, this.f15950c, crVar.f15950c);
            this.f15950c = i3;
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
        if (!(obj instanceof C2536cr)) {
            return super.equals(obj);
        }
        C2536cr crVar = (C2536cr) obj;
        if (this.f15950c != crVar.f15950c) {
            return false;
        }
        float[] fArr = crVar.f15949b;
        for (int i = 0; i < this.f15950c; i++) {
            if (Float.floatToIntBits(this.f15949b[i]) != Float.floatToIntBits(fArr[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        m2832a(i);
        return Float.valueOf(this.f15949b[i]);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2507bp, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f15950c; i2++) {
            i = (i * 31) + Float.floatToIntBits(this.f15949b[i2]);
        }
        return i;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2507bp, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m2916a();
        m2832a(i);
        float[] fArr = this.f15949b;
        float f = fArr[i];
        int i2 = this.f15950c;
        if (i < i2 - 1) {
            System.arraycopy(fArr, i + 1, fArr, i, (i2 - i) - 1);
        }
        this.f15950c--;
        this.modCount++;
        return Float.valueOf(f);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2507bp, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        m2916a();
        for (int i = 0; i < this.f15950c; i++) {
            if (obj.equals(Float.valueOf(this.f15949b[i]))) {
                float[] fArr = this.f15949b;
                System.arraycopy(fArr, i + 1, fArr, i, (this.f15950c - i) - 1);
                this.f15950c--;
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
            float[] fArr = this.f15949b;
            System.arraycopy(fArr, i2, fArr, i, this.f15950c - i2);
            this.f15950c -= i2 - i;
            this.modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2507bp, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        float floatValue = ((Float) obj).floatValue();
        m2916a();
        m2832a(i);
        float[] fArr = this.f15949b;
        float f = fArr[i];
        fArr[i] = floatValue;
        return Float.valueOf(f);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f15950c;
    }

    @Override // com.google.android.gms.internal.measurement.zzfl
    public final /* synthetic */ zzfl<Float> zza(int i) {
        if (i >= this.f15950c) {
            return new C2536cr(Arrays.copyOf(this.f15949b, i), this.f15950c);
        }
        throw new IllegalArgumentException();
    }
}
