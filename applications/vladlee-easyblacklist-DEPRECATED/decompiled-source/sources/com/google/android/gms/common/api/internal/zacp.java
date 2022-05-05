package com.google.android.gms.common.api.internal;

import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zacp.class */
public final class zacp {

    /* renamed from: a */
    final Set<BasePendingResult<?>> f6522a = Collections.synchronizedSet(Collections.newSetFromMap(new WeakHashMap()));

    /* renamed from: c */
    private final AbstractC1595ar f6523c = new C1594aq(this);

    /* renamed from: d */
    private final Map<Api.AnyClientKey<?>, Api.Client> f6524d;
    public static final Status zalb = new Status(8, "The connection to Google Play services was lost");

    /* renamed from: b */
    private static final BasePendingResult<?>[] f6521b = new BasePendingResult[0];

    public zacp(Map<Api.AnyClientKey<?>, Api.Client> map) {
        this.f6524d = map;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m5811a(BasePendingResult<? extends Result> basePendingResult) {
        this.f6522a.add(basePendingResult);
        basePendingResult.zaa(this.f6523c);
    }

    public final void release() {
        BasePendingResult[] basePendingResultArr;
        for (BasePendingResult basePendingResult : (BasePendingResult[]) this.f6522a.toArray(f6521b)) {
            basePendingResult.zaa(null);
            if (basePendingResult.zal() != null) {
                basePendingResult.setResultCallback(null);
                IBinder serviceBrokerBinder = this.f6524d.get(((BaseImplementation.ApiMethodImpl) basePendingResult).getClientKey()).getServiceBrokerBinder();
                if (basePendingResult.isReady()) {
                    basePendingResult.zaa(new C1596as(basePendingResult, serviceBrokerBinder, (byte) 0));
                } else {
                    if (serviceBrokerBinder == null || !serviceBrokerBinder.isBinderAlive()) {
                        basePendingResult.zaa(null);
                    } else {
                        C1596as asVar = new C1596as(basePendingResult, serviceBrokerBinder, (byte) 0);
                        basePendingResult.zaa(asVar);
                        try {
                            serviceBrokerBinder.linkToDeath(asVar, 0);
                        } catch (RemoteException e) {
                        }
                    }
                    basePendingResult.cancel();
                    basePendingResult.zal().intValue();
                    throw new NullPointerException();
                }
            } else if (!basePendingResult.zaq()) {
            }
            this.f6522a.remove(basePendingResult);
        }
    }

    public final void zabv() {
        for (BasePendingResult basePendingResult : (BasePendingResult[]) this.f6522a.toArray(f6521b)) {
            basePendingResult.zab(zalb);
        }
    }
}
