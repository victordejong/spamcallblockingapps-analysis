package com.google.android.gms.internal.measurement;

import com.google.android.gms.common.api.Api;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzgp.class */
final class zzgp extends zzgl<Boolean> implements zzii<Boolean>, zzjt, RandomAccess {

    /* renamed from: g */
    private boolean[] f8457g;

    /* renamed from: h */
    private int f8458h;

    static {
        new zzgp(new boolean[0], 0).zzb();
    }

    zzgp() {
        this(new boolean[10], 0);
    }

    private zzgp(boolean[] zArr, int i) {
        this.f8457g = zArr;
        this.f8458h = i;
    }

    /* renamed from: e */
    private final void m12637e(int i) {
        if (i < 0 || i >= this.f8458h) {
            throw new IndexOutOfBoundsException(m12636f(i));
        }
    }

    /* renamed from: f */
    private final String m12636f(int i) {
        int i2 = this.f8458h;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.measurement.zzii
    /* renamed from: a */
    public final /* synthetic */ zzii<Boolean> mo12266a(int i) {
        if (i >= this.f8458h) {
            return new zzgp(Arrays.copyOf(this.f8457g, i), this.f8458h);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.measurement.zzgl, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        boolean booleanValue = ((Boolean) obj).booleanValue();
        m12656c();
        if (i < 0 || i > (i2 = this.f8458h)) {
            throw new IndexOutOfBoundsException(m12636f(i));
        }
        boolean[] zArr = this.f8457g;
        if (i2 < zArr.length) {
            System.arraycopy(zArr, i, zArr, i + 1, i2 - i);
        } else {
            boolean[] zArr2 = new boolean[((i2 * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i);
            System.arraycopy(this.f8457g, i, zArr2, i + 1, this.f8458h - i);
            this.f8457g = zArr2;
        }
        this.f8457g[i] = booleanValue;
        this.f8458h++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zzgl, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        m12638d(((Boolean) obj).booleanValue());
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzgl, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Boolean> collection) {
        m12656c();
        zzic.m12394d(collection);
        if (!(collection instanceof zzgp)) {
            return super.addAll(collection);
        }
        zzgp zzgpVar = (zzgp) collection;
        int i = zzgpVar.f8458h;
        if (i == 0) {
            return false;
        }
        int i2 = this.f8458h;
        if (Api.BaseClientBuilder.API_PRIORITY_OTHER - i2 >= i) {
            int i3 = i2 + i;
            boolean[] zArr = this.f8457g;
            if (i3 > zArr.length) {
                this.f8457g = Arrays.copyOf(zArr, i3);
            }
            System.arraycopy(zzgpVar.f8457g, 0, this.f8457g, this.f8458h, zzgpVar.f8458h);
            this.f8458h = i3;
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
    public final void m12638d(boolean z) {
        m12656c();
        int i = this.f8458h;
        boolean[] zArr = this.f8457g;
        if (i == zArr.length) {
            boolean[] zArr2 = new boolean[((i * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i);
            this.f8457g = zArr2;
        }
        boolean[] zArr3 = this.f8457g;
        int i2 = this.f8458h;
        this.f8458h = i2 + 1;
        zArr3[i2] = z;
    }

    @Override // com.google.android.gms.internal.measurement.zzgl, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzgp)) {
            return super.equals(obj);
        }
        zzgp zzgpVar = (zzgp) obj;
        if (this.f8458h != zzgpVar.f8458h) {
            return false;
        }
        boolean[] zArr = zzgpVar.f8457g;
        for (int i = 0; i < this.f8458h; i++) {
            if (this.f8457g[i] != zArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        m12637e(i);
        return Boolean.valueOf(this.f8457g[i]);
    }

    @Override // com.google.android.gms.internal.measurement.zzgl, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f8458h; i2++) {
            i = (i * 31) + zzic.m12395c(this.f8457g[i2]);
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Boolean)) {
            return -1;
        }
        boolean booleanValue = ((Boolean) obj).booleanValue();
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.f8457g[i] == booleanValue) {
                return i;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.measurement.zzgl, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m12656c();
        m12637e(i);
        boolean[] zArr = this.f8457g;
        boolean z = zArr[i];
        int i2 = this.f8458h;
        if (i < i2 - 1) {
            System.arraycopy(zArr, i + 1, zArr, i, (i2 - i) - 1);
        }
        this.f8458h--;
        ((AbstractList) this).modCount++;
        return Boolean.valueOf(z);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        m12656c();
        if (i2 >= i) {
            boolean[] zArr = this.f8457g;
            System.arraycopy(zArr, i2, zArr, i, this.f8458h - i2);
            this.f8458h -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.measurement.zzgl, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        m12656c();
        m12637e(i);
        boolean[] zArr = this.f8457g;
        boolean z = zArr[i];
        zArr[i] = booleanValue;
        return Boolean.valueOf(z);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f8458h;
    }
}
