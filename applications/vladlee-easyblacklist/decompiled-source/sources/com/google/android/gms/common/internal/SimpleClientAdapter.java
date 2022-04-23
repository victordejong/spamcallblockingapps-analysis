package com.google.android.gms.common.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/SimpleClientAdapter.class */
public class SimpleClientAdapter<T extends IInterface> extends GmsClient<T> {

    /* renamed from: d */
    private final Api.SimpleClient<T> f6813d;

    public SimpleClientAdapter(Context context, Looper looper, int i, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener, ClientSettings clientSettings, Api.SimpleClient<T> simpleClient) {
        super(context, looper, i, clientSettings, connectionCallbacks, onConnectionFailedListener);
        this.f6813d = simpleClient;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    /* renamed from: a */
    protected final String mo1590a() {
        return this.f6813d.getServiceDescriptor();
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    /* renamed from: a */
    protected final void mo5683a(int i, T t) {
        this.f6813d.setState(i, t);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected T createServiceInterface(IBinder iBinder) {
        return this.f6813d.createServiceInterface(iBinder);
    }

    public Api.SimpleClient<T> getClient() {
        return this.f6813d;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected String getStartServiceAction() {
        return this.f6813d.getStartServiceAction();
    }
}
