package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.zzo;
import com.google.android.gms.common.util.Clock;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbjd.class */
public final class zzbjd implements zzo, zzbpe, zzbph, zzps {

    /* renamed from: a */
    private final zzbiy f11954a;

    /* renamed from: b */
    private final zzbjb f11955b;

    /* renamed from: d */
    private final zzako<JSONObject, JSONObject> f11957d;

    /* renamed from: e */
    private final Executor f11958e;

    /* renamed from: f */
    private final Clock f11959f;

    /* renamed from: c */
    private final Set<zzbdi> f11956c = new HashSet();

    /* renamed from: g */
    private final AtomicBoolean f11960g = new AtomicBoolean(false);

    /* renamed from: h */
    private final zzbjf f11961h = new zzbjf();

    /* renamed from: i */
    private boolean f11962i = false;

    /* renamed from: j */
    private WeakReference<?> f11963j = new WeakReference<>(this);

    public zzbjd(zzakh zzakhVar, zzbjb zzbjbVar, Executor executor, zzbiy zzbiyVar, Clock clock) {
        this.f11954a = zzbiyVar;
        zzajy<JSONObject> zzajyVar = zzajx.zzdaq;
        this.f11957d = zzakhVar.zzb("google.afma.activeView.handleUpdate", zzajyVar, zzajyVar);
        this.f11955b = zzbjbVar;
        this.f11958e = executor;
        this.f11959f = clock;
    }

    /* renamed from: a */
    private final void m4041a() {
        for (zzbdi zzbdiVar : this.f11956c) {
            this.f11954a.zze(zzbdiVar);
        }
        this.f11954a.zzafm();
    }

    @Override // com.google.android.gms.internal.ads.zzbpe
    public final void onAdImpression() {
        synchronized (this) {
            if (this.f11960g.compareAndSet(false, true)) {
                this.f11954a.zza(this);
                zzafn();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void onPause() {
        synchronized (this) {
            this.f11961h.zzfco = true;
            zzafn();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void onResume() {
        synchronized (this) {
            this.f11961h.zzfco = false;
            zzafn();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzps
    public final void zza(zzpt zzptVar) {
        synchronized (this) {
            this.f11961h.zzbnq = zzptVar.zzbnq;
            this.f11961h.zzfcr = zzptVar;
            zzafn();
        }
    }

    public final void zzafn() {
        synchronized (this) {
            if (!(this.f11963j.get() != null)) {
                zzafp();
                return;
            }
            if (!this.f11962i && this.f11960g.get()) {
                try {
                    this.f11961h.timestamp = this.f11959f.elapsedRealtime();
                    final JSONObject zza = this.f11955b.zzj(this.f11961h);
                    for (final zzbdi zzbdiVar : this.f11956c) {
                        this.f11958e.execute(new Runnable(zzbdiVar, zza) { // from class: com.google.android.gms.internal.ads.kx

                            /* renamed from: a */
                            private final zzbdi f10150a;

                            /* renamed from: b */
                            private final JSONObject f10151b;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f10150a = zzbdiVar;
                                this.f10151b = zza;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f10150a.zza("AFMA_updateActiveView", this.f10151b);
                            }
                        });
                    }
                    zzazh.zzb(this.f11957d.zzf(zza), "ActiveViewListener.callActiveViewJs");
                } catch (Exception e) {
                    zzavs.zza("Failed to call ActiveViewJS", e);
                }
            }
        }
    }

    public final void zzafp() {
        synchronized (this) {
            m4041a();
            this.f11962i = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbph
    public final void zzbv(Context context) {
        synchronized (this) {
            this.f11961h.zzfco = true;
            zzafn();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbph
    public final void zzbw(Context context) {
        synchronized (this) {
            this.f11961h.zzfco = false;
            zzafn();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbph
    public final void zzbx(Context context) {
        synchronized (this) {
            this.f11961h.zzfcq = "u";
            zzafn();
            m4041a();
            this.f11962i = true;
        }
    }

    public final void zzf(zzbdi zzbdiVar) {
        synchronized (this) {
            this.f11956c.add(zzbdiVar);
            this.f11954a.zzd(zzbdiVar);
        }
    }

    public final void zzo(Object obj) {
        this.f11963j = new WeakReference<>(obj);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzte() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zztf() {
    }
}
