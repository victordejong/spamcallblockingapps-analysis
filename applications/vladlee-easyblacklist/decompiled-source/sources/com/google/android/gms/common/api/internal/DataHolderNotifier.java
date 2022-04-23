package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.data.DataHolder;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/DataHolderNotifier.class */
public abstract class DataHolderNotifier<L> implements ListenerHolder.Notifier<L> {

    /* renamed from: a */
    private final DataHolder f6261a;

    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    public final void notifyListener(L l) {
    }

    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    public void onNotifyListenerFailed() {
        DataHolder dataHolder = this.f6261a;
        if (dataHolder != null) {
            dataHolder.close();
        }
    }
}
