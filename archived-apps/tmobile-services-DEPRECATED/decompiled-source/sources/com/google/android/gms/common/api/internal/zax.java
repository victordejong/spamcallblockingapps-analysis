package com.google.android.gms.common.api.internal;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.AvailabilityException;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zax.class */
final class zax implements OnCompleteListener<Map<ApiKey<?>, String>> {

    /* renamed from: f */
    private final /* synthetic */ zav f7360f;

    private zax(zav zavVar) {
        this.f7360f = zavVar;
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public final void onComplete(@NonNull Task<Map<ApiKey<?>, String>> task) {
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
        ConnectionResult m;
        boolean z2;
        ConnectionResult m2;
        Map map4;
        Map map5;
        boolean j;
        Map map6;
        Map map7;
        Map map8;
        Map map9;
        Map map10;
        lock = this.f7360f.f7343f;
        lock.lock();
        try {
            z = this.f7360f.f7351n;
            if (z) {
                if (task.mo10782n()) {
                    zav zavVar = this.f7360f;
                    map8 = this.f7360f.f7338a;
                    zavVar.f7352o = new ArrayMap(map8.size());
                    map9 = this.f7360f.f7338a;
                    for (zaw zawVar : map9.values()) {
                        map10 = this.f7360f.f7352o;
                        map10.put(zawVar.getApiKey(), ConnectionResult.f6965j);
                    }
                } else if (task.mo10787i() instanceof AvailabilityException) {
                    AvailabilityException availabilityException = (AvailabilityException) task.mo10787i();
                    z2 = this.f7360f.f7349l;
                    if (z2) {
                        zav zavVar2 = this.f7360f;
                        map4 = this.f7360f.f7338a;
                        zavVar2.f7352o = new ArrayMap(map4.size());
                        map5 = this.f7360f.f7338a;
                        for (zaw zawVar2 : map5.values()) {
                            Object apiKey = zawVar2.getApiKey();
                            ConnectionResult a = availabilityException.m15026a(zawVar2);
                            j = this.f7360f.m14675j(zawVar2, a);
                            if (j) {
                                map6 = this.f7360f.f7352o;
                                map6.put(apiKey, new ConnectionResult(16));
                            } else {
                                map7 = this.f7360f.f7352o;
                                map7.put(apiKey, a);
                            }
                        }
                    } else {
                        this.f7360f.f7352o = availabilityException.m15025b();
                    }
                    zav zavVar3 = this.f7360f;
                    m2 = this.f7360f.m14672m();
                    zavVar3.f7355r = m2;
                } else {
                    Log.e("ConnectionlessGAC", "Unexpected availability exception", task.mo10787i());
                    this.f7360f.f7352o = Collections.emptyMap();
                    this.f7360f.f7355r = new ConnectionResult(8);
                }
                map = this.f7360f.f7353p;
                if (map != null) {
                    map2 = this.f7360f.f7352o;
                    map3 = this.f7360f.f7353p;
                    map2.putAll(map3);
                    zav zavVar4 = this.f7360f;
                    m = this.f7360f.m14672m();
                    zavVar4.f7355r = m;
                }
                connectionResult = this.f7360f.f7355r;
                if (connectionResult == null) {
                    this.f7360f.m14674k();
                    this.f7360f.m14673l();
                } else {
                    this.f7360f.f7351n = false;
                    zaawVar = this.f7360f.f7342e;
                    connectionResult2 = this.f7360f.f7355r;
                    zaawVar.mo14688a(connectionResult2);
                }
                condition = this.f7360f.f7346i;
                condition.signalAll();
            }
        } finally {
            lock2 = this.f7360f.f7343f;
            lock2.unlock();
        }
    }
}
