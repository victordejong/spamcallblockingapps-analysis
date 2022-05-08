package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.doubleclick.PublisherAdView;
import com.google.android.gms.ads.formats.OnPublisherAdViewLoadedListener;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaep.class */
public final class zzaep extends zzadt {

    /* renamed from: a */
    private final OnPublisherAdViewLoadedListener f10883a;

    public zzaep(OnPublisherAdViewLoadedListener onPublisherAdViewLoadedListener) {
        this.f10883a = onPublisherAdViewLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.zzadu
    public final void zza(zzvu zzvuVar, IObjectWrapper iObjectWrapper) {
        if (zzvuVar != null && iObjectWrapper != null) {
            PublisherAdView publisherAdView = new PublisherAdView((Context) ObjectWrapper.unwrap(iObjectWrapper));
            AppEventListener appEventListener = null;
            try {
                if (zzvuVar.zzkd() instanceof zzuc) {
                    zzuc zzucVar = (zzuc) zzvuVar.zzkd();
                    publisherAdView.setAdListener(zzucVar != null ? zzucVar.getAdListener() : null);
                }
            } catch (RemoteException e) {
                zzayu.zzc("", e);
            }
            try {
                if (zzvuVar.zzkc() instanceof zzul) {
                    zzul zzulVar = (zzul) zzvuVar.zzkc();
                    if (zzulVar != null) {
                        appEventListener = zzulVar.getAppEventListener();
                    }
                    publisherAdView.setAppEventListener(appEventListener);
                }
            } catch (RemoteException e2) {
                zzayu.zzc("", e2);
            }
            zzayk.zzyu.post(new RunnableC1808d(this, publisherAdView, zzvuVar));
        }
    }
}
