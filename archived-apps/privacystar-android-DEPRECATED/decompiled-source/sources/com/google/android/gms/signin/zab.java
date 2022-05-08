package com.google.android.gms.signin;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.signin.internal.SignInClientImpl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/signin/zab.class */
final class zab extends Api.AbstractClientBuilder<SignInClientImpl, SignInOptions> {
    @Override // com.google.android.gms.common.api.Api.AbstractClientBuilder
    public final /* synthetic */ SignInClientImpl buildClient(Context context, Looper looper, ClientSettings clientSettings, SignInOptions signInOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        SignInOptions signInOptions2 = signInOptions;
        SignInOptions signInOptions3 = signInOptions2;
        if (signInOptions2 == null) {
            signInOptions3 = SignInOptions.DEFAULT;
        }
        return new SignInClientImpl(context, looper, true, clientSettings, signInOptions3, connectionCallbacks, onConnectionFailedListener);
    }
}
