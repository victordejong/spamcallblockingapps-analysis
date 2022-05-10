package com.google.android.gms.common.data;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/DataBufferRef.class */
public class DataBufferRef {
    @KeepForSdk

    /* renamed from: a */
    public final DataHolder f23318a;
    @KeepForSdk

    /* renamed from: b */
    public int f23319b;

    /* renamed from: c */
    public int f23320c;

    /* renamed from: a */
    public final void m17431a(int i) {
        Preconditions.m17280b(i >= 0 && i < this.f23318a.getCount());
        this.f23319b = i;
        this.f23320c = this.f23318a.m17430a(i);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof DataBufferRef)) {
            return false;
        }
        DataBufferRef dataBufferRef = (DataBufferRef) obj;
        return Objects.m17295a(Integer.valueOf(dataBufferRef.f23319b), Integer.valueOf(this.f23319b)) && Objects.m17295a(Integer.valueOf(dataBufferRef.f23320c), Integer.valueOf(this.f23320c)) && dataBufferRef.f23318a == this.f23318a;
    }

    public int hashCode() {
        return Objects.m17294a(Integer.valueOf(this.f23319b), Integer.valueOf(this.f23320c), this.f23318a);
    }
}
