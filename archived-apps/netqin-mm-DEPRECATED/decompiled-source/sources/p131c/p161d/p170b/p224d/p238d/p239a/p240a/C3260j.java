package p131c.p161d.p170b.p224d.p238d.p239a.p240a;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.internal.zaaf;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.signin.zad;
import java.util.concurrent.locks.Lock;
/* renamed from: c.d.b.d.d.a.a.j */
/* loaded from: classes-dex2jar.jar:c/d/b/d/d/a/a/j.class */
public final class C3260j implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {

    /* renamed from: a */
    public final /* synthetic */ zaaf f11954a;

    public C3260j(zaaf zaafVar) {
        this.f11954a = zaafVar;
    }

    public /* synthetic */ C3260j(zaaf zaafVar, RunnableC3246c cVar) {
        this(zaafVar);
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        ClientSettings clientSettings;
        zad zadVar;
        Lock lock;
        Lock lock2;
        zad zadVar2;
        clientSettings = this.f11954a.f23200r;
        Preconditions.m17288a(clientSettings);
        if (clientSettings.m17321j()) {
            lock = this.f11954a.f23184b;
            lock.lock();
            try {
                zadVar2 = this.f11954a.f23193k;
                if (zadVar2 != null) {
                    zadVar2.mo8624a(new BinderC3256h(this.f11954a));
                }
            } finally {
                lock2 = this.f11954a.f23184b;
                lock2.unlock();
            }
        } else {
            zadVar = this.f11954a.f23193k;
            Preconditions.m17288a(zadVar);
            zadVar.mo8624a(new BinderC3256h(this.f11954a));
        }
    }

    @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        Lock lock;
        Lock lock2;
        boolean a;
        lock = this.f11954a.f23184b;
        lock.lock();
        try {
            a = this.f11954a.m17589a(connectionResult);
            if (a) {
                this.f11954a.m17569g();
                this.f11954a.m17573e();
            } else {
                this.f11954a.m17581b(connectionResult);
            }
        } finally {
            lock2 = this.f11954a.f23184b;
            lock2.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnectionSuspended(int i) {
    }
}
