package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzajf.class */
public final class zzajf extends zzazo<zzajq> {

    /* renamed from: a */
    private final Object f10947a = new Object();

    /* renamed from: b */
    private final zzajj f10948b;

    /* renamed from: c */
    private boolean f10949c;

    public zzajf(zzajj zzajjVar) {
        this.f10948b = zzajjVar;
    }

    public final void release() {
        synchronized (this.f10947a) {
            if (!this.f10949c) {
                this.f10949c = true;
                zza(new C1756bb(), new zzazm());
                zza(new C1755ba(this), new C1757bc(this));
            }
        }
    }
}
