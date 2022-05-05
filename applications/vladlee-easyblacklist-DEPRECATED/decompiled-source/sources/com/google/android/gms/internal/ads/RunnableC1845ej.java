package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import java.io.IOException;
/* renamed from: com.google.android.gms.internal.ads.ej */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ej.class */
final class RunnableC1845ej implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ Context f8421a;

    /* renamed from: b */
    private final /* synthetic */ zzazl f8422b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1845ej(Context context, zzazl zzazlVar) {
        this.f8421a = context;
        this.f8422b = zzazlVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f8422b.set(AdvertisingIdClient.getAdvertisingIdInfo(this.f8421a));
        } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException | IOException | IllegalStateException e) {
            this.f8422b.setException(e);
            zzayu.zzc("Exception while getting advertising Id info", e);
        }
    }
}
