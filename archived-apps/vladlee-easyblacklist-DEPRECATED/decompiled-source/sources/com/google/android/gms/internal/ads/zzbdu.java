package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.google.android.gms.ads.impl.C1542R;
import com.google.android.gms.ads.internal.overlay.zzc;
import com.google.android.gms.ads.internal.overlay.zzd;
import com.google.android.gms.ads.internal.zza;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.common.util.Predicate;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbdu.class */
public final class zzbdu extends FrameLayout implements zzbdi {

    /* renamed from: a */
    private final zzbdi f11761a;

    /* renamed from: b */
    private final zzbao f11762b;

    /* renamed from: c */
    private final AtomicBoolean f11763c = new AtomicBoolean();

    public zzbdu(zzbdi zzbdiVar) {
        super(zzbdiVar.getContext());
        this.f11761a = zzbdiVar;
        this.f11762b = new zzbao(zzbdiVar.zzzv(), (ViewGroup) this, (zzbdi) this);
        if (!zzaar()) {
            addView(this.f11761a.getView());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void destroy() {
        final IObjectWrapper zzaae = zzaae();
        if (zzaae != null) {
            zzawb.zzdsr.post(new Runnable(zzaae) { // from class: com.google.android.gms.internal.ads.iz

                /* renamed from: a */
                private final IObjectWrapper f8670a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f8670a = zzaae;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    zzq.zzlf().zzac(this.f8670a);
                }
            });
            zzawb.zzdsr.postDelayed(new RunnableC1968iy(this), ((Integer) zzve.zzoy().zzd(zzzn.zzcod)).intValue());
            return;
        }
        this.f11761a.destroy();
    }

    @Override // com.google.android.gms.internal.ads.zzbdi, com.google.android.gms.internal.ads.zzbes
    public final View getView() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final WebView getWebView() {
        return this.f11761a.getWebView();
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final boolean isDestroyed() {
        return this.f11761a.isDestroyed();
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void loadData(String str, String str2, String str3) {
        this.f11761a.loadData(str, str2, str3);
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        this.f11761a.loadDataWithBaseURL(str, str2, str3, str4, str5);
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void loadUrl(String str) {
        this.f11761a.loadUrl(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void onPause() {
        this.f11762b.onPause();
        this.f11761a.onPause();
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void onResume() {
        this.f11761a.onResume();
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.zzbdi
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.f11761a.setOnClickListener(onClickListener);
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.zzbdi
    public final void setOnTouchListener(View.OnTouchListener onTouchListener) {
        this.f11761a.setOnTouchListener(onTouchListener);
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void setRequestedOrientation(int i) {
        this.f11761a.setRequestedOrientation(i);
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void setWebChromeClient(WebChromeClient webChromeClient) {
        this.f11761a.setWebChromeClient(webChromeClient);
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void setWebViewClient(WebViewClient webViewClient) {
        this.f11761a.setWebViewClient(webViewClient);
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zza(ViewGroup viewGroup, Activity activity, String str, String str2) {
        this.f11761a.zza(this, activity, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zza(zzc zzcVar) {
        this.f11761a.zza(zzcVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbep
    public final void zza(zzd zzdVar) {
        this.f11761a.zza(zzdVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zza(zzabr zzabrVar) {
        this.f11761a.zza(zzabrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zza(zzabw zzabwVar) {
        this.f11761a.zza(zzabwVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbdi, com.google.android.gms.internal.ads.zzbaz
    public final void zza(zzbed zzbedVar) {
        this.f11761a.zza(zzbedVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zza(zzbey zzbeyVar) {
        this.f11761a.zza(zzbeyVar);
    }

    @Override // com.google.android.gms.internal.ads.zzps
    public final void zza(zzpt zzptVar) {
        this.f11761a.zza(zzptVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zza(zzra zzraVar) {
        this.f11761a.zza(zzraVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zza(String str, Predicate<zzafn<? super zzbdi>> predicate) {
        this.f11761a.zza(str, predicate);
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zza(String str, zzafn<? super zzbdi> zzafnVar) {
        this.f11761a.zza(str, zzafnVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbdi, com.google.android.gms.internal.ads.zzbaz
    public final void zza(String str, zzbcn zzbcnVar) {
        this.f11761a.zza(str, zzbcnVar);
    }

    @Override // com.google.android.gms.internal.ads.zzahs
    public final void zza(String str, Map<String, ?> map) {
        this.f11761a.zza(str, map);
    }

    @Override // com.google.android.gms.internal.ads.zzaip
    public final void zza(String str, JSONObject jSONObject) {
        this.f11761a.zza(str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzbep
    public final void zza(boolean z, int i, String str) {
        this.f11761a.zza(z, i, str);
    }

    @Override // com.google.android.gms.internal.ads.zzbep
    public final void zza(boolean z, int i, String str, String str2) {
        this.f11761a.zza(z, i, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzbaz
    public final void zza(boolean z, long j) {
        this.f11761a.zza(z, j);
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final zzbev zzaaa() {
        return this.f11761a.zzaaa();
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final WebViewClient zzaab() {
        return this.f11761a.zzaab();
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final boolean zzaac() {
        return this.f11761a.zzaac();
    }

    @Override // com.google.android.gms.internal.ads.zzbdi, com.google.android.gms.internal.ads.zzbeq
    public final zzdq zzaad() {
        return this.f11761a.zzaad();
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final IObjectWrapper zzaae() {
        return this.f11761a.zzaae();
    }

    @Override // com.google.android.gms.internal.ads.zzbdi, com.google.android.gms.internal.ads.zzbel
    public final boolean zzaaf() {
        return this.f11761a.zzaaf();
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zzaag() {
        this.f11762b.onDestroy();
        this.f11761a.zzaag();
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final boolean zzaah() {
        return this.f11761a.zzaah();
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final boolean zzaai() {
        return this.f11761a.zzaai();
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zzaaj() {
        this.f11761a.zzaaj();
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zzaak() {
        this.f11761a.zzaak();
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final zzabw zzaal() {
        return this.f11761a.zzaal();
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zzaam() {
        setBackgroundColor(0);
        this.f11761a.setBackgroundColor(0);
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zzaan() {
        TextView textView = new TextView(getContext());
        Resources resources = zzq.zzku().getResources();
        textView.setText(resources != null ? resources.getString(C1542R.string.f5899s7) : "Test Ad");
        textView.setTextSize(15.0f);
        textView.setTextColor(-1);
        textView.setPadding(5, 0, 5, 0);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(-12303292);
        gradientDrawable.setCornerRadius(8.0f);
        if (Build.VERSION.SDK_INT >= 16) {
            textView.setBackground(gradientDrawable);
        } else {
            textView.setBackgroundDrawable(gradientDrawable);
        }
        addView(textView, new FrameLayout.LayoutParams(-2, -2, 49));
        bringChildToFront(textView);
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final zzra zzaao() {
        return this.f11761a.zzaao();
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final boolean zzaap() {
        return this.f11763c.get();
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final zzro zzaaq() {
        return this.f11761a.zzaaq();
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final boolean zzaar() {
        return this.f11761a.zzaar();
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zzal(boolean z) {
        this.f11761a.zzal(z);
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zzan(IObjectWrapper iObjectWrapper) {
        this.f11761a.zzan(iObjectWrapper);
    }

    @Override // com.google.android.gms.internal.ads.zzbaz
    public final void zzav(boolean z) {
        this.f11761a.zzav(z);
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zzax(boolean z) {
        this.f11761a.zzax(z);
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zzay(boolean z) {
        this.f11761a.zzay(z);
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zzaz(boolean z) {
        this.f11761a.zzaz(z);
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zzb(zzc zzcVar) {
        this.f11761a.zzb(zzcVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zzb(String str, zzafn<? super zzbdi> zzafnVar) {
        this.f11761a.zzb(str, zzafnVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zzb(String str, String str2, String str3) {
        this.f11761a.zzb(str, str2, str3);
    }

    @Override // com.google.android.gms.internal.ads.zzahs
    public final void zzb(String str, JSONObject jSONObject) {
        this.f11761a.zzb(str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final boolean zzb(boolean z, int i) {
        if (!this.f11763c.compareAndSet(false, true)) {
            return true;
        }
        if (((Boolean) zzve.zzoy().zzd(zzzn.zzcis)).booleanValue()) {
            return false;
        }
        if (this.f11761a.getParent() instanceof ViewGroup) {
            ((ViewGroup) this.f11761a.getParent()).removeView(this.f11761a.getView());
        }
        return this.f11761a.zzb(z, i);
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zzba(boolean z) {
        this.f11761a.zzba(z);
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zzbr(Context context) {
        this.f11761a.zzbr(context);
    }

    @Override // com.google.android.gms.internal.ads.zzbep
    public final void zzc(boolean z, int i) {
        this.f11761a.zzc(z, i);
    }

    @Override // com.google.android.gms.internal.ads.zzaip
    public final void zzcy(String str) {
        this.f11761a.zzcy(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zzde(int i) {
        this.f11761a.zzde(i);
    }

    @Override // com.google.android.gms.internal.ads.zzbaz
    public final zzbcn zzfe(String str) {
        return this.f11761a.zzfe(str);
    }

    @Override // com.google.android.gms.ads.internal.zzi
    public final void zzjv() {
        this.f11761a.zzjv();
    }

    @Override // com.google.android.gms.ads.internal.zzi
    public final void zzjw() {
        this.f11761a.zzjw();
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zztr() {
        this.f11761a.zztr();
    }

    @Override // com.google.android.gms.internal.ads.zzbaz
    public final void zzts() {
        this.f11761a.zzts();
    }

    @Override // com.google.android.gms.internal.ads.zzbaz
    public final zzbao zzyk() {
        return this.f11762b;
    }

    @Override // com.google.android.gms.internal.ads.zzbdi, com.google.android.gms.internal.ads.zzbaz
    public final zzbed zzyl() {
        return this.f11761a.zzyl();
    }

    @Override // com.google.android.gms.internal.ads.zzbaz
    public final zzaac zzym() {
        return this.f11761a.zzym();
    }

    @Override // com.google.android.gms.internal.ads.zzbdi, com.google.android.gms.internal.ads.zzbaz, com.google.android.gms.internal.ads.zzbei
    public final Activity zzyn() {
        return this.f11761a.zzyn();
    }

    @Override // com.google.android.gms.internal.ads.zzbdi, com.google.android.gms.internal.ads.zzbaz
    public final zza zzyo() {
        return this.f11761a.zzyo();
    }

    @Override // com.google.android.gms.internal.ads.zzbaz
    public final String zzyp() {
        return this.f11761a.zzyp();
    }

    @Override // com.google.android.gms.internal.ads.zzbdi, com.google.android.gms.internal.ads.zzbaz
    public final zzaab zzyq() {
        return this.f11761a.zzyq();
    }

    @Override // com.google.android.gms.internal.ads.zzbdi, com.google.android.gms.internal.ads.zzbaz, com.google.android.gms.internal.ads.zzbet
    public final zzazb zzyr() {
        return this.f11761a.zzyr();
    }

    @Override // com.google.android.gms.internal.ads.zzbaz
    public final int zzys() {
        return getMeasuredHeight();
    }

    @Override // com.google.android.gms.internal.ads.zzbaz
    public final int zzyt() {
        return getMeasuredWidth();
    }

    @Override // com.google.android.gms.internal.ads.zzbaz
    public final void zzyu() {
        this.f11761a.zzyu();
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zzzt() {
        this.f11761a.zzzt();
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zzzu() {
        this.f11761a.zzzu();
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final Context zzzv() {
        return this.f11761a.zzzv();
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final zzc zzzw() {
        return this.f11761a.zzzw();
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final zzc zzzx() {
        return this.f11761a.zzzx();
    }

    @Override // com.google.android.gms.internal.ads.zzbdi, com.google.android.gms.internal.ads.zzber
    public final zzbey zzzy() {
        return this.f11761a.zzzy();
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final String zzzz() {
        return this.f11761a.zzzz();
    }
}
