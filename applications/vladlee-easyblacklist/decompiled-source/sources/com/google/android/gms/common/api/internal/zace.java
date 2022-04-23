package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ResolveAccountResponse;
import com.google.android.gms.signin.SignInOptions;
import com.google.android.gms.signin.internal.zad;
import com.google.android.gms.signin.internal.zak;
import com.google.android.gms.signin.zab;
import com.google.android.gms.signin.zac;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zace.class */
public final class zace extends zad implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {

    /* renamed from: a */
    private static Api.AbstractClientBuilder<? extends zac, SignInOptions> f6504a = zab.zapv;

    /* renamed from: b */
    private final Context f6505b;

    /* renamed from: c */
    private final Handler f6506c;

    /* renamed from: d */
    private final Api.AbstractClientBuilder<? extends zac, SignInOptions> f6507d;

    /* renamed from: e */
    private Set<Scope> f6508e;

    /* renamed from: f */
    private ClientSettings f6509f;

    /* renamed from: g */
    private zac f6510g;

    /* renamed from: h */
    private zacf f6511h;

    public zace(Context context, Handler handler, ClientSettings clientSettings) {
        this(context, handler, clientSettings, f6504a);
    }

    public zace(Context context, Handler handler, ClientSettings clientSettings, Api.AbstractClientBuilder<? extends zac, SignInOptions> abstractClientBuilder) {
        this.f6505b = context;
        this.f6506c = handler;
        this.f6509f = (ClientSettings) Preconditions.checkNotNull(clientSettings, "ClientSettings must not be null");
        this.f6508e = clientSettings.getRequiredScopes();
        this.f6507d = abstractClientBuilder;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m5825a(zace zaceVar, zak zakVar) {
        ConnectionResult connectionResult = zakVar.getConnectionResult();
        ConnectionResult connectionResult2 = connectionResult;
        if (connectionResult.isSuccess()) {
            ResolveAccountResponse zacv = zakVar.zacv();
            connectionResult2 = zacv.getConnectionResult();
            if (!connectionResult2.isSuccess()) {
                String valueOf = String.valueOf(connectionResult2);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 48);
                sb.append("Sign-in succeeded with resolve account failure: ");
                sb.append(valueOf);
                Log.wtf("SignInCoordinator", sb.toString(), new Exception());
            } else {
                zaceVar.f6511h.zaa(zacv.getAccountAccessor(), zaceVar.f6508e);
                zaceVar.f6510g.disconnect();
            }
        }
        zaceVar.f6511h.zag(connectionResult2);
        zaceVar.f6510g.disconnect();
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        this.f6510g.zaa(this);
    }

    @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        this.f6511h.zag(connectionResult);
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        this.f6510g.disconnect();
    }

    public final void zaa(zacf zacfVar) {
        zac zacVar = this.f6510g;
        if (zacVar != null) {
            zacVar.disconnect();
        }
        this.f6509f.setClientSessionId(Integer.valueOf(System.identityHashCode(this)));
        Api.AbstractClientBuilder<? extends zac, SignInOptions> abstractClientBuilder = this.f6507d;
        Context context = this.f6505b;
        Looper looper = this.f6506c.getLooper();
        ClientSettings clientSettings = this.f6509f;
        this.f6510g = (zac) abstractClientBuilder.buildClient(context, looper, clientSettings, (ClientSettings) clientSettings.getSignInOptions(), (GoogleApiClient.ConnectionCallbacks) this, (GoogleApiClient.OnConnectionFailedListener) this);
        this.f6511h = zacfVar;
        Set<Scope> set = this.f6508e;
        if (set == null || set.isEmpty()) {
            this.f6506c.post(new RunnableC1587aj(this));
        } else {
            this.f6510g.connect();
        }
    }

    @Override // com.google.android.gms.signin.internal.zad, com.google.android.gms.signin.internal.zac
    public final void zab(zak zakVar) {
        this.f6506c.post(new RunnableC1588ak(this, zakVar));
    }

    public final zac zabo() {
        return this.f6510g;
    }

    public final void zabq() {
        zac zacVar = this.f6510g;
        if (zacVar != null) {
            zacVar.disconnect();
        }
    }
}
