package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzahn.class */
public final class zzahn {

    /* renamed from: a */
    private final zzuh f10920a;

    /* renamed from: b */
    private final Context f10921b;

    /* renamed from: c */
    private final zzvm f10922c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzahn(Context context, zzvm zzvmVar) {
        this(context, zzvmVar, zzuh.zzccn);
    }

    private zzahn(Context context, zzvm zzvmVar, zzuh zzuhVar) {
        this.f10921b = context;
        this.f10922c = zzvmVar;
        this.f10920a = zzuhVar;
    }

    /* renamed from: a */
    private final void m4404a(zzxj zzxjVar) {
        try {
            this.f10922c.zzb(zzuh.zza(this.f10921b, zzxjVar));
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    public final void loadAd(AdRequest adRequest) {
        m4404a(adRequest.zzdg());
    }

    public final void loadAd(PublisherAdRequest publisherAdRequest) {
        m4404a(publisherAdRequest.zzdg());
    }
}
