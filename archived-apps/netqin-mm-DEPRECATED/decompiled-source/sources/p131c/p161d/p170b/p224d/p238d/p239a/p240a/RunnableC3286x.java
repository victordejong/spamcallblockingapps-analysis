package p131c.p161d.p170b.p224d.p238d.p239a.p240a;

import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.ApiKey;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import java.util.Map;
/* renamed from: c.d.b.d.d.a.a.x */
/* loaded from: classes-dex2jar.jar:c/d/b/d/d/a/a/x.class */
public final class RunnableC3286x implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ ConnectionResult f12002a;

    /* renamed from: b */
    public final /* synthetic */ GoogleApiManager.C7230a f12003b;

    public RunnableC3286x(GoogleApiManager.C7230a aVar, ConnectionResult connectionResult) {
        this.f12003b = aVar;
        this.f12002a = connectionResult;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ApiKey apiKey;
        Api.Client client;
        Api.Client client2;
        Api.Client client3;
        Api.Client client4;
        Map map = GoogleApiManager.this.f23124i;
        apiKey = this.f12003b.f23131b;
        GoogleApiManager.zaa zaaVar = (GoogleApiManager.zaa) map.get(apiKey);
        if (zaaVar != null) {
            if (this.f12002a.m17830y()) {
                this.f12003b.f23134e = true;
                client = this.f12003b.f23130a;
                if (client.mo8642n()) {
                    this.f12003b.m17683a();
                    return;
                }
                try {
                    client3 = this.f12003b.f23130a;
                    client4 = this.f12003b.f23130a;
                    client3.mo17618a(null, client4.mo17311f());
                } catch (SecurityException e) {
                    Log.e("GoogleApiManager", "Failed to get service from broker. ", e);
                    client2 = this.f12003b.f23130a;
                    client2.mo17617a("Failed to get service from broker.");
                    zaaVar.onConnectionFailed(new ConnectionResult(10));
                }
            } else {
                zaaVar.onConnectionFailed(this.f12002a);
            }
        }
    }
}
