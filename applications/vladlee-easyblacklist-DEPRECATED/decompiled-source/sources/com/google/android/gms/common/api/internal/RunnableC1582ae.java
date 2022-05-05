package com.google.android.gms.common.api.internal;

import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import java.util.Map;
/* renamed from: com.google.android.gms.common.api.internal.ae */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/ae.class */
final class RunnableC1582ae implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ ConnectionResult f6339a;

    /* renamed from: b */
    private final /* synthetic */ GoogleApiManager.C1574a f6340b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1582ae(GoogleApiManager.C1574a aVar, ConnectionResult connectionResult) {
        this.f6340b = aVar;
        this.f6339a = connectionResult;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ApiKey apiKey;
        Api.Client client;
        Api.Client client2;
        Api.Client client3;
        Map map = GoogleApiManager.this.f6275l;
        apiKey = this.f6340b.f6282c;
        GoogleApiManager.zaa zaaVar = (GoogleApiManager.zaa) map.get(apiKey);
        if (zaaVar != null) {
            if (this.f6339a.isSuccess()) {
                this.f6340b.f6285f = true;
                client = this.f6340b.f6281b;
                if (client.requiresSignIn()) {
                    this.f6340b.m5947a();
                    return;
                }
                try {
                    client2 = this.f6340b.f6281b;
                    client3 = this.f6340b.f6281b;
                    client2.getRemoteService(null, client3.getScopesForConnectionlessNonSignIn());
                } catch (SecurityException e) {
                    Log.e("GoogleApiManager", "Failed to get service from broker. ", e);
                    zaaVar.onConnectionFailed(new ConnectionResult(10));
                }
            } else {
                zaaVar.onConnectionFailed(this.f6339a);
            }
        }
    }
}
