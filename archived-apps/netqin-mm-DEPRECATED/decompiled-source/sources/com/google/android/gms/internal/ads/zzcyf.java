package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.ads.internal.zzg;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcyf.class */
public final class zzcyf implements zzg {

    /* renamed from: a */
    public final zzbuc f26749a;

    /* renamed from: b */
    public final zzbuu f26750b;

    /* renamed from: c */
    public final zzcaf f26751c;

    /* renamed from: d */
    public final zzcae f26752d;

    /* renamed from: e */
    public final zzbmu f26753e;

    /* renamed from: f */
    public AtomicBoolean f26754f = new AtomicBoolean(false);

    public zzcyf(zzbuc zzbucVar, zzbuu zzbuuVar, zzcaf zzcafVar, zzcae zzcaeVar, zzbmu zzbmuVar) {
        this.f26749a = zzbucVar;
        this.f26750b = zzbuuVar;
        this.f26751c = zzcafVar;
        this.f26752d = zzcaeVar;
        this.f26753e = zzbmuVar;
    }

    @Override // com.google.android.gms.ads.internal.zzg
    /* renamed from: a */
    public final void mo13764a() {
        if (this.f26754f.get()) {
            this.f26750b.m15032M();
            this.f26751c.m14864q();
        }
    }

    @Override // com.google.android.gms.ads.internal.zzg
    /* renamed from: a */
    public final void mo13763a(View view) {
        synchronized (this) {
            if (this.f26754f.compareAndSet(false, true)) {
                this.f26753e.mo13728M();
                this.f26752d.m14866a(view);
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.zzg
    /* renamed from: b */
    public final void mo13761b() {
        if (this.f26754f.get()) {
            this.f26749a.onAdClicked();
        }
    }
}
