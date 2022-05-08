package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbye.class */
public final class zzbye implements zzbxa {

    /* renamed from: a */
    private final zzall f12698a;

    /* renamed from: b */
    private final zzalq f12699b;

    /* renamed from: c */
    private final zzalr f12700c;

    /* renamed from: d */
    private final zzbpd f12701d;

    /* renamed from: e */
    private final zzboq f12702e;

    /* renamed from: f */
    private final Context f12703f;

    /* renamed from: g */
    private final zzczl f12704g;

    /* renamed from: h */
    private final zzazb f12705h;

    /* renamed from: i */
    private final zzczu f12706i;

    /* renamed from: j */
    private boolean f12707j = false;

    /* renamed from: k */
    private boolean f12708k = false;

    public zzbye(zzall zzallVar, zzalq zzalqVar, zzalr zzalrVar, zzbpd zzbpdVar, zzboq zzboqVar, Context context, zzczl zzczlVar, zzazb zzazbVar, zzczu zzczuVar) {
        this.f12698a = zzallVar;
        this.f12699b = zzalqVar;
        this.f12700c = zzalrVar;
        this.f12701d = zzbpdVar;
        this.f12702e = zzboqVar;
        this.f12703f = context;
        this.f12704g = zzczlVar;
        this.f12705h = zzazbVar;
        this.f12706i = zzczuVar;
    }

    /* renamed from: a */
    private static HashMap<String, View> m3852a(Map<String, WeakReference<View>> map) {
        HashMap<String, View> hashMap = new HashMap<>();
        if (map == null) {
            return hashMap;
        }
        synchronized (map) {
            for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
                View view = entry.getValue().get();
                if (view != null) {
                    hashMap.put(entry.getKey(), view);
                }
            }
        }
        return hashMap;
    }

    /* renamed from: a */
    private final void m3853a(View view) {
        try {
            if (this.f12700c != null && !this.f12700c.getOverrideClickHandling()) {
                this.f12700c.zzu(ObjectWrapper.wrap(view));
                this.f12702e.onAdClicked();
            } else if (this.f12698a != null && !this.f12698a.getOverrideClickHandling()) {
                this.f12698a.zzu(ObjectWrapper.wrap(view));
                this.f12702e.onAdClicked();
            } else if (this.f12699b != null && !this.f12699b.getOverrideClickHandling()) {
                this.f12699b.zzu(ObjectWrapper.wrap(view));
                this.f12702e.onAdClicked();
            }
        } catch (RemoteException e) {
            zzavs.zzd("Failed to call handleClick", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxa
    public final void cancelUnconfirmedClick() {
    }

    @Override // com.google.android.gms.internal.ads.zzbxa
    public final void destroy() {
    }

    @Override // com.google.android.gms.internal.ads.zzbxa
    public final boolean isCustomClickGestureEnabled() {
        return this.f12704g.zzdcf;
    }

    @Override // com.google.android.gms.internal.ads.zzbxa
    public final void setClickConfirmingView(View view) {
    }

    @Override // com.google.android.gms.internal.ads.zzbxa
    public final void zza(View view, MotionEvent motionEvent, View view2) {
    }

    @Override // com.google.android.gms.internal.ads.zzbxa
    public final void zza(View view, View view2, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        if (!this.f12708k || !this.f12704g.zzdcf) {
            m3853a(view);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxa
    public final void zza(View view, Map<String, WeakReference<View>> map) {
        try {
            IObjectWrapper wrap = ObjectWrapper.wrap(view);
            if (this.f12700c != null) {
                this.f12700c.zzw(wrap);
            } else if (this.f12698a != null) {
                this.f12698a.zzw(wrap);
            } else if (this.f12699b != null) {
                this.f12699b.zzw(wrap);
            }
        } catch (RemoteException e) {
            zzavs.zzd("Failed to call untrackView", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxa
    public final void zza(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        try {
            if (!this.f12707j && this.f12704g.zzglt != null) {
                this.f12707j |= zzq.zzla().zzb(this.f12703f, this.f12705h.zzbma, this.f12704g.zzglt.toString(), this.f12706i.zzgmm);
            }
            if (this.f12700c != null && !this.f12700c.getOverrideImpressionRecording()) {
                this.f12700c.recordImpression();
                this.f12701d.onAdImpression();
            } else if (this.f12698a != null && !this.f12698a.getOverrideImpressionRecording()) {
                this.f12698a.recordImpression();
                this.f12701d.onAdImpression();
            } else if (this.f12699b != null && !this.f12699b.getOverrideImpressionRecording()) {
                this.f12699b.recordImpression();
                this.f12701d.onAdImpression();
            }
        } catch (RemoteException e) {
            zzavs.zzd("Failed to call recordImpression", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxa
    public final void zza(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener) {
        try {
            IObjectWrapper wrap = ObjectWrapper.wrap(view);
            HashMap<String, View> a = m3852a(map);
            HashMap<String, View> a2 = m3852a(map2);
            if (this.f12700c != null) {
                this.f12700c.zzc(wrap, ObjectWrapper.wrap(a), ObjectWrapper.wrap(a2));
            } else if (this.f12698a != null) {
                this.f12698a.zzc(wrap, ObjectWrapper.wrap(a), ObjectWrapper.wrap(a2));
                this.f12698a.zzv(wrap);
            } else if (this.f12699b != null) {
                this.f12699b.zzc(wrap, ObjectWrapper.wrap(a), ObjectWrapper.wrap(a2));
                this.f12699b.zzv(wrap);
            }
        } catch (RemoteException e) {
            zzavs.zzd("Failed to call trackView", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxa
    public final void zza(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        String str;
        if (!this.f12708k) {
            str = "Custom click reporting for 3p ads failed. enableCustomClickGesture is not set.";
        } else if (!this.f12704g.zzdcf) {
            str = "Custom click reporting for 3p ads failed. Ad unit id not whitelisted.";
        } else {
            m3853a(view);
            return;
        }
        zzavs.zzez(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbxa
    public final void zza(zzaeb zzaebVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbxa
    public final void zza(zzwn zzwnVar) {
        zzavs.zzez("Mute This Ad is not supported for 3rd party ads");
    }

    @Override // com.google.android.gms.internal.ads.zzbxa
    public final void zza(zzwr zzwrVar) {
        zzavs.zzez("Mute This Ad is not supported for 3rd party ads");
    }

    @Override // com.google.android.gms.internal.ads.zzbxa
    public final void zzaio() {
    }

    @Override // com.google.android.gms.internal.ads.zzbxa
    public final void zzaip() {
        zzavs.zzez("Mute This Ad is not supported for 3rd party ads");
    }

    @Override // com.google.android.gms.internal.ads.zzbxa
    public final void zzaiq() {
    }

    @Override // com.google.android.gms.internal.ads.zzbxa
    public final void zzf(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.ads.zzbxa
    public final void zzfu(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzbxa
    public final void zzg(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.ads.zzbxa
    public final boolean zzh(Bundle bundle) {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbxa
    public final void zzrp() {
        this.f12708k = true;
    }
}
