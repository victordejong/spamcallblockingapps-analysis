package com.google.android.gms.common.data;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/DataBufferRef.class */
public class DataBufferRef {
    @KeepForSdk

    /* renamed from: a */
    protected final DataHolder f7386a;
    @KeepForSdk

    /* renamed from: b */
    protected int f7387b;

    /* renamed from: c */
    private int f7388c;

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void m14637a(int i) {
        Preconditions.m14520n(i >= 0 && i < this.f7386a.getCount());
        this.f7387b = i;
        this.f7388c = this.f7386a.m14631d0(i);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof DataBufferRef)) {
            return false;
        }
        DataBufferRef dataBufferRef = (DataBufferRef) obj;
        return Objects.m14537a(Integer.valueOf(dataBufferRef.f7387b), Integer.valueOf(this.f7387b)) && Objects.m14537a(Integer.valueOf(dataBufferRef.f7388c), Integer.valueOf(this.f7388c)) && dataBufferRef.f7386a == this.f7386a;
    }

    public int hashCode() {
        return Objects.m14536b(Integer.valueOf(this.f7387b), Integer.valueOf(this.f7388c), this.f7386a);
    }
}
