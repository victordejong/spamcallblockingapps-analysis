package com.google.android.gms.internal.icing;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.ConnectionCallbacks;
import com.google.android.gms.common.api.internal.OnConnectionFailedListener;
import com.google.android.gms.common.internal.ClientSettings;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zze.class */
final class zze extends Api.AbstractClientBuilder<zzah, Api.ApiOptions.NoOptions> {
    @Override // com.google.android.gms.common.api.Api.AbstractClientBuilder
    public final /* synthetic */ zzah buildClient(Context context, Looper looper, ClientSettings clientSettings, Api.ApiOptions.NoOptions noOptions, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        return new zzah(context, looper, clientSettings, connectionCallbacks, onConnectionFailedListener);
    }
}
