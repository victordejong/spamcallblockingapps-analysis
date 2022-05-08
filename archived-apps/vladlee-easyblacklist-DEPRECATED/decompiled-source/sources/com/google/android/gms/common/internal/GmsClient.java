package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.internal.ConnectionCallbacks;
import com.google.android.gms.common.api.internal.OnConnectionFailedListener;
import com.google.android.gms.common.internal.GmsClientEventManager;
import java.util.Collections;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/GmsClient.class */
public abstract class GmsClient<T extends IInterface> extends BaseGmsClient<T> implements Api.Client, GmsClientEventManager.GmsClientEventState {

    /* renamed from: d */
    private final ClientSettings f6766d;

    /* renamed from: e */
    private final Set<Scope> f6767e;

    /* renamed from: f */
    private final Account f6768f;

    /* JADX INFO: Access modifiers changed from: protected */
    public GmsClient(Context context, Looper looper, int i, ClientSettings clientSettings) {
        this(context, looper, GmsClientSupervisor.getInstance(context), GoogleApiAvailability.getInstance(), i, clientSettings);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Deprecated
    public GmsClient(Context context, Looper looper, int i, ClientSettings clientSettings, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this(context, looper, i, clientSettings, (ConnectionCallbacks) connectionCallbacks, (OnConnectionFailedListener) onConnectionFailedListener);
    }

    private GmsClient(Context context, Looper looper, int i, ClientSettings clientSettings, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        this(context, looper, GmsClientSupervisor.getInstance(context), GoogleApiAvailability.getInstance(), i, clientSettings, (ConnectionCallbacks) Preconditions.checkNotNull(connectionCallbacks), (OnConnectionFailedListener) Preconditions.checkNotNull(onConnectionFailedListener));
    }

    private GmsClient(Context context, Looper looper, GmsClientSupervisor gmsClientSupervisor, GoogleApiAvailability googleApiAvailability, int i, ClientSettings clientSettings) {
        this(context, looper, gmsClientSupervisor, googleApiAvailability, i, clientSettings, null, null);
    }

    private GmsClient(Context context, Looper looper, GmsClientSupervisor gmsClientSupervisor, GoogleApiAvailability googleApiAvailability, int i, ClientSettings clientSettings, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, gmsClientSupervisor, googleApiAvailability, i, connectionCallbacks == null ? null : new C1662d(connectionCallbacks), onConnectionFailedListener == null ? null : new C1663e(onConnectionFailedListener), clientSettings.getRealClientClassName());
        this.f6766d = clientSettings;
        this.f6768f = clientSettings.getAccount();
        Set<Scope> allRequestedScopes = clientSettings.getAllRequestedScopes();
        for (Scope scope : allRequestedScopes) {
            if (!allRequestedScopes.contains(scope)) {
                throw new IllegalStateException("Expanding scopes is not permitted, use implied scopes instead");
            }
        }
        this.f6767e = allRequestedScopes;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    /* renamed from: c */
    protected final Set<Scope> mo5698c() {
        return this.f6767e;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final Account getAccount() {
        return this.f6768f;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public int getMinApkVersion() {
        return super.getMinApkVersion();
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public Feature[] getRequiredFeatures() {
        return new Feature[0];
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public Set<Scope> getScopesForConnectionlessNonSignIn() {
        return requiresSignIn() ? this.f6767e : Collections.emptySet();
    }
}
