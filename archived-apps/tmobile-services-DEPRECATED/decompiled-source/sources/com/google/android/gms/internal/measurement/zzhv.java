package com.google.android.gms.internal.measurement;

import com.google.android.gms.common.api.Api;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzhv.class */
final class zzhv extends zzgl<Float> implements zzii<Float>, zzjt, RandomAccess {

    /* renamed from: g */
    private float[] f8513g;

    /* renamed from: h */
    private int f8514h;

    static {
        new zzhv(new float[0], 0).zzb();
    }

    zzhv() {
        this(new float[10], 0);
    }

    private zzhv(float[] fArr, int i) {
        this.f8513g = fArr;
        this.f8514h = i;
    }

    /* renamed from: e */
    private final void m12439e(int i) {
        if (i < 0 || i >= this.f8514h) {
            throw new IndexOutOfBoundsException(m12438f(i));
        }
    }

    /* renamed from: f */
    private final String m12438f(int i) {
        int i2 = this.f8514h;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.measurement.zzii
    /* renamed from: a */
    public final /* synthetic */ zzii<Float> mo12266a(int i) {
        if (i >= this.f8514h) {
            return new zzhv(Arrays.copyOf(this.f8513g, i), this.f8514h);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.measurement.zzgl, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        float floatValue = ((Float) obj).floatValue();
        m12656c();
        if (i < 0 || i > (i2 = this.f8514h)) {
            throw new IndexOutOfBoundsException(m12438f(i));
        }
        float[] fArr = this.f8513g;
        if (i2 < fArr.length) {
            System.arraycopy(fArr, i, fArr, i + 1, i2 - i);
        } else {
            float[] fArr2 = new float[((i2 * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i);
            System.arraycopy(this.f8513g, i, fArr2, i + 1, this.f8514h - i);
            this.f8513g = fArr2;
        }
        this.f8513g[i] = floatValue;
        this.f8514h++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zzgl, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        m12440d(((Float) obj).floatValue());
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzgl, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Float> collection) {
        m12656c();
        zzic.m12394d(collection);
        if (!(collection instanceof zzhv)) {
            return super.addAll(collection);
        }
        zzhv zzhvVar = (zzhv) collection;
        int i = zzhvVar.f8514h;
        if (i == 0) {
            return false;
        }
        int i2 = this.f8514h;
        if (Api.BaseClientBuilder.API_PRIORITY_OTHER - i2 >= i) {
            int i3 = i2 + i;
            float[] fArr = this.f8513g;
            if (i3 > fArr.length) {
                this.f8513g = Arrays.copyOf(fArr, i3);
            }
            System.arraycopy(zzhvVar.f8513g, 0, this.f8513g, this.f8514h, zzhvVar.f8514h);
            this.f8514h = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    /* renamed from: d */
    public final void m12440d(float f) {
        m12656c();
        int i = this.f8514h;
        float[] fArr = this.f8513g;
        if (i == fArr.length) {
            float[] fArr2 = new float[((i * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i);
            this.f8513g = fArr2;
        }
        float[] fArr3 = this.f8513g;
        int i2 = this.f8514h;
        this.f8514h = i2 + 1;
        fArr3[i2] = f;
    }

    @Override // com.google.android.gms.internal.measurement.zzgl, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzhv)) {
            return super.equals(obj);
        }
        zzhv zzhvVar = (zzhv) obj;
        if (this.f8514h != zzhvVar.f8514h) {
            return false;
        }
        float[] fArr = zzhvVar.f8513g;
        for (int i = 0; i < this.f8514h; i++) {
            if (Float.floatToIntBits(this.f8513g[i]) != Float.floatToIntBits(fArr[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        m12439e(i);
        return Float.valueOf(this.f8513g[i]);
    }

    @Override // com.google.android.gms.internal.measurement.zzgl, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f8514h; i2++) {
            i = (i * 31) + Float.floatToIntBits(this.f8513g[i2]);
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Float)) {
            return -1;
        }
        float floatValue = ((Float) obj).floatValue();
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.f8513g[i] == floatValue) {
                return i;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.measurement.zzgl, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m12656c();
        m12439e(i);
        float[] fArr = this.f8513g;
        float f = fArr[i];
        int i2 = this.f8514h;
        if (i < i2 - 1) {
            System.arraycopy(fArr, i + 1, fArr, i, (i2 - i) - 1);
        }
        this.f8514h--;
        ((AbstractList) this).modCount++;
        return Float.valueOf(f);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        m12656c();
        if (i2 >= i) {
            float[] fArr = this.f8513g;
            System.arraycopy(fArr, i2, fArr, i, this.f8514h - i2);
            this.f8514h -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.measurement.zzgl, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        float floatValue = ((Float) obj).floatValue();
        m12656c();
        m12439e(i);
        float[] fArr = this.f8513g;
        float f = fArr[i];
        fArr[i] = floatValue;
        return Float.valueOf(f);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f8514h;
    }
}
