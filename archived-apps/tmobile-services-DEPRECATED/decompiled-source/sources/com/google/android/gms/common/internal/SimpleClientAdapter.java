package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.common.api.Api;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/SimpleClientAdapter.class */
public class SimpleClientAdapter<T extends IInterface> extends GmsClient<T> {

    /* renamed from: a */
    private final Api.SimpleClient<T> f7530a;

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected T createServiceInterface(IBinder iBinder) {
        return this.f7530a.createServiceInterface(iBinder);
    }

    /* renamed from: e */
    public Api.SimpleClient<T> m14503e() {
        return this.f7530a;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected String getServiceDescriptor() {
        return this.f7530a.getServiceDescriptor();
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected String getStartServiceAction() {
        return this.f7530a.getStartServiceAction();
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected void onSetConnectState(int i, T t) {
        this.f7530a.m15027c(i, t);
    }
}
