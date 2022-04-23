package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.query.BannerQueryDataConfiguration;
import com.google.android.gms.ads.query.InterstitialQueryDataConfiguration;
import com.google.android.gms.ads.query.NativeQueryDataConfiguration;
import com.google.android.gms.ads.query.QueryDataConfiguration;
import com.google.android.gms.ads.query.QueryDataGenerationCallback;
import com.google.android.gms.ads.query.RewardedQueryDataConfiguration;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzapj.class */
public final class zzapj {

    /* renamed from: a */
    private final QueryDataConfiguration f11137a;

    public zzapj(QueryDataConfiguration queryDataConfiguration) {
        this.f11137a = queryDataConfiguration;
    }

    public final void zza(QueryDataGenerationCallback queryDataGenerationCallback) {
        Context context = this.f11137a.getContext();
        IObjectWrapper wrap = ObjectWrapper.wrap(context);
        try {
            zzauo zzf = ((zzaut) zzayx.zza(context, "com.google.android.gms.ads.DynamiteSignalGeneratorCreatorImpl", C1811dc.f8374a)).zzf(wrap, 12451009);
            String adUnitId = this.f11137a.getAdUnitId();
            QueryDataConfiguration queryDataConfiguration = this.f11137a;
            String str = queryDataConfiguration instanceof BannerQueryDataConfiguration ? "BANNER" : queryDataConfiguration instanceof InterstitialQueryDataConfiguration ? "INTERSTITIAL" : queryDataConfiguration instanceof NativeQueryDataConfiguration ? "NATIVE" : queryDataConfiguration instanceof RewardedQueryDataConfiguration ? "REWARDED" : "UNKNOWN";
            QueryDataConfiguration queryDataConfiguration2 = this.f11137a;
            try {
                zzf.zza(wrap, new zzauu(adUnitId, str, queryDataConfiguration2 instanceof BannerQueryDataConfiguration ? new zzuj(queryDataConfiguration2.getContext(), ((BannerQueryDataConfiguration) queryDataConfiguration2).getAdSize()) : queryDataConfiguration2 instanceof InterstitialQueryDataConfiguration ? new zzuj() : queryDataConfiguration2 instanceof NativeQueryDataConfiguration ? zzuj.zzg(queryDataConfiguration2.getContext()) : queryDataConfiguration2 instanceof RewardedQueryDataConfiguration ? zzuj.zzol() : new zzuj()), new BinderC1812dd(queryDataGenerationCallback));
            } catch (RemoteException e) {
                queryDataGenerationCallback.onFailure("Internal Error.");
            }
        } catch (RemoteException | zzayz | NullPointerException e2) {
            queryDataGenerationCallback.onFailure("Internal Error.");
        }
    }
}
