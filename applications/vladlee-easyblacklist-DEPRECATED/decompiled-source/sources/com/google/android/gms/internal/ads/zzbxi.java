package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.NativeContentAd;
import com.google.android.gms.ads.formats.UnifiedNativeAdAssetNames;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbxi.class */
public final class zzbxi extends zzacs implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, zzbxz {

    /* renamed from: a */
    private final WeakReference<View> f12641a;

    /* renamed from: b */
    private final Map<String, WeakReference<View>> f12642b = new HashMap();

    /* renamed from: c */
    private final Map<String, WeakReference<View>> f12643c = new HashMap();

    /* renamed from: d */
    private final Map<String, WeakReference<View>> f12644d = new HashMap();

    /* renamed from: e */
    private zzbwk f12645e;

    /* renamed from: f */
    private zzpo f12646f;

    public zzbxi(View view, HashMap<String, View> hashMap, HashMap<String, View> hashMap2) {
        view.setOnTouchListener(this);
        view.setOnClickListener(this);
        zzq.zzln();
        zzazt.zza(view, (ViewTreeObserver.OnGlobalLayoutListener) this);
        zzq.zzln();
        zzazt.zza(view, (ViewTreeObserver.OnScrollChangedListener) this);
        this.f12641a = new WeakReference<>(view);
        for (Map.Entry<String, View> entry : hashMap.entrySet()) {
            String key = entry.getKey();
            View value = entry.getValue();
            if (value != null) {
                this.f12642b.put(key, new WeakReference<>(value));
                if (!NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW.equals(key) && !UnifiedNativeAdAssetNames.ASSET_ADCHOICES_CONTAINER_VIEW.equals(key)) {
                    value.setOnTouchListener(this);
                    value.setClickable(true);
                    value.setOnClickListener(this);
                }
            }
        }
        this.f12644d.putAll(this.f12642b);
        for (Map.Entry<String, View> entry2 : hashMap2.entrySet()) {
            View value2 = entry2.getValue();
            if (value2 != null) {
                this.f12643c.put(entry2.getKey(), new WeakReference<>(value2));
                value2.setOnTouchListener(this);
                value2.setClickable(false);
            }
        }
        this.f12644d.putAll(this.f12643c);
        this.f12646f = new zzpo(view.getContext(), view);
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        synchronized (this) {
            if (this.f12645e != null) {
                this.f12645e.zza(view, zzaga(), zzajz(), zzaka(), true);
            }
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        synchronized (this) {
            if (this.f12645e != null) {
                this.f12645e.zzb(zzaga(), zzajz(), zzaka(), zzbwk.zzy(zzaga()));
            }
        }
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        synchronized (this) {
            if (this.f12645e != null) {
                this.f12645e.zzb(zzaga(), zzajz(), zzaka(), zzbwk.zzy(zzaga()));
            }
        }
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        synchronized (this) {
            if (this.f12645e != null) {
                this.f12645e.zza(view, motionEvent, zzaga());
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzacp
    public final void unregisterNativeAd() {
        synchronized (this) {
            if (this.f12645e != null) {
                this.f12645e.zzb(this);
                this.f12645e = null;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzacp
    public final void zza(IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            Object unwrap = ObjectWrapper.unwrap(iObjectWrapper);
            if (!(unwrap instanceof zzbwk)) {
                zzavs.zzez("Not an instance of InternalNativeAd. This is most likely a transient error");
                return;
            }
            if (this.f12645e != null) {
                this.f12645e.zzb(this);
            }
            if (((zzbwk) unwrap).zzaiv()) {
                this.f12645e = (zzbwk) unwrap;
                this.f12645e.zza(this);
                this.f12645e.zzz(zzaga());
                return;
            }
            zzavs.zzex("Your account must be enabled to use this feature. Talk to your account manager to request this feature for your account.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxz
    public final void zza(String str, View view, boolean z) {
        synchronized (this) {
            if (view == null) {
                this.f12644d.remove(str);
                this.f12642b.remove(str);
                this.f12643c.remove(str);
                return;
            }
            this.f12644d.put(str, new WeakReference<>(view));
            if (!NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW.equals(str) && !UnifiedNativeAdAssetNames.ASSET_ADCHOICES_CONTAINER_VIEW.equals(str)) {
                this.f12642b.put(str, new WeakReference<>(view));
                view.setClickable(true);
                view.setOnClickListener(this);
                view.setOnTouchListener(this);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxz
    public final View zzaga() {
        return this.f12641a.get();
    }

    @Override // com.google.android.gms.internal.ads.zzbxz
    public final Map<String, WeakReference<View>> zzajz() {
        Map<String, WeakReference<View>> map;
        synchronized (this) {
            map = this.f12644d;
        }
        return map;
    }

    @Override // com.google.android.gms.internal.ads.zzbxz
    public final Map<String, WeakReference<View>> zzaka() {
        Map<String, WeakReference<View>> map;
        synchronized (this) {
            map = this.f12642b;
        }
        return map;
    }

    @Override // com.google.android.gms.internal.ads.zzbxz
    public final Map<String, WeakReference<View>> zzakb() {
        Map<String, WeakReference<View>> map;
        synchronized (this) {
            map = this.f12643c;
        }
        return map;
    }

    @Override // com.google.android.gms.internal.ads.zzbxz
    public final String zzakc() {
        synchronized (this) {
        }
        return NativeContentAd.ASSET_ATTRIBUTION_ICON_IMAGE;
    }

    @Override // com.google.android.gms.internal.ads.zzbxz
    public final FrameLayout zzakd() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbxz
    public final zzpo zzake() {
        return this.f12646f;
    }

    @Override // com.google.android.gms.internal.ads.zzbxz
    public final IObjectWrapper zzakf() {
        synchronized (this) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzacp
    public final void zze(IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            if (this.f12645e != null) {
                Object unwrap = ObjectWrapper.unwrap(iObjectWrapper);
                if (!(unwrap instanceof View)) {
                    zzavs.zzez("Calling NativeAdViewHolderNonagonDelegate.setClickConfirmingView with wrong wrapped object");
                }
                this.f12645e.setClickConfirmingView((View) unwrap);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxz
    public final View zzgb(String str) {
        synchronized (this) {
            WeakReference<View> weakReference = this.f12644d.get(str);
            if (weakReference == null) {
                return null;
            }
            return weakReference.get();
        }
    }
}
