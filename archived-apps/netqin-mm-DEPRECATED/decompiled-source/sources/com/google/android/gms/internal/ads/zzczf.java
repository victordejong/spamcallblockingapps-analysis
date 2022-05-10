package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Collections;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzczf.class */
public final class zzczf extends zzxf {

    /* renamed from: a */
    public final Context f26785a;

    /* renamed from: b */
    public final zzwt f26786b;

    /* renamed from: c */
    public final zzdok f26787c;

    /* renamed from: d */
    public final zzboq f26788d;

    /* renamed from: e */
    public final ViewGroup f26789e;

    public zzczf(Context context, zzwt zzwtVar, zzdok zzdokVar, zzboq zzboqVar) {
        this.f26785a = context;
        this.f26786b = zzwtVar;
        this.f26787c = zzdokVar;
        this.f26788d = zzboqVar;
        FrameLayout frameLayout = new FrameLayout(this.f26785a);
        frameLayout.removeAllViews();
        frameLayout.addView(this.f26788d.mo15195i(), zzp.m17967e().mo16037b());
        frameLayout.setMinimumHeight(mo10943f2().f29037c);
        frameLayout.setMinimumWidth(mo10943f2().f29040f);
        this.f26789e = frameLayout;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: D1 */
    public final zzxk mo10970D1() throws RemoteException {
        return this.f26787c.f27651m;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: G */
    public final Bundle mo10969G() throws RemoteException {
        zzbbq.m15854c("getAdMetadata is not supported in Publisher AdView returned by AdLoader.");
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: Q0 */
    public final IObjectWrapper mo10968Q0() throws RemoteException {
        return ObjectWrapper.m17020a(this.f26789e);
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: V1 */
    public final void mo10967V1() throws RemoteException {
        this.f26788d.mo15192l();
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: X0 */
    public final zzwt mo10966X0() throws RemoteException {
        return this.f26786b;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final String mo10965a() throws RemoteException {
        if (this.f26788d.m15166d() != null) {
            return this.f26788d.m15166d().mo11114a();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10964a(zzaak zzaakVar) throws RemoteException {
        zzbbq.m15854c("setVideoOptions is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10963a(zzaby zzabyVar) throws RemoteException {
        zzbbq.m15854c("setOnCustomRenderedAdLoadedListener is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10962a(zzari zzariVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10961a(zzaro zzaroVar, String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10960a(zzaug zzaugVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10959a(zzsh zzshVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10958a(zzvn zzvnVar) throws RemoteException {
        Preconditions.m17286a("setAdSize must be called on the main UI thread.");
        zzboq zzboqVar = this.f26788d;
        if (zzboqVar != null) {
            zzboqVar.mo15199a(this.f26789e, zzvnVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10957a(zzvs zzvsVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10956a(zzwo zzwoVar) throws RemoteException {
        zzbbq.m15854c("setAdClickListener is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10955a(zzxj zzxjVar) throws RemoteException {
        zzbbq.m15854c("setAdMetadataListener is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10954a(zzxk zzxkVar) throws RemoteException {
        zzbbq.m15854c("setAppEventListener is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10953a(zzxq zzxqVar) throws RemoteException {
        zzbbq.m15854c("setCorrelationIdProvider is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10952a(zzyi zzyiVar) {
        zzbbq.m15854c("setOnPaidEventListener is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10951a(zzyu zzyuVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10949a(boolean z) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: b */
    public final void mo10946b(zzwt zzwtVar) throws RemoteException {
        zzbbq.m15854c("setAdListener is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: b */
    public final boolean mo10948b() throws RemoteException {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: b */
    public final boolean mo10947b(zzvg zzvgVar) throws RemoteException {
        zzbbq.m15854c("loadAd is not supported for a Publisher AdView returned from AdLoader.");
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: d */
    public final void mo10945d(String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    public final void destroy() throws RemoteException {
        Preconditions.m17286a("destroy must be called on the main UI thread.");
        this.f26788d.mo14764a();
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: f */
    public final void mo10944f(boolean z) throws RemoteException {
        zzbbq.m15854c("setManualImpressionsEnabled is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: f2 */
    public final zzvn mo10943f2() {
        Preconditions.m17286a("getAdSize must be called on the main UI thread.");
        return zzdoq.m13403a(this.f26785a, Collections.singletonList(this.f26788d.mo15196h()));
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    public final String getAdUnitId() throws RemoteException {
        return this.f26787c.f27644f;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    public final zzyo getVideoController() throws RemoteException {
        return this.f26788d.mo15197g();
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: i */
    public final void mo10942i(String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: k0 */
    public final String mo10941k0() throws RemoteException {
        if (this.f26788d.m15166d() != null) {
            return this.f26788d.m15166d().mo11114a();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: l */
    public final zzyn mo10940l() {
        return this.f26788d.m15166d();
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: n */
    public final boolean mo10939n() throws RemoteException {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    public final void pause() throws RemoteException {
        Preconditions.m17286a("destroy must be called on the main UI thread.");
        this.f26788d.m15167c().m15030a((Context) null);
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    public final void resume() throws RemoteException {
        Preconditions.m17286a("destroy must be called on the main UI thread.");
        this.f26788d.m15167c().m15028c(null);
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    public final void showInterstitial() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: x1 */
    public final void mo10938x1() throws RemoteException {
    }
}
