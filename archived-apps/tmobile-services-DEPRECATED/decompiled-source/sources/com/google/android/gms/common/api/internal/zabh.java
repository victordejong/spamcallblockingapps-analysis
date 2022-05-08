package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.internal.BackgroundDetector;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabh.class */
public final class zabh implements BackgroundDetector.BackgroundStateChangeListener {

    /* renamed from: a */
    private final /* synthetic */ GoogleApiManager f7233a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zabh(GoogleApiManager googleApiManager) {
        this.f7233a = googleApiManager;
    }

    @Override // com.google.android.gms.common.api.internal.BackgroundDetector.BackgroundStateChangeListener
    public final void onBackgroundStateChanged(boolean z) {
        this.f7233a.f7080m.sendMessage(this.f7233a.f7080m.obtainMessage(1, Boolean.valueOf(z)));
    }
}
