package com.google.android.gms.common.data;

import com.google.android.gms.common.internal.Preconditions;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/DataBufferIterator.class */
public class DataBufferIterator<T> implements Iterator<T> {

    /* renamed from: a */
    protected final DataBuffer<T> f6604a;

    /* renamed from: b */
    protected int f6605b = -1;

    public DataBufferIterator(DataBuffer<T> dataBuffer) {
        this.f6604a = (DataBuffer) Preconditions.checkNotNull(dataBuffer);
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f6605b < this.f6604a.getCount() - 1;
    }

    @Override // java.util.Iterator
    public T next() {
        if (hasNext()) {
            DataBuffer<T> dataBuffer = this.f6604a;
            int i = this.f6605b + 1;
            this.f6605b = i;
            return dataBuffer.get(i);
        }
        int i2 = this.f6605b;
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
