package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.internal.GoogleApiManager;
/* renamed from: com.google.android.gms.common.api.internal.aa */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/aa.class */
final class RunnableC1578aa implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ ConnectionResult f6334a;

    /* renamed from: b */
    private final /* synthetic */ GoogleApiManager.zaa f6335b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1578aa(GoogleApiManager.zaa zaaVar, ConnectionResult connectionResult) {
        this.f6335b = zaaVar;
        this.f6334a = connectionResult;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f6335b.onConnectionFailed(this.f6334a);
    }
}
