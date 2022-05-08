package com.google.android.gms.common.api.internal;

import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabo.class */
final class zabo implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ ConnectionResult f7241f;

    /* renamed from: g */
    private final /* synthetic */ GoogleApiManager.zab f7242g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zabo(GoogleApiManager.zab zabVar, ConnectionResult connectionResult) {
        this.f7242g = zabVar;
        this.f7241f = connectionResult;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ApiKey apiKey;
        Api.Client client;
        Api.Client client2;
        Api.Client client3;
        Map map = GoogleApiManager.this.f7076i;
        apiKey = this.f7242g.f7095b;
        GoogleApiManager.zaa zaaVar = (GoogleApiManager.zaa) map.get(apiKey);
        if (zaaVar != null) {
            if (this.f7241f.m15090d0()) {
                this.f7242g.f7098e = true;
                client = this.f7242g.f7094a;
                if (client.requiresSignIn()) {
                    this.f7242g.m14893g();
                    return;
                }
                try {
                    client2 = this.f7242g.f7094a;
                    client3 = this.f7242g.f7094a;
                    client2.getRemoteService(null, client3.getScopesForConnectionlessNonSignIn());
                } catch (SecurityException e) {
                    Log.e("GoogleApiManager", "Failed to get service from broker. ", e);
                    zaaVar.mo14711f(new ConnectionResult(10));
                }
            } else {
                zaaVar.mo14711f(this.f7241f);
            }
        }
    }
}
