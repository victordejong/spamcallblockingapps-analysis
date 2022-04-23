package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl;
import com.google.android.gms.common.api.internal.GoogleApiManager;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zad.class */
public final class zad<A extends BaseImplementation.ApiMethodImpl<? extends Result, Api.AnyClient>> extends zac {

    /* renamed from: a */
    private final A f6525a;

    public zad(int i, A a) {
        super(i);
        this.f6525a = a;
    }

    @Override // com.google.android.gms.common.api.internal.zac
    public final void zaa(Status status) {
        this.f6525a.setFailedResult(status);
    }

    @Override // com.google.android.gms.common.api.internal.zac
    public final void zaa(zaz zazVar, boolean z) {
        zazVar.m5782a(this.f6525a, z);
    }

    @Override // com.google.android.gms.common.api.internal.zac
    public final void zaa(RuntimeException runtimeException) {
        String simpleName = runtimeException.getClass().getSimpleName();
        String localizedMessage = runtimeException.getLocalizedMessage();
        StringBuilder sb = new StringBuilder(String.valueOf(simpleName).length() + 2 + String.valueOf(localizedMessage).length());
        sb.append(simpleName);
        sb.append(": ");
        sb.append(localizedMessage);
        this.f6525a.setFailedResult(new Status(10, sb.toString()));
    }

    @Override // com.google.android.gms.common.api.internal.zac
    public final void zac(GoogleApiManager.zaa<?> zaaVar) {
        try {
            this.f6525a.run(zaaVar.zaad());
        } catch (RuntimeException e) {
            zaa(e);
        }
    }
}
