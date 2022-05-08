package com.google.android.gms.common.data;

import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.NoSuchElementException;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/SingleRefDataBufferIterator.class */
public class SingleRefDataBufferIterator<T> extends DataBufferIterator<T> {
    private T zamf;

    public SingleRefDataBufferIterator(DataBuffer<T> dataBuffer) {
        super(dataBuffer);
    }

    @Override // com.google.android.gms.common.data.DataBufferIterator, java.util.Iterator
    public T next() {
        if (!hasNext()) {
            int i = this.zalk;
            StringBuilder sb = new StringBuilder(46);
            sb.append("Cannot advance the iterator beyond ");
            sb.append(i);
            throw new NoSuchElementException(sb.toString());
        }
        this.zalk++;
        if (this.zalk == 0) {
            this.zamf = this.zalj.get(0);
            if (!(this.zamf instanceof DataBufferRef)) {
                String valueOf = String.valueOf(this.zamf.getClass());
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf).length() + 44);
                sb2.append("DataBuffer reference of type ");
                sb2.append(valueOf);
                sb2.append(" is not movable");
                throw new IllegalStateException(sb2.toString());
            }
        } else {
            ((DataBufferRef) this.zamf).zag(this.zalk);
        }
        return this.zamf;
    }
}
