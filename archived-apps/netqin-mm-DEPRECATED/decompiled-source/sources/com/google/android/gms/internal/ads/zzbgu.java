package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.google.android.gms.ads.impl.C7217R;
import com.google.android.gms.ads.internal.overlay.zzb;
import com.google.android.gms.ads.internal.overlay.zze;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.common.util.Predicate;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
import p131c.p161d.p170b.p224d.p252g.p253a.RunnableC3985r9;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbgu.class */
public final class zzbgu extends FrameLayout implements zzbgj {

    /* renamed from: a */
    public final zzbgj f24978a;

    /* renamed from: b */
    public final zzbdn f24979b;

    /* renamed from: c */
    public final AtomicBoolean f24980c = new AtomicBoolean();

    public zzbgu(zzbgj zzbgjVar) {
        super(zzbgjVar.getContext());
        this.f24978a = zzbgjVar;
        this.f24979b = new zzbdn(zzbgjVar.mo15599K(), this, this);
        if (!mo15596N()) {
            addView(this.f24978a.getView());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: A */
    public final void mo15608A() {
        setBackgroundColor(0);
        this.f24978a.setBackgroundColor(0);
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: B */
    public final void mo15607B() {
        this.f24978a.mo15607B();
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: C */
    public final void mo15606C() {
        TextView textView = new TextView(getContext());
        Resources b = zzp.m17965g().m16187b();
        textView.setText(b != null ? b.getString(C7217R.string.f22728s7) : "Test Ad");
        textView.setTextSize(15.0f);
        textView.setTextColor(-1);
        textView.setPadding(5, 0, 5, 0);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(-12303292);
        gradientDrawable.setCornerRadius(8.0f);
        textView.setBackground(gradientDrawable);
        addView(textView, new FrameLayout.LayoutParams(-2, -2, 49));
        bringChildToFront(textView);
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: D */
    public final WebViewClient mo15605D() {
        return this.f24978a.mo15605D();
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: E */
    public final boolean mo15604E() {
        return this.f24980c.get();
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: F */
    public final void mo15603F() {
        this.f24978a.mo15603F();
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: G */
    public final void mo15456G() {
        this.f24979b.m15772a();
        this.f24978a.mo15456G();
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: H */
    public final boolean mo15602H() {
        return this.f24978a.mo15602H();
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: I */
    public final zzsc mo15601I() {
        return this.f24978a.mo15601I();
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: J */
    public final zzsu mo15600J() {
        return this.f24978a.mo15600J();
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: K */
    public final Context mo15599K() {
        return this.f24978a.mo15599K();
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: L */
    public final boolean mo15598L() {
        return this.f24978a.mo15598L();
    }

    @Override // com.google.android.gms.internal.ads.zzbdu
    /* renamed from: M */
    public final zzabq mo15597M() {
        return this.f24978a.mo15597M();
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: N */
    public final boolean mo15596N() {
        return this.f24978a.mo15596N();
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: O */
    public final zze mo15595O() {
        return this.f24978a.mo15595O();
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: P */
    public final boolean mo15594P() {
        return this.f24978a.mo15594P();
    }

    @Override // com.google.android.gms.internal.ads.zzbgj, com.google.android.gms.internal.ads.zzbdu, com.google.android.gms.internal.ads.zzbht
    /* renamed from: a */
    public final zzbbx mo15516a() {
        return this.f24978a.mo15516a();
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: a */
    public final void mo15593a(int i) {
        this.f24978a.mo15593a(i);
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: a */
    public final void mo15592a(ViewGroup viewGroup, Activity activity, String str, String str2) {
        this.f24978a.mo15592a(this, activity, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzbhp
    /* renamed from: a */
    public final void mo15522a(zzb zzbVar) {
        this.f24978a.mo15522a(zzbVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: a */
    public final void mo15591a(zze zzeVar) {
        this.f24978a.mo15591a(zzeVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: a */
    public final void mo15590a(IObjectWrapper iObjectWrapper) {
        this.f24978a.mo15590a(iObjectWrapper);
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: a */
    public final void mo15589a(zzadn zzadnVar) {
        this.f24978a.mo15589a(zzadnVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: a */
    public final void mo15588a(zzads zzadsVar) {
        this.f24978a.mo15588a(zzadsVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbgj, com.google.android.gms.internal.ads.zzbdu
    /* renamed from: a */
    public final void mo15586a(zzbhd zzbhdVar) {
        this.f24978a.mo15586a(zzbhdVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: a */
    public final void mo15585a(zzbhy zzbhyVar) {
        this.f24978a.mo15585a(zzbhyVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: a */
    public final void mo15584a(zzdnv zzdnvVar, zzdnw zzdnwVar) {
        this.f24978a.mo15584a(zzdnvVar, zzdnwVar);
    }

    @Override // com.google.android.gms.internal.ads.zzqu
    /* renamed from: a */
    public final void mo11534a(zzqr zzqrVar) {
        this.f24978a.mo11534a(zzqrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: a */
    public final void mo15583a(zzsc zzscVar) {
        this.f24978a.mo15583a(zzscVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaks
    /* renamed from: a */
    public final void mo15582a(String str) {
        this.f24978a.mo15582a(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: a */
    public final void mo15581a(String str, Predicate<zzahq<? super zzbgj>> predicate) {
        this.f24978a.mo15581a(str, predicate);
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: a */
    public final void mo15580a(String str, zzahq<? super zzbgj> zzahqVar) {
        this.f24978a.mo15580a(str, zzahqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbgj, com.google.android.gms.internal.ads.zzbdu
    /* renamed from: a */
    public final void mo15579a(String str, zzbfl zzbflVar) {
        this.f24978a.mo15579a(str, zzbflVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: a */
    public final void mo15578a(String str, String str2, String str3) {
        this.f24978a.mo15578a(str, str2, str3);
    }

    @Override // com.google.android.gms.internal.ads.zzajr
    /* renamed from: a */
    public final void mo15577a(String str, Map<String, ?> map) {
        this.f24978a.mo15577a(str, map);
    }

    @Override // com.google.android.gms.internal.ads.zzajr
    /* renamed from: a */
    public final void mo15576a(String str, JSONObject jSONObject) {
        this.f24978a.mo15576a(str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzbdu
    /* renamed from: a */
    public final void mo15575a(boolean z) {
        this.f24978a.mo15575a(z);
    }

    @Override // com.google.android.gms.internal.ads.zzbhp
    /* renamed from: a */
    public final void mo15521a(boolean z, int i) {
        this.f24978a.mo15521a(z, i);
    }

    @Override // com.google.android.gms.internal.ads.zzbhp
    /* renamed from: a */
    public final void mo15520a(boolean z, int i, String str) {
        this.f24978a.mo15520a(z, i, str);
    }

    @Override // com.google.android.gms.internal.ads.zzbhp
    /* renamed from: a */
    public final void mo15519a(boolean z, int i, String str, String str2) {
        this.f24978a.mo15519a(z, i, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzbdu
    /* renamed from: a */
    public final void mo15574a(boolean z, long j) {
        this.f24978a.mo15574a(z, j);
    }

    @Override // com.google.android.gms.internal.ads.zzbgj, com.google.android.gms.internal.ads.zzbdu, com.google.android.gms.internal.ads.zzbhi
    /* renamed from: b */
    public final Activity mo15528b() {
        return this.f24978a.mo15528b();
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: b */
    public final void mo15573b(Context context) {
        this.f24978a.mo15573b(context);
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: b */
    public final void mo15572b(zze zzeVar) {
        this.f24978a.mo15572b(zzeVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: b */
    public final void mo15570b(String str, zzahq<? super zzbgj> zzahqVar) {
        this.f24978a.mo15570b(str, zzahqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaks
    /* renamed from: b */
    public final void mo15569b(String str, JSONObject jSONObject) {
        this.f24978a.mo15569b(str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: b */
    public final void mo15568b(boolean z) {
        this.f24978a.mo15568b(z);
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: b */
    public final boolean mo15567b(boolean z, int i) {
        if (!this.f24980c.compareAndSet(false, true)) {
            return true;
        }
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23833j0)).booleanValue()) {
            return false;
        }
        if (this.f24978a.getParent() instanceof ViewGroup) {
            ((ViewGroup) this.f24978a.getParent()).removeView(this.f24978a.getView());
        }
        return this.f24978a.mo15567b(z, i);
    }

    @Override // com.google.android.gms.internal.ads.zzbgj, com.google.android.gms.internal.ads.zzbhr
    /* renamed from: c */
    public final zzbhy mo15517c() {
        return this.f24978a.mo15517c();
    }

    @Override // com.google.android.gms.internal.ads.zzbgj, com.google.android.gms.internal.ads.zzbdu
    /* renamed from: d */
    public final zzabp mo15566d() {
        return this.f24978a.mo15566d();
    }

    @Override // com.google.android.gms.internal.ads.zzbdu
    /* renamed from: d */
    public final zzbfl mo15565d(String str) {
        return this.f24978a.mo15565d(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: d */
    public final void mo15564d(boolean z) {
        this.f24978a.mo15564d(z);
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    public final void destroy() {
        final IObjectWrapper w = mo15546w();
        if (w != null) {
            zzayu.f24665h.post(new Runnable(w) { // from class: c.d.b.d.g.a.s9

                /* renamed from: a */
                public final IObjectWrapper f15087a;

                {
                    this.f15087a = w;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    zzp.m17954r().m16412b(this.f15087a);
                }
            });
            zzayu.f24665h.postDelayed(new RunnableC3985r9(this), ((Integer) zzwm.m11166e().m16921a(zzabb.f23902v2)).intValue());
            return;
        }
        this.f24978a.destroy();
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: e */
    public final void mo15563e(boolean z) {
        this.f24978a.mo15563e(z);
    }

    @Override // com.google.android.gms.internal.ads.zzbgj, com.google.android.gms.internal.ads.zzbhl
    /* renamed from: e */
    public final boolean mo15526e() {
        return this.f24978a.mo15526e();
    }

    @Override // com.google.android.gms.internal.ads.zzbgj, com.google.android.gms.internal.ads.zzbdu
    /* renamed from: f */
    public final com.google.android.gms.ads.internal.zzb mo15562f() {
        return this.f24978a.mo15562f();
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: f */
    public final void mo15561f(boolean z) {
        this.f24978a.mo15561f(z);
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: g */
    public final void mo15559g(boolean z) {
        this.f24978a.mo15559g(z);
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: g */
    public final boolean mo15560g() {
        return this.f24978a.mo15560g();
    }

    @Override // com.google.android.gms.internal.ads.zzbdu
    public final String getRequestId() {
        return this.f24978a.getRequestId();
    }

    @Override // com.google.android.gms.internal.ads.zzbgj, com.google.android.gms.internal.ads.zzbhs
    public final View getView() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    public final WebView getWebView() {
        return this.f24978a.getWebView();
    }

    @Override // com.google.android.gms.internal.ads.zzbgj, com.google.android.gms.internal.ads.zzbhq
    /* renamed from: h */
    public final zzeg mo15518h() {
        return this.f24978a.mo15518h();
    }

    @Override // com.google.android.gms.internal.ads.zzbgj, com.google.android.gms.internal.ads.zzbdu
    /* renamed from: i */
    public final zzbhd mo15558i() {
        return this.f24978a.mo15558i();
    }

    @Override // com.google.android.gms.internal.ads.zzbdu
    /* renamed from: j */
    public final int mo15557j() {
        return getMeasuredWidth();
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: k */
    public final void mo15556k() {
        this.f24978a.mo15556k();
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: l */
    public final zze mo15555l() {
        return this.f24978a.mo15555l();
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    public final void loadData(String str, String str2, String str3) {
        this.f24978a.loadData(str, str2, str3);
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    public final void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        this.f24978a.loadDataWithBaseURL(str, str2, str3, str4, str5);
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    public final void loadUrl(String str) {
        this.f24978a.loadUrl(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbdu
    /* renamed from: m */
    public final zzbdn mo15554m() {
        return this.f24979b;
    }

    @Override // com.google.android.gms.internal.ads.zzbdu
    /* renamed from: o */
    public final int mo15553o() {
        return getMeasuredHeight();
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    public final void onPause() {
        this.f24979b.m15769b();
        this.f24978a.onPause();
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    public final void onResume() {
        this.f24978a.onResume();
    }

    @Override // com.google.android.gms.ads.internal.zzk
    /* renamed from: p */
    public final void mo15552p() {
        this.f24978a.mo15552p();
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: r */
    public final void mo15551r() {
        this.f24978a.mo15551r();
    }

    @Override // com.google.android.gms.internal.ads.zzbdu
    /* renamed from: s */
    public final void mo15550s() {
        this.f24978a.mo15550s();
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.zzbgj
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.f24978a.setOnClickListener(onClickListener);
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.zzbgj
    public final void setOnTouchListener(View.OnTouchListener onTouchListener) {
        this.f24978a.setOnTouchListener(onTouchListener);
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    public final void setRequestedOrientation(int i) {
        this.f24978a.setRequestedOrientation(i);
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    public final void setWebChromeClient(WebChromeClient webChromeClient) {
        this.f24978a.setWebChromeClient(webChromeClient);
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    public final void setWebViewClient(WebViewClient webViewClient) {
        this.f24978a.setWebViewClient(webViewClient);
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: t */
    public final String mo15549t() {
        return this.f24978a.mo15549t();
    }

    @Override // com.google.android.gms.internal.ads.zzbdu
    /* renamed from: u */
    public final void mo15548u() {
        this.f24978a.mo15548u();
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: v */
    public final zzads mo15547v() {
        return this.f24978a.mo15547v();
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: w */
    public final IObjectWrapper mo15546w() {
        return this.f24978a.mo15546w();
    }

    @Override // com.google.android.gms.ads.internal.zzk
    /* renamed from: x */
    public final void mo15545x() {
        this.f24978a.mo15545x();
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: y */
    public final void mo15544y() {
        this.f24978a.mo15544y();
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: z */
    public final zzbhv mo15543z() {
        return this.f24978a.mo15543z();
    }
}
