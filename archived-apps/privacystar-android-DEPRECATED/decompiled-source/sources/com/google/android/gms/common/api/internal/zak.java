package com.google.android.gms.common.api.internal;

import android.support.annotation.Nullable;
import android.support.p001v4.util.ArrayMap;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.AvailabilityException;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zak.class */
public final class zak {
    private int zadc;
    private final ArrayMap<zai<?>, String> zada = new ArrayMap<>();
    private final TaskCompletionSource<Map<zai<?>, String>> zadb = new TaskCompletionSource<>();
    private boolean zadd = false;
    private final ArrayMap<zai<?>, ConnectionResult> zaay = new ArrayMap<>();

    public zak(Iterable<? extends GoogleApi<?>> iterable) {
        Iterator<? extends GoogleApi<?>> it = iterable.iterator();
        while (it.hasNext()) {
            this.zaay.put(((GoogleApi) it.next()).zak(), null);
        }
        this.zadc = this.zaay.keySet().size();
    }

    public final Task<Map<zai<?>, String>> getTask() {
        return this.zadb.getTask();
    }

    public final void zaa(zai<?> zaiVar, ConnectionResult connectionResult, @Nullable String str) {
        this.zaay.put(zaiVar, connectionResult);
        this.zada.put(zaiVar, str);
        this.zadc--;
        if (!connectionResult.isSuccess()) {
            this.zadd = true;
        }
        if (this.zadc != 0) {
            return;
        }
        if (this.zadd) {
            this.zadb.setException(new AvailabilityException(this.zaay));
            return;
        }
        this.zadb.setResult(this.zada);
    }

    public final Set<zai<?>> zap() {
        return this.zaay.keySet();
    }
}
