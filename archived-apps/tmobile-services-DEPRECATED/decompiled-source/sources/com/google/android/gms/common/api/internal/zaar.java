package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import androidx.annotation.NonNull;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.signin.zac;
import java.util.concurrent.locks.Lock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaar.class */
final class zaar implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {

    /* renamed from: a */
    private final /* synthetic */ zaak f7175a;

    private zaar(zaak zaakVar) {
        this.f7175a = zaakVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zaar(zaak zaakVar, zaaj zaajVar) {
        this(zaakVar);
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    /* renamed from: a */
    public final void mo14715a(int i) {
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    /* renamed from: b */
    public final void mo14714b(Bundle bundle) {
        ClientSettings clientSettings;
        zac zacVar;
        Lock lock;
        Lock lock2;
        zac zacVar2;
        zac zacVar3;
        clientSettings = this.f7175a.f7160r;
        if (clientSettings.m14573j()) {
            lock = this.f7175a.f7144b;
            lock.lock();
            try {
                zacVar2 = this.f7175a.f7153k;
                if (zacVar2 != null) {
                    zacVar3 = this.f7175a.f7153k;
                    zacVar3.mo10839b(new zaap(this.f7175a));
                }
            } finally {
                lock2 = this.f7175a.f7144b;
                lock2.unlock();
            }
        } else {
            zacVar = this.f7175a.f7153k;
            zacVar.mo10839b(new zaap(this.f7175a));
        }
    }

    @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
    /* renamed from: f */
    public final void mo14711f(@NonNull ConnectionResult connectionResult) {
        Lock lock;
        Lock lock2;
        boolean z;
        lock = this.f7175a.f7144b;
        lock.lock();
        try {
            z = this.f7175a.m14824z(connectionResult);
            if (z) {
                this.f7175a.m14835o();
                this.f7175a.m14837m();
            } else {
                this.f7175a.m14853A(connectionResult);
            }
        } finally {
            lock2 = this.f7175a.f7144b;
            lock2.unlock();
        }
    }
}
