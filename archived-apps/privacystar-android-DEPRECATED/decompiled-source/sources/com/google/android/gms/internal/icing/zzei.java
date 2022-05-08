package com.google.android.gms.internal.icing;

import java.lang.Comparable;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzei.class */
public class zzei<K extends Comparable<K>, V> extends AbstractMap<K, V> {
    private boolean zzes;
    private final int zzkz;
    private List<zzep> zzla;
    private Map<K, V> zzlb;
    private volatile zzer zzlc;
    private Map<K, V> zzld;
    private volatile zzel zzle;

    private zzei(int i) {
        this.zzkz = i;
        this.zzla = Collections.emptyList();
        this.zzlb = Collections.emptyMap();
        this.zzld = Collections.emptyMap();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzei(int i, zzej zzejVar) {
        this(i);
    }

    private final int zza(K k) {
        int size = this.zzla.size() - 1;
        if (size >= 0) {
            int compareTo = k.compareTo((Comparable) this.zzla.get(size).getKey());
            if (compareTo > 0) {
                return -(size + 2);
            }
            if (compareTo == 0) {
                return size;
            }
        }
        int i = 0;
        while (i <= size) {
            int i2 = (i + size) / 2;
            int compareTo2 = k.compareTo((Comparable) this.zzla.get(i2).getKey());
            if (compareTo2 < 0) {
                size = i2 - 1;
            } else if (compareTo2 <= 0) {
                return i2;
            } else {
                i = i2 + 1;
            }
        }
        return -(i + 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <FieldDescriptorType extends zzcf<FieldDescriptorType>> zzei<FieldDescriptorType, Object> zzae(int i) {
        return new zzej(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final V zzag(int i) {
        zzcl();
        V v = (V) this.zzla.remove(i).getValue();
        if (!this.zzlb.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = zzcm().entrySet().iterator();
            this.zzla.add(new zzep(this, it.next()));
            it.remove();
        }
        return v;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzcl() {
        if (this.zzes) {
            throw new UnsupportedOperationException();
        }
    }

    private final SortedMap<K, V> zzcm() {
        zzcl();
        if (this.zzlb.isEmpty() && !(this.zzlb instanceof TreeMap)) {
            this.zzlb = new TreeMap();
            this.zzld = ((TreeMap) this.zzlb).descendingMap();
        }
        return (SortedMap) this.zzlb;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        zzcl();
        if (!this.zzla.isEmpty()) {
            this.zzla.clear();
        }
        if (!this.zzlb.isEmpty()) {
            this.zzlb.clear();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return zza((zzei<K, V>) comparable) >= 0 || this.zzlb.containsKey(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.zzlc == null) {
            this.zzlc = new zzer(this, null);
        }
        return this.zzlc;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzei)) {
            return super.equals(obj);
        }
        zzei zzeiVar = (zzei) obj;
        int size = size();
        if (size != zzeiVar.size()) {
            return false;
        }
        int zzci = zzci();
        if (zzci != zzeiVar.zzci()) {
            return entrySet().equals(zzeiVar.entrySet());
        }
        for (int i = 0; i < zzci; i++) {
            if (!zzaf(i).equals(zzeiVar.zzaf(i))) {
                return false;
            }
        }
        if (zzci != size) {
            return this.zzlb.equals(zzeiVar.zzlb);
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int zza = zza((zzei<K, V>) comparable);
        return zza >= 0 ? (V) this.zzla.get(zza).getValue() : this.zzlb.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int zzci = zzci();
        int i = 0;
        for (int i2 = 0; i2 < zzci; i2++) {
            i += this.zzla.get(i2).hashCode();
        }
        int i3 = i;
        if (this.zzlb.size() > 0) {
            i3 = i + this.zzlb.hashCode();
        }
        return i3;
    }

    public final boolean isImmutable() {
        return this.zzes;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public /* synthetic */ Object put(Object obj, Object obj2) {
        return zza((zzei<K, V>) ((Comparable) obj), (Comparable) obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        zzcl();
        Comparable comparable = (Comparable) obj;
        int zza = zza((zzei<K, V>) comparable);
        if (zza >= 0) {
            return (V) zzag(zza);
        }
        if (this.zzlb.isEmpty()) {
            return null;
        }
        return this.zzlb.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.zzla.size() + this.zzlb.size();
    }

    public final V zza(K k, V v) {
        zzcl();
        int zza = zza((zzei<K, V>) k);
        if (zza >= 0) {
            return (V) this.zzla.get(zza).setValue(v);
        }
        zzcl();
        if (this.zzla.isEmpty() && !(this.zzla instanceof ArrayList)) {
            this.zzla = new ArrayList(this.zzkz);
        }
        int i = -(zza + 1);
        if (i >= this.zzkz) {
            return zzcm().put(k, v);
        }
        if (this.zzla.size() == this.zzkz) {
            zzep remove = this.zzla.remove(this.zzkz - 1);
            zzcm().put((K) ((Comparable) remove.getKey()), (V) remove.getValue());
        }
        this.zzla.add(i, new zzep(this, k, v));
        return null;
    }

    public final Map.Entry<K, V> zzaf(int i) {
        return this.zzla.get(i);
    }

    public final int zzci() {
        return this.zzla.size();
    }

    public final Iterable<Map.Entry<K, V>> zzcj() {
        return this.zzlb.isEmpty() ? zzem.zzco() : this.zzlb.entrySet();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Set<Map.Entry<K, V>> zzck() {
        if (this.zzle == null) {
            this.zzle = new zzel(this, null);
        }
        return this.zzle;
    }

    public void zzp() {
        if (!this.zzes) {
            this.zzlb = this.zzlb.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.zzlb);
            this.zzld = this.zzld.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.zzld);
            this.zzes = true;
        }
    }
}
