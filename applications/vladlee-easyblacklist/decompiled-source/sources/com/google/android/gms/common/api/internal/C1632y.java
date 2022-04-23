package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.internal.BackgroundDetector;
/* renamed from: com.google.android.gms.common.api.internal.y */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/y.class */
final class C1632y implements BackgroundDetector.BackgroundStateChangeListener {

    /* renamed from: a */
    private final /* synthetic */ GoogleApiManager f6425a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1632y(GoogleApiManager googleApiManager) {
        this.f6425a = googleApiManager;
    }

    @Override // com.google.android.gms.common.api.internal.BackgroundDetector.BackgroundStateChangeListener
    public final void onBackgroundStateChanged(boolean z) {
        this.f6425a.f6279p.sendMessage(this.f6425a.f6279p.obtainMessage(1, Boolean.valueOf(z)));
    }
}
