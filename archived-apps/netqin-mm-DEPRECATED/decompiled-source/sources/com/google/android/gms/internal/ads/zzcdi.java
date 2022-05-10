package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.graphics.Point;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.inmobi.ads.C8078ad;
import com.integralads.avid.library.mopub.utils.AvidJSONUtil;
import com.mopub.common.Constants;
import java.lang.ref.WeakReference;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import p131c.p161d.p170b.p224d.p252g.p253a.C3657ih;
import p131c.p161d.p170b.p224d.p252g.p253a.C3694jh;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcdi.class */
public final class zzcdi implements zzceq {

    /* renamed from: a */
    public final Context f25743a;

    /* renamed from: b */
    public final zzcep f25744b;

    /* renamed from: c */
    public final JSONObject f25745c;

    /* renamed from: d */
    public final zzcil f25746d;

    /* renamed from: e */
    public final zzcei f25747e;

    /* renamed from: f */
    public final zzeg f25748f;

    /* renamed from: g */
    public final zzbuu f25749g;

    /* renamed from: h */
    public final zzbuc f25750h;

    /* renamed from: i */
    public final zzdnv f25751i;

    /* renamed from: j */
    public final zzbbx f25752j;

    /* renamed from: k */
    public final zzdok f25753k;

    /* renamed from: l */
    public final zzbmu f25754l;

    /* renamed from: m */
    public final zzcfh f25755m;

    /* renamed from: n */
    public final Clock f25756n;

    /* renamed from: o */
    public final zzcae f25757o;

    /* renamed from: p */
    public final zzdst f25758p;

    /* renamed from: r */
    public boolean f25760r;

    /* renamed from: y */
    public zzxz f25767y;

    /* renamed from: q */
    public boolean f25759q = false;

    /* renamed from: s */
    public boolean f25761s = false;

    /* renamed from: t */
    public boolean f25762t = false;

    /* renamed from: u */
    public Point f25763u = new Point();

    /* renamed from: v */
    public Point f25764v = new Point();

    /* renamed from: w */
    public long f25765w = 0;

    /* renamed from: x */
    public long f25766x = 0;

    public zzcdi(Context context, zzcep zzcepVar, JSONObject jSONObject, zzcil zzcilVar, zzcei zzceiVar, zzeg zzegVar, zzbuu zzbuuVar, zzbuc zzbucVar, zzdnv zzdnvVar, zzbbx zzbbxVar, zzdok zzdokVar, zzbmu zzbmuVar, zzcfh zzcfhVar, Clock clock, zzcae zzcaeVar, zzdst zzdstVar) {
        this.f25743a = context;
        this.f25744b = zzcepVar;
        this.f25745c = jSONObject;
        this.f25746d = zzcilVar;
        this.f25747e = zzceiVar;
        this.f25748f = zzegVar;
        this.f25749g = zzbuuVar;
        this.f25750h = zzbucVar;
        this.f25751i = zzdnvVar;
        this.f25752j = zzbbxVar;
        this.f25753k = zzdokVar;
        this.f25754l = zzbmuVar;
        this.f25755m = zzcfhVar;
        this.f25756n = clock;
        this.f25757o = zzcaeVar;
        this.f25758p = zzdstVar;
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    /* renamed from: Z */
    public final void mo14318Z() {
        this.f25762t = true;
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    /* renamed from: a */
    public final void mo14317a() {
        try {
            if (this.f25767y != null) {
                this.f25767y.mo11122e0();
            }
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    /* renamed from: a */
    public final void mo14316a(Bundle bundle) {
        if (bundle == null) {
            zzbbq.m15858a("Click data is null. No click is reported.");
        } else if (!m14778b("click_reporting")) {
            zzbbq.m15856b("The ad slot cannot handle external click events. You must be whitelisted to be able to report your click events.");
        } else {
            Bundle bundle2 = bundle.getBundle("click_signal");
            m14784a(null, null, null, null, null, bundle2 != null ? bundle2.getString("asset_id") : null, null, zzp.m17969c().m16133a(bundle, (JSONObject) null), false, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    /* renamed from: a */
    public final void mo14315a(View view) {
        if (!this.f25745c.optBoolean("custom_one_point_five_click_enabled", false)) {
            zzbbq.m15852d("setClickConfirmingView: Your account need to be whitelisted to use this feature.\nContact your account manager for more information.");
            return;
        }
        zzcfh zzcfhVar = this.f25755m;
        if (view != null) {
            view.setOnClickListener(zzcfhVar);
            view.setClickable(true);
            zzcfhVar.f25933g = new WeakReference<>(view);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    /* renamed from: a */
    public final void mo14314a(View view, MotionEvent motionEvent, View view2) {
        this.f25763u = zzbau.m15938a(motionEvent, view2);
        long b = this.f25756n.mo17091b();
        this.f25766x = b;
        if (motionEvent.getAction() == 0) {
            this.f25765w = b;
            this.f25764v = this.f25763u;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        Point point = this.f25763u;
        obtain.setLocation(point.x, point.y);
        this.f25748f.m12599a(obtain);
        obtain.recycle();
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    /* renamed from: a */
    public final void mo14313a(View view, View view2, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        JSONObject a = zzbau.m15939a(this.f25743a, map, map2, view2);
        JSONObject a2 = zzbau.m15940a(this.f25743a, view2);
        JSONObject a3 = zzbau.m15937a(view2);
        JSONObject b = zzbau.m15934b(this.f25743a, view2);
        String b2 = m14780b(view, map);
        JSONObject a4 = zzbau.m15935a(b2, this.f25743a, this.f25764v, this.f25763u);
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23901v1)).booleanValue()) {
            view = view2;
        }
        m14784a(view, a2, a, a3, b, b2, a4, null, z, false);
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    /* renamed from: a */
    public final void mo14312a(View view, Map<String, WeakReference<View>> map) {
        this.f25763u = new Point();
        this.f25764v = new Point();
        this.f25757o.m14865b(view);
        this.f25760r = false;
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    /* renamed from: a */
    public final void mo14311a(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        m14782a(zzbau.m15940a(this.f25743a, view), zzbau.m15939a(this.f25743a, map, map2, view), zzbau.m15937a(view), zzbau.m15934b(this.f25743a, view), m14777c(view), null, zzbau.m15936a(this.f25751i));
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    /* renamed from: a */
    public final void mo14310a(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener) {
        this.f25763u = new Point();
        this.f25764v = new Point();
        if (!this.f25760r) {
            this.f25757o.m14866a(view);
            this.f25760r = true;
        }
        view.setOnTouchListener(onTouchListener);
        view.setClickable(true);
        view.setOnClickListener(onClickListener);
        this.f25754l.m15306a(this);
        boolean a = zzbau.m15945a(this.f25752j.f24761c);
        if (map != null) {
            for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
                View view2 = entry.getValue().get();
                if (view2 != null) {
                    if (a) {
                        view2.setOnTouchListener(onTouchListener);
                    }
                    view2.setClickable(true);
                    view2.setOnClickListener(onClickListener);
                }
            }
        }
        if (map2 != null) {
            for (Map.Entry<String, WeakReference<View>> entry2 : map2.entrySet()) {
                View view3 = entry2.getValue().get();
                if (view3 != null) {
                    if (a) {
                        view3.setOnTouchListener(onTouchListener);
                    }
                    view3.setClickable(false);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    /* renamed from: a */
    public final void mo14309a(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        if (!this.f25762t) {
            zzbbq.m15858a("Custom click reporting failed. enableCustomClickGesture is not set.");
        } else if (!m14776d()) {
            zzbbq.m15858a("Custom click reporting failed. Ad unit id not whitelisted.");
        } else {
            JSONObject a = zzbau.m15939a(this.f25743a, map, map2, view);
            JSONObject a2 = zzbau.m15940a(this.f25743a, view);
            JSONObject a3 = zzbau.m15937a(view);
            JSONObject b = zzbau.m15934b(this.f25743a, view);
            String b2 = m14780b(null, map);
            m14784a(view, a2, a, a3, b, b2, zzbau.m15935a(b2, this.f25743a, this.f25764v, this.f25763u), null, z, true);
        }
    }

    /* renamed from: a */
    public final void m14784a(View view, JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3, JSONObject jSONObject4, String str, JSONObject jSONObject5, JSONObject jSONObject6, boolean z, boolean z2) {
        Preconditions.m17286a("performClick must be called on the main UI thread.");
        try {
            JSONObject jSONObject7 = new JSONObject();
            jSONObject7.put(C8078ad.f31587d, this.f25745c);
            jSONObject7.put("asset_view_signal", jSONObject2);
            jSONObject7.put("ad_view_signal", jSONObject);
            jSONObject7.put("click_signal", jSONObject5);
            jSONObject7.put("scroll_view_signal", jSONObject3);
            jSONObject7.put("lock_screen_signal", jSONObject4);
            boolean z3 = false;
            jSONObject7.put("has_custom_click_handler", this.f25744b.m14659b(this.f25747e.m14692e()) != null);
            jSONObject7.put("provided_signals", jSONObject6);
            JSONObject jSONObject8 = new JSONObject();
            jSONObject8.put("asset_id", str);
            jSONObject8.put("template", this.f25747e.m14682o());
            jSONObject8.put("view_aware_api_used", z);
            jSONObject8.put("custom_mute_requested", this.f25753k.f27647i != null && this.f25753k.f27647i.f24045g);
            jSONObject8.put("custom_mute_enabled", !this.f25747e.m14687j().isEmpty() && this.f25747e.m14679r() != null);
            if (this.f25755m.m14344b() != null && this.f25745c.optBoolean("custom_one_point_five_click_enabled", false)) {
                jSONObject8.put("custom_one_point_five_click_eligible", true);
            }
            jSONObject8.put(AvidJSONUtil.KEY_TIMESTAMP, this.f25756n.mo17091b());
            if (this.f25762t && m14776d()) {
                jSONObject8.put("custom_click_gesture_eligible", true);
            }
            if (z2) {
                jSONObject8.put("is_custom_click_gesture", true);
            }
            if (this.f25744b.m14659b(this.f25747e.m14692e()) != null) {
                z3 = true;
            }
            jSONObject8.put("has_custom_click_handler", z3);
            jSONObject8.put("click_signals", m14781b(view));
            jSONObject7.put("click", jSONObject8);
            JSONObject jSONObject9 = new JSONObject();
            long b = this.f25756n.mo17091b();
            jSONObject9.put("time_from_last_touch_down", b - this.f25765w);
            jSONObject9.put("time_from_last_touch", b - this.f25766x);
            jSONObject7.put("touch_signal", jSONObject9);
            zzbcc.m15837a(this.f25746d.m14174a("google.afma.nativeAds.handleClick", jSONObject7), "Error during performing handleClick");
        } catch (JSONException e) {
            zzbbq.m15855b("Unable to create click JSON.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    /* renamed from: a */
    public final void mo14308a(zzafz zzafzVar) {
        if (!this.f25745c.optBoolean("custom_one_point_five_click_enabled", false)) {
            zzbbq.m15852d("setUnconfirmedClickListener: Your account need to be whitelisted to use this feature.\nContact your account manager for more information.");
        } else {
            this.f25755m.m14345a(zzafzVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    /* renamed from: a */
    public final void mo14307a(zzxz zzxzVar) {
        this.f25767y = zzxzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    /* renamed from: a */
    public final void mo14306a(zzyd zzydVar) {
        try {
            if (!this.f25761s) {
                if (zzydVar != null || this.f25747e.m14679r() == null) {
                    this.f25761s = true;
                    this.f25758p.m13237a(zzydVar.mo10987v1());
                    mo14317a();
                    return;
                }
                this.f25761s = true;
                this.f25758p.m13237a(this.f25747e.m14679r().mo10987v1());
                mo14317a();
            }
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    /* renamed from: a */
    public final void mo14305a(String str) {
        m14784a(null, null, null, null, null, str, null, null, false, false);
    }

    /* renamed from: a */
    public final boolean m14782a(JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3, JSONObject jSONObject4, String str, JSONObject jSONObject5, boolean z) {
        Preconditions.m17286a("recordImpression must be called on the main UI thread.");
        try {
            JSONObject jSONObject6 = new JSONObject();
            jSONObject6.put(C8078ad.f31587d, this.f25745c);
            jSONObject6.put("asset_view_signal", jSONObject2);
            jSONObject6.put("ad_view_signal", jSONObject);
            jSONObject6.put("scroll_view_signal", jSONObject3);
            jSONObject6.put("lock_screen_signal", jSONObject4);
            jSONObject6.put("provided_signals", jSONObject5);
            if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23896u1)).booleanValue()) {
                jSONObject6.put("view_signals", str);
            }
            jSONObject6.put("policy_validator_enabled", z);
            jSONObject6.put("screen", zzbau.m15944a(this.f25743a));
            this.f25746d.m14176a("/logScionEvent", new C3694jh(this));
            this.f25746d.m14176a("/nativeImpression", new C3657ih(this, null));
            zzbcc.m15837a(this.f25746d.m14174a("google.afma.nativeAds.handleImpression", jSONObject6), "Error during performing handleImpression");
            boolean z2 = this.f25759q;
            if (z2 || this.f25751i.f27555B == null) {
                return true;
            }
            this.f25759q = z2 | zzp.m17959m().m15997b(this.f25743a, this.f25752j.f24759a, this.f25751i.f27555B.toString(), this.f25753k.f27644f);
            return true;
        } catch (JSONException e) {
            zzbbq.m15855b("Unable to create impression JSON.", e);
            return false;
        }
    }

    /* renamed from: b */
    public final String m14781b(View view) {
        try {
            JSONObject optJSONObject = this.f25745c.optJSONObject("tracking_urls_and_actions");
            JSONObject jSONObject = optJSONObject;
            if (optJSONObject == null) {
                jSONObject = new JSONObject();
            }
            return this.f25748f.m12604a().mo13100a(this.f25743a, jSONObject.optString("click_string"), view);
        } catch (Exception e) {
            zzbbq.m15855b("Exception obtaining click signals", e);
            return null;
        }
    }

    /* renamed from: b */
    public final String m14780b(View view, Map<String, WeakReference<View>> map) {
        if (!(map == null || view == null)) {
            for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
                if (view.equals(entry.getValue().get())) {
                    return entry.getKey();
                }
            }
        }
        int o = this.f25747e.m14682o();
        if (o == 1) {
            return "1099";
        }
        if (o == 2) {
            return "2099";
        }
        if (o != 6) {
            return null;
        }
        return "3099";
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    /* renamed from: b */
    public final JSONObject mo14300b(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        JSONObject a = zzbau.m15939a(this.f25743a, map, map2, view);
        JSONObject a2 = zzbau.m15940a(this.f25743a, view);
        JSONObject a3 = zzbau.m15937a(view);
        JSONObject b = zzbau.m15934b(this.f25743a, view);
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("asset_view_signal", a);
            jSONObject.put("ad_view_signal", a2);
            jSONObject.put("scroll_view_signal", a3);
            jSONObject.put("lock_screen_signal", b);
            return jSONObject;
        } catch (JSONException e) {
            zzbbq.m15855b("Unable to create native ad view signals JSON.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    /* renamed from: b */
    public final void mo14303b() {
        Preconditions.m17286a("recordDownloadedImpression must be called on the main UI thread.");
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(C8078ad.f31587d, this.f25745c);
            zzbcc.m15837a(this.f25746d.m14174a("google.afma.nativeAds.handleDownloadedImpression", jSONObject), "Error during performing handleDownloadedImpression");
        } catch (JSONException e) {
            zzbbq.m15855b("", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    /* renamed from: b */
    public final void mo14302b(Bundle bundle) {
        if (bundle == null) {
            zzbbq.m15858a("Touch event data is null. No touch event is reported.");
        } else if (!m14778b("touch_reporting")) {
            zzbbq.m15856b("The ad slot cannot handle external touch events. You must be whitelisted to be able to report your touch events.");
        } else {
            this.f25748f.m12604a().mo13025a((int) bundle.getFloat("x"), (int) bundle.getFloat("y"), bundle.getInt(Constants.VAST_DURATION_MS));
        }
    }

    /* renamed from: b */
    public final boolean m14778b(String str) {
        JSONObject optJSONObject = this.f25745c.optJSONObject("allow_pub_event_reporting");
        return optJSONObject != null && optJSONObject.optBoolean(str, false);
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    /* renamed from: b0 */
    public final void mo14299b0() {
        if (this.f25745c.optBoolean("custom_one_point_five_click_enabled", false)) {
            this.f25755m.m14346a();
        }
    }

    /* renamed from: c */
    public final String m14777c(View view) {
        if (!((Boolean) zzwm.m11166e().m16921a(zzabb.f23896u1)).booleanValue()) {
            return null;
        }
        try {
            return this.f25748f.m12604a().mo13023a(this.f25743a, view, (Activity) null);
        } catch (Exception e) {
            zzbbq.m15856b("Exception getting data.");
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    /* renamed from: c */
    public final void mo14298c() {
        m14782a(null, null, null, null, null, null, false);
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    /* renamed from: c */
    public final boolean mo14297c(Bundle bundle) {
        if (m14778b("impression_reporting")) {
            return m14782a(null, null, null, null, null, zzp.m17969c().m16133a(bundle, (JSONObject) null), false);
        }
        zzbbq.m15856b("The ad slot cannot handle external impression events. You must be whitelisted to whitelisted to be able to report your impression events.");
        return false;
    }

    /* renamed from: d */
    public final boolean m14776d() {
        return this.f25745c.optBoolean("allow_custom_click_gesture", false);
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    public final void destroy() {
        this.f25746d.m14180a();
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    /* renamed from: t0 */
    public final boolean mo14296t0() {
        return m14776d();
    }
}
