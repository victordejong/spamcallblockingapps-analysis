package com.google.android.gms.common.data;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Iterator;
import java.util.NoSuchElementException;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/DataBufferIterator.class */
public class DataBufferIterator<T> implements Iterator<T> {

    /* renamed from: a */
    public final DataBuffer<T> f23316a;

    /* renamed from: b */
    public int f23317b = -1;

    public DataBufferIterator(DataBuffer<T> dataBuffer) {
        Preconditions.m17288a(dataBuffer);
        this.f23316a = dataBuffer;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f23317b < this.f23316a.getCount() - 1;
    }

    @Override // java.util.Iterator
    public T next() {
        if (hasNext()) {
            DataBuffer<T> dataBuffer = this.f23316a;
            int i = this.f23317b + 1;
            this.f23317b = i;
            return dataBuffer.get(i);
        }
        int i2 = this.f23317b;
        StringBuilder sb = new StringBuilder(46);
        sb.append("Cannot advance the iterator beyond ");
        sb.append(i2);
        throw new NoSuchElementException(sb.toString());
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Cannot remove elements from a DataBufferIterator");
    }
}
