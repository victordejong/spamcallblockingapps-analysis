package com.google.android.gms.common.api.internal;

import android.content.Context;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaaj.class */
public final class zaaj implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ zaak f7142f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zaaj(zaak zaakVar) {
        this.f7142f = zaakVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        GoogleApiAvailabilityLight googleApiAvailabilityLight;
        Context context;
        googleApiAvailabilityLight = this.f7142f.f7146d;
        context = this.f7142f.f7145c;
        googleApiAvailabilityLight.m15071a(context);
    }
}
