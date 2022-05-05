package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.doubleclick.PublisherAdView;
import com.google.android.gms.ads.formats.OnPublisherAdViewLoadedListener;
/* renamed from: com.google.android.gms.internal.ads.d */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/d.class */
final class RunnableC1808d implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ PublisherAdView f8367a;

    /* renamed from: b */
    private final /* synthetic */ zzvu f8368b;

    /* renamed from: c */
    private final /* synthetic */ zzaep f8369c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1808d(zzaep zzaepVar, PublisherAdView publisherAdView, zzvu zzvuVar) {
        this.f8369c = zzaepVar;
        this.f8367a = publisherAdView;
        this.f8368b = zzvuVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        OnPublisherAdViewLoadedListener onPublisherAdViewLoadedListener;
        if (this.f8367a.zza(this.f8368b)) {
            onPublisherAdViewLoadedListener = this.f8369c.f10883a;
            onPublisherAdViewLoadedListener.onPublisherAdViewLoaded(this.f8367a);
            return;
        }
        zzayu.zzez("Could not bind.");
    }
}
