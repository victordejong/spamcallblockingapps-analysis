package com.google.android.gms.common.data;

import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/AbstractDataBuffer.class */
public abstract class AbstractDataBuffer<T> implements DataBuffer<T> {
    @KeepForSdk

    /* renamed from: a */
    public final DataHolder f23310a;

    @Override // com.google.android.gms.common.api.Releasable
    /* renamed from: a */
    public void mo15656a() {
        DataHolder dataHolder = this.f23310a;
        if (dataHolder != null) {
            dataHolder.close();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        mo15656a();
    }

    @Override // com.google.android.gms.common.data.DataBuffer
    public abstract T get(int i);

    @Override // com.google.android.gms.common.data.DataBuffer
    public int getCount() {
        DataHolder dataHolder = this.f23310a;
        if (dataHolder == null) {
            return 0;
        }
        return dataHolder.getCount();
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        return new DataBufferIterator(this);
    }
}
