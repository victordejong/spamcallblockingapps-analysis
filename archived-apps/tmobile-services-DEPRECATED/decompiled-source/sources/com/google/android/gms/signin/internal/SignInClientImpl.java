package com.google.android.gms.signin.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.internal.Storage;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.GmsClient;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ResolveAccountRequest;
import com.google.android.gms.signin.SignInOptions;
import com.google.android.gms.signin.zac;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/signin/internal/SignInClientImpl.class */
public class SignInClientImpl extends GmsClient<zae> implements zac {

    /* renamed from: a */
    private final boolean f9811a;

    /* renamed from: b */
    private final ClientSettings f9812b;

    /* renamed from: c */
    private final Bundle f9813c;

    /* renamed from: d */
    private Integer f9814d;

    private SignInClientImpl(Context context, Looper looper, boolean z, ClientSettings clientSettings, Bundle bundle, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 44, clientSettings, connectionCallbacks, onConnectionFailedListener);
        this.f9811a = true;
        this.f9812b = clientSettings;
        this.f9813c = bundle;
        this.f9814d = clientSettings.m14579d();
    }

    public SignInClientImpl(Context context, Looper looper, boolean z, ClientSettings clientSettings, SignInOptions signInOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this(context, looper, true, clientSettings, m10852e(clientSettings), connectionCallbacks, onConnectionFailedListener);
    }

    @KeepForSdk
    /* renamed from: e */
    public static Bundle m10852e(ClientSettings clientSettings) {
        SignInOptions i = clientSettings.m14574i();
        Integer d = clientSettings.m14579d();
        Bundle bundle = new Bundle();
        bundle.putParcelable("com.google.android.gms.signin.internal.clientRequestedAccount", clientSettings.m14582a());
        if (d != null) {
            bundle.putInt("com.google.android.gms.common.internal.ClientSettings.sessionId", d.intValue());
        }
        if (i != null) {
            bundle.putBoolean("com.google.android.gms.signin.internal.offlineAccessRequested", i.m10854j());
            bundle.putBoolean("com.google.android.gms.signin.internal.idTokenRequested", i.m10855i());
            bundle.putString("com.google.android.gms.signin.internal.serverClientId", i.m10857f());
            bundle.putBoolean("com.google.android.gms.signin.internal.usePromptModeForAuthCode", true);
            bundle.putBoolean("com.google.android.gms.signin.internal.forceCodeForRefreshToken", i.m10856g());
            bundle.putString("com.google.android.gms.signin.internal.hostedDomain", i.m10860b());
            bundle.putString("com.google.android.gms.signin.internal.logSessionId", i.m10859c());
            bundle.putBoolean("com.google.android.gms.signin.internal.waitForAccessTokenRefresh", i.m10853k());
            if (i.m10861a() != null) {
                bundle.putLong("com.google.android.gms.signin.internal.authApiSignInModuleVersion", i.m10861a().longValue());
            }
            if (i.m10858e() != null) {
                bundle.putLong("com.google.android.gms.signin.internal.realClientLibraryVersion", i.m10858e().longValue());
            }
        }
        return bundle;
    }

    @Override // com.google.android.gms.signin.zac
    /* renamed from: a */
    public final void mo10840a(IAccountAccessor iAccountAccessor, boolean z) {
        try {
            ((zae) getService()).mo10844O(iAccountAccessor, this.f9814d.intValue(), z);
        } catch (RemoteException e) {
            Log.w("SignInClientImpl", "Remote service probably died when saveDefaultAccount is called");
        }
    }

    @Override // com.google.android.gms.signin.zac
    /* renamed from: b */
    public final void mo10839b(zac zacVar) {
        Preconditions.m14522l(zacVar, "Expecting a valid ISignInCallbacks");
        try {
            Account b = this.f9812b.m14581b();
            GoogleSignInAccount googleSignInAccount = null;
            if (BaseGmsClient.DEFAULT_ACCOUNT.equals(b.name)) {
                googleSignInAccount = Storage.m15140a(getContext()).m15139b();
            }
            ((zae) getService()).mo10845L0(new zai(new ResolveAccountRequest(b, this.f9814d.intValue(), googleSignInAccount)), zacVar);
        } catch (RemoteException e) {
            Log.w("SignInClientImpl", "Remote service probably died when signIn is called");
            try {
                zacVar.mo10849E(new zak(8));
            } catch (RemoteException e2) {
                Log.wtf("SignInClientImpl", "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException.", e);
            }
        }
    }

    @Override // com.google.android.gms.signin.zac
    public final void connect() {
        connect(new BaseGmsClient.LegacyClientCallbackAdapter());
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.signin.internal.ISignInService");
        return queryLocalInterface instanceof zae ? (zae) queryLocalInterface : new zag(iBinder);
    }

    @Override // com.google.android.gms.signin.zac
    /* renamed from: d */
    public final void mo10838d() {
        try {
            ((zae) getService()).mo10843z(this.f9814d.intValue());
        } catch (RemoteException e) {
            Log.w("SignInClientImpl", "Remote service probably died when clearAccountFromSessionStore is called");
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected Bundle getGetServiceRequestExtraArgs() {
        if (!getContext().getPackageName().equals(this.f9812b.m14576g())) {
            this.f9813c.putString("com.google.android.gms.signin.internal.realClientPackageName", this.f9812b.m14576g());
        }
        return this.f9813c;
    }

    @Override // com.google.android.gms.common.internal.GmsClient, com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public int getMinApkVersion() {
        return GooglePlayServicesUtilLight.f6984a;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected String getServiceDescriptor() {
        return "com.google.android.gms.signin.internal.ISignInService";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected String getStartServiceAction() {
        return "com.google.android.gms.signin.service.START";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public boolean requiresSignIn() {
        return this.f9811a;
    }
}
