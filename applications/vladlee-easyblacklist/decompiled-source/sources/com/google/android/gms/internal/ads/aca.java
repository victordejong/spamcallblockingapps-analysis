package com.google.android.gms.internal.ads;

import java.util.concurrent.Future;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aca.class */
public final class aca implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zzdhe f7194a;

    /* renamed from: b */
    private final /* synthetic */ int f7195b;

    /* renamed from: c */
    private final /* synthetic */ acb f7196c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aca(acb acbVar, zzdhe zzdheVar, int i) {
        this.f7196c = acbVar;
        this.f7194a = zzdheVar;
        this.f7195b = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            if (this.f7194a.isCancelled()) {
                this.f7196c.f7198b = null;
                this.f7196c.cancel(false);
            } else {
                this.f7196c.m5485a(this.f7195b, (Future) this.f7194a);
            }
        } finally {
            acb.m5482a(this.f7196c, (zzdet) null);
        }
    }
}
