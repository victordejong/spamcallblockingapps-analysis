package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import android.widget.TextView;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import java.lang.ref.WeakReference;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONException;
import org.json.JSONObject;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbvr.class */
public final class zzbvr implements zzbxa {

    /* renamed from: a */
    private final Context f12472a;

    /* renamed from: b */
    private final zzbwz f12473b;

    /* renamed from: c */
    private final JSONObject f12474c;

    /* renamed from: d */
    private final zzcaj f12475d;

    /* renamed from: e */
    private final zzbws f12476e;

    /* renamed from: f */
    private final zzdq f12477f;

    /* renamed from: g */
    private final zzbpd f12478g;

    /* renamed from: h */
    private final zzboq f12479h;

    /* renamed from: i */
    private final zzczl f12480i;

    /* renamed from: j */
    private final zzazb f12481j;

    /* renamed from: k */
    private final zzczu f12482k;

    /* renamed from: l */
    private final zzbjd f12483l;

    /* renamed from: m */
    private final zzbxq f12484m;

    /* renamed from: n */
    private final Clock f12485n;

    /* renamed from: o */
    private final zzbst f12486o;

    /* renamed from: p */
    private final zzdda f12487p;

    /* renamed from: r */
    private boolean f12489r;

    /* renamed from: y */
    private zzwn f12496y;

    /* renamed from: q */
    private boolean f12488q = false;

    /* renamed from: s */
    private boolean f12490s = false;

    /* renamed from: t */
    private boolean f12491t = false;

    /* renamed from: u */
    private Point f12492u = new Point();

    /* renamed from: v */
    private Point f12493v = new Point();

    /* renamed from: w */
    private long f12494w = 0;

    /* renamed from: x */
    private long f12495x = 0;

    public zzbvr(Context context, zzbwz zzbwzVar, JSONObject jSONObject, zzcaj zzcajVar, zzbws zzbwsVar, zzdq zzdqVar, zzbpd zzbpdVar, zzboq zzboqVar, zzczl zzczlVar, zzazb zzazbVar, zzczu zzczuVar, zzbjd zzbjdVar, zzbxq zzbxqVar, Clock clock, zzbst zzbstVar, zzdda zzddaVar) {
        this.f12472a = context;
        this.f12473b = zzbwzVar;
        this.f12474c = jSONObject;
        this.f12475d = zzcajVar;
        this.f12476e = zzbwsVar;
        this.f12477f = zzdqVar;
        this.f12478g = zzbpdVar;
        this.f12479h = zzboqVar;
        this.f12480i = zzczlVar;
        this.f12481j = zzazbVar;
        this.f12482k = zzczuVar;
        this.f12483l = zzbjdVar;
        this.f12484m = zzbxqVar;
        this.f12485n = clock;
        this.f12486o = zzbstVar;
        this.f12487p = zzddaVar;
    }

    /* renamed from: a */
    private final int m3891a(int i) {
        return zzve.zzou().zzb(this.f12472a, i);
    }

    /* renamed from: a */
    private final String m3888a(View view, Map<String, WeakReference<View>> map) {
        if (!(map == null || view == null)) {
            for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
                if (view.equals(entry.getValue().get())) {
                    return entry.getKey();
                }
            }
        }
        int zzaja = this.f12476e.zzaja();
        if (zzaja == 1) {
            return "1099";
        }
        if (zzaja == 2) {
            return "2099";
        }
        if (zzaja == 3 || zzaja != 6) {
            return null;
        }
        return "3099";
    }

    /* renamed from: a */
    private final JSONObject m3890a(Rect rect) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("width", m3891a(rect.right - rect.left));
        jSONObject.put("height", m3891a(rect.bottom - rect.top));
        jSONObject.put("x", m3891a(rect.left));
        jSONObject.put("y", m3891a(rect.top));
        jSONObject.put("relative_to", "self");
        return jSONObject;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0157 A[Catch: JSONException -> 0x0197, TRY_ENTER, TRY_LEAVE, TryCatch #2 {JSONException -> 0x0197, blocks: (B:23:0x012e, B:28:0x0147, B:32:0x0157, B:39:0x0173, B:40:0x017f, B:41:0x018b), top: B:49:0x012e }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x016d  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x018b A[Catch: JSONException -> 0x0197, TRY_ENTER, TRY_LEAVE, TryCatch #2 {JSONException -> 0x0197, blocks: (B:23:0x012e, B:28:0x0147, B:32:0x0157, B:39:0x0173, B:40:0x017f, B:41:0x018b), top: B:49:0x012e }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final org.json.JSONObject m3889a(android.view.View r7) {
        /*
            Method dump skipped, instructions count: 421
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbvr.m3889a(android.view.View):org.json.JSONObject");
    }

    /* renamed from: a */
    private final JSONObject m3884a(Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, View view) {
        JSONObject jSONObject;
        JSONObject jSONObject2 = new JSONObject();
        if (!(map == null || view == null)) {
            int[] f = m3875f(view);
            for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
                View view2 = entry.getValue().get();
                if (view2 != null) {
                    int[] f2 = m3875f(view2);
                    JSONObject jSONObject3 = new JSONObject();
                    JSONObject jSONObject4 = new JSONObject();
                    try {
                        jSONObject4.put("width", m3891a(view2.getMeasuredWidth()));
                        jSONObject4.put("height", m3891a(view2.getMeasuredHeight()));
                        jSONObject4.put("x", m3891a(f2[0] - f[0]));
                        jSONObject4.put("y", m3891a(f2[1] - f[1]));
                        jSONObject4.put("relative_to", "ad_view");
                        jSONObject3.put("frame", jSONObject4);
                        Rect rect = new Rect();
                        if (view2.getLocalVisibleRect(rect)) {
                            jSONObject = m3890a(rect);
                        } else {
                            jSONObject = new JSONObject();
                            jSONObject.put("width", 0);
                            jSONObject.put("height", 0);
                            jSONObject.put("x", m3891a(f2[0] - f[0]));
                            jSONObject.put("y", m3891a(f2[1] - f[1]));
                            jSONObject.put("relative_to", "ad_view");
                        }
                        jSONObject3.put("visible_bounds", jSONObject);
                        if (view2 instanceof TextView) {
                            TextView textView = (TextView) view2;
                            jSONObject3.put("text_color", textView.getCurrentTextColor());
                            try {
                                jSONObject3.put("font_size", textView.getTextSize());
                                jSONObject3.put("text", textView.getText());
                            } catch (JSONException e) {
                                zzavs.zzez("Unable to get asset views information");
                            }
                        }
                        jSONObject3.put("is_clickable", map2 != null && map2.containsKey(entry.getKey()) && view2.isClickable());
                        jSONObject2.put(entry.getKey(), jSONObject3);
                    } catch (JSONException e2) {
                    }
                }
            }
        }
        return jSONObject2;
    }

    /* renamed from: a */
    private final void m3887a(View view, JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3, JSONObject jSONObject4, String str, JSONObject jSONObject5, JSONObject jSONObject6, boolean z, boolean z2) {
        Preconditions.checkMainThread("performClick must be called on the main UI thread.");
        try {
            JSONObject jSONObject7 = new JSONObject();
            jSONObject7.put("ad", this.f12474c);
            jSONObject7.put("asset_view_signal", jSONObject2);
            jSONObject7.put("ad_view_signal", jSONObject);
            jSONObject7.put("click_signal", jSONObject5);
            jSONObject7.put("scroll_view_signal", jSONObject3);
            jSONObject7.put("lock_screen_signal", jSONObject4);
            boolean z3 = false;
            jSONObject7.put("has_custom_click_handler", this.f12473b.zzga(this.f12476e.getCustomTemplateId()) != null);
            jSONObject7.put("provided_signals", jSONObject6);
            JSONObject jSONObject8 = new JSONObject();
            jSONObject8.put("asset_id", str);
            jSONObject8.put("template", this.f12476e.zzaja());
            jSONObject8.put("view_aware_api_used", z);
            jSONObject8.put("custom_mute_requested", this.f12482k.zzddz != null && this.f12482k.zzddz.zzbkb);
            jSONObject8.put("custom_mute_enabled", !this.f12476e.getMuteThisAdReasons().isEmpty() && this.f12476e.zzajd() != null);
            if (this.f12484m.zzakh() != null && this.f12474c.optBoolean("custom_one_point_five_click_enabled", false)) {
                jSONObject8.put("custom_one_point_five_click_eligible", true);
            }
            jSONObject8.put("timestamp", this.f12485n.currentTimeMillis());
            if (this.f12491t && m3892a()) {
                jSONObject8.put("custom_click_gesture_eligible", true);
            }
            if (z2) {
                jSONObject8.put("is_custom_click_gesture", true);
            }
            if (this.f12473b.zzga(this.f12476e.getCustomTemplateId()) != null) {
                z3 = true;
            }
            jSONObject8.put("has_custom_click_handler", z3);
            jSONObject8.put("click_signals", m3877d(view));
            jSONObject7.put("click", jSONObject8);
            JSONObject jSONObject9 = new JSONObject();
            long currentTimeMillis = this.f12485n.currentTimeMillis();
            jSONObject9.put("time_from_last_touch_down", currentTimeMillis - this.f12494w);
            jSONObject9.put("time_from_last_touch", currentTimeMillis - this.f12495x);
            jSONObject7.put("touch_signal", jSONObject9);
            zzazh.zza(this.f12475d.zzc("google.afma.nativeAds.handleClick", jSONObject7), "Error during performing handleClick");
        } catch (JSONException e) {
            zzavs.zzc("Unable to create click JSON.", e);
        }
    }

    /* renamed from: a */
    private final boolean m3892a() {
        return this.f12474c.optBoolean("allow_custom_click_gesture", false);
    }

    /* renamed from: a */
    private final boolean m3885a(String str) {
        JSONObject optJSONObject = this.f12474c.optJSONObject("allow_pub_event_reporting");
        return optJSONObject != null && optJSONObject.optBoolean(str, false);
    }

    /* renamed from: a */
    private final boolean m3883a(JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3, JSONObject jSONObject4, String str, JSONObject jSONObject5) {
        Preconditions.checkMainThread("recordImpression must be called on the main UI thread.");
        try {
            JSONObject jSONObject6 = new JSONObject();
            jSONObject6.put("ad", this.f12474c);
            jSONObject6.put("asset_view_signal", jSONObject2);
            jSONObject6.put("ad_view_signal", jSONObject);
            jSONObject6.put("scroll_view_signal", jSONObject3);
            jSONObject6.put("lock_screen_signal", jSONObject4);
            jSONObject6.put("provided_signals", jSONObject5);
            if (((Boolean) zzve.zzoy().zzd(zzzn.zzcls)).booleanValue()) {
                jSONObject6.put("view_signals", str);
            }
            this.f12475d.zza("/logScionEvent", new C2096nr(this, (byte) 0));
            this.f12475d.zza("/nativeImpression", new C2097ns(this, (byte) 0));
            zzazh.zza(this.f12475d.zzc("google.afma.nativeAds.handleImpression", jSONObject6), "Error during performing handleImpression");
            if (this.f12488q || this.f12480i.zzglt == null) {
                return true;
            }
            this.f12488q |= zzq.zzla().zzb(this.f12472a, this.f12481j.zzbma, this.f12480i.zzglt.toString(), this.f12482k.zzgmm);
            return true;
        } catch (JSONException e) {
            zzavs.zzc("Unable to create impression JSON.", e);
            return false;
        }
    }

    /* renamed from: b */
    private final JSONObject m3882b() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("x", m3891a(this.f12492u.x));
            jSONObject.put("y", m3891a(this.f12492u.y));
            jSONObject.put("start_x", m3891a(this.f12493v.x));
            jSONObject.put("start_y", m3891a(this.f12493v.y));
            return jSONObject;
        } catch (JSONException e) {
            zzavs.zzc("Error occurred while putting signals into JSON object.", e);
            return null;
        }
    }

    /* renamed from: b */
    private static JSONObject m3881b(View view) {
        JSONObject jSONObject = new JSONObject();
        if (view == null) {
            return jSONObject;
        }
        try {
            zzq.zzkq();
            jSONObject.put("contained_in_scroll_view", zzawb.zzp(view) != -1);
        } catch (Exception e) {
        }
        return jSONObject;
    }

    /* renamed from: b */
    private final JSONObject m3879b(String str) {
        JSONObject jSONObject;
        Exception e;
        JSONObject jSONObject2;
        try {
            jSONObject2 = new JSONObject();
        } catch (Exception e2) {
            e = e2;
            jSONObject = null;
        }
        try {
            jSONObject2.put("click_point", m3882b());
            jSONObject2.put("asset_id", str);
            jSONObject = jSONObject2;
        } catch (Exception e3) {
            e = e3;
            jSONObject = jSONObject2;
            zzavs.zzc("Error occurred while grabbing click signals.", e);
            return jSONObject;
        }
        return jSONObject;
    }

    /* renamed from: c */
    private final JSONObject m3878c(View view) {
        JSONObject jSONObject = new JSONObject();
        if (view == null) {
            return jSONObject;
        }
        try {
            zzq.zzkq();
            jSONObject.put("can_show_on_lock_screen", zzawb.zzo(view));
            zzq.zzkq();
            jSONObject.put("is_keyguard_locked", zzawb.zzax(this.f12472a));
        } catch (JSONException e) {
            zzavs.zzez("Unable to get lock screen information");
        }
        return jSONObject;
    }

    /* renamed from: d */
    private final String m3877d(View view) {
        try {
            JSONObject optJSONObject = this.f12474c.optJSONObject("tracking_urls_and_actions");
            JSONObject jSONObject = optJSONObject;
            if (optJSONObject == null) {
                jSONObject = new JSONObject();
            }
            return this.f12477f.zzbw().zza(this.f12472a, jSONObject.optString("click_string"), view);
        } catch (Exception e) {
            zzavs.zzc("Exception obtaining click signals", e);
            return null;
        }
    }

    /* renamed from: e */
    private final String m3876e(View view) {
        if (!((Boolean) zzve.zzoy().zzd(zzzn.zzcls)).booleanValue()) {
            return null;
        }
        try {
            return this.f12477f.zzbw().zza(this.f12472a, view, (Activity) null);
        } catch (Exception e) {
            zzavs.zzex("Exception getting data.");
            return null;
        }
    }

    /* renamed from: f */
    private static int[] m3875f(View view) {
        int[] iArr = new int[2];
        if (view != null) {
            view.getLocationOnScreen(iArr);
        }
        return iArr;
    }

    @Override // com.google.android.gms.internal.ads.zzbxa
    public final void cancelUnconfirmedClick() {
        if (this.f12474c.optBoolean("custom_one_point_five_click_enabled", false)) {
            this.f12484m.cancelUnconfirmedClick();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxa
    public final void destroy() {
        this.f12475d.destroy();
    }

    @Override // com.google.android.gms.internal.ads.zzbxa
    public final boolean isCustomClickGestureEnabled() {
        return m3892a();
    }

    @Override // com.google.android.gms.internal.ads.zzbxa
    public final void setClickConfirmingView(View view) {
        if (!this.f12474c.optBoolean("custom_one_point_five_click_enabled", false)) {
            zzavs.zzez("setClickConfirmingView: Your account need to be whitelisted to use this feature.\nContact your account manager for more information.");
            return;
        }
        zzbxq zzbxqVar = this.f12484m;
        if (view != null) {
            view.setOnClickListener(zzbxqVar);
            view.setClickable(true);
            zzbxqVar.f12668c = new WeakReference<>(view);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxa
    public final void zza(View view, MotionEvent motionEvent, View view2) {
        int[] f = m3875f(view2);
        this.f12492u = new Point(((int) motionEvent.getRawX()) - f[0], ((int) motionEvent.getRawY()) - f[1]);
        long currentTimeMillis = this.f12485n.currentTimeMillis();
        this.f12495x = currentTimeMillis;
        if (motionEvent.getAction() == 0) {
            this.f12494w = currentTimeMillis;
            this.f12493v = this.f12492u;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.setLocation(this.f12492u.x, this.f12492u.y);
        this.f12477f.zza(obtain);
        obtain.recycle();
    }

    @Override // com.google.android.gms.internal.ads.zzbxa
    public final void zza(View view, View view2, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        JSONObject a = m3884a(map, map2, view2);
        JSONObject a2 = m3889a(view2);
        JSONObject b = m3881b(view2);
        JSONObject c = m3878c(view2);
        String a3 = m3888a(view, map);
        m3887a(view, a2, a, b, c, a3, m3879b(a3), null, z, false);
    }

    @Override // com.google.android.gms.internal.ads.zzbxa
    public final void zza(View view, Map<String, WeakReference<View>> map) {
        this.f12492u = new Point();
        this.f12493v = new Point();
        this.f12486o.zzr(view);
        this.f12489r = false;
    }

    @Override // com.google.android.gms.internal.ads.zzbxa
    public final void zza(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        m3883a(m3889a(view), m3884a(map, map2, view), m3881b(view), m3878c(view), m3876e(view), null);
    }

    @Override // com.google.android.gms.internal.ads.zzbxa
    public final void zza(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener) {
        this.f12492u = new Point();
        this.f12493v = new Point();
        if (!this.f12489r) {
            this.f12486o.zzq(view);
            this.f12489r = true;
        }
        view.setOnTouchListener(onTouchListener);
        view.setClickable(true);
        view.setOnClickListener(onClickListener);
        this.f12483l.zzo(this);
        boolean zzcs = zzaxy.zzcs(this.f12481j.zzdwa);
        if (map != null) {
            for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
                View view2 = entry.getValue().get();
                if (view2 != null) {
                    if (zzcs) {
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
                    if (zzcs) {
                        view3.setOnTouchListener(onTouchListener);
                    }
                    view3.setClickable(false);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxa
    public final void zza(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        if (!this.f12491t) {
            zzavs.zzea("Custom click reporting failed. enableCustomClickGesture is not set.");
        } else if (!m3892a()) {
            zzavs.zzea("Custom click reporting failed. Ad unit id not whitelisted.");
        } else {
            JSONObject a = m3884a(map, map2, view);
            JSONObject a2 = m3889a(view);
            JSONObject b = m3881b(view);
            JSONObject c = m3878c(view);
            String a3 = m3888a(null, map);
            m3887a(view, a2, a, b, c, a3, m3879b(a3), null, z, true);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxa
    public final void zza(zzaeb zzaebVar) {
        if (!this.f12474c.optBoolean("custom_one_point_five_click_enabled", false)) {
            zzavs.zzez("setUnconfirmedClickListener: Your account need to be whitelisted to use this feature.\nContact your account manager for more information.");
        } else {
            this.f12484m.zza(zzaebVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxa
    public final void zza(zzwn zzwnVar) {
        this.f12496y = zzwnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbxa
    public final void zza(zzwr zzwrVar) {
        try {
            if (!this.f12490s) {
                if (zzwrVar != null || this.f12476e.zzajd() == null) {
                    this.f12490s = true;
                    this.f12487p.zzen(zzwrVar.zzph());
                    zzaip();
                    return;
                }
                this.f12490s = true;
                this.f12487p.zzen(this.f12476e.zzajd().zzph());
                zzaip();
            }
        } catch (RemoteException e) {
            zzavs.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxa
    public final void zzaio() {
        m3883a(null, null, null, null, null, null);
    }

    @Override // com.google.android.gms.internal.ads.zzbxa
    public final void zzaip() {
        try {
            if (this.f12496y != null) {
                this.f12496y.onAdMuted();
            }
        } catch (RemoteException e) {
            zzavs.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxa
    public final void zzaiq() {
        Preconditions.checkMainThread("recordDownloadedImpression must be called on the main UI thread.");
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("ad", this.f12474c);
            zzazh.zza(this.f12475d.zzc("google.afma.nativeAds.handleDownloadedImpression", jSONObject), "Error during performing handleDownloadedImpression");
        } catch (JSONException e) {
            zzayu.zzc("", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxa
    public final void zzf(Bundle bundle) {
        if (bundle == null) {
            zzavs.zzea("Click data is null. No click is reported.");
        } else if (!m3885a("click_reporting")) {
            zzavs.zzex("The ad slot cannot handle external click events. You must be whitelisted to be able to report your click events.");
        } else {
            Bundle bundle2 = bundle.getBundle("click_signal");
            m3887a(null, null, null, null, null, bundle2 != null ? bundle2.getString("asset_id") : null, null, zzq.zzkq().zza(bundle, (JSONObject) null), false, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxa
    public final void zzfu(String str) {
        m3887a(null, null, null, null, null, str, null, null, false, false);
    }

    @Override // com.google.android.gms.internal.ads.zzbxa
    public final void zzg(Bundle bundle) {
        if (bundle == null) {
            zzavs.zzea("Touch event data is null. No touch event is reported.");
        } else if (!m3885a("touch_reporting")) {
            zzavs.zzex("The ad slot cannot handle external touch events. You must be whitelisted to be able to report your touch events.");
        } else {
            this.f12477f.zzbw().zza((int) bundle.getFloat("x"), (int) bundle.getFloat("y"), bundle.getInt("duration_ms"));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxa
    public final boolean zzh(Bundle bundle) {
        if (m3885a("impression_reporting")) {
            return m3883a(null, null, null, null, null, zzq.zzkq().zza(bundle, (JSONObject) null));
        }
        zzavs.zzex("The ad slot cannot handle external impression events. You must be whitelisted to whitelisted to be able to report your impression events.");
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbxa
    public final void zzrp() {
        this.f12491t = true;
    }
}
