package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.GmsClientEventManager;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.common.api.internal.q */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/q.class */
public final class C1624q implements GmsClientEventManager.GmsClientEventState {

    /* renamed from: a */
    private final /* synthetic */ zaaw f6412a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1624q(zaaw zaawVar) {
        this.f6412a = zaawVar;
    }

    @Override // com.google.android.gms.common.internal.GmsClientEventManager.GmsClientEventState
    public final Bundle getConnectionHint() {
        return null;
    }

    @Override // com.google.android.gms.common.internal.GmsClientEventManager.GmsClientEventState
    public final boolean isConnected() {
        return this.f6412a.isConnected();
    }
}
