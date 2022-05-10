package p131c.p161d.p170b.p224d.p238d.p243d;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.internal.OnConnectionFailedListener;
import com.google.android.gms.common.internal.BaseGmsClient;
/* renamed from: c.d.b.d.d.d.e */
/* loaded from: classes-dex2jar.jar:c/d/b/d/d/d/e.class */
public final class C3297e implements BaseGmsClient.BaseOnConnectionFailedListener {

    /* renamed from: a */
    public final /* synthetic */ OnConnectionFailedListener f12017a;

    public C3297e(OnConnectionFailedListener onConnectionFailedListener) {
        this.f12017a = onConnectionFailedListener;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        this.f12017a.onConnectionFailed(connectionResult);
    }
}
