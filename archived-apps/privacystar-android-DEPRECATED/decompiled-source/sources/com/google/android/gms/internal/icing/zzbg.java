package com.google.android.gms.internal.icing;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzbg.class */
final class zzbg extends zzbe<Boolean> implements zzcr<Boolean>, RandomAccess {
    private static final zzbg zzdo;
    private int size;
    private boolean[] zzdp;

    static {
        zzbg zzbgVar = new zzbg();
        zzdo = zzbgVar;
        zzbgVar.zzp();
    }

    zzbg() {
        this(new boolean[10], 0);
    }

    private zzbg(boolean[] zArr, int i) {
        this.zzdp = zArr;
        this.size = i;
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

    public static zzbg zzt() {
        return zzdo;
    }

    @Override // com.google.android.gms.internal.icing.zzbe, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        zzq();
        if (i < 0 || i > this.size) {
            throw new IndexOutOfBoundsException(zzg(i));
        }
        if (this.size < this.zzdp.length) {
            System.arraycopy(this.zzdp, i, this.zzdp, i + 1, this.size - i);
        } else {
            boolean[] zArr = new boolean[((this.size * 3) / 2) + 1];
            System.arraycopy(this.zzdp, 0, zArr, 0, i);
            System.arraycopy(this.zzdp, i, zArr, i + 1, this.size - i);
            this.zzdp = zArr;
        }
        this.zzdp[i] = booleanValue;
        this.size++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.icing.zzbe, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Boolean> collection) {
        zzq();
        zzcm.checkNotNull(collection);
        if (!(collection instanceof zzbg)) {
            return super.addAll(collection);
        }
        zzbg zzbgVar = (zzbg) collection;
        if (zzbgVar.size == 0) {
            return false;
        }
        if (Integer.MAX_VALUE - this.size < zzbgVar.size) {
            throw new OutOfMemoryError();
        }
        int i = this.size + zzbgVar.size;
        if (i > this.zzdp.length) {
            this.zzdp = Arrays.copyOf(this.zzdp, i);
        }
        System.arraycopy(zzbgVar.zzdp, 0, this.zzdp, this.size, zzbgVar.size);
        this.size = i;
        this.modCount++;
        return true;
    }

    @Override // com.google.android.gms.internal.icing.zzbe, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzbg)) {
            return super.equals(obj);
        }
        zzbg zzbgVar = (zzbg) obj;
        if (this.size != zzbgVar.size) {
            return false;
        }
        boolean[] zArr = zzbgVar.zzdp;
        for (int i = 0; i < this.size; i++) {
            if (this.zzdp[i] != zArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        zzf(i);
        return Boolean.valueOf(this.zzdp[i]);
    }

    @Override // com.google.android.gms.internal.icing.zzbe, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.size; i2++) {
            i = (i * 31) + zzcm.zzg(this.zzdp[i2]);
        }
        return i;
    }

    @Override // com.google.android.gms.internal.icing.zzbe, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        zzq();
        zzf(i);
        boolean z = this.zzdp[i];
        if (i < this.size - 1) {
            System.arraycopy(this.zzdp, i + 1, this.zzdp, i, this.size - i);
        }
        this.size--;
        this.modCount++;
        return Boolean.valueOf(z);
    }

    @Override // com.google.android.gms.internal.icing.zzbe, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        zzq();
        for (int i = 0; i < this.size; i++) {
            if (obj.equals(Boolean.valueOf(this.zzdp[i]))) {
                System.arraycopy(this.zzdp, i + 1, this.zzdp, i, this.size - i);
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
        System.arraycopy(this.zzdp, i2, this.zzdp, i, this.size - i2);
        this.size -= i2 - i;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.icing.zzbe, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        zzq();
        zzf(i);
        boolean z = this.zzdp[i];
        this.zzdp[i] = booleanValue;
        return Boolean.valueOf(z);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.size;
    }

    @Override // com.google.android.gms.internal.icing.zzcr
    public final /* synthetic */ zzcr<Boolean> zzh(int i) {
        if (i >= this.size) {
            return new zzbg(Arrays.copyOf(this.zzdp, i), this.size);
        }
        throw new IllegalArgumentException();
    }
}
