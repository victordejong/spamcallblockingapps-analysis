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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaaa.class */
final class zaaa implements OnCompleteListener<Map<ApiKey<?>, String>> {

    /* renamed from: f */
    private SignInConnectionListener f7127f;

    /* renamed from: g */
    private final /* synthetic */ zav f7128g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m14862a() {
        this.f7127f.onComplete();
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public final void onComplete(@NonNull Task<Map<ApiKey<?>, String>> task) {
        Lock lock;
        Lock lock2;
        boolean z;
        Map map;
        Map map2;
        ConnectionResult m;
        Condition condition;
        boolean z2;
        Map map3;
        Map map4;
        boolean j;
        Map map5;
        Map map6;
        Map map7;
        Map map8;
        Map map9;
        lock = this.f7128g.f7343f;
        lock.lock();
        try {
            z = this.f7128g.f7351n;
            if (!z) {
                this.f7127f.onComplete();
                return;
            }
            if (task.mo10782n()) {
                zav zavVar = this.f7128g;
                map7 = this.f7128g.f7339b;
                zavVar.f7353p = new ArrayMap(map7.size());
                map8 = this.f7128g.f7339b;
                for (zaw zawVar : map8.values()) {
                    map9 = this.f7128g.f7353p;
                    map9.put(zawVar.getApiKey(), ConnectionResult.f6965j);
                }
            } else if (task.mo10787i() instanceof AvailabilityException) {
                AvailabilityException availabilityException = (AvailabilityException) task.mo10787i();
                z2 = this.f7128g.f7349l;
                if (z2) {
                    zav zavVar2 = this.f7128g;
                    map3 = this.f7128g.f7339b;
                    zavVar2.f7353p = new ArrayMap(map3.size());
                    map4 = this.f7128g.f7339b;
                    for (zaw zawVar2 : map4.values()) {
                        Object apiKey = zawVar2.getApiKey();
                        ConnectionResult a = availabilityException.m15026a(zawVar2);
                        j = this.f7128g.m14675j(zawVar2, a);
                        if (j) {
                            map5 = this.f7128g.f7353p;
                            map5.put(apiKey, new ConnectionResult(16));
                        } else {
                            map6 = this.f7128g.f7353p;
                            map6.put(apiKey, a);
                        }
                    }
                } else {
                    this.f7128g.f7353p = availabilityException.m15025b();
                }
            } else {
                Log.e("ConnectionlessGAC", "Unexpected availability exception", task.mo10787i());
                this.f7128g.f7353p = Collections.emptyMap();
            }
            if (this.f7128g.isConnected()) {
                map = this.f7128g.f7352o;
                map2 = this.f7128g.f7353p;
                map.putAll(map2);
                m = this.f7128g.m14672m();
                if (m == null) {
                    this.f7128g.m14674k();
                    this.f7128g.m14673l();
                    condition = this.f7128g.f7346i;
                    condition.signalAll();
                }
            }
            this.f7127f.onComplete();
        } finally {
            lock2 = this.f7128g.f7343f;
            lock2.unlock();
        }
    }
}
