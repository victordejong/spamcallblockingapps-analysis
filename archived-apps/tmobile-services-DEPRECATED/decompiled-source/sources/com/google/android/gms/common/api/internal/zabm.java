package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.internal.GoogleApiManager;
import com.google.android.gms.common.internal.BaseGmsClient;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabm.class */
public final class zabm implements BaseGmsClient.SignOutCallbacks {

    /* renamed from: a */
    final /* synthetic */ GoogleApiManager.zaa f7239a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zabm(GoogleApiManager.zaa zaaVar) {
        this.f7239a = zaaVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.SignOutCallbacks
    /* renamed from: a */
    public final void mo14592a() {
        GoogleApiManager.this.f7080m.post(new zabl(this));
    }
}
