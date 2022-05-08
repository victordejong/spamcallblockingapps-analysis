package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zag.class */
public final class zag extends AbstractC1597at<Void> {

    /* renamed from: b */
    private final RegisterListenerMethod<Api.AnyClient, ?> f6529b;

    /* renamed from: c */
    private final UnregisterListenerMethod<Api.AnyClient, ?> f6530c;

    public zag(zabv zabvVar, TaskCompletionSource<Void> taskCompletionSource) {
        super(3, taskCompletionSource);
        this.f6529b = zabvVar.zakc;
        this.f6530c = zabvVar.zakd;
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC1597at, com.google.android.gms.common.api.internal.zac
    public final /* bridge */ /* synthetic */ void zaa(Status status) {
        super.zaa(status);
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC1597at, com.google.android.gms.common.api.internal.zac
    public final /* bridge */ /* synthetic */ void zaa(zaz zazVar, boolean z) {
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC1597at, com.google.android.gms.common.api.internal.zac
    public final /* bridge */ /* synthetic */ void zaa(RuntimeException runtimeException) {
        super.zaa(runtimeException);
    }

    @Override // com.google.android.gms.common.api.internal.zab
    public final Feature[] zaa(GoogleApiManager.zaa<?> zaaVar) {
        return this.f6529b.getRequiredFeatures();
    }

    @Override // com.google.android.gms.common.api.internal.zab
    public final boolean zab(GoogleApiManager.zaa<?> zaaVar) {
        return this.f6529b.shouldAutoResolveMissingFeatures();
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC1597at
    public final void zad(GoogleApiManager.zaa<?> zaaVar) {
        this.f6529b.mo5912a(zaaVar.zaad(), this.f6357a);
        if (this.f6529b.getListenerKey() != null) {
            zaaVar.zabi().put(this.f6529b.getListenerKey(), new zabv(this.f6529b, this.f6530c));
        }
    }
}
