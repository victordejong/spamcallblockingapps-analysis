package com.google.android.gms.internal.ads;

import com.google.android.gms.common.api.Api;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aie.class */
final class aie extends ahb<Float> implements aje, zzdsb<Float>, RandomAccess {

    /* renamed from: a */
    private static final aie f7411a;

    /* renamed from: b */
    private float[] f7412b;

    /* renamed from: c */
    private int f7413c;

    static {
        aie aieVar = new aie(new float[0], 0);
        f7411a = aieVar;
        aieVar.zzaxq();
    }

    aie() {
        this(new float[10], 0);
    }

    private aie(float[] fArr, int i) {
        this.f7412b = fArr;
        this.f7413c = i;
    }

    /* renamed from: a */
    private final void m5331a(int i) {
        if (i < 0 || i >= this.f7413c) {
            throw new IndexOutOfBoundsException(m5330b(i));
        }
    }

    /* renamed from: b */
    private final String m5330b(int i) {
        int i2 = this.f7413c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    /* renamed from: a */
    public final void m5332a(float f) {
        m5424a();
        int i = this.f7413c;
        float[] fArr = this.f7412b;
        if (i == fArr.length) {
            float[] fArr2 = new float[((i * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i);
            this.f7412b = fArr2;
        }
        float[] fArr3 = this.f7412b;
        int i2 = this.f7413c;
        this.f7413c = i2 + 1;
        fArr3[i2] = f;
    }

    @Override // com.google.android.gms.internal.ads.ahb, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        float floatValue = ((Float) obj).floatValue();
        m5424a();
        if (i < 0 || i > (i2 = this.f7413c)) {
            throw new IndexOutOfBoundsException(m5330b(i));
        }
        float[] fArr = this.f7412b;
        if (i2 < fArr.length) {
            System.arraycopy(fArr, i, fArr, i + 1, i2 - i);
        } else {
            float[] fArr2 = new float[((i2 * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i);
            System.arraycopy(this.f7412b, i, fArr2, i + 1, this.f7413c - i);
            this.f7412b = fArr2;
        }
        this.f7412b[i] = floatValue;
        this.f7413c++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.ads.ahb, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        m5332a(((Float) obj).floatValue());
        return true;
    }

    @Override // com.google.android.gms.internal.ads.ahb, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Float> collection) {
        m5424a();
        zzdrv.m3351a(collection);
        if (!(collection instanceof aie)) {
            return super.addAll(collection);
        }
        aie aieVar = (aie) collection;
        int i = aieVar.f7413c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f7413c;
        if (Api.BaseClientBuilder.API_PRIORITY_OTHER - i2 >= i) {
            int i3 = i2 + i;
            float[] fArr = this.f7412b;
            if (i3 > fArr.length) {
                this.f7412b = Arrays.copyOf(fArr, i3);
            }
            System.arraycopy(aieVar.f7412b, 0, this.f7412b, this.f7413c, aieVar.f7413c);
            this.f7413c = i3;
            this.modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // com.google.android.gms.internal.ads.ahb, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof aie)) {
            return super.equals(obj);
        }
        aie aieVar = (aie) obj;
        if (this.f7413c != aieVar.f7413c) {
            return false;
        }
        float[] fArr = aieVar.f7412b;
        for (int i = 0; i < this.f7413c; i++) {
            if (Float.floatToIntBits(this.f7412b[i]) != Float.floatToIntBits(fArr[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        m5331a(i);
        return Float.valueOf(this.f7412b[i]);
    }

    @Override // com.google.android.gms.internal.ads.ahb, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f7413c; i2++) {
            i = (i * 31) + Float.floatToIntBits(this.f7412b[i2]);
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.ahb, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m5424a();
        m5331a(i);
        float[] fArr = this.f7412b;
        float f = fArr[i];
        int i2 = this.f7413c;
        if (i < i2 - 1) {
            System.arraycopy(fArr, i + 1, fArr, i, (i2 - i) - 1);
        }
        this.f7413c--;
        this.modCount++;
        return Float.valueOf(f);
    }

    @Override // com.google.android.gms.internal.ads.ahb, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        m5424a();
        for (int i = 0; i < this.f7413c; i++) {
            if (obj.equals(Float.valueOf(this.f7412b[i]))) {
                float[] fArr = this.f7412b;
                System.arraycopy(fArr, i + 1, fArr, i, (this.f7413c - i) - 1);
                this.f7413c--;
                this.modCount++;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        m5424a();
        if (i2 >= i) {
            float[] fArr = this.f7412b;
            System.arraycopy(fArr, i2, fArr, i, this.f7413c - i2);
            this.f7413c -= i2 - i;
            this.modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.ads.ahb, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        float floatValue = ((Float) obj).floatValue();
        m5424a();
        m5331a(i);
        float[] fArr = this.f7412b;
        float f = fArr[i];
        fArr[i] = floatValue;
        return Float.valueOf(f);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f7413c;
    }

    @Override // com.google.android.gms.internal.ads.zzdsb
    public final /* synthetic */ zzdsb<Float> zzfd(int i) {
        if (i >= this.f7413c) {
            return new aie(Arrays.copyOf(this.f7412b, i), this.f7413c);
        }
        throw new IllegalArgumentException();
    }
}
