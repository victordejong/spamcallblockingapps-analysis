package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.internal.ads.um */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/um.class */
final class C2280um implements zzbth {

    /* renamed from: a */
    final /* synthetic */ zzcms f10576a;

    /* renamed from: b */
    private final /* synthetic */ zzczt f10577b;

    /* renamed from: c */
    private final /* synthetic */ zzczl f10578c;

    /* renamed from: d */
    private final /* synthetic */ zzcip f10579d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2280um(zzcms zzcmsVar, zzczt zzcztVar, zzczl zzczlVar, zzcip zzcipVar) {
        this.f10576a = zzcmsVar;
        this.f10577b = zzcztVar;
        this.f10578c = zzczlVar;
        this.f10579d = zzcipVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbth
    public final void onInitializationSucceeded() {
        Executor executor;
        executor = this.f10576a.f13375b;
        final zzczt zzcztVar = this.f10577b;
        final zzczl zzczlVar = this.f10578c;
        final zzcip zzcipVar = this.f10579d;
        executor.execute(new Runnable(this, zzcztVar, zzczlVar, zzcipVar) { // from class: com.google.android.gms.internal.ads.ul

            /* renamed from: a */
            private final C2280um f10572a;

            /* renamed from: b */
            private final zzczt f10573b;

            /* renamed from: c */
            private final zzczl f10574c;

            /* renamed from: d */
            private final zzcip f10575d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10572a = this;
                this.f10573b = zzcztVar;
                this.f10574c = zzczlVar;
                this.f10575d = zzcipVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzcms.m3732b(this.f10573b, this.f10574c, this.f10575d);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbth
    public final void zzdh(int i) {
        String valueOf = String.valueOf(this.f10579d.zzfge);
        zzavs.zzez(valueOf.length() != 0 ? "Fail to initialize adapter ".concat(valueOf) : new String("Fail to initialize adapter "));
    }
}
