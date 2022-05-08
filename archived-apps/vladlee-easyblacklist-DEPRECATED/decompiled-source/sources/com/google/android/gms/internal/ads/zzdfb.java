package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdfb.class */
public abstract class zzdfb<E> extends zzdet<E> implements Set<E> {
    @NullableDecl

    /* renamed from: a */
    private transient zzdeu<E> f14258a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m3587a(int i) {
        int max = Math.max(i, 2);
        boolean z = true;
        if (max < 751619276) {
            int highestOneBit = Integer.highestOneBit(max - 1);
            while (true) {
                int i2 = highestOneBit << 1;
                if (i2 * 0.7d >= max) {
                    return i2;
                }
                highestOneBit = i2;
            }
        } else {
            if (max >= 1073741824) {
                z = false;
            }
            zzdei.checkArgument(z, "collection too large");
            return 1073741824;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static <E> zzdfb<E> m3583b(int i, Object... objArr) {
        while (i != 0) {
            if (i == 1) {
                return zzag(objArr[0]);
            }
            int a = m3587a(i);
            Object[] objArr2 = new Object[a];
            int i2 = a - 1;
            i = 0;
            int i3 = 0;
            for (int i4 = 0; i4 < i; i4++) {
                Object a2 = zzdff.m3580a(objArr[i4], i4);
                int hashCode = a2.hashCode();
                int a3 = abe.m5499a(hashCode);
                while (true) {
                    int i5 = a3 & i2;
                    Object obj = objArr2[i5];
                    if (obj == null) {
                        objArr[i] = a2;
                        objArr2[i5] = a2;
                        i3 += hashCode;
                        i++;
                        break;
                    }
                    i3 = i3;
                    i = i;
                    if (!obj.equals(a2)) {
                        a3++;
                    }
                }
            }
            Arrays.fill(objArr, i, i, (Object) null);
            if (i == 1) {
                return new abr(objArr[0], i3);
            }
            if (m3587a(i) >= a / 2) {
                Object[] objArr3 = objArr;
                if (m3584b(i, objArr.length)) {
                    objArr3 = Arrays.copyOf(objArr, i);
                }
                return new abp(objArr3, i3, objArr2, i2, i);
            }
        }
        return abp.f7177a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static boolean m3584b(int i, int i2) {
        return i < (i2 >> 1) + (i2 >> 2);
    }

    @SafeVarargs
    public static <E> zzdfb<E> zza(E e, E e2, E e3, E e4, E e5, E e6, E... eArr) {
        zzdei.checkArgument(eArr.length <= 2147483641, "the total number of elements must fit in an int");
        Object[] objArr = new Object[eArr.length + 6];
        objArr[0] = e;
        objArr[1] = e2;
        objArr[2] = e3;
        objArr[3] = e4;
        objArr[4] = e5;
        objArr[5] = e6;
        System.arraycopy(eArr, 0, objArr, 6, eArr.length);
        return m3583b(objArr.length, objArr);
    }

    public static <E> zzdfb<E> zzag(E e) {
        return new abr(e);
    }

    public static <E> zzdfa<E> zzdy(int i) {
        abc.m5501a(i, "expectedSize");
        return new zzdfa<>(i);
    }

    /* renamed from: e */
    boolean mo3582e() {
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzdfb) || !mo3582e() || !((zzdfb) obj).mo3582e() || hashCode() == obj.hashCode()) {
            return zzdfn.m3578a(this, obj);
        }
        return false;
    }

    /* renamed from: f */
    zzdeu<E> mo3581f() {
        return zzdeu.m3593a(toArray());
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return zzdfn.m3579a(this);
    }

    @Override // com.google.android.gms.internal.ads.zzdet, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public /* synthetic */ Iterator iterator() {
        return iterator();
    }

    @Override // com.google.android.gms.internal.ads.zzdet
    public zzdeu<E> zzarb() {
        zzdeu<E> zzdeuVar = this.f14258a;
        zzdeu<E> zzdeuVar2 = zzdeuVar;
        if (zzdeuVar == null) {
            zzdeuVar2 = mo3581f();
            this.f14258a = zzdeuVar2;
        }
        return zzdeuVar2;
    }
}
