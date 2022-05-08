package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.support.annotation.NonNull;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.Preconditions;
import java.lang.ref.WeakReference;
import java.util.concurrent.locks.Lock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaam.class */
final class zaam implements BaseGmsClient.ConnectionProgressReportCallbacks {
    private final Api<?> mApi;
    private final boolean zaeb;
    private final WeakReference<zaak> zagj;

    public zaam(zaak zaakVar, Api<?> api, boolean z) {
        this.zagj = new WeakReference<>(zaakVar);
        this.mApi = api;
        this.zaeb = z;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.ConnectionProgressReportCallbacks
    public final void onReportServiceBinding(@NonNull ConnectionResult connectionResult) {
        zabe zabeVar;
        Lock lock;
        Lock lock2;
        boolean zac;
        boolean zaao;
        zaak zaakVar = this.zagj.get();
        if (zaakVar != null) {
            Looper myLooper = Looper.myLooper();
            zabeVar = zaakVar.zafs;
            Preconditions.checkState(myLooper == zabeVar.zaed.getLooper(), "onReportServiceBinding must be called on the GoogleApiClient handler thread");
            lock = zaakVar.zaen;
            lock.lock();
            try {
                zac = zaakVar.zac(0);
                if (zac) {
                    if (!connectionResult.isSuccess()) {
                        zaakVar.zab(connectionResult, this.mApi, this.zaeb);
                    }
                    zaao = zaakVar.zaao();
                    if (zaao) {
                        zaakVar.zaap();
                    }
                }
            } finally {
                lock2 = zaakVar.zaen;
                lock2.unlock();
            }
        }
    }
}
