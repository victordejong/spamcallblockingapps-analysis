package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.DeadObjectException;
import com.google.android.gms.common.internal.BaseGmsClient;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aqg.class */
public final class aqg implements BaseGmsClient.BaseConnectionCallbacks {

    /* renamed from: a */
    private final /* synthetic */ zzrq f8166a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aqg(zzrq zzrqVar) {
        this.f8166a = zzrqVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        Object obj;
        Object obj2;
        zzrz zzrzVar;
        zzrz zzrzVar2;
        obj = this.f8166a.f15438b;
        synchronized (obj) {
            try {
                zzrzVar = this.f8166a.f15439c;
                if (zzrzVar != null) {
                    zzrq zzrqVar = this.f8166a;
                    zzrzVar2 = this.f8166a.f15439c;
                    zzrqVar.f15441e = zzrzVar2.zzms();
                }
            } catch (DeadObjectException e) {
                zzavs.zzc("Unable to obtain a cache service instance.", e);
                zzrq.m3085a(this.f8166a);
            }
            obj2 = this.f8166a.f15438b;
            obj2.notifyAll();
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        Object obj;
        Object obj2;
        obj = this.f8166a.f15438b;
        synchronized (obj) {
            this.f8166a.f15441e = null;
            obj2 = this.f8166a.f15438b;
            obj2.notifyAll();
        }
    }
}
