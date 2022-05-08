package com.google.android.gms.common.api.internal;

import android.content.Context;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaal.class */
public final class zaal implements Runnable {
    private final /* synthetic */ zaak zagi;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zaal(zaak zaakVar) {
        this.zagi = zaakVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        GoogleApiAvailabilityLight googleApiAvailabilityLight;
        Context context;
        googleApiAvailabilityLight = this.zagi.zaex;
        context = this.zagi.mContext;
        googleApiAvailabilityLight.cancelAvailabilityErrorNotifications(context);
    }
}
