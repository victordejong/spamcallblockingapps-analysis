package com.google.android.gms.common.api;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.data.AbstractDataBuffer;
import com.google.android.gms.common.data.DataBuffer;
import java.util.Iterator;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/DataBufferResponse.class */
public class DataBufferResponse<T, R extends AbstractDataBuffer<T> & Result> extends Response<R> implements DataBuffer<T> {
    @Override // com.google.android.gms.common.api.Releasable
    /* renamed from: a */
    public void mo15656a() {
        ((AbstractDataBuffer) m17751b()).mo15656a();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        ((AbstractDataBuffer) m17751b()).close();
    }

    @Override // com.google.android.gms.common.data.DataBuffer
    public T get(int i) {
        return (T) ((AbstractDataBuffer) m17751b()).get(i);
    }

    @Override // com.google.android.gms.common.data.DataBuffer
    public int getCount() {
        return ((AbstractDataBuffer) m17751b()).getCount();
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        return ((AbstractDataBuffer) m17751b()).iterator();
    }
}
