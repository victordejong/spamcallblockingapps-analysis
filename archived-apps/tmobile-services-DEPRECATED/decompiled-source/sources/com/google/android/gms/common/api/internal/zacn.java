package com.google.android.gms.common.api.internal;

import androidx.annotation.WorkerThread;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultTransform;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zacn.class */
final class zacn implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ Result f7280f;

    /* renamed from: g */
    private final /* synthetic */ zack f7281g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zacn(zack zackVar, Result result) {
        this.f7281g = zackVar;
        this.f7280f = result;
    }

    @Override // java.lang.Runnable
    @WorkerThread
    public final void run() {
        zacm zacmVar;
        zacm zacmVar2;
        WeakReference weakReference;
        WeakReference weakReference2;
        ResultTransform resultTransform;
        zacm zacmVar3;
        zacm zacmVar4;
        WeakReference weakReference3;
        try {
            try {
                BasePendingResult.f7044p.set(Boolean.TRUE);
                resultTransform = this.f7281g.f7270a;
                PendingResult b = resultTransform.m15002b(this.f7280f);
                zacmVar3 = this.f7281g.f7277h;
                zacmVar4 = this.f7281g.f7277h;
                zacmVar3.sendMessage(zacmVar4.obtainMessage(0, b));
                BasePendingResult.f7044p.set(Boolean.FALSE);
                zack zackVar = this.f7281g;
                zack.m14756e(this.f7280f);
                weakReference3 = this.f7281g.f7276g;
                GoogleApiClient googleApiClient = (GoogleApiClient) weakReference3.get();
                if (googleApiClient != null) {
                    googleApiClient.mo14782k(this.f7281g);
                }
            } catch (RuntimeException e) {
                zacmVar = this.f7281g.f7277h;
                zacmVar2 = this.f7281g.f7277h;
                zacmVar.sendMessage(zacmVar2.obtainMessage(1, e));
                BasePendingResult.f7044p.set(Boolean.FALSE);
                zack zackVar2 = this.f7281g;
                zack.m14756e(this.f7280f);
                weakReference = this.f7281g.f7276g;
                GoogleApiClient googleApiClient2 = (GoogleApiClient) weakReference.get();
                if (googleApiClient2 != null) {
                    googleApiClient2.mo14782k(this.f7281g);
                }
            }
        } catch (Throwable th) {
            BasePendingResult.f7044p.set(Boolean.FALSE);
            zack zackVar3 = this.f7281g;
            zack.m14756e(this.f7280f);
            weakReference2 = this.f7281g.f7276g;
            GoogleApiClient googleApiClient3 = (GoogleApiClient) weakReference2.get();
            if (googleApiClient3 != null) {
                googleApiClient3.mo14782k(this.f7281g);
            }
            throw th;
        }
    }
}
