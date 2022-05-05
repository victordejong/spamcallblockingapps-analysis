package com.google.android.gms.common.api.internal;

import android.content.Context;
import com.google.android.gms.auth.api.signin.internal.Storage;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.common.api.internal.u */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/u.class */
public final class C1628u implements ResultCallback<Status> {

    /* renamed from: a */
    private final /* synthetic */ StatusPendingResult f6418a;

    /* renamed from: b */
    private final /* synthetic */ boolean f6419b;

    /* renamed from: c */
    private final /* synthetic */ GoogleApiClient f6420c;

    /* renamed from: d */
    private final /* synthetic */ zaaw f6421d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1628u(zaaw zaawVar, StatusPendingResult statusPendingResult, boolean z, GoogleApiClient googleApiClient) {
        this.f6421d = zaawVar;
        this.f6418a = statusPendingResult;
        this.f6419b = z;
        this.f6420c = googleApiClient;
    }

    @Override // com.google.android.gms.common.api.ResultCallback
    public final /* synthetic */ void onResult(Status status) {
        Context context;
        Status status2 = status;
        context = this.f6421d.f6466k;
        Storage.getInstance(context).zaf();
        if (status2.isSuccess() && this.f6421d.isConnected()) {
            this.f6421d.reconnect();
        }
        this.f6418a.setResult(status2);
        if (this.f6419b) {
            this.f6420c.disconnect();
        }
    }
}
