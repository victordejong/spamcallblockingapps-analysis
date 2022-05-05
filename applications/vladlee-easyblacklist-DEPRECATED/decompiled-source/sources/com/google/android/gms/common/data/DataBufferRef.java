package com.google.android.gms.common.data;

import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/DataBufferRef.class */
public class DataBufferRef {

    /* renamed from: a */
    protected final DataHolder f6607a;

    /* renamed from: b */
    protected int f6608b;

    /* renamed from: c */
    private int f6609c;

    public DataBufferRef(DataHolder dataHolder, int i) {
        this.f6607a = (DataHolder) Preconditions.checkNotNull(dataHolder);
        m5761a(i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void m5761a(int i) {
        Preconditions.checkState(i >= 0 && i < this.f6607a.getCount());
        this.f6608b = i;
        this.f6609c = this.f6607a.getWindowIndex(this.f6608b);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof DataBufferRef)) {
            return false;
        }
        DataBufferRef dataBufferRef = (DataBufferRef) obj;
        return Objects.equal(Integer.valueOf(dataBufferRef.f6608b), Integer.valueOf(this.f6608b)) && Objects.equal(Integer.valueOf(dataBufferRef.f6609c), Integer.valueOf(this.f6609c)) && dataBufferRef.f6607a == this.f6607a;
    }

    public boolean hasColumn(String str) {
        return this.f6607a.hasColumn(str);
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.f6608b), Integer.valueOf(this.f6609c), this.f6607a);
    }

    public boolean isDataValid() {
        return !this.f6607a.isClosed();
    }
}
