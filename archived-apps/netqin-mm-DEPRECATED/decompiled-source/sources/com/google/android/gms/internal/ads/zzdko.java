package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.overlay.zzp;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzdko;
import java.util.concurrent.atomic.AtomicBoolean;
import p131c.p161d.p170b.p224d.p252g.p253a.C3597gw;
import p131c.p161d.p170b.p224d.p252g.p253a.C3634hw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdko.class */
public final class zzdko extends zzxf implements zzp, zzbwb, zzsc {

    /* renamed from: a */
    public final zzbix f27452a;

    /* renamed from: b */
    public final Context f27453b;

    /* renamed from: c */
    public AtomicBoolean f27454c = new AtomicBoolean();

    /* renamed from: d */
    public final String f27455d;

    /* renamed from: e */
    public final zzdkm f27456e;

    /* renamed from: f */
    public final zzdkc f27457f;

    /* renamed from: g */
    public long f27458g;

    /* renamed from: h */
    public zzbnh f27459h;

    /* renamed from: i */
    public zzboh f27460i;

    public zzdko(zzbix zzbixVar, Context context, String str, zzdkm zzdkmVar, zzdkc zzdkcVar) {
        this.f27452a = zzbixVar;
        this.f27453b = context;
        this.f27455d = str;
        this.f27456e = zzdkmVar;
        this.f27457f = zzdkcVar;
        zzdkcVar.m13544a((zzbwb) this);
        zzdkcVar.m13545a((zzp) this);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    /* renamed from: B1 */
    public final void mo13537B1() {
        m13530a2();
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: D1 */
    public final zzxk mo10970D1() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: G */
    public final Bundle mo10969G() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: Q0 */
    public final IObjectWrapper mo10968Q0() {
        return null;
    }

    /* renamed from: Q1 */
    public final void m13530a2() {
        synchronized (this) {
            if (this.f27454c.compareAndSet(false, true)) {
                this.f27457f.m13546a();
                if (this.f27459h != null) {
                    com.google.android.gms.ads.internal.zzp.m17966f().m11507b(this.f27459h);
                }
                if (this.f27460i != null) {
                    this.f27460i.m15239a(com.google.android.gms.ads.internal.zzp.m17962j().mo17092a() - this.f27458g);
                }
                destroy();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwb
    /* renamed from: T0 */
    public final void mo13535T0() {
        synchronized (this) {
            if (this.f27460i != null) {
                this.f27458g = com.google.android.gms.ads.internal.zzp.m17962j().mo17092a();
                int g = this.f27460i.m15236g();
                if (g > 0) {
                    zzbnh zzbnhVar = new zzbnh(this.f27452a.mo15393b(), com.google.android.gms.ads.internal.zzp.m17962j());
                    this.f27459h = zzbnhVar;
                    zzbnhVar.m15286a(g, new Runnable(this) { // from class: c.d.b.d.g.a.ew

                        /* renamed from: a */
                        public final zzdko f12863a;

                        {
                            this.f12863a = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f12863a.m13534T1();
                        }
                    });
                }
            }
        }
    }

    /* renamed from: T1 */
    public final /* synthetic */ void m13534T1() {
        this.f27452a.mo15396a().execute(new Runnable(this) { // from class: c.d.b.d.g.a.fw

            /* renamed from: a */
            public final zzdko f13003a;

            {
                this.f13003a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f13003a.m13530a2();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: V1 */
    public final void mo10967V1() {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: X0 */
    public final zzwt mo10966X0() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final String mo10965a() {
        synchronized (this) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10964a(zzaak zzaakVar) {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10963a(zzaby zzabyVar) {
        synchronized (this) {
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

    /* renamed from: a */
    public final void m13533a(zzboh zzbohVar) {
        zzbohVar.m15237a(this);
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10959a(zzsh zzshVar) {
        this.f27457f.m13541a(zzshVar);
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10958a(zzvn zzvnVar) {
        synchronized (this) {
            Preconditions.m17286a("setAdSize must be called on the main UI thread.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10957a(zzvs zzvsVar) {
        this.f27456e.m13553a(zzvsVar);
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10956a(zzwo zzwoVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10955a(zzxj zzxjVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10954a(zzxk zzxkVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10953a(zzxq zzxqVar) {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10952a(zzyi zzyiVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10951a(zzyu zzyuVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10949a(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: b */
    public final void mo10946b(zzwt zzwtVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: b */
    public final boolean mo10948b() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: b */
    public final boolean mo10947b(zzvg zzvgVar) throws RemoteException {
        synchronized (this) {
            Preconditions.m17286a("loadAd must be called on the main UI thread.");
            com.google.android.gms.ads.internal.zzp.m17969c();
            if (zzayu.m16078p(this.f27453b) && zzvgVar.f29019s == null) {
                zzbbq.m15856b("Failed to load the ad because app ID is missing.");
                this.f27457f.mo13335a(zzdpe.m13339a(zzdpg.APP_ID_MISSING, null, null));
                return false;
            } else if (mo10939n()) {
                return false;
            } else {
                this.f27454c = new AtomicBoolean();
                return this.f27456e.mo13489a(zzvgVar, this.f27455d, new C3634hw(this), new C3597gw(this));
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
            if (this.f27460i != null) {
                this.f27460i.mo14764a();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: f */
    public final void mo10944f(boolean z) {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: f2 */
    public final zzvn mo10943f2() {
        synchronized (this) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    public final String getAdUnitId() {
        String str;
        synchronized (this) {
            str = this.f27455d;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    public final zzyo getVideoController() {
        synchronized (this) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: i */
    public final void mo10942i(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: k0 */
    public final String mo10941k0() {
        synchronized (this) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: l */
    public final zzyn mo10940l() {
        synchronized (this) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: n */
    public final boolean mo10939n() {
        boolean n;
        synchronized (this) {
            n = this.f27456e.mo13485n();
        }
        return n;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onPause() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onResume() {
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    public final void pause() {
        synchronized (this) {
            Preconditions.m17286a("pause must be called on the main UI thread.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    public final void resume() {
        synchronized (this) {
            Preconditions.m17286a("resume must be called on the main UI thread.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    public final void showInterstitial() {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    /* renamed from: u1 */
    public final void mo13529u1() {
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: x1 */
    public final void mo10938x1() {
    }

    @Override // com.google.android.gms.internal.ads.zzsc
    /* renamed from: z0 */
    public final void mo11478z0() {
        m13530a2();
    }
}
