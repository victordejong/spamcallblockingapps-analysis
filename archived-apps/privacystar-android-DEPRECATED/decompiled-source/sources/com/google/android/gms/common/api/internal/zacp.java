package com.google.android.gms.common.api.internal;

import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zacp.class */
public final class zacp {
    public static final Status zakw = new Status(8, "The connection to Google Play services was lost");
    private static final BasePendingResult<?>[] zakx = new BasePendingResult[0];
    private final Map<Api.AnyClientKey<?>, Api.Client> zagy;
    @VisibleForTesting
    final Set<BasePendingResult<?>> zaky = Collections.synchronizedSet(Collections.newSetFromMap(new WeakHashMap()));
    private final zacs zakz = new zacq(this);

    public zacp(Map<Api.AnyClientKey<?>, Api.Client> map) {
        this.zagy = map;
    }

    public final void release() {
        BasePendingResult[] basePendingResultArr;
        for (BasePendingResult basePendingResult : (BasePendingResult[]) this.zaky.toArray(zakx)) {
            basePendingResult.zaa((zacs) null);
            if (basePendingResult.zam() != null) {
                basePendingResult.setResultCallback(null);
                IBinder serviceBrokerBinder = this.zagy.get(((BaseImplementation.ApiMethodImpl) basePendingResult).getClientKey()).getServiceBrokerBinder();
                if (basePendingResult.isReady()) {
                    basePendingResult.zaa(new zacr(basePendingResult, null, serviceBrokerBinder, null));
                } else if (serviceBrokerBinder == null || !serviceBrokerBinder.isBinderAlive()) {
                    basePendingResult.zaa((zacs) null);
                    basePendingResult.cancel();
                    basePendingResult.zam().intValue();
                    throw new NullPointerException();
                } else {
                    zacr zacrVar = new zacr(basePendingResult, null, serviceBrokerBinder, null);
                    basePendingResult.zaa(zacrVar);
                    try {
                        serviceBrokerBinder.linkToDeath(zacrVar, 0);
                    } catch (RemoteException e) {
                        basePendingResult.cancel();
                        basePendingResult.zam().intValue();
                        throw new NullPointerException();
                    }
                }
                this.zaky.remove(basePendingResult);
            } else if (basePendingResult.zat()) {
                this.zaky.remove(basePendingResult);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zab(BasePendingResult<? extends Result> basePendingResult) {
        this.zaky.add(basePendingResult);
        basePendingResult.zaa(this.zakz);
    }

    public final void zabx() {
        for (BasePendingResult basePendingResult : (BasePendingResult[]) this.zaky.toArray(zakx)) {
            basePendingResult.zab(zakw);
        }
    }
}
