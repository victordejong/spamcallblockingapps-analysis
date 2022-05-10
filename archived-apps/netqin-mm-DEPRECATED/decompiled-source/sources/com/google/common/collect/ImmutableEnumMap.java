package com.google.common.collect;

import com.google.common.collect.ImmutableMap;
import java.io.Serializable;
import java.lang.Enum;
import java.util.EnumMap;
import java.util.Map;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p269c.AbstractC4978e1;
import p131c.p161d.p266c.p269c.C4983g0;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableEnumMap.class */
public final class ImmutableEnumMap<K extends Enum<K>, V> extends ImmutableMap.IteratorBasedImmutableMap<K, V> {
    public final transient EnumMap<K, V> delegate;

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableEnumMap$EnumSerializedForm.class */
    public static class EnumSerializedForm<K extends Enum<K>, V> implements Serializable {
        public static final long serialVersionUID = 0;
        public final EnumMap<K, V> delegate;

        public EnumSerializedForm(EnumMap<K, V> enumMap) {
            this.delegate = enumMap;
        }

        public Object readResolve() {
            return new ImmutableEnumMap(this.delegate);
        }
    }

    public ImmutableEnumMap(EnumMap<K, V> enumMap) {
        this.delegate = enumMap;
        C4933n.m24791a(!enumMap.isEmpty());
    }

    public static <K extends Enum<K>, V> ImmutableMap<K, V> asImmutable(EnumMap<K, V> enumMap) {
        int size = enumMap.size();
        if (size == 0) {
            return ImmutableMap.m8380of();
        }
        if (size != 1) {
            return new ImmutableEnumMap(enumMap);
        }
        Map.Entry entry = (Map.Entry) C4983g0.m24715c(enumMap.entrySet());
        return ImmutableMap.m8379of(entry.getKey(), entry.getValue());
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public boolean containsKey(Object obj) {
        return this.delegate.containsKey(obj);
    }

    @Override // com.google.common.collect.ImmutableMap.IteratorBasedImmutableMap
    public AbstractC4978e1<Map.Entry<K, V>> entryIterator() {
        return Maps.m8129b(this.delegate.entrySet().iterator());
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        Object obj2 = obj;
        if (obj instanceof ImmutableEnumMap) {
            obj2 = ((ImmutableEnumMap) obj).delegate;
        }
        return this.delegate.equals(obj2);
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public V get(Object obj) {
        return this.delegate.get(obj);
    }

    @Override // com.google.common.collect.ImmutableMap
    public boolean isPartialView() {
        return false;
    }

    @Override // com.google.common.collect.ImmutableMap
    public AbstractC4978e1<K> keyIterator() {
        return Iterators.m8247j(this.delegate.keySet().iterator());
    }

    @Override // java.util.Map
    public int size() {
        return this.delegate.size();
    }

    @Override // com.google.common.collect.ImmutableMap
    public Object writeReplace() {
        return new EnumSerializedForm(this.delegate);
    }
}
