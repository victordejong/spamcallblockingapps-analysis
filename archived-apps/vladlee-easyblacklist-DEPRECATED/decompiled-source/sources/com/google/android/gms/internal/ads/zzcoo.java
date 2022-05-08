package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbod;
import com.google.android.gms.internal.ads.zzbrm;
import java.util.Collections;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcoo.class */
public final class zzcoo extends zzvt implements zzbqt {

    /* renamed from: a */
    private final zzbfx f13458a;

    /* renamed from: b */
    private final Context f13459b;

    /* renamed from: c */
    private final ViewGroup f13460c;

    /* renamed from: g */
    private final zzbqp f13464g;

    /* renamed from: i */
    private zzaak f13466i;

    /* renamed from: j */
    private zzbkk f13467j;

    /* renamed from: k */
    private zzdhe<zzbkk> f13468k;

    /* renamed from: d */
    private final zzcop f13461d = new zzcop();

    /* renamed from: e */
    private final zzcoq f13462e = new zzcoq();

    /* renamed from: f */
    private final zzcos f13463f = new zzcos();

    /* renamed from: h */
    private final zzczw f13465h = new zzczw();

    public zzcoo(zzbfx zzbfxVar, Context context, zzuj zzujVar, String str) {
        this.f13460c = new FrameLayout(context);
        this.f13458a = zzbfxVar;
        this.f13459b = context;
        this.f13465h.zzd(zzujVar).zzgk(str);
        this.f13464g = zzbfxVar.zzace();
        this.f13464g.zza(this, this.f13458a.zzaca());
    }

    /* renamed from: a */
    private final zzblg m3718a(zzczu zzczuVar) {
        zzblg zzaee;
        synchronized (this) {
            zzaee = this.f13458a.zzach().zzc(new zzbod.zza().zzbz(this.f13459b).zza(zzczuVar).zzahh()).zzc(new zzbrm.zza().zza((zzty) this.f13461d, this.f13458a.zzaca()).zza(this.f13462e, this.f13458a.zzaca()).zza((zzbov) this.f13461d, this.f13458a.zzaca()).zza((zzbqb) this.f13461d, this.f13458a.zzaca()).zza((zzbow) this.f13461d, this.f13458a.zzaca()).zza(this.f13463f, this.f13458a.zzaca()).zzahw()).zza(new zzcns(this.f13466i)).zzb(new zzbvi(zzbwz.zzfmx, null)).zza(new zzbma(this.f13464g)).zzb(new zzbkf(this.f13460c)).zzaee();
        }
        return zzaee;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void destroy() {
        synchronized (this) {
            Preconditions.checkMainThread("destroy must be called on the main UI thread.");
            if (this.f13467j != null) {
                this.f13467j.destroy();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final Bundle getAdMetadata() {
        Preconditions.checkMainThread("getAdMetadata must be called on the main UI thread.");
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final String getAdUnitId() {
        String zzaor;
        synchronized (this) {
            zzaor = this.f13465h.zzaor();
        }
        return zzaor;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final String getMediationAdapterClassName() {
        synchronized (this) {
            if (this.f13467j == null || this.f13467j.zzags() == null) {
                return null;
            }
            return this.f13467j.zzags().getMediationAdapterClassName();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final zzxb getVideoController() {
        synchronized (this) {
            Preconditions.checkMainThread("getVideoController must be called from the main thread.");
            if (this.f13467j == null) {
                return null;
            }
            return this.f13467j.getVideoController();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final boolean isLoading() {
        boolean z;
        synchronized (this) {
            if (this.f13468k != null) {
                if (!this.f13468k.isDone()) {
                    z = true;
                }
            }
            z = false;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final boolean isReady() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void pause() {
        synchronized (this) {
            Preconditions.checkMainThread("pause must be called on the main UI thread.");
            if (this.f13467j != null) {
                this.f13467j.zzagr().zzbv(null);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void resume() {
        synchronized (this) {
            Preconditions.checkMainThread("resume must be called on the main UI thread.");
            if (this.f13467j != null) {
                this.f13467j.zzagr().zzbw(null);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void setImmersiveMode(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void setManualImpressionsEnabled(boolean z) {
        synchronized (this) {
            Preconditions.checkMainThread("setManualImpressionsEnabled must be called from the main thread.");
            this.f13465h.zzbm(z);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void setUserId(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void showInterstitial() {
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void stopLoading() {
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzaak zzaakVar) {
        synchronized (this) {
            Preconditions.checkMainThread("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
            this.f13466i = zzaakVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzaoy zzaoyVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzape zzapeVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzaro zzaroVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzrg zzrgVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzuj zzujVar) {
        synchronized (this) {
            Preconditions.checkMainThread("setAdSize must be called on the main UI thread.");
            this.f13465h.zzd(zzujVar);
            if (this.f13467j != null) {
                this.f13467j.zza(this.f13460c, zzujVar);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzuo zzuoVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzvg zzvgVar) {
        Preconditions.checkMainThread("setAdListener must be called on the main UI thread.");
        this.f13462e.zzb(zzvgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzvh zzvhVar) {
        Preconditions.checkMainThread("setAdListener must be called on the main UI thread.");
        this.f13461d.zzc(zzvhVar);
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzvx zzvxVar) {
        Preconditions.checkMainThread("setAdMetadataListener must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzwc zzwcVar) {
        Preconditions.checkMainThread("setAppEventListener must be called on the main UI thread.");
        this.f13463f.zzb(zzwcVar);
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzwi zzwiVar) {
        synchronized (this) {
            Preconditions.checkMainThread("setCorrelationIdProvider must be called on the main UI thread");
            this.f13465h.zzc(zzwiVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzxh zzxhVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzyw zzywVar) {
        synchronized (this) {
            Preconditions.checkMainThread("setVideoOptions must be called on the main UI thread.");
            this.f13465h.zzc(zzywVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final boolean zza(zzug zzugVar) {
        synchronized (this) {
            Preconditions.checkMainThread("loadAd must be called on the main UI thread.");
            if (this.f13468k != null) {
                return false;
            }
            zzdad.zze(this.f13459b, zzugVar.zzccb);
            zzczu zzaos = this.f13465h.zzg(zzugVar).zzaos();
            if (!zzabe.zzcub.get().booleanValue() || !this.f13465h.zzjz().zzccs || this.f13461d == null) {
                zzblg a = m3718a(zzaos);
                this.f13468k = a.zzadc().zzaha();
                zzdgs.zza(this.f13468k, new C2297vc(this, a), this.f13458a.zzaca());
                return true;
            }
            this.f13461d.onAdFailedToLoad(1);
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbqt
    public final void zzahl() {
        boolean z;
        synchronized (this) {
            ViewParent parent = this.f13460c.getParent();
            if (!(parent instanceof View)) {
                z = false;
            } else {
                View view = (View) parent;
                z = zzq.zzkq().zza(view, view.getContext());
            }
            if (z) {
                zza(this.f13465h.zzaoq());
            } else {
                this.f13464g.zzdg(60);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zzbr(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final IObjectWrapper zzjx() {
        Preconditions.checkMainThread("destroy must be called on the main UI thread.");
        return ObjectWrapper.wrap(this.f13460c);
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zzjy() {
        synchronized (this) {
            Preconditions.checkMainThread("recordManualImpression must be called on the main UI thread.");
            if (this.f13467j != null) {
                this.f13467j.zzjy();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final zzuj zzjz() {
        synchronized (this) {
            Preconditions.checkMainThread("getAdSize must be called on the main UI thread.");
            if (this.f13467j != null) {
                return zzczy.zza(this.f13459b, Collections.singletonList(this.f13467j.zzafz()));
            }
            return this.f13465h.zzjz();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final String zzka() {
        synchronized (this) {
            if (this.f13467j == null || this.f13467j.zzags() == null) {
                return null;
            }
            return this.f13467j.zzags().getMediationAdapterClassName();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final zzxa zzkb() {
        synchronized (this) {
            if (!((Boolean) zzve.zzoy().zzd(zzzn.zzcrf)).booleanValue()) {
                return null;
            }
            if (this.f13467j == null) {
                return null;
            }
            return this.f13467j.zzags();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final zzwc zzkc() {
        return this.f13463f.zzamq();
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final zzvh zzkd() {
        return this.f13461d.zzamo();
    }
}
