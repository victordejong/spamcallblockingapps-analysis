package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcgd.class */
public final class zzcgd implements zzceq {

    /* renamed from: a */
    public final zzano f25960a;

    /* renamed from: b */
    public final zzanp f25961b;

    /* renamed from: c */
    public final zzanu f25962c;

    /* renamed from: d */
    public final zzbuu f25963d;

    /* renamed from: e */
    public final zzbuc f25964e;

    /* renamed from: f */
    public final Context f25965f;

    /* renamed from: g */
    public final zzdnv f25966g;

    /* renamed from: h */
    public final zzbbx f25967h;

    /* renamed from: i */
    public final zzdok f25968i;

    /* renamed from: j */
    public boolean f25969j = false;

    /* renamed from: k */
    public boolean f25970k = false;

    public zzcgd(zzano zzanoVar, zzanp zzanpVar, zzanu zzanuVar, zzbuu zzbuuVar, zzbuc zzbucVar, Context context, zzdnv zzdnvVar, zzbbx zzbbxVar, zzdok zzdokVar) {
        this.f25960a = zzanoVar;
        this.f25961b = zzanpVar;
        this.f25962c = zzanuVar;
        this.f25963d = zzbuuVar;
        this.f25964e = zzbucVar;
        this.f25965f = context;
        this.f25966g = zzdnvVar;
        this.f25967h = zzbbxVar;
        this.f25968i = zzdokVar;
    }

    /* renamed from: a */
    public static HashMap<String, View> m14304a(Map<String, WeakReference<View>> map) {
        HashMap<String, View> hashMap = new HashMap<>();
        if (map == null) {
            return hashMap;
        }
        synchronized (map) {
            try {
                for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
                    View view = entry.getValue().get();
                    if (view != null) {
                        hashMap.put(entry.getKey(), view);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return hashMap;
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    /* renamed from: Z */
    public final void mo14318Z() {
        this.f25970k = true;
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    /* renamed from: a */
    public final void mo14317a() {
        zzbbq.m15852d("Mute This Ad is not supported for 3rd party ads");
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    /* renamed from: a */
    public final void mo14316a(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    /* renamed from: a */
    public final void mo14315a(View view) {
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    /* renamed from: a */
    public final void mo14314a(View view, MotionEvent motionEvent, View view2) {
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    /* renamed from: a */
    public final void mo14313a(View view, View view2, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        if (!this.f25970k || !this.f25966g.f27560G) {
            m14301b(view);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    /* renamed from: a */
    public final void mo14312a(View view, Map<String, WeakReference<View>> map) {
        try {
            IObjectWrapper a = ObjectWrapper.m17020a(view);
            if (this.f25962c != null) {
                this.f25962c.mo16510a(a);
            } else if (this.f25960a != null) {
                this.f25960a.mo16574a(a);
            } else if (this.f25961b != null) {
                this.f25961b.mo16591a(a);
            }
        } catch (RemoteException e) {
            zzbbq.m15853c("Failed to call untrackView", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    /* renamed from: a */
    public final void mo14311a(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        try {
            if (!this.f25969j && this.f25966g.f27555B != null) {
                this.f25969j |= zzp.m17959m().m15997b(this.f25965f, this.f25967h.f24759a, this.f25966g.f27555B.toString(), this.f25968i.f27644f);
            }
            if (this.f25962c != null && !this.f25962c.mo16515J()) {
                this.f25962c.mo16501m();
                this.f25963d.m15032M();
            } else if (this.f25960a != null && !this.f25960a.mo16578J()) {
                this.f25960a.mo16564m();
                this.f25963d.m15032M();
            } else if (this.f25961b != null && !this.f25961b.mo16595J()) {
                this.f25961b.mo16581m();
                this.f25963d.m15032M();
            }
        } catch (RemoteException e) {
            zzbbq.m15853c("Failed to call recordImpression", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    /* renamed from: a */
    public final void mo14310a(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener) {
        try {
            IObjectWrapper a = ObjectWrapper.m17020a(view);
            HashMap<String, View> a2 = m14304a(map);
            HashMap<String, View> a3 = m14304a(map2);
            if (this.f25962c != null) {
                this.f25962c.mo16509a(a, ObjectWrapper.m17020a(a2), ObjectWrapper.m17020a(a3));
            } else if (this.f25960a != null) {
                this.f25960a.mo16573a(a, ObjectWrapper.m17020a(a2), ObjectWrapper.m17020a(a3));
                this.f25960a.mo16569e(a);
            } else if (this.f25961b != null) {
                this.f25961b.mo16590a(a, ObjectWrapper.m17020a(a2), ObjectWrapper.m17020a(a3));
                this.f25961b.mo16586e(a);
            }
        } catch (RemoteException e) {
            zzbbq.m15853c("Failed to call trackView", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    /* renamed from: a */
    public final void mo14309a(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        if (!this.f25970k) {
            zzbbq.m15852d("Custom click reporting for 3p ads failed. enableCustomClickGesture is not set.");
        } else if (!this.f25966g.f27560G) {
            zzbbq.m15852d("Custom click reporting for 3p ads failed. Ad unit id not whitelisted.");
        } else {
            m14301b(view);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    /* renamed from: a */
    public final void mo14308a(zzafz zzafzVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    /* renamed from: a */
    public final void mo14307a(zzxz zzxzVar) {
        zzbbq.m15852d("Mute This Ad is not supported for 3rd party ads");
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    /* renamed from: a */
    public final void mo14306a(zzyd zzydVar) {
        zzbbq.m15852d("Mute This Ad is not supported for 3rd party ads");
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    /* renamed from: a */
    public final void mo14305a(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    /* renamed from: b */
    public final JSONObject mo14300b(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    /* renamed from: b */
    public final void mo14303b() {
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    /* renamed from: b */
    public final void mo14302b(Bundle bundle) {
    }

    /* renamed from: b */
    public final void m14301b(View view) {
        try {
            if (this.f25962c != null && !this.f25962c.mo16511U()) {
                this.f25962c.mo16508c(ObjectWrapper.m17020a(view));
                this.f25964e.onAdClicked();
            } else if (this.f25960a != null && !this.f25960a.mo16575U()) {
                this.f25960a.mo16572c(ObjectWrapper.m17020a(view));
                this.f25964e.onAdClicked();
            } else if (this.f25961b != null && !this.f25961b.mo16592U()) {
                this.f25961b.mo16589c(ObjectWrapper.m17020a(view));
                this.f25964e.onAdClicked();
            }
        } catch (RemoteException e) {
            zzbbq.m15853c("Failed to call handleClick", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    /* renamed from: b0 */
    public final void mo14299b0() {
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    /* renamed from: c */
    public final void mo14298c() {
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    /* renamed from: c */
    public final boolean mo14297c(Bundle bundle) {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    public final void destroy() {
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    /* renamed from: t0 */
    public final boolean mo14296t0() {
        return this.f25966g.f27560G;
    }
}
