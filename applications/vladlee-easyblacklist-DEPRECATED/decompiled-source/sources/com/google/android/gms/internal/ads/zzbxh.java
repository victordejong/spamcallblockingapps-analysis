package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.NativeAppInstallAd;
import com.google.android.gms.ads.formats.NativeContentAd;
import com.google.android.gms.ads.formats.UnifiedNativeAdAssetNames;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbxh.class */
public final class zzbxh extends zzacl implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, zzbxz {
    public static final String[] zzfna = {NativeAppInstallAd.ASSET_MEDIA_VIDEO, NativeContentAd.ASSET_MEDIA_VIDEO, UnifiedNativeAdAssetNames.ASSET_MEDIA_VIDEO};

    /* renamed from: a */
    private final String f12628a;

    /* renamed from: c */
    private FrameLayout f12630c;

    /* renamed from: d */
    private FrameLayout f12631d;

    /* renamed from: e */
    private zzdhd f12632e;

    /* renamed from: f */
    private View f12633f;

    /* renamed from: g */
    private final int f12634g;

    /* renamed from: h */
    private zzbwk f12635h;

    /* renamed from: i */
    private zzpo f12636i;

    /* renamed from: k */
    private zzacd f12638k;

    /* renamed from: l */
    private boolean f12639l;

    /* renamed from: b */
    private Map<String, WeakReference<View>> f12629b = new HashMap();

    /* renamed from: j */
    private IObjectWrapper f12637j = null;

    /* renamed from: m */
    private boolean f12640m = false;

    public zzbxh(FrameLayout frameLayout, FrameLayout frameLayout2, int i) {
        String str;
        this.f12630c = frameLayout;
        this.f12631d = frameLayout2;
        this.f12634g = i;
        String canonicalName = frameLayout.getClass().getCanonicalName();
        if ("com.google.android.gms.ads.formats.NativeContentAdView".equals(canonicalName)) {
            str = NativeContentAd.ASSET_ATTRIBUTION_ICON_IMAGE;
        } else if ("com.google.android.gms.ads.formats.NativeAppInstallAdView".equals(canonicalName)) {
            str = NativeAppInstallAd.ASSET_ATTRIBUTION_ICON_IMAGE;
        } else {
            "com.google.android.gms.ads.formats.UnifiedNativeAdView".equals(canonicalName);
            str = "3012";
        }
        this.f12628a = str;
        zzq.zzln();
        zzazt.zza((View) frameLayout, (ViewTreeObserver.OnGlobalLayoutListener) this);
        zzq.zzln();
        zzazt.zza((View) frameLayout, (ViewTreeObserver.OnScrollChangedListener) this);
        this.f12632e = zzazd.zzdwi;
        this.f12636i = new zzpo(this.f12630c.getContext(), this.f12630c);
        frameLayout.setOnTouchListener(this);
        frameLayout.setOnClickListener(this);
    }

    /* renamed from: b */
    private final void m3864b() {
        synchronized (this) {
            this.f12632e.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.nz

                /* renamed from: a */
                private final zzbxh f10260a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f10260a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f10260a.m3865a();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m3865a() {
        if (this.f12633f == null) {
            this.f12633f = new View(this.f12630c.getContext());
            this.f12633f.setLayoutParams(new FrameLayout.LayoutParams(-1, 0));
        }
        if (this.f12630c != this.f12633f.getParent()) {
            this.f12630c.addView(this.f12633f);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzacm
    public final void destroy() {
        synchronized (this) {
            if (!this.f12640m) {
                if (this.f12635h != null) {
                    this.f12635h.zzb(this);
                    this.f12635h = null;
                }
                this.f12629b.clear();
                this.f12630c.removeAllViews();
                this.f12631d.removeAllViews();
                this.f12629b = null;
                this.f12630c = null;
                this.f12631d = null;
                this.f12633f = null;
                this.f12636i = null;
                this.f12640m = true;
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        synchronized (this) {
            if (this.f12635h != null) {
                this.f12635h.cancelUnconfirmedClick();
                this.f12635h.zza(view, this.f12630c, zzajz(), zzaka(), false);
            }
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        synchronized (this) {
            if (this.f12635h != null) {
                this.f12635h.zzb(this.f12630c, zzajz(), zzaka(), zzbwk.zzy(this.f12630c));
            }
        }
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        synchronized (this) {
            if (this.f12635h != null) {
                this.f12635h.zzb(this.f12630c, zzajz(), zzaka(), zzbwk.zzy(this.f12630c));
            }
        }
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        synchronized (this) {
            if (this.f12635h != null) {
                this.f12635h.zza(view, motionEvent, this.f12630c);
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzacm
    public final void zza(IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            if (!this.f12640m) {
                Object unwrap = ObjectWrapper.unwrap(iObjectWrapper);
                if (!(unwrap instanceof zzbwk)) {
                    zzavs.zzez("Not an instance of native engine. This is most likely a transient error");
                    return;
                }
                if (this.f12635h != null) {
                    this.f12635h.zzb(this);
                }
                m3864b();
                this.f12635h = (zzbwk) unwrap;
                this.f12635h.zza(this);
                this.f12635h.zzz(this.f12630c);
                this.f12635h.zzaa(this.f12631d);
                if (this.f12639l) {
                    this.f12635h.zzaix().zza(this.f12638k);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzacm
    public final void zza(zzacd zzacdVar) {
        synchronized (this) {
            if (!this.f12640m) {
                this.f12639l = true;
                this.f12638k = zzacdVar;
                if (this.f12635h != null) {
                    this.f12635h.zzaix().zza(zzacdVar);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxz
    public final void zza(String str, View view, boolean z) {
        synchronized (this) {
            if (!this.f12640m) {
                if (view == null) {
                    this.f12629b.remove(str);
                    return;
                }
                this.f12629b.put(str, new WeakReference<>(view));
                if (!NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW.equals(str) && !UnifiedNativeAdAssetNames.ASSET_ADCHOICES_CONTAINER_VIEW.equals(str)) {
                    if (zzaxy.zzcs(this.f12634g)) {
                        view.setOnTouchListener(this);
                    }
                    view.setClickable(true);
                    view.setOnClickListener(this);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxz
    public final /* synthetic */ View zzaga() {
        return this.f12630c;
    }

    @Override // com.google.android.gms.internal.ads.zzbxz
    public final Map<String, WeakReference<View>> zzajz() {
        Map<String, WeakReference<View>> map;
        synchronized (this) {
            map = this.f12629b;
        }
        return map;
    }

    @Override // com.google.android.gms.internal.ads.zzbxz
    public final Map<String, WeakReference<View>> zzaka() {
        Map<String, WeakReference<View>> map;
        synchronized (this) {
            map = this.f12629b;
        }
        return map;
    }

    @Override // com.google.android.gms.internal.ads.zzbxz
    public final Map<String, WeakReference<View>> zzakb() {
        synchronized (this) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbxz
    public final String zzakc() {
        String str;
        synchronized (this) {
            str = this.f12628a;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.zzbxz
    public final FrameLayout zzakd() {
        return this.f12631d;
    }

    @Override // com.google.android.gms.internal.ads.zzbxz
    public final zzpo zzake() {
        return this.f12636i;
    }

    @Override // com.google.android.gms.internal.ads.zzbxz
    public final IObjectWrapper zzakf() {
        return this.f12637j;
    }

    @Override // com.google.android.gms.internal.ads.zzacm
    public final void zzb(String str, IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            zza(str, (View) ObjectWrapper.unwrap(iObjectWrapper), true);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzacm
    public final void zzc(IObjectWrapper iObjectWrapper, int i) {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzacm
    public final IObjectWrapper zzco(String str) {
        IObjectWrapper wrap;
        synchronized (this) {
            wrap = ObjectWrapper.wrap(zzgb(str));
        }
        return wrap;
    }

    @Override // com.google.android.gms.internal.ads.zzacm
    public final void zze(IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            this.f12635h.setClickConfirmingView((View) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzacm
    public final void zzf(IObjectWrapper iObjectWrapper) {
        onTouch(this.f12630c, (MotionEvent) ObjectWrapper.unwrap(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzacm
    public final void zzg(IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            if (!this.f12640m) {
                this.f12637j = iObjectWrapper;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxz
    public final View zzgb(String str) {
        synchronized (this) {
            if (this.f12640m) {
                return null;
            }
            WeakReference<View> weakReference = this.f12629b.get(str);
            if (weakReference == null) {
                return null;
            }
            return weakReference.get();
        }
    }
}
