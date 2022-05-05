package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.internal.GoogleApiManager;
/* renamed from: com.google.android.gms.common.api.internal.z */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/z.class */
final class RunnableC1633z implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ GoogleApiManager.zaa f6426a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1633z(GoogleApiManager.zaa zaaVar) {
        this.f6426a = zaaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f6426a.m5928c();
    }
}
