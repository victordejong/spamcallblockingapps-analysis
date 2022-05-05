package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.internal.GoogleApiManager;
import com.google.android.gms.common.internal.BaseGmsClient;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.common.api.internal.ad */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/ad.class */
public final class C1581ad implements BaseGmsClient.SignOutCallbacks {

    /* renamed from: a */
    final /* synthetic */ GoogleApiManager.zaa f6338a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1581ad(GoogleApiManager.zaa zaaVar) {
        this.f6338a = zaaVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.SignOutCallbacks
    public final void onSignOutComplete() {
        GoogleApiManager.this.f6279p.post(new RunnableC1580ac(this));
    }
}
