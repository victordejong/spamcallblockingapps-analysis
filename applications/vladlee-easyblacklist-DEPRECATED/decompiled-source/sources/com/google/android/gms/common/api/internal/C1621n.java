package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.signin.zac;
import java.util.concurrent.locks.Lock;
/* renamed from: com.google.android.gms.common.api.internal.n */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/n.class */
final class C1621n implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {

    /* renamed from: a */
    private final /* synthetic */ zaak f6408a;

    private C1621n(zaak zaakVar) {
        this.f6408a = zaakVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ C1621n(zaak zaakVar, byte b) {
        this(zaakVar);
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        ClientSettings clientSettings;
        zac zacVar;
        Lock lock;
        Lock lock2;
        zac zacVar2;
        zac zacVar3;
        clientSettings = this.f6408a.f6451r;
        if (clientSettings.isSignInClientDisconnectFixEnabled()) {
            lock = this.f6408a.f6435b;
            lock.lock();
            try {
                zacVar2 = this.f6408a.f6444k;
                if (zacVar2 != null) {
                    zacVar3 = this.f6408a.f6444k;
                    zacVar3.zaa(new BinderC1619l(this.f6408a));
                }
            } finally {
                lock2 = this.f6408a.f6435b;
                lock2.unlock();
            }
        } else {
            zacVar = this.f6408a.f6444k;
            zacVar.zaa(new BinderC1619l(this.f6408a));
        }
    }

    @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        Lock lock;
        Lock lock2;
        boolean a;
        lock = this.f6408a.f6435b;
        lock.lock();
        try {
            a = this.f6408a.m5872a(connectionResult);
            if (a) {
                this.f6408a.m5858d();
                this.f6408a.m5865b();
            } else {
                this.f6408a.m5863b(connectionResult);
            }
        } finally {
            lock2 = this.f6408a.f6435b;
            lock2.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnectionSuspended(int i) {
    }
}
