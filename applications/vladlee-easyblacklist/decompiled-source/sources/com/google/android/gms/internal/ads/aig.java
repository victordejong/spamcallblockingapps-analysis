package com.google.android.gms.internal.ads;

import com.google.android.gms.common.api.Api;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aig.class */
public final class aig extends ahb<Integer> implements aje, zzdrz, RandomAccess {

    /* renamed from: a */
    private static final aig f7415a;

    /* renamed from: b */
    private int[] f7416b;

    /* renamed from: c */
    private int f7417c;

    static {
        aig aigVar = new aig(new int[0], 0);
        f7415a = aigVar;
        aigVar.zzaxq();
    }

    aig() {
        this(new int[10], 0);
    }

    private aig(int[] iArr, int i) {
        this.f7416b = iArr;
        this.f7417c = i;
    }

    /* renamed from: b */
    public static aig m5327b() {
        return f7415a;
    }

    /* renamed from: b */
    private final void m5326b(int i) {
        if (i < 0 || i >= this.f7417c) {
            throw new IndexOutOfBoundsException(m5325c(i));
        }
    }

    /* renamed from: c */
    private final String m5325c(int i) {
        int i2 = this.f7417c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    /* renamed from: a */
    public final int m5328a(int i) {
        m5326b(i);
        return this.f7416b[i];
    }

    @Override // com.google.android.gms.internal.ads.ahb, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        int intValue = ((Integer) obj).intValue();
        m5424a();
        if (i < 0 || i > (i2 = this.f7417c)) {
            throw new IndexOutOfBoundsException(m5325c(i));
        }
        int[] iArr = this.f7416b;
        if (i2 < iArr.length) {
            System.arraycopy(iArr, i, iArr, i + 1, i2 - i);
        } else {
            int[] iArr2 = new int[((i2 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i);
            System.arraycopy(this.f7416b, i, iArr2, i + 1, this.f7417c - i);
            this.f7416b = iArr2;
        }
        this.f7416b[i] = intValue;
        this.f7417c++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.ads.ahb, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        zzgl(((Integer) obj).intValue());
        return true;
    }

    @Override // com.google.android.gms.internal.ads.ahb, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Integer> collection) {
        m5424a();
        zzdrv.m3351a(collection);
        if (!(collection instanceof aig)) {
            return super.addAll(collection);
        }
        aig aigVar = (aig) collection;
        int i = aigVar.f7417c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f7417c;
        if (Api.BaseClientBuilder.API_PRIORITY_OTHER - i2 >= i) {
            int i3 = i2 + i;
            int[] iArr = this.f7416b;
            if (i3 > iArr.length) {
                this.f7416b = Arrays.copyOf(iArr, i3);
            }
            System.arraycopy(aigVar.f7416b, 0, this.f7416b, this.f7417c, aigVar.f7417c);
            this.f7417c = i3;
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
        if (!(obj instanceof aig)) {
            return super.equals(obj);
        }
        aig aigVar = (aig) obj;
        if (this.f7417c != aigVar.f7417c) {
            return false;
        }
        int[] iArr = aigVar.f7416b;
        for (int i = 0; i < this.f7417c; i++) {
            if (this.f7416b[i] != iArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return Integer.valueOf(m5328a(i));
    }

    @Override // com.google.android.gms.internal.ads.ahb, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f7417c; i2++) {
            i = (i * 31) + this.f7416b[i2];
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.ahb, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m5424a();
        m5326b(i);
        int[] iArr = this.f7416b;
        int i2 = iArr[i];
        int i3 = this.f7417c;
        if (i < i3 - 1) {
            System.arraycopy(iArr, i + 1, iArr, i, (i3 - i) - 1);
        }
        this.f7417c--;
        this.modCount++;
        return Integer.valueOf(i2);
    }

    @Override // com.google.android.gms.internal.ads.ahb, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        m5424a();
        for (int i = 0; i < this.f7417c; i++) {
            if (obj.equals(Integer.valueOf(this.f7416b[i]))) {
                int[] iArr = this.f7416b;
                System.arraycopy(iArr, i + 1, iArr, i, (this.f7417c - i) - 1);
                this.f7417c--;
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
            int[] iArr = this.f7416b;
            System.arraycopy(iArr, i2, iArr, i, this.f7417c - i2);
            this.f7417c -= i2 - i;
            this.modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.ads.ahb, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        int intValue = ((Integer) obj).intValue();
        m5424a();
        m5326b(i);
        int[] iArr = this.f7416b;
        int i2 = iArr[i];
        iArr[i] = intValue;
        return Integer.valueOf(i2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f7417c;
    }

    @Override // com.google.android.gms.internal.ads.zzdrz
    /* renamed from: zzgk */
    public final zzdrz zzfd(int i) {
        if (i >= this.f7417c) {
            return new aig(Arrays.copyOf(this.f7416b, i), this.f7417c);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.ads.zzdrz
    public final void zzgl(int i) {
        m5424a();
        int i2 = this.f7417c;
        int[] iArr = this.f7416b;
        if (i2 == iArr.length) {
            int[] iArr2 = new int[((i2 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            this.f7416b = iArr2;
        }
        int[] iArr3 = this.f7416b;
        int i3 = this.f7417c;
        this.f7417c = i3 + 1;
        iArr3[i3] = i;
    }
}
