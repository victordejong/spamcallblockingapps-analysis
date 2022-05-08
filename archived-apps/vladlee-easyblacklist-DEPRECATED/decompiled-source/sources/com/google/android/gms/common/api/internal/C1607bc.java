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
/* renamed from: com.google.android.gms.common.api.internal.bc */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/bc.class */
public final class C1607bc implements OnCompleteListener<Map<ApiKey<?>, String>> {

    /* renamed from: a */
    private final /* synthetic */ zav f6383a;

    private C1607bc(zav zavVar) {
        this.f6383a = zavVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ C1607bc(zav zavVar, byte b) {
        this(zavVar);
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public final void onComplete(Task<Map<ApiKey<?>, String>> task) {
        Lock lock;
        Lock lock2;
        boolean z;
        Map map;
        ConnectionResult connectionResult;
        Condition condition;
        zaaw zaawVar;
        ConnectionResult connectionResult2;
        Map map2;
        Map map3;
        zav zavVar;
        ConnectionResult connectionResult3;
        boolean z2;
        Map map4;
        Map map5;
        Map map6;
        Map map7;
        Map map8;
        Map map9;
        lock = this.f6383a.f6553f;
        lock.lock();
        try {
            z = this.f6383a.f6561n;
            if (z) {
                if (task.isSuccessful()) {
                    zav zavVar2 = this.f6383a;
                    map7 = this.f6383a.f6548a;
                    zavVar2.f6562o = new C0529a(map7.size());
                    map8 = this.f6383a.f6548a;
                    for (zaw zawVar : map8.values()) {
                        map9 = this.f6383a.f6562o;
                        map9.put(zawVar.getApiKey(), ConnectionResult.RESULT_SUCCESS);
                    }
                } else {
                    if (task.getException() instanceof AvailabilityException) {
                        AvailabilityException availabilityException = (AvailabilityException) task.getException();
                        z2 = this.f6383a.f6559l;
                        if (z2) {
                            zav zavVar3 = this.f6383a;
                            map4 = this.f6383a.f6548a;
                            zavVar3.f6562o = new C0529a(map4.size());
                            map5 = this.f6383a.f6548a;
                            for (zaw zawVar2 : map5.values()) {
                                Object apiKey = zawVar2.getApiKey();
                                ConnectionResult connectionResult4 = availabilityException.getConnectionResult((GoogleApi<? extends Api.ApiOptions>) zawVar2);
                                if (zav.m5799a(this.f6383a, zawVar2, connectionResult4)) {
                                    map6 = this.f6383a.f6562o;
                                    connectionResult4 = new ConnectionResult(16);
                                } else {
                                    map6 = this.f6383a.f6562o;
                                }
                                map6.put(apiKey, connectionResult4);
                            }
                        } else {
                            this.f6383a.f6562o = availabilityException.zaj();
                        }
                        zavVar = this.f6383a;
                        connectionResult3 = zav.m5792f(this.f6383a);
                    } else {
                        Log.e("ConnectionlessGAC", "Unexpected availability exception", task.getException());
                        this.f6383a.f6562o = Collections.emptyMap();
                        zavVar = this.f6383a;
                        connectionResult3 = new ConnectionResult(8);
                    }
                    zavVar.f6565r = connectionResult3;
                }
                map = this.f6383a.f6563p;
                if (map != null) {
                    map2 = this.f6383a.f6562o;
                    map3 = this.f6383a.f6563p;
                    map2.putAll(map3);
                    this.f6383a.f6565r = zav.m5792f(this.f6383a);
                }
                connectionResult = this.f6383a.f6565r;
                if (connectionResult == null) {
                    zav.m5789i(this.f6383a);
                    zav.m5788j(this.f6383a);
                } else {
                    this.f6383a.f6561n = false;
                    zaawVar = this.f6383a.f6552e;
                    connectionResult2 = this.f6383a.f6565r;
                    zaawVar.zac(connectionResult2);
                }
                condition = this.f6383a.f6556i;
                condition.signalAll();
            }
        } finally {
            lock2 = this.f6383a.f6553f;
            lock2.unlock();
        }
    }
}
