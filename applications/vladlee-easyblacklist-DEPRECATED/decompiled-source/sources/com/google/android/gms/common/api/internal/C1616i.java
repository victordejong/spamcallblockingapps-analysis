package com.google.android.gms.common.api.internal;

import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.Preconditions;
import java.lang.ref.WeakReference;
import java.util.concurrent.locks.Lock;
/* renamed from: com.google.android.gms.common.api.internal.i */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/i.class */
final class C1616i implements BaseGmsClient.ConnectionProgressReportCallbacks {

    /* renamed from: a */
    private final WeakReference<zaak> f6399a;

    /* renamed from: b */
    private final Api<?> f6400b;

    /* renamed from: c */
    private final boolean f6401c;

    public C1616i(zaak zaakVar, Api<?> api, boolean z) {
        this.f6399a = new WeakReference<>(zaakVar);
        this.f6400b = api;
        this.f6401c = z;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.ConnectionProgressReportCallbacks
    public final void onReportServiceBinding(ConnectionResult connectionResult) {
        zabe zabeVar;
        Lock lock;
        Lock lock2;
        boolean a;
        boolean a2;
        zaak zaakVar = this.f6399a.get();
        if (zaakVar != null) {
            Looper myLooper = Looper.myLooper();
            zabeVar = zaakVar.f6434a;
            Preconditions.checkState(myLooper == zabeVar.f6484d.getLooper(), "onReportServiceBinding must be called on the GoogleApiClient handler thread");
            lock = zaakVar.f6435b;
            lock.lock();
            try {
                a = zaakVar.m5873a(0);
                if (a) {
                    if (!connectionResult.isSuccess()) {
                        zaakVar.m5871a(connectionResult, this.f6400b, this.f6401c);
                    }
                    a2 = zaakVar.m5874a();
                    if (a2) {
                        zaakVar.m5865b();
                    }
                }
            } finally {
                lock2 = zaakVar.f6435b;
                lock2.unlock();
            }
        }
    }
}
