package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.api.GoogleApiClient;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.common.api.internal.s */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/s.class */
final class C1626s implements GoogleApiClient.ConnectionCallbacks {

    /* renamed from: a */
    private final /* synthetic */ AtomicReference f6414a;

    /* renamed from: b */
    private final /* synthetic */ StatusPendingResult f6415b;

    /* renamed from: c */
    private final /* synthetic */ zaaw f6416c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1626s(zaaw zaawVar, AtomicReference atomicReference, StatusPendingResult statusPendingResult) {
        this.f6416c = zaawVar;
        this.f6414a = atomicReference;
        this.f6415b = statusPendingResult;
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        this.f6416c.m5845a((GoogleApiClient) this.f6414a.get(), this.f6415b, true);
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnectionSuspended(int i) {
    }
}
