package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultTransform;
import java.lang.ref.WeakReference;
/* renamed from: com.google.android.gms.common.api.internal.ap */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/ap.class */
final class RunnableC1593ap implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ Result f6351a;

    /* renamed from: b */
    private final /* synthetic */ zack f6352b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1593ap(zack zackVar, Result result) {
        this.f6352b = zackVar;
        this.f6351a = result;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HandlerC1592ao aoVar;
        HandlerC1592ao aoVar2;
        WeakReference weakReference;
        WeakReference weakReference2;
        ResultTransform resultTransform;
        HandlerC1592ao aoVar3;
        HandlerC1592ao aoVar4;
        WeakReference weakReference3;
        try {
            try {
                BasePendingResult.f6244a.set(Boolean.TRUE);
                resultTransform = this.f6352b.f6512a;
                PendingResult onSuccess = resultTransform.onSuccess(this.f6351a);
                aoVar3 = this.f6352b.f6519h;
                aoVar4 = this.f6352b.f6519h;
                aoVar3.sendMessage(aoVar4.obtainMessage(0, onSuccess));
                BasePendingResult.f6244a.set(Boolean.FALSE);
                zack.m5818b(this.f6351a);
                weakReference3 = this.f6352b.f6518g;
                GoogleApiClient googleApiClient = (GoogleApiClient) weakReference3.get();
                if (googleApiClient != null) {
                    googleApiClient.zab(this.f6352b);
                }
            } catch (RuntimeException e) {
                aoVar = this.f6352b.f6519h;
                aoVar2 = this.f6352b.f6519h;
                aoVar.sendMessage(aoVar2.obtainMessage(1, e));
                BasePendingResult.f6244a.set(Boolean.FALSE);
                zack.m5818b(this.f6351a);
                weakReference = this.f6352b.f6518g;
                GoogleApiClient googleApiClient2 = (GoogleApiClient) weakReference.get();
                if (googleApiClient2 != null) {
                    googleApiClient2.zab(this.f6352b);
                }
            }
        } catch (Throwable th) {
            BasePendingResult.f6244a.set(Boolean.FALSE);
            zack.m5818b(this.f6351a);
            weakReference2 = this.f6352b.f6518g;
            GoogleApiClient googleApiClient3 = (GoogleApiClient) weakReference2.get();
            if (googleApiClient3 != null) {
                googleApiClient3.zab(this.f6352b);
            }
            throw th;
        }
    }
}
