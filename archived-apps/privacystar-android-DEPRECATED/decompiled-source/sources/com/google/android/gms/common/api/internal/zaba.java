package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.support.annotation.NonNull;
import com.google.android.gms.auth.api.signin.internal.Storage;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaba.class */
public final class zaba implements ResultCallback<Status> {
    private final /* synthetic */ zaaw zahg;
    private final /* synthetic */ StatusPendingResult zahi;
    private final /* synthetic */ boolean zahj;
    private final /* synthetic */ GoogleApiClient zahk;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zaba(zaaw zaawVar, StatusPendingResult statusPendingResult, boolean z, GoogleApiClient googleApiClient) {
        this.zahg = zaawVar;
        this.zahi = statusPendingResult;
        this.zahj = z;
        this.zahk = googleApiClient;
    }

    @Override // com.google.android.gms.common.api.ResultCallback
    public final /* synthetic */ void onResult(@NonNull Status status) {
        Context context;
        Status status2 = status;
        context = this.zahg.mContext;
        Storage.getInstance(context).zaf();
        if (status2.isSuccess() && this.zahg.isConnected()) {
            this.zahg.reconnect();
        }
        this.zahi.setResult(status2);
        if (this.zahj) {
            this.zahk.disconnect();
        }
    }
}
