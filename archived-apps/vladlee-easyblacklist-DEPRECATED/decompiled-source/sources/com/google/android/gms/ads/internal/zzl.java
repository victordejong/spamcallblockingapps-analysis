package com.google.android.gms.ads.internal;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.webkit.WebView;
import com.google.android.gms.actions.SearchIntents;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzaak;
import com.google.android.gms.internal.ads.zzaar;
import com.google.android.gms.internal.ads.zzaoy;
import com.google.android.gms.internal.ads.zzape;
import com.google.android.gms.internal.ads.zzaro;
import com.google.android.gms.internal.ads.zzavs;
import com.google.android.gms.internal.ads.zzayk;
import com.google.android.gms.internal.ads.zzazb;
import com.google.android.gms.internal.ads.zzazd;
import com.google.android.gms.internal.ads.zzdq;
import com.google.android.gms.internal.ads.zzdt;
import com.google.android.gms.internal.ads.zzrg;
import com.google.android.gms.internal.ads.zzug;
import com.google.android.gms.internal.ads.zzuj;
import com.google.android.gms.internal.ads.zzuo;
import com.google.android.gms.internal.ads.zzve;
import com.google.android.gms.internal.ads.zzvg;
import com.google.android.gms.internal.ads.zzvh;
import com.google.android.gms.internal.ads.zzvt;
import com.google.android.gms.internal.ads.zzvx;
import com.google.android.gms.internal.ads.zzwc;
import com.google.android.gms.internal.ads.zzwi;
import com.google.android.gms.internal.ads.zzxa;
import com.google.android.gms.internal.ads.zzxb;
import com.google.android.gms.internal.ads.zzxh;
import com.google.android.gms.internal.ads.zzyw;
import java.util.Map;
import java.util.concurrent.Future;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/zzl.class */
public final class zzl extends zzvt {

    /* renamed from: a */
    private final zzazb f5960a;

    /* renamed from: b */
    private final zzuj f5961b;

    /* renamed from: c */
    private final Future<zzdq> f5962c = zzazd.zzdwe.zzd(new CallableC1545c(this));

    /* renamed from: d */
    private final Context f5963d;

    /* renamed from: e */
    private final C1547e f5964e;

    /* renamed from: f */
    private WebView f5965f;

    /* renamed from: g */
    private zzvh f5966g;

    /* renamed from: h */
    private zzdq f5967h;

    /* renamed from: i */
    private AsyncTask<Void, Void, String> f5968i;

    public zzl(Context context, zzuj zzujVar, String str, zzazb zzazbVar) {
        this.f5963d = context;
        this.f5960a = zzazbVar;
        this.f5961b = zzujVar;
        this.f5965f = new WebView(this.f5963d);
        this.f5964e = new C1547e(str);
        m6042a(0);
        this.f5965f.setVerticalScrollBarEnabled(false);
        this.f5965f.getSettings().setJavaScriptEnabled(true);
        this.f5965f.setWebViewClient(new C1544b(this));
        this.f5965f.setOnTouchListener(new View$OnTouchListenerC1546d(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public final String m6034b(String str) {
        if (this.f5967h == null) {
            return str;
        }
        Uri parse = Uri.parse(str);
        try {
            parse = this.f5967h.zza(parse, this.f5963d, null, null);
        } catch (zzdt e) {
            zzavs.zzd("Unable to process ad data", e);
        }
        return parse.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static /* synthetic */ void m6035b(zzl zzlVar, String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        zzlVar.f5963d.startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final int m6038a(String str) {
        String queryParameter = Uri.parse(str).getQueryParameter("height");
        if (TextUtils.isEmpty(queryParameter)) {
            return 0;
        }
        try {
            zzve.zzou();
            return zzayk.zza(this.f5963d, Integer.parseInt(queryParameter));
        } catch (NumberFormatException e) {
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final String m6043a() {
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("https://").appendEncodedPath(zzaar.zzcso.get());
        builder.appendQueryParameter(SearchIntents.EXTRA_QUERY, this.f5964e.m6061b());
        builder.appendQueryParameter("pubId", this.f5964e.m6060c());
        Map<String, String> d = this.f5964e.m6059d();
        for (String str : d.keySet()) {
            builder.appendQueryParameter(str, d.get(str));
        }
        Uri build = builder.build();
        zzdq zzdqVar = this.f5967h;
        Uri uri = build;
        if (zzdqVar != null) {
            try {
                uri = zzdqVar.zza(build, this.f5963d);
            } catch (zzdt e) {
                zzavs.zzd("Unable to process ad data", e);
                uri = build;
            }
        }
        String b = m6037b();
        String encodedQuery = uri.getEncodedQuery();
        StringBuilder sb = new StringBuilder(String.valueOf(b).length() + 1 + String.valueOf(encodedQuery).length());
        sb.append(b);
        sb.append("#");
        sb.append(encodedQuery);
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m6042a(int i) {
        if (this.f5965f != null) {
            this.f5965f.setLayoutParams(new ViewGroup.LayoutParams(-1, i));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final String m6037b() {
        String a = this.f5964e.m6063a();
        String str = a;
        if (TextUtils.isEmpty(a)) {
            str = "www.google.com";
        }
        String str2 = zzaar.zzcso.get();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 8 + String.valueOf(str2).length());
        sb.append("https://");
        sb.append(str);
        sb.append(str2);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void destroy() {
        Preconditions.checkMainThread("destroy must be called on the main UI thread.");
        this.f5968i.cancel(true);
        this.f5962c.cancel(true);
        this.f5965f.destroy();
        this.f5965f = null;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final Bundle getAdMetadata() {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final String getAdUnitId() {
        throw new IllegalStateException("getAdUnitId not implemented");
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final String getMediationAdapterClassName() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final zzxb getVideoController() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final boolean isLoading() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final boolean isReady() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void pause() {
        Preconditions.checkMainThread("pause must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void resume() {
        Preconditions.checkMainThread("resume must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void setImmersiveMode(boolean z) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void setManualImpressionsEnabled(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void setUserId(String str) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void showInterstitial() {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void stopLoading() {
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzaak zzaakVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzaoy zzaoyVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzape zzapeVar, String str) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzaro zzaroVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzrg zzrgVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzuj zzujVar) {
        throw new IllegalStateException("AdSize must be set before initialization");
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzuo zzuoVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzvg zzvgVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzvh zzvhVar) {
        this.f5966g = zzvhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzvx zzvxVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzwc zzwcVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzwi zzwiVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzxh zzxhVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzyw zzywVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final boolean zza(zzug zzugVar) {
        Preconditions.checkNotNull(this.f5965f, "This Search Ad has already been torn down");
        this.f5964e.m6062a(zzugVar, this.f5960a);
        this.f5968i = new AsyncTaskC1548f(this, (byte) 0).execute(new Void[0]);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zzbr(String str) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final IObjectWrapper zzjx() {
        Preconditions.checkMainThread("getAdFrame must be called on the main UI thread.");
        return ObjectWrapper.wrap(this.f5965f);
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zzjy() {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final zzuj zzjz() {
        return this.f5961b;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final String zzka() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final zzxa zzkb() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final zzwc zzkc() {
        throw new IllegalStateException("getIAppEventListener not implemented");
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final zzvh zzkd() {
        throw new IllegalStateException("getIAdListener not implemented");
    }
}
