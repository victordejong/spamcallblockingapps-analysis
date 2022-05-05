package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/DataHolderResult.class */
public class DataHolderResult implements Releasable, Result {

    /* renamed from: a */
    protected final Status f6262a;

    /* renamed from: b */
    protected final DataHolder f6263b;

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.f6262a;
    }

    @Override // com.google.android.gms.common.api.Releasable
    public void release() {
        DataHolder dataHolder = this.f6263b;
        if (dataHolder != null) {
            dataHolder.close();
        }
    }
}
