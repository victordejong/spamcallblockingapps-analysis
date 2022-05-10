package com.google.android.gms.internal.measurement;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import p131c.p161d.p170b.p224d.p252g.p258f.C4557o1;
import p131c.p161d.p170b.p224d.p252g.p258f.C4564p1;
import p131c.p161d.p170b.p224d.p252g.p258f.C4571q1;
import p131c.p161d.p170b.p224d.p252g.p258f.C4578r1;
import p131c.p161d.p170b.p224d.p252g.p258f.C4585s1;
import p131c.p161d.p170b.p224d.p252g.p258f.C4598u1;
import p131c.p161d.p170b.p224d.p252g.p258f.C4610w1;
import p131c.p161d.p170b.p224d.p252g.p258f.C4616x1;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzem.class */
public final class zzem<K, V> extends AbstractMap<K, V> implements Serializable {
    public static final Object zzd = new Object();
    public transient int[] zza;
    public transient Object[] zzb;
    public transient Object[] zzc;
    public transient Object zze;
    public transient int zzf = zzfz.m9801a(3, 1, 1073741823);
    public transient int zzg;
    public transient Set<K> zzh;
    public transient Set<Map.Entry<K, V>> zzi;
    public transient Collection<V> zzj;

    public zzem() {
        zzeb.m9813a(true, (Object) "Expected size must be >= 0");
    }

    private final int zza(int i, int i2, int i3, int i4) {
        Object a = C4610w1.m25184a(i2);
        int i5 = i2 - 1;
        if (i4 != 0) {
            C4610w1.m25181a(a, i3 & i5, i4 + 1);
        }
        Object obj = this.zze;
        int[] iArr = this.zza;
        for (int i6 = 0; i6 <= i; i6++) {
            int a2 = C4610w1.m25182a(obj, i6);
            while (a2 != 0) {
                int i7 = a2 - 1;
                int i8 = iArr[i7];
                int i9 = ((i ^ (-1)) & i8) | i6;
                int i10 = i9 & i5;
                int a3 = C4610w1.m25182a(a, i10);
                C4610w1.m25181a(a, i10, a2);
                iArr[i7] = C4610w1.m25183a(i9, a3, i5);
                a2 = i8 & i;
            }
        }
        this.zze = a;
        zzb(i5);
        return i5;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int zza(Object obj) {
        int i;
        if (zza()) {
            return -1;
        }
        int a = C4616x1.m25174a(obj);
        int zzi = zzi();
        int a2 = C4610w1.m25182a(this.zze, a & zzi);
        if (a2 == 0) {
            return -1;
        }
        int i2 = zzi ^ (-1);
        do {
            int i3 = a2 - 1;
            int i4 = this.zza[i3];
            if ((i4 & i2) == (a & i2) && zzdz.m9819a(obj, this.zzb[i3])) {
                return i3;
            }
            i = i4 & zzi;
            a2 = i;
        } while (i != 0);
        return -1;
    }

    public static int zzb(int i, int i2) {
        return i - 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object zzb(Object obj) {
        int zzi;
        int a;
        if (!zza() && (a = C4610w1.m25180a(obj, null, (zzi = zzi()), this.zze, this.zza, this.zzb, null)) != -1) {
            Object obj2 = this.zzc[a];
            zza(a, zzi);
            this.zzg--;
            zzc();
            return obj2;
        }
        return zzd;
    }

    private final void zzb(int i) {
        this.zzf = C4610w1.m25183a(this.zzf, 32 - Integer.numberOfLeadingZeros(i), 31);
    }

    public static /* synthetic */ int zzd(zzem zzemVar) {
        int i = zzemVar.zzg;
        zzemVar.zzg = i - 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int zzi() {
        return (1 << (this.zzf & 31)) - 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        if (!zza()) {
            zzc();
            Map<K, V> zzb = zzb();
            if (zzb != null) {
                this.zzf = zzfz.m9801a(size(), 3, 1073741823);
                zzb.clear();
                this.zze = null;
                this.zzg = 0;
                return;
            }
            Arrays.fill(this.zzb, 0, this.zzg, (Object) null);
            Arrays.fill(this.zzc, 0, this.zzg, (Object) null);
            Object obj = this.zze;
            if (obj instanceof byte[]) {
                Arrays.fill((byte[]) obj, (byte) 0);
            } else if (obj instanceof short[]) {
                Arrays.fill((short[]) obj, (short) 0);
            } else {
                Arrays.fill((int[]) obj, 0);
            }
            Arrays.fill(this.zza, 0, this.zzg, 0);
            this.zzg = 0;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Map<K, V> zzb = zzb();
        return zzb != null ? zzb.containsKey(obj) : zza(obj) != -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsValue(Object obj) {
        Map<K, V> zzb = zzb();
        if (zzb != null) {
            return zzb.containsValue(obj);
        }
        for (int i = 0; i < this.zzg; i++) {
            if (zzdz.m9819a(obj, this.zzc[i])) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.zzi;
        Set<Map.Entry<K, V>> set2 = set;
        if (set == null) {
            set2 = new C4571q1(this);
            this.zzi = set2;
        }
        return set2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V get(Object obj) {
        Map<K, V> zzb = zzb();
        if (zzb != null) {
            return zzb.get(obj);
        }
        int zza = zza(obj);
        if (zza == -1) {
            return null;
        }
        return (V) this.zzc[zza];
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<K> keySet() {
        Set<K> set = this.zzh;
        Set<K> set2 = set;
        if (set == null) {
            set2 = new C4585s1(this);
            this.zzh = set2;
        }
        return set2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final V put(K k, V v) {
        int i;
        int min;
        int i2;
        int i3;
        if (zza()) {
            zzeb.m9811b(zza(), "Arrays already allocated");
            int i4 = this.zzf;
            int max = Math.max(i4 + 1, 2);
            int highestOneBit = Integer.highestOneBit(max);
            double d = highestOneBit;
            Double.isNaN(d);
            int i5 = highestOneBit;
            if (max > ((int) (d * 1.0d))) {
                int i6 = highestOneBit << 1;
                i5 = i6;
                if (i6 <= 0) {
                    i5 = 1073741824;
                }
            }
            int max2 = Math.max(4, i5);
            this.zze = C4610w1.m25184a(max2);
            zzb(max2 - 1);
            this.zza = new int[i4];
            this.zzb = new Object[i4];
            this.zzc = new Object[i4];
        }
        Map<K, V> zzb = zzb();
        if (zzb != null) {
            return zzb.put(k, v);
        }
        int[] iArr = this.zza;
        Object[] objArr = this.zzb;
        Object[] objArr2 = this.zzc;
        int i7 = this.zzg;
        int i8 = i7 + 1;
        int a = C4616x1.m25174a(k);
        int zzi = zzi();
        int i9 = a & zzi;
        int a2 = C4610w1.m25182a(this.zze, i9);
        if (a2 != 0) {
            int i10 = zzi ^ (-1);
            int i11 = 0;
            do {
                i2 = a2 - 1;
                i3 = iArr[i2];
                if ((i3 & i10) != (a & i10) || !zzdz.m9819a(k, objArr[i2])) {
                    a2 = i3 & zzi;
                    i11++;
                } else {
                    V v2 = (V) objArr2[i2];
                    objArr2[i2] = v;
                    return v2;
                }
            } while (a2 != 0);
            if (i11 >= 9) {
                LinkedHashMap linkedHashMap = new LinkedHashMap(zzi() + 1, 1.0f);
                int zzd2 = zzd();
                while (zzd2 >= 0) {
                    linkedHashMap.put(this.zzb[zzd2], this.zzc[zzd2]);
                    zzd2 = zza(zzd2);
                }
                this.zze = linkedHashMap;
                this.zza = null;
                this.zzb = null;
                this.zzc = null;
                zzc();
                return (V) linkedHashMap.put(k, v);
            } else if (i8 > zzi) {
                i = zza(zzi, C4610w1.m25179b(zzi), a, i7);
            } else {
                iArr[i2] = C4610w1.m25183a(i3, i8, zzi);
                i = zzi;
            }
        } else if (i8 > zzi) {
            i = zza(zzi, C4610w1.m25179b(zzi), a, i7);
        } else {
            C4610w1.m25181a(this.zze, i9, i8);
            i = zzi;
        }
        int length = this.zza.length;
        if (i8 > length && (min = Math.min(1073741823, 1 | (Math.max(1, length >>> 1) + length))) != length) {
            this.zza = Arrays.copyOf(this.zza, min);
            this.zzb = Arrays.copyOf(this.zzb, min);
            this.zzc = Arrays.copyOf(this.zzc, min);
        }
        this.zza[i7] = C4610w1.m25183a(a, 0, i);
        this.zzb[i7] = k;
        this.zzc[i7] = v;
        this.zzg = i8;
        zzc();
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        Map<K, V> zzb = zzb();
        if (zzb != null) {
            return zzb.remove(obj);
        }
        Object zzb2 = zzb(obj);
        V v = (V) zzb2;
        if (zzb2 == zzd) {
            v = null;
        }
        return v;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        Map<K, V> zzb = zzb();
        return zzb != null ? zzb.size() : this.zzg;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection<V> values() {
        Collection<V> collection = this.zzj;
        Collection<V> collection2 = collection;
        if (collection == null) {
            collection2 = new C4598u1(this);
            this.zzj = collection2;
        }
        return collection2;
    }

    public final int zza(int i) {
        int i2 = i + 1;
        if (i2 < this.zzg) {
            return i2;
        }
        return -1;
    }

    public final void zza(int i, int i2) {
        int i3;
        int[] iArr;
        int i4;
        int size = size() - 1;
        if (i < size) {
            Object[] objArr = this.zzb;
            Object obj = objArr[size];
            objArr[i] = obj;
            Object[] objArr2 = this.zzc;
            objArr2[i] = objArr2[size];
            objArr[size] = null;
            objArr2[size] = null;
            int[] iArr2 = this.zza;
            iArr2[i] = iArr2[size];
            iArr2[size] = 0;
            int a = C4616x1.m25174a(obj) & i2;
            int a2 = C4610w1.m25182a(this.zze, a);
            int i5 = size + 1;
            int i6 = a2;
            if (a2 == i5) {
                C4610w1.m25181a(this.zze, a, i + 1);
                return;
            }
            do {
                i3 = i6 - 1;
                iArr = this.zza;
                i4 = iArr[i3];
                i6 = i4 & i2;
            } while (i6 != i5);
            iArr[i3] = C4610w1.m25183a(i4, i + 1, i2);
            return;
        }
        this.zzb[i] = null;
        this.zzc[i] = null;
        this.zza[i] = 0;
    }

    public final boolean zza() {
        return this.zze == null;
    }

    public final Map<K, V> zzb() {
        Object obj = this.zze;
        if (obj instanceof Map) {
            return (Map) obj;
        }
        return null;
    }

    public final void zzc() {
        this.zzf += 32;
    }

    public final int zzd() {
        return isEmpty() ? -1 : 0;
    }

    public final Iterator<K> zze() {
        Map<K, V> zzb = zzb();
        return zzb != null ? zzb.keySet().iterator() : new C4564p1(this);
    }

    public final Iterator<Map.Entry<K, V>> zzf() {
        Map<K, V> zzb = zzb();
        return zzb != null ? zzb.entrySet().iterator() : new C4557o1(this);
    }

    public final Iterator<V> zzg() {
        Map<K, V> zzb = zzb();
        return zzb != null ? zzb.values().iterator() : new C4578r1(this);
    }
}
