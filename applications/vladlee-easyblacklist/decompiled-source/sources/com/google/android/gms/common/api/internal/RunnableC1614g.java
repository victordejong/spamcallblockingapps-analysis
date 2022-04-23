package com.google.android.gms.common.api.internal;

import android.content.Context;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.common.api.internal.g */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/g.class */
public final class RunnableC1614g implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zaak f6396a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1614g(zaak zaakVar) {
        this.f6396a = zaakVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        GoogleApiAvailabilityLight googleApiAvailabilityLight;
        Context context;
        googleApiAvailabilityLight = this.f6396a.f6437d;
        context = this.f6396a.f6436c;
        googleApiAvailabilityLight.cancelAvailabilityErrorNotifications(context);
    }
}
