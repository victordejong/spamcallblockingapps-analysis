package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzye.class */
public final class zzye extends AbstractList<String> implements zzwc, RandomAccess {
    private final zzwc zzccq;

    public zzye(zzwc zzwcVar) {
        this.zzccq = zzwcVar;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return (String) this.zzccq.get(i);
    }

    @Override // com.google.android.gms.internal.measurement.zzwc
    public final Object getRaw(int i) {
        return this.zzccq.getRaw(i);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<String> iterator() {
        return new zzyg(this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<String> listIterator(int i) {
        return new zzyf(this, i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzccq.size();
    }

    @Override // com.google.android.gms.internal.measurement.zzwc
    public final void zzc(zzud zzudVar) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.measurement.zzwc
    public final List<?> zzwv() {
        return this.zzccq.zzwv();
    }

    @Override // com.google.android.gms.internal.measurement.zzwc
    public final zzwc zzww() {
        return this;
    }
}
