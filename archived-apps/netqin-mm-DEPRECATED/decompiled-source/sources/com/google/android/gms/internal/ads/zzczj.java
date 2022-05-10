package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbtp;
import com.google.android.gms.internal.ads.zzbys;
import java.util.Collections;
import p131c.p161d.p170b.p224d.p252g.p253a.C3481dr;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzczj.class */
public final class zzczj extends zzxf implements zzbwo {

    /* renamed from: a */
    public final zzbix f26804a;

    /* renamed from: b */
    public final Context f26805b;

    /* renamed from: c */
    public final ViewGroup f26806c;

    /* renamed from: h */
    public final zzbwk f26811h;

    /* renamed from: i */
    public zzvn f26812i;

    /* renamed from: k */
    public zzaby f26814k;

    /* renamed from: l */
    public zzboq f26815l;

    /* renamed from: m */
    public zzdzc<zzboq> f26816m;

    /* renamed from: d */
    public final zzczs f26807d = new zzczs();

    /* renamed from: e */
    public final zzczp f26808e = new zzczp();

    /* renamed from: f */
    public final zzczr f26809f = new zzczr();

    /* renamed from: g */
    public final zzczn f26810g = new zzczn();

    /* renamed from: j */
    public final zzdom f26813j = new zzdom();

    public zzczj(zzbix zzbixVar, Context context, zzvn zzvnVar, String str) {
        this.f26806c = new FrameLayout(context);
        this.f26804a = zzbixVar;
        this.f26805b = context;
        zzdom zzdomVar = this.f26813j;
        zzdomVar.m13432a(zzvnVar);
        zzdomVar.m13429a(str);
        zzbwk e = zzbixVar.mo15387e();
        this.f26811h = e;
        e.m14939a(this, this.f26804a.mo15396a());
        this.f26812i = zzvnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: D1 */
    public final zzxk mo10970D1() {
        return this.f26809f.m13731a();
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: G */
    public final Bundle mo10969G() {
        Preconditions.m17286a("getAdMetadata must be called on the main UI thread.");
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: Q0 */
    public final IObjectWrapper mo10968Q0() {
        Preconditions.m17286a("destroy must be called on the main UI thread.");
        return ObjectWrapper.m17020a(this.f26806c);
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: V1 */
    public final void mo10967V1() {
        synchronized (this) {
            Preconditions.m17286a("recordManualImpression must be called on the main UI thread.");
            if (this.f26815l != null) {
                this.f26815l.mo15192l();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: X0 */
    public final zzwt mo10966X0() {
        return this.f26807d.m13727a();
    }

    /* renamed from: a */
    public final zzbpm m13744a(zzdok zzdokVar) {
        synchronized (this) {
            if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23795c4)).booleanValue()) {
                zzbpl h = this.f26804a.mo15381h();
                zzbtp.zza zzaVar = new zzbtp.zza();
                zzaVar.m15065a(this.f26805b);
                zzaVar.m15061a(zzdokVar);
                return h.mo15209c(zzaVar.m15066a()).mo15212a(new zzbys.zza().m14923a()).mo15210b(new zzcyn(this.f26814k)).mo15211a(new zzccw(zzcep.f25876h, null)).mo15213a(new zzbqh(this.f26811h)).mo15214a(new zzbol(this.f26806c)).mo15208e();
            }
            zzbpl h2 = this.f26804a.mo15381h();
            zzbtp.zza zzaVar2 = new zzbtp.zza();
            zzaVar2.m15065a(this.f26805b);
            zzaVar2.m15061a(zzdokVar);
            zzbpl c = h2.mo15209c(zzaVar2.m15066a());
            zzbys.zza zzaVar3 = new zzbys.zza();
            zzaVar3.m14910a((zzux) this.f26807d, this.f26804a.mo15396a());
            zzaVar3.m14910a(this.f26808e, this.f26804a.mo15396a());
            zzaVar3.m14919a((zzbuh) this.f26807d, this.f26804a.mo15396a());
            zzaVar3.m14915a((zzbvs) this.f26807d, this.f26804a.mo15396a());
            zzaVar3.m14918a((zzbui) this.f26807d, this.f26804a.mo15396a());
            zzaVar3.m14922a(this.f26809f, this.f26804a.mo15396a());
            zzaVar3.m14913a(this.f26810g, this.f26804a.mo15396a());
            return c.mo15212a(zzaVar3.m14923a()).mo15210b(new zzcyn(this.f26814k)).mo15211a(new zzccw(zzcep.f25876h, null)).mo15213a(new zzbqh(this.f26811h)).mo15214a(new zzbol(this.f26806c)).mo15208e();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final String mo10965a() {
        synchronized (this) {
            if (this.f26815l == null || this.f26815l.m15166d() == null) {
                return null;
            }
            return this.f26815l.m15166d().mo11114a();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10964a(zzaak zzaakVar) {
        synchronized (this) {
            Preconditions.m17286a("setVideoOptions must be called on the main UI thread.");
            this.f26813j.m13438a(zzaakVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10963a(zzaby zzabyVar) {
        synchronized (this) {
            Preconditions.m17286a("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
            this.f26814k = zzabyVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10962a(zzari zzariVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10961a(zzaro zzaroVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10960a(zzaug zzaugVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10959a(zzsh zzshVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10958a(zzvn zzvnVar) {
        synchronized (this) {
            Preconditions.m17286a("setAdSize must be called on the main UI thread.");
            this.f26813j.m13432a(zzvnVar);
            this.f26812i = zzvnVar;
            if (this.f26815l != null) {
                this.f26815l.mo15199a(this.f26806c, zzvnVar);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10957a(zzvs zzvsVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10956a(zzwo zzwoVar) {
        Preconditions.m17286a("setAdListener must be called on the main UI thread.");
        this.f26808e.m13732a(zzwoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10955a(zzxj zzxjVar) {
        Preconditions.m17286a("setAdMetadataListener must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10954a(zzxk zzxkVar) {
        Preconditions.m17286a("setAppEventListener must be called on the main UI thread.");
        this.f26809f.m13730a(zzxkVar);
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10953a(zzxq zzxqVar) {
        synchronized (this) {
            Preconditions.m17286a("setCorrelationIdProvider must be called on the main UI thread");
            this.f26813j.m13430a(zzxqVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10952a(zzyi zzyiVar) {
        Preconditions.m17286a("setPaidEventListener must be called on the main UI thread.");
        this.f26810g.m13733a(zzyiVar);
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10951a(zzyu zzyuVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10949a(boolean z) {
    }

    /* renamed from: b */
    public final void m13742b(zzvn zzvnVar) {
        synchronized (this) {
            this.f26813j.m13432a(zzvnVar);
            this.f26813j.m13427a(this.f26812i.f29048n);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: b */
    public final void mo10946b(zzwt zzwtVar) {
        Preconditions.m17286a("setAdListener must be called on the main UI thread.");
        this.f26807d.m13726a(zzwtVar);
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: b */
    public final boolean mo10948b() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: b */
    public final boolean mo10947b(zzvg zzvgVar) {
        boolean c;
        synchronized (this) {
            m13742b(this.f26812i);
            c = m13740c(zzvgVar);
        }
        return c;
    }

    /* renamed from: c */
    public final boolean m13740c(zzvg zzvgVar) {
        synchronized (this) {
            Preconditions.m17286a("loadAd must be called on the main UI thread.");
            zzp.m17969c();
            if (zzayu.m16078p(this.f26805b) && zzvgVar.f29019s == null) {
                zzbbq.m15856b("Failed to load the ad because app ID is missing.");
                if (this.f26807d != null) {
                    this.f26807d.mo13335a(zzdpe.m13339a(zzdpg.APP_ID_MISSING, null, null));
                }
                return false;
            } else if (this.f26816m != null) {
                return false;
            } else {
                zzdox.m13386a(this.f26805b, zzvgVar.f29006f);
                zzdom zzdomVar = this.f26813j;
                zzdomVar.m13433a(zzvgVar);
                zzdok d = zzdomVar.m13420d();
                if (!zzacx.f23997b.mo16862a().booleanValue() || !this.f26813j.m13416f().f29045k || this.f26807d == null) {
                    zzbpm a = m13744a(d);
                    zzdzc<zzboq> b = a.mo15207a().m15123b();
                    this.f26816m = b;
                    zzdyq.m12991a(b, new C3481dr(this, a), this.f26804a.mo15396a());
                    return true;
                }
                this.f26807d.mo13335a(zzdpe.m13339a(zzdpg.INVALID_AD_SIZE, null, null));
                return false;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: d */
    public final void mo10945d(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    public final void destroy() {
        synchronized (this) {
            Preconditions.m17286a("destroy must be called on the main UI thread.");
            if (this.f26815l != null) {
                this.f26815l.mo14764a();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: f */
    public final void mo10944f(boolean z) {
        synchronized (this) {
            Preconditions.m17286a("setManualImpressionsEnabled must be called from the main thread.");
            this.f26813j.m13423b(z);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: f2 */
    public final zzvn mo10943f2() {
        synchronized (this) {
            Preconditions.m17286a("getAdSize must be called on the main UI thread.");
            if (this.f26815l != null) {
                return zzdoq.m13403a(this.f26805b, Collections.singletonList(this.f26815l.mo15196h()));
            }
            return this.f26813j.m13416f();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwo
    /* renamed from: g1 */
    public final void mo13735g1() {
        boolean z;
        synchronized (this) {
            ViewParent parent = this.f26806c.getParent();
            if (!(parent instanceof View)) {
                z = false;
            } else {
                View view = (View) parent;
                z = zzp.m17969c().m16130a(view, view.getContext());
            }
            if (z) {
                zzvn f = this.f26813j.m13416f();
                zzvn zzvnVar = f;
                if (this.f26815l != null) {
                    zzvnVar = f;
                    if (this.f26815l.mo15194j() != null) {
                        zzvnVar = f;
                        if (this.f26813j.m13418e()) {
                            zzvnVar = zzdoq.m13403a(this.f26805b, Collections.singletonList(this.f26815l.mo15194j()));
                        }
                    }
                }
                m13742b(zzvnVar);
                m13740c(this.f26813j.m13441a());
                return;
            }
            this.f26811h.m14978b(60);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    public final String getAdUnitId() {
        String b;
        synchronized (this) {
            b = this.f26813j.m13426b();
        }
        return b;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    public final zzyo getVideoController() {
        synchronized (this) {
            Preconditions.m17286a("getVideoController must be called from the main thread.");
            if (this.f26815l == null) {
                return null;
            }
            return this.f26815l.mo15197g();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: i */
    public final void mo10942i(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: k0 */
    public final String mo10941k0() {
        synchronized (this) {
            if (this.f26815l == null || this.f26815l.m15166d() == null) {
                return null;
            }
            return this.f26815l.m15166d().mo11114a();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: l */
    public final zzyn mo10940l() {
        synchronized (this) {
            if (!((Boolean) zzwm.m11166e().m16921a(zzabb.f23697J3)).booleanValue()) {
                return null;
            }
            if (this.f26815l == null) {
                return null;
            }
            return this.f26815l.m15166d();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: n */
    public final boolean mo10939n() {
        boolean z;
        synchronized (this) {
            if (this.f26816m != null) {
                if (!this.f26816m.isDone()) {
                    z = true;
                }
            }
            z = false;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    public final void pause() {
        synchronized (this) {
            Preconditions.m17286a("pause must be called on the main UI thread.");
            if (this.f26815l != null) {
                this.f26815l.m15167c().m15030a((Context) null);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    public final void resume() {
        synchronized (this) {
            Preconditions.m17286a("resume must be called on the main UI thread.");
            if (this.f26815l != null) {
                this.f26815l.m15167c().m15028c(null);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    public final void showInterstitial() {
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: x1 */
    public final void mo10938x1() {
    }
}
