package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Set;
import p131c.p161d.p170b.p224d.p252g.p253a.c10;
import p131c.p161d.p170b.p224d.p252g.p253a.d10;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdws.class */
public abstract class zzdws<E> extends zzdwk<E> implements Set<E> {
    public transient zzdwp<E> zzhqp;

    public static <E> zzdws<E> zza(int i, Object... objArr) {
        while (i != 0) {
            if (i == 1) {
                return zzad(objArr[0]);
            }
            int zzen = zzen(i);
            Object[] objArr2 = new Object[zzen];
            int i2 = zzen - 1;
            int i3 = 0;
            i = 0;
            for (int i4 = 0; i4 < i; i4++) {
                Object obj = objArr[i4];
                zzdww.m13076a(obj, i4);
                int hashCode = obj.hashCode();
                int a = d10.m27085a(hashCode);
                while (true) {
                    int i5 = a & i2;
                    Object obj2 = objArr2[i5];
                    if (obj2 == null) {
                        objArr[i] = obj;
                        objArr2[i5] = obj;
                        i3 += hashCode;
                        i++;
                        break;
                    }
                    i3 = i3;
                    i = i;
                    if (!obj2.equals(obj)) {
                        a++;
                    }
                }
            }
            Arrays.fill(objArr, i, i, (Object) null);
            if (i == 1) {
                return new zzdxh(objArr[0], i3);
            }
            if (zzen(i) >= zzen / 2) {
                Object[] objArr3 = objArr;
                if (zzv(i, objArr.length)) {
                    objArr3 = Arrays.copyOf(objArr, i);
                }
                return new zzdxf(objArr3, i3, objArr2, i2, i);
            }
        }
        return zzdxf.zzhrf;
    }

    @SafeVarargs
    public static <E> zzdws<E> zza(E e, E e2, E e3, E e4, E e5, E e6, E... eArr) {
        zzdwd.m13093a(eArr.length <= 2147483641, "the total number of elements must fit in an int");
        int length = eArr.length + 6;
        Object[] objArr = new Object[length];
        objArr[0] = e;
        objArr[1] = e2;
        objArr[2] = e3;
        objArr[3] = e4;
        objArr[4] = e5;
        objArr[5] = e6;
        System.arraycopy(eArr, 0, objArr, 6, eArr.length);
        return zza(length, objArr);
    }

    public static <E> zzdws<E> zzad(E e) {
        return new zzdxh(e);
    }

    public static int zzen(int i) {
        int max = Math.max(i, 2);
        boolean z = true;
        if (max < 751619276) {
            int highestOneBit = Integer.highestOneBit(max - 1);
            while (true) {
                int i2 = highestOneBit << 1;
                double d = i2;
                Double.isNaN(d);
                if (d * 0.7d >= max) {
                    return i2;
                }
                highestOneBit = i2;
            }
        } else {
            if (max >= 1073741824) {
                z = false;
            }
            zzdwd.m13093a(z, "collection too large");
            return 1073741824;
        }
    }

    public static <E> zzdwv<E> zzeo(int i) {
        c10.m27106a(i, "expectedSize");
        return new zzdwv<>(i);
    }

    public static boolean zzv(int i, int i2) {
        return i < (i2 >> 1) + (i2 >> 2);
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzdws) || !zzaxp() || !((zzdws) obj).zzaxp() || hashCode() == obj.hashCode()) {
            return zzdxe.m13073a(this, obj);
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return zzdxe.m13074a(this);
    }

    @Override // com.google.android.gms.internal.ads.zzdwk, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public /* synthetic */ Iterator iterator() {
        return iterator();
    }

    @Override // com.google.android.gms.internal.ads.zzdwk
    public zzdwp<E> zzaxm() {
        zzdwp<E> zzdwpVar = this.zzhqp;
        zzdwp<E> zzdwpVar2 = zzdwpVar;
        if (zzdwpVar == null) {
            zzdwpVar2 = zzaxq();
            this.zzhqp = zzdwpVar2;
        }
        return zzdwpVar2;
    }

    public boolean zzaxp() {
        return false;
    }

    public zzdwp<E> zzaxq() {
        return zzdwp.zzc(toArray());
    }
}
