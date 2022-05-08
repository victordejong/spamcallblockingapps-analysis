package com.google.android.gms.internal.icing;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzdg.class */
final class zzdg extends zzbe<Long> implements zzcr<Long>, RandomAccess {
    private static final zzdg zzjm;
    private int size;
    private long[] zzjn;

    static {
        zzdg zzdgVar = new zzdg();
        zzjm = zzdgVar;
        zzdgVar.zzp();
    }

    zzdg() {
        this(new long[10], 0);
    }

    private zzdg(long[] jArr, int i) {
        this.zzjn = jArr;
        this.size = i;
    }

    public static zzdg zzbl() {
        return zzjm;
    }

    private final void zzf(int i) {
        if (i < 0 || i >= this.size) {
            throw new IndexOutOfBoundsException(zzg(i));
        }
    }

    private final String zzg(int i) {
        int i2 = this.size;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.icing.zzbe, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        long longValue = ((Long) obj).longValue();
        zzq();
        if (i < 0 || i > this.size) {
            throw new IndexOutOfBoundsException(zzg(i));
        }
        if (this.size < this.zzjn.length) {
            System.arraycopy(this.zzjn, i, this.zzjn, i + 1, this.size - i);
        } else {
            long[] jArr = new long[((this.size * 3) / 2) + 1];
            System.arraycopy(this.zzjn, 0, jArr, 0, i);
            System.arraycopy(this.zzjn, i, jArr, i + 1, this.size - i);
            this.zzjn = jArr;
        }
        this.zzjn[i] = longValue;
        this.size++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.icing.zzbe, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Long> collection) {
        zzq();
        zzcm.checkNotNull(collection);
        if (!(collection instanceof zzdg)) {
            return super.addAll(collection);
        }
        zzdg zzdgVar = (zzdg) collection;
        if (zzdgVar.size == 0) {
            return false;
        }
        if (Integer.MAX_VALUE - this.size < zzdgVar.size) {
            throw new OutOfMemoryError();
        }
        int i = this.size + zzdgVar.size;
        if (i > this.zzjn.length) {
            this.zzjn = Arrays.copyOf(this.zzjn, i);
        }
        System.arraycopy(zzdgVar.zzjn, 0, this.zzjn, this.size, zzdgVar.size);
        this.size = i;
        this.modCount++;
        return true;
    }

    @Override // com.google.android.gms.internal.icing.zzbe, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzdg)) {
            return super.equals(obj);
        }
        zzdg zzdgVar = (zzdg) obj;
        if (this.size != zzdgVar.size) {
            return false;
        }
        long[] jArr = zzdgVar.zzjn;
        for (int i = 0; i < this.size; i++) {
            if (this.zzjn[i] != jArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return Long.valueOf(getLong(i));
    }

    public final long getLong(int i) {
        zzf(i);
        return this.zzjn[i];
    }

    @Override // com.google.android.gms.internal.icing.zzbe, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.size; i2++) {
            i = (i * 31) + zzcm.zzk(this.zzjn[i2]);
        }
        return i;
    }

    @Override // com.google.android.gms.internal.icing.zzbe, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        zzq();
        zzf(i);
        long j = this.zzjn[i];
        if (i < this.size - 1) {
            System.arraycopy(this.zzjn, i + 1, this.zzjn, i, this.size - i);
        }
        this.size--;
        this.modCount++;
        return Long.valueOf(j);
    }

    @Override // com.google.android.gms.internal.icing.zzbe, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        zzq();
        for (int i = 0; i < this.size; i++) {
            if (obj.equals(Long.valueOf(this.zzjn[i]))) {
                System.arraycopy(this.zzjn, i + 1, this.zzjn, i, this.size - i);
                this.size--;
                this.modCount++;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        zzq();
        if (i2 < i) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        System.arraycopy(this.zzjn, i2, this.zzjn, i, this.size - i2);
        this.size -= i2 - i;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.icing.zzbe, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        long longValue = ((Long) obj).longValue();
        zzq();
        zzf(i);
        long j = this.zzjn[i];
        this.zzjn[i] = longValue;
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.size;
    }

    @Override // com.google.android.gms.internal.icing.zzcr
    public final /* synthetic */ zzcr<Long> zzh(int i) {
        if (i >= this.size) {
            return new zzdg(Arrays.copyOf(this.zzjn, i), this.size);
        }
        throw new IllegalArgumentException();
    }
}
