package com.google.common.collect;

import java.io.Serializable;
import java.lang.Enum;
import java.util.Collection;
import java.util.EnumSet;
import p131c.p161d.p266c.p269c.AbstractC4978e1;
import p131c.p161d.p266c.p269c.C4983g0;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableEnumSet.class */
public final class ImmutableEnumSet<E extends Enum<E>> extends ImmutableSet<E> {
    public final transient EnumSet<E> delegate;
    public transient int hashCode;

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableEnumSet$EnumSerializedForm.class */
    public static class EnumSerializedForm<E extends Enum<E>> implements Serializable {
        public static final long serialVersionUID = 0;
        public final EnumSet<E> delegate;

        public EnumSerializedForm(EnumSet<E> enumSet) {
            this.delegate = enumSet;
        }

        public Object readResolve() {
            return new ImmutableEnumSet(this.delegate.clone());
        }
    }

    public ImmutableEnumSet(EnumSet<E> enumSet) {
        this.delegate = enumSet;
    }

    public static ImmutableSet asImmutable(EnumSet enumSet) {
        int size = enumSet.size();
        return size != 0 ? size != 1 ? new ImmutableEnumSet(enumSet) : ImmutableSet.m8348of(C4983g0.m24715c(enumSet)) : ImmutableSet.m8349of();
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return this.delegate.contains(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean containsAll(Collection<?> collection) {
        Collection<?> collection2 = collection;
        if (collection instanceof ImmutableEnumSet) {
            collection2 = ((ImmutableEnumSet) collection).delegate;
        }
        return this.delegate.containsAll(collection2);
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        Object obj2 = obj;
        if (obj instanceof ImmutableEnumSet) {
            obj2 = ((ImmutableEnumSet) obj).delegate;
        }
        return this.delegate.equals(obj2);
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public int hashCode() {
        int i = this.hashCode;
        int i2 = i;
        if (i == 0) {
            i2 = this.delegate.hashCode();
            this.hashCode = i2;
        }
        return i2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.delegate.isEmpty();
    }

    @Override // com.google.common.collect.ImmutableSet
    public boolean isHashCodeFast() {
        return true;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public boolean isPartialView() {
        return false;
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
    public AbstractC4978e1<E> iterator() {
        return Iterators.m8247j(this.delegate.iterator());
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.delegate.size();
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        return this.delegate.toString();
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
    public Object writeReplace() {
        return new EnumSerializedForm(this.delegate);
    }
}
