package com.google.android.gms.internal.ads;

import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzajj.class */
public final class zzajj extends zzazo<zzaif> {

    /* renamed from: b */
    private zzaxh<zzaif> f10951b;

    /* renamed from: a */
    private final Object f10950a = new Object();

    /* renamed from: c */
    private boolean f10952c = false;

    /* renamed from: d */
    private int f10953d = 0;

    public zzajj(zzaxh<zzaif> zzaxhVar) {
        this.f10951b = zzaxhVar;
    }

    /* renamed from: b */
    private final void m4380b() {
        synchronized (this.f10950a) {
            Preconditions.checkState(this.f10953d >= 0);
            if (!this.f10952c || this.f10953d != 0) {
                zzavs.zzed("There are still references to the engine. Not destroying.");
            } else {
                zzavs.zzed("No reference is left (including root). Cleaning up engine.");
                zza(new C1761bg(this), new zzazm());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void m4382a() {
        synchronized (this.f10950a) {
            Preconditions.checkState(this.f10953d > 0);
            zzavs.zzed("Releasing 1 reference for JS Engine");
            this.f10953d--;
            m4380b();
        }
    }

    public final zzajf zzsc() {
        zzajf zzajfVar = new zzajf(this);
        synchronized (this.f10950a) {
            zza(new C1759be(zzajfVar), new C1758bd(zzajfVar));
            Preconditions.checkState(this.f10953d >= 0);
            this.f10953d++;
        }
        return zzajfVar;
    }

    public final void zzse() {
        synchronized (this.f10950a) {
            Preconditions.checkState(this.f10953d >= 0);
            zzavs.zzed("Releasing root reference. JS Engine will be destroyed once other references are released.");
            this.f10952c = true;
            m4380b();
        }
    }
}
