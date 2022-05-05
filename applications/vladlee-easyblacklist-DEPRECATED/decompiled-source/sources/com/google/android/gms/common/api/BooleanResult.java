package com.google.android.gms.common.api;

import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/BooleanResult.class */
public class BooleanResult implements Result {

    /* renamed from: a */
    private final Status f6184a;

    /* renamed from: b */
    private final boolean f6185b;

    public BooleanResult(Status status, boolean z) {
        this.f6184a = (Status) Preconditions.checkNotNull(status, "Status must not be null");
        this.f6185b = z;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof BooleanResult)) {
            return false;
        }
        BooleanResult booleanResult = (BooleanResult) obj;
        return this.f6184a.equals(booleanResult.f6184a) && this.f6185b == booleanResult.f6185b;
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.f6184a;
    }

    public boolean getValue() {
        return this.f6185b;
    }

    public final int hashCode() {
        return ((this.f6184a.hashCode() + 527) * 31) + (this.f6185b ? 1 : 0);
    }
}
