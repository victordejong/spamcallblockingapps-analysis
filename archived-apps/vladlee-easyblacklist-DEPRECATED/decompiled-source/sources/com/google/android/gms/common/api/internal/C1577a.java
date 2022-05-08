package com.google.android.gms.common.api.internal;

import android.util.Log;
import androidx.p026b.C0529a;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.AvailabilityException;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.common.api.internal.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/a.class */
public final class C1577a implements OnCompleteListener<Map<ApiKey<?>, String>> {

    /* renamed from: a */
    private SignInConnectionListener f6332a;

    /* renamed from: b */
    private final /* synthetic */ zav f6333b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1577a(zav zavVar, SignInConnectionListener signInConnectionListener) {
        this.f6333b = zavVar;
        this.f6332a = signInConnectionListener;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m5914a() {
        this.f6332a.onComplete();
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public final void onComplete(Task<Map<ApiKey<?>, String>> task) {
        Lock lock;
        Lock lock2;
        boolean z;
        SignInConnectionListener signInConnectionListener;
        Map map;
        Map map2;
        Condition condition;
        boolean z2;
        Map map3;
        Map map4;
        Map map5;
        Map map6;
        Map map7;
        Map map8;
        lock = this.f6333b.f6553f;
        lock.lock();
        try {
            z = this.f6333b.f6561n;
            if (!z) {
                signInConnectionListener = this.f6332a;
            } else {
                if (task.isSuccessful()) {
                    zav zavVar = this.f6333b;
                    map6 = this.f6333b.f6549b;
                    zavVar.f6563p = new C0529a(map6.size());
                    map7 = this.f6333b.f6549b;
                    for (zaw zawVar : map7.values()) {
                        map8 = this.f6333b.f6563p;
                        map8.put(zawVar.getApiKey(), ConnectionResult.RESULT_SUCCESS);
                    }
                } else if (task.getException() instanceof AvailabilityException) {
                    AvailabilityException availabilityException = (AvailabilityException) task.getException();
                    z2 = this.f6333b.f6559l;
                    if (z2) {
                        zav zavVar2 = this.f6333b;
                        map3 = this.f6333b.f6549b;
                        zavVar2.f6563p = new C0529a(map3.size());
                        map4 = this.f6333b.f6549b;
                        for (zaw zawVar2 : map4.values()) {
                            Object apiKey = zawVar2.getApiKey();
                            ConnectionResult connectionResult = availabilityException.getConnectionResult((GoogleApi<? extends Api.ApiOptions>) zawVar2);
                            if (zav.m5799a(this.f6333b, zawVar2, connectionResult)) {
                                map5 = this.f6333b.f6563p;
                                connectionResult = new ConnectionResult(16);
                            } else {
                                map5 = this.f6333b.f6563p;
                            }
                            map5.put(apiKey, connectionResult);
                        }
                    } else {
                        this.f6333b.f6563p = availabilityException.zaj();
                    }
                } else {
                    Log.e("ConnectionlessGAC", "Unexpected availability exception", task.getException());
                    this.f6333b.f6563p = Collections.emptyMap();
                }
                if (this.f6333b.isConnected()) {
                    map = this.f6333b.f6562o;
                    map2 = this.f6333b.f6563p;
                    map.putAll(map2);
                    if (zav.m5792f(this.f6333b) == null) {
                        zav.m5789i(this.f6333b);
                        zav.m5788j(this.f6333b);
                        condition = this.f6333b.f6556i;
                        condition.signalAll();
                    }
                }
                signInConnectionListener = this.f6332a;
            }
            signInConnectionListener.onComplete();
        } finally {
            lock2 = this.f6333b.f6553f;
            lock2.unlock();
        }
    }
}
