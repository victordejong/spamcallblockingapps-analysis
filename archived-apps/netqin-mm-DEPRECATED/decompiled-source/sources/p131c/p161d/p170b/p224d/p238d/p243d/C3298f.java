package p131c.p161d.p170b.p224d.p238d.p243d;

import android.os.Bundle;
import com.google.android.gms.common.api.internal.ConnectionCallbacks;
import com.google.android.gms.common.internal.BaseGmsClient;
/* renamed from: c.d.b.d.d.d.f */
/* loaded from: classes-dex2jar.jar:c/d/b/d/d/d/f.class */
public final class C3298f implements BaseGmsClient.BaseConnectionCallbacks {

    /* renamed from: a */
    public final /* synthetic */ ConnectionCallbacks f12018a;

    public C3298f(ConnectionCallbacks connectionCallbacks) {
        this.f12018a = connectionCallbacks;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        this.f12018a.onConnected(bundle);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        this.f12018a.onConnectionSuspended(i);
    }
}
