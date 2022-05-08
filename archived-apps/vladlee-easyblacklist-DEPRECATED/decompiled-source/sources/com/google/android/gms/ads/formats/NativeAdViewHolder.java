package com.google.android.gms.ads.formats;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzacp;
import com.google.android.gms.internal.ads.zzayu;
import com.google.android.gms.internal.ads.zzve;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/NativeAdViewHolder.class */
public final class NativeAdViewHolder {
    public static WeakHashMap<View, NativeAdViewHolder> zzbkd = new WeakHashMap<>();

    /* renamed from: a */
    private zzacp f5874a;

    /* renamed from: b */
    private WeakReference<View> f5875b;

    public NativeAdViewHolder(View view, Map<String, View> map, Map<String, View> map2) {
        Preconditions.checkNotNull(view, "ContainerView must not be null");
        if ((view instanceof NativeAdView) || (view instanceof UnifiedNativeAdView)) {
            zzayu.zzex("The provided containerView is of type of NativeAdView, which cannot be usedwith NativeAdViewHolder.");
        } else if (zzbkd.get(view) != null) {
            zzayu.zzex("The provided containerView is already in use with another NativeAdViewHolder.");
        } else {
            zzbkd.put(view, this);
            this.f5875b = new WeakReference<>(view);
            this.f5874a = zzve.zzov().zza(view, m6076a(map), m6076a(map2));
        }
    }

    /* renamed from: a */
    private static HashMap<String, View> m6076a(Map<String, View> map) {
        return map == null ? new HashMap<>() : new HashMap<>(map);
    }

    /* renamed from: a */
    private final void m6077a(IObjectWrapper iObjectWrapper) {
        WeakReference<View> weakReference = this.f5875b;
        View view = weakReference != null ? weakReference.get() : null;
        if (view == null) {
            zzayu.zzez("NativeAdViewHolder.setNativeAd containerView doesn't exist, returning");
            return;
        }
        if (!zzbkd.containsKey(view)) {
            zzbkd.put(view, this);
        }
        zzacp zzacpVar = this.f5874a;
        if (zzacpVar != null) {
            try {
                zzacpVar.zza(iObjectWrapper);
            } catch (RemoteException e) {
                zzayu.zzc("Unable to call setNativeAd on delegate", e);
            }
        }
    }

    public final void setClickConfirmingView(View view) {
        try {
            this.f5874a.zze(ObjectWrapper.wrap(view));
        } catch (RemoteException e) {
            zzayu.zzc("Unable to call setClickConfirmingView on delegate", e);
        }
    }

    public final void setNativeAd(NativeAd nativeAd) {
        m6077a((IObjectWrapper) nativeAd.mo4434a());
    }

    public final void setNativeAd(UnifiedNativeAd unifiedNativeAd) {
        m6077a((IObjectWrapper) unifiedNativeAd.mo4431a());
    }

    public final void unregisterNativeAd() {
        zzacp zzacpVar = this.f5874a;
        if (zzacpVar != null) {
            try {
                zzacpVar.unregisterNativeAd();
            } catch (RemoteException e) {
                zzayu.zzc("Unable to call unregisterNativeAd on delegate", e);
            }
        }
        WeakReference<View> weakReference = this.f5875b;
        View view = weakReference != null ? weakReference.get() : null;
        if (view != null) {
            zzbkd.remove(view);
        }
    }
}
