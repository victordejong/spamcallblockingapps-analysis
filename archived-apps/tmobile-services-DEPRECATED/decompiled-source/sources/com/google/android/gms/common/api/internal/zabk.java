package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.internal.GoogleApiManager;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabk.class */
public final class zabk implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ GoogleApiManager.zaa f7237f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zabk(GoogleApiManager.zaa zaaVar) {
        this.f7237f = zaaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f7237f.m14901v();
    }
}
