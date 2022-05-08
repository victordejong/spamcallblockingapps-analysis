package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zah.class */
public final class zah extends AbstractC1597at<Boolean> {

    /* renamed from: b */
    private final ListenerHolder.ListenerKey<?> f6531b;

    public zah(ListenerHolder.ListenerKey<?> listenerKey, TaskCompletionSource<Boolean> taskCompletionSource) {
        super(4, taskCompletionSource);
        this.f6531b = listenerKey;
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
        zabv zabvVar = zaaVar.zabi().get(this.f6531b);
        if (zabvVar == null) {
            return null;
        }
        return zabvVar.zakc.getRequiredFeatures();
    }

    @Override // com.google.android.gms.common.api.internal.zab
    public final boolean zab(GoogleApiManager.zaa<?> zaaVar) {
        zabv zabvVar = zaaVar.zabi().get(this.f6531b);
        return zabvVar != null && zabvVar.zakc.shouldAutoResolveMissingFeatures();
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC1597at
    public final void zad(GoogleApiManager.zaa<?> zaaVar) {
        zabv remove = zaaVar.zabi().remove(this.f6531b);
        if (remove != null) {
            remove.zakd.mo5913a(zaaVar.zaad(), this.f6357a);
            remove.zakc.clearListener();
            return;
        }
        this.f6357a.trySetResult(Boolean.FALSE);
    }
}
