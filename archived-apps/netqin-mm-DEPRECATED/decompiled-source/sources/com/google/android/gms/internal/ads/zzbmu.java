package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.zzp;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.internal.ads.zzbgj;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbmu.class */
public final class zzbmu implements zzp, zzbuy, zzbuz, zzqu {

    /* renamed from: a */
    public final zzbml f25194a;

    /* renamed from: b */
    public final zzbms f25195b;

    /* renamed from: d */
    public final zzamn<JSONObject, JSONObject> f25197d;

    /* renamed from: e */
    public final Executor f25198e;

    /* renamed from: f */
    public final Clock f25199f;

    /* renamed from: c */
    public final Set<zzbgj> f25196c = new HashSet();

    /* renamed from: g */
    public final AtomicBoolean f25200g = new AtomicBoolean(false);

    /* renamed from: h */
    public final zzbmw f25201h = new zzbmw();

    /* renamed from: i */
    public boolean f25202i = false;

    /* renamed from: j */
    public WeakReference<?> f25203j = new WeakReference<>(this);

    public zzbmu(zzamk zzamkVar, zzbms zzbmsVar, Executor executor, zzbml zzbmlVar, Clock clock) {
        this.f25194a = zzbmlVar;
        zzalx<JSONObject> zzalxVar = zzama.f24180b;
        this.f25197d = zzamkVar.m16656a("google.afma.activeView.handleUpdate", zzalxVar, zzalxVar);
        this.f25195b = zzbmsVar;
        this.f25198e = executor;
        this.f25199f = clock;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    /* renamed from: B1 */
    public final void mo13537B1() {
    }

    @Override // com.google.android.gms.internal.ads.zzbuz
    /* renamed from: M */
    public final void mo13728M() {
        synchronized (this) {
            if (this.f25200g.compareAndSet(false, true)) {
                this.f25194a.m15315a(this);
                m15305j();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbuy
    /* renamed from: a */
    public final void mo14003a(Context context) {
        synchronized (this) {
            this.f25201h.f25212d = "u";
            m15305j();
            m15304m();
            this.f25202i = true;
        }
    }

    /* renamed from: a */
    public final void m15307a(zzbgj zzbgjVar) {
        synchronized (this) {
            this.f25196c.add(zzbgjVar);
            this.f25194a.m15318a(zzbgjVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqu
    /* renamed from: a */
    public final void mo11534a(zzqr zzqrVar) {
        synchronized (this) {
            this.f25201h.f25209a = zzqrVar.f28889j;
            this.f25201h.f25213e = zzqrVar;
            m15305j();
        }
    }

    /* renamed from: a */
    public final void m15306a(Object obj) {
        this.f25203j = new WeakReference<>(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzbuy
    /* renamed from: c */
    public final void mo13999c(Context context) {
        synchronized (this) {
            this.f25201h.f25210b = false;
            m15305j();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbuy
    /* renamed from: d */
    public final void mo13998d(Context context) {
        synchronized (this) {
            this.f25201h.f25210b = true;
            m15305j();
        }
    }

    /* renamed from: j */
    public final void m15305j() {
        synchronized (this) {
            if (!(this.f25203j.get() != null)) {
                m15303n();
                return;
            }
            if (!this.f25202i && this.f25200g.get()) {
                try {
                    this.f25201h.f25211c = this.f25199f.mo17092a();
                    final JSONObject a = this.f25195b.mo15308b(this.f25201h);
                    for (final zzbgj zzbgjVar : this.f25196c) {
                        this.f25198e.execute(new Runnable(zzbgjVar, a) { // from class: c.d.b.d.g.a.hc

                            /* renamed from: a */
                            public final zzbgj f13445a;

                            /* renamed from: b */
                            public final JSONObject f13446b;

                            {
                                this.f13445a = zzbgjVar;
                                this.f13446b = a;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f13445a.mo15569b("AFMA_updateActiveView", this.f13446b);
                            }
                        });
                    }
                    zzbcc.m15836b(this.f25197d.mo13006d(a), "ActiveViewListener.callActiveViewJs");
                } catch (Exception e) {
                    zzayp.m16154e("Failed to call ActiveViewJS", e);
                }
            }
        }
    }

    /* renamed from: m */
    public final void m15304m() {
        for (zzbgj zzbgjVar : this.f25196c) {
            this.f25194a.m15313b(zzbgjVar);
        }
        this.f25194a.m15319a();
    }

    /* renamed from: n */
    public final void m15303n() {
        synchronized (this) {
            m15304m();
            this.f25202i = true;
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onPause() {
        synchronized (this) {
            this.f25201h.f25210b = true;
            m15305j();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onResume() {
        synchronized (this) {
            this.f25201h.f25210b = false;
            m15305j();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    /* renamed from: u1 */
    public final void mo13529u1() {
    }
}
