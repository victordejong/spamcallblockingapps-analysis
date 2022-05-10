package p131c.p161d.p170b.p224d.p263k;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.signin.SignInOptions;
import com.google.android.gms.signin.internal.SignInClientImpl;
/* renamed from: c.d.b.d.k.b */
/* loaded from: classes-dex2jar.jar:c/d/b/d/k/b.class */
public final class C4884b extends Api.AbstractClientBuilder<SignInClientImpl, SignInOptions> {
    @Override // com.google.android.gms.common.api.Api.AbstractClientBuilder
    /* renamed from: a */
    public final /* synthetic */ SignInClientImpl mo17783a(Context context, Looper looper, ClientSettings clientSettings, SignInOptions signInOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        SignInOptions signInOptions2 = signInOptions;
        SignInOptions signInOptions3 = signInOptions2;
        if (signInOptions2 == null) {
            signInOptions3 = SignInOptions.f30215j;
        }
        return new SignInClientImpl(context, looper, true, clientSettings, signInOptions3, connectionCallbacks, onConnectionFailedListener);
    }
}
