package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcez.class */
public final class zzcez extends zzaeo implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, zzcgc {

    /* renamed from: a */
    public final WeakReference<View> f25896a;

    /* renamed from: b */
    public final Map<String, WeakReference<View>> f25897b = new HashMap();

    /* renamed from: c */
    public final Map<String, WeakReference<View>> f25898c = new HashMap();

    /* renamed from: d */
    public final Map<String, WeakReference<View>> f25899d = new HashMap();

    /* renamed from: e */
    public zzcdx f25900e;

    /* renamed from: f */
    public zzqq f25901f;

    public zzcez(View view, HashMap<String, View> hashMap, HashMap<String, View> hashMap2) {
        view.setOnTouchListener(this);
        view.setOnClickListener(this);
        zzp.m17946z();
        zzbco.m15824a(view, (ViewTreeObserver.OnGlobalLayoutListener) this);
        zzp.m17946z();
        zzbco.m15823a(view, (ViewTreeObserver.OnScrollChangedListener) this);
        this.f25896a = new WeakReference<>(view);
        for (Map.Entry<String, View> entry : hashMap.entrySet()) {
            String key = entry.getKey();
            View value = entry.getValue();
            if (value != null) {
                this.f25897b.put(key, new WeakReference<>(value));
                if (!"1098".equals(key) && !"3011".equals(key)) {
                    value.setOnTouchListener(this);
                    value.setClickable(true);
                    value.setOnClickListener(this);
                }
            }
        }
        this.f25899d.putAll(this.f25897b);
        for (Map.Entry<String, View> entry2 : hashMap2.entrySet()) {
            View value2 = entry2.getValue();
            if (value2 != null) {
                this.f25898c.put(entry2.getKey(), new WeakReference<>(value2));
                value2.setOnTouchListener(this);
                value2.setClickable(false);
            }
        }
        this.f25899d.putAll(this.f25898c);
        this.f25901f = new zzqq(view.getContext(), view);
    }

    @Override // com.google.android.gms.internal.ads.zzcgc
    /* renamed from: C1 */
    public final Map<String, WeakReference<View>> mo14329C1() {
        Map<String, WeakReference<View>> map;
        synchronized (this) {
            map = this.f25897b;
        }
        return map;
    }

    @Override // com.google.android.gms.internal.ads.zzcgc
    /* renamed from: G0 */
    public final IObjectWrapper mo14328G0() {
        synchronized (this) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzcgc
    /* renamed from: I1 */
    public final Map<String, WeakReference<View>> mo14327I1() {
        Map<String, WeakReference<View>> map;
        synchronized (this) {
            map = this.f25898c;
        }
        return map;
    }

    @Override // com.google.android.gms.internal.ads.zzcgc
    /* renamed from: M0 */
    public final View mo14326M0() {
        return this.f25896a.get();
    }

    @Override // com.google.android.gms.internal.ads.zzael
    /* renamed from: O1 */
    public final void mo10922O1() {
        synchronized (this) {
            if (this.f25900e != null) {
                this.f25900e.m14746b(this);
                this.f25900e = null;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgc
    /* renamed from: P0 */
    public final FrameLayout mo14325P0() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzcgc
    /* renamed from: W */
    public final JSONObject mo14324W() {
        synchronized (this) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzcgc
    /* renamed from: a */
    public final void mo14323a(String str, View view, boolean z) {
        synchronized (this) {
            if (view == null) {
                this.f25899d.remove(str);
                this.f25897b.remove(str);
                this.f25898c.remove(str);
                return;
            }
            this.f25899d.put(str, new WeakReference<>(view));
            if (!"1098".equals(str) && !"3011".equals(str)) {
                this.f25897b.put(str, new WeakReference<>(view));
                view.setClickable(true);
                view.setOnClickListener(this);
                view.setOnTouchListener(this);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzael
    /* renamed from: b */
    public final void mo10921b(IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            Object Q = ObjectWrapper.m17021Q(iObjectWrapper);
            if (!(Q instanceof zzcdx)) {
                zzbbq.m15852d("Not an instance of InternalNativeAd. This is most likely a transient error");
                return;
            }
            if (this.f25900e != null) {
                this.f25900e.m14746b(this);
            }
            if (((zzcdx) Q).m14738k()) {
                zzcdx zzcdxVar = (zzcdx) Q;
                this.f25900e = zzcdxVar;
                zzcdxVar.m14756a(this);
                this.f25900e.m14747b(mo14326M0());
                return;
            }
            zzbbq.m15856b("Your account must be enabled to use this feature. Talk to your account manager to request this feature for your account.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgc
    /* renamed from: b1 */
    public final zzqq mo14322b1() {
        return this.f25901f;
    }

    @Override // com.google.android.gms.internal.ads.zzcgc
    /* renamed from: c1 */
    public final Map<String, WeakReference<View>> mo14321c1() {
        Map<String, WeakReference<View>> map;
        synchronized (this) {
            map = this.f25899d;
        }
        return map;
    }

    @Override // com.google.android.gms.internal.ads.zzael
    /* renamed from: d */
    public final void mo10920d(IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            if (this.f25900e != null) {
                Object Q = ObjectWrapper.m17021Q(iObjectWrapper);
                if (!(Q instanceof View)) {
                    zzbbq.m15852d("Calling NativeAdViewHolderNonagonDelegate.setClickConfirmingView with wrong wrapped object");
                }
                this.f25900e.m14762a((View) Q);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgc
    /* renamed from: f0 */
    public final String mo14320f0() {
        synchronized (this) {
        }
        return "1007";
    }

    @Override // com.google.android.gms.internal.ads.zzcgc
    /* renamed from: k */
    public final View mo14319k(String str) {
        synchronized (this) {
            WeakReference<View> weakReference = this.f25899d.get(str);
            if (weakReference == null) {
                return null;
            }
            return weakReference.get();
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        synchronized (this) {
            if (this.f25900e != null) {
                this.f25900e.m14760a(view, mo14326M0(), mo14321c1(), mo14329C1(), true);
            }
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        synchronized (this) {
            if (this.f25900e != null) {
                this.f25900e.m14758a(mo14326M0(), mo14321c1(), mo14329C1(), zzcdx.m14743d(mo14326M0()));
            }
        }
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        synchronized (this) {
            if (this.f25900e != null) {
                this.f25900e.m14758a(mo14326M0(), mo14321c1(), mo14329C1(), zzcdx.m14743d(mo14326M0()));
            }
        }
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        synchronized (this) {
            if (this.f25900e != null) {
                this.f25900e.m14761a(view, motionEvent, mo14326M0());
            }
        }
        return false;
    }
}
