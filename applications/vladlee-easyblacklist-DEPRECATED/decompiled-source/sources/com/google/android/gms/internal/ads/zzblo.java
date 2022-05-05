package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzblo.class */
public final class zzblo extends zzbkk {

    /* renamed from: c */
    private final zzaea f12099c;

    /* renamed from: d */
    private final Runnable f12100d;

    /* renamed from: e */
    private final Executor f12101e;

    public zzblo(zzbmg zzbmgVar, zzaea zzaeaVar, Runnable runnable, Executor executor) {
        super(zzbmgVar);
        this.f12099c = zzaeaVar;
        this.f12100d = runnable;
        this.f12101e = executor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m4036a(Runnable runnable) {
        try {
            if (!this.f12099c.zzm(ObjectWrapper.wrap(runnable))) {
                runnable.run();
            }
        } catch (RemoteException e) {
            runnable.run();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbkk
    public final zzxb getVideoController() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbkk
    public final void zza(ViewGroup viewGroup, zzuj zzujVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbkk
    public final zzczk zzafz() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbkk
    public final View zzaga() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbkk
    public final int zzage() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzbmd
    public final void zzagf() {
        final AtomicReference atomicReference = new AtomicReference(this.f12100d);
        final Runnable leVar = new Runnable(atomicReference) { // from class: com.google.android.gms.internal.ads.le

            /* renamed from: a */
            private final AtomicReference f10171a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10171a = atomicReference;
            }

            @Override // java.lang.Runnable
            public final void run() {
                Runnable runnable = (Runnable) this.f10171a.getAndSet(null);
                if (runnable != null) {
                    runnable.run();
                }
            }
        };
        this.f12101e.execute(new Runnable(this, leVar) { // from class: com.google.android.gms.internal.ads.lf

            /* renamed from: a */
            private final zzblo f10172a;

            /* renamed from: b */
            private final Runnable f10173b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10172a = this;
                this.f10173b = leVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f10172a.m4036a(this.f10173b);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbkk
    public final void zzjy() {
    }
}
