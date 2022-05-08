package com.google.android.gms.internal.ads;

import com.google.android.gms.common.api.Api;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ahe.class */
final class ahe extends ahb<Boolean> implements aje, zzdsb<Boolean>, RandomAccess {

    /* renamed from: a */
    private static final ahe f7354a;

    /* renamed from: b */
    private boolean[] f7355b;

    /* renamed from: c */
    private int f7356c;

    static {
        ahe aheVar = new ahe(new boolean[0], 0);
        f7354a = aheVar;
        aheVar.zzaxq();
    }

    ahe() {
        this(new boolean[10], 0);
    }

    private ahe(boolean[] zArr, int i) {
        this.f7355b = zArr;
        this.f7356c = i;
    }

    /* renamed from: a */
    private final void m5406a(int i) {
        if (i < 0 || i >= this.f7356c) {
            throw new IndexOutOfBoundsException(m5404b(i));
        }
    }

    /* renamed from: b */
    private final String m5404b(int i) {
        int i2 = this.f7356c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    /* renamed from: a */
    public final void m5405a(boolean z) {
        m5424a();
        int i = this.f7356c;
        boolean[] zArr = this.f7355b;
        if (i == zArr.length) {
            boolean[] zArr2 = new boolean[((i * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i);
            this.f7355b = zArr2;
        }
        boolean[] zArr3 = this.f7355b;
        int i2 = this.f7356c;
        this.f7356c = i2 + 1;
        zArr3[i2] = z;
    }

    @Override // com.google.android.gms.internal.ads.ahb, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        boolean booleanValue = ((Boolean) obj).booleanValue();
        m5424a();
        if (i < 0 || i > (i2 = this.f7356c)) {
            throw new IndexOutOfBoundsException(m5404b(i));
        }
        boolean[] zArr = this.f7355b;
        if (i2 < zArr.length) {
            System.arraycopy(zArr, i, zArr, i + 1, i2 - i);
        } else {
            boolean[] zArr2 = new boolean[((i2 * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i);
            System.arraycopy(this.f7355b, i, zArr2, i + 1, this.f7356c - i);
            this.f7355b = zArr2;
        }
        this.f7355b[i] = booleanValue;
        this.f7356c++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.ads.ahb, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        m5405a(((Boolean) obj).booleanValue());
        return true;
    }

    @Override // com.google.android.gms.internal.ads.ahb, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Boolean> collection) {
        m5424a();
        zzdrv.m3351a(collection);
        if (!(collection instanceof ahe)) {
            return super.addAll(collection);
        }
        ahe aheVar = (ahe) collection;
        int i = aheVar.f7356c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f7356c;
        if (Api.BaseClientBuilder.API_PRIORITY_OTHER - i2 >= i) {
            int i3 = i2 + i;
            boolean[] zArr = this.f7355b;
            if (i3 > zArr.length) {
                this.f7355b = Arrays.copyOf(zArr, i3);
            }
            System.arraycopy(aheVar.f7355b, 0, this.f7355b, this.f7356c, aheVar.f7356c);
            this.f7356c = i3;
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
        if (!(obj instanceof ahe)) {
            return super.equals(obj);
        }
        ahe aheVar = (ahe) obj;
        if (this.f7356c != aheVar.f7356c) {
            return false;
        }
        boolean[] zArr = aheVar.f7355b;
        for (int i = 0; i < this.f7356c; i++) {
            if (this.f7355b[i] != zArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        m5406a(i);
        return Boolean.valueOf(this.f7355b[i]);
    }

    @Override // com.google.android.gms.internal.ads.ahb, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f7356c; i2++) {
            i = (i * 31) + zzdrv.zzbp(this.f7355b[i2]);
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.ahb, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m5424a();
        m5406a(i);
        boolean[] zArr = this.f7355b;
        boolean z = zArr[i];
        int i2 = this.f7356c;
        if (i < i2 - 1) {
            System.arraycopy(zArr, i + 1, zArr, i, (i2 - i) - 1);
        }
        this.f7356c--;
        this.modCount++;
        return Boolean.valueOf(z);
    }

    @Override // com.google.android.gms.internal.ads.ahb, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        m5424a();
        for (int i = 0; i < this.f7356c; i++) {
            if (obj.equals(Boolean.valueOf(this.f7355b[i]))) {
                boolean[] zArr = this.f7355b;
                System.arraycopy(zArr, i + 1, zArr, i, (this.f7356c - i) - 1);
                this.f7356c--;
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
            boolean[] zArr = this.f7355b;
            System.arraycopy(zArr, i2, zArr, i, this.f7356c - i2);
            this.f7356c -= i2 - i;
            this.modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.ads.ahb, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        m5424a();
        m5406a(i);
        boolean[] zArr = this.f7355b;
        boolean z = zArr[i];
        zArr[i] = booleanValue;
        return Boolean.valueOf(z);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f7356c;
    }

    @Override // com.google.android.gms.internal.ads.zzdsb
    public final /* synthetic */ zzdsb<Boolean> zzfd(int i) {
        if (i >= this.f7356c) {
            return new ahe(Arrays.copyOf(this.f7355b, i), this.f7356c);
        }
        throw new IllegalArgumentException();
    }
}
