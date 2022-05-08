package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzq;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.qy */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/qy.class */
public final class C2184qy implements zzdgt<String> {

    /* renamed from: a */
    final /* synthetic */ zzceq f10393a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2184qy(zzceq zzceqVar) {
        this.f10393a = zzceqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdgt
    public final /* synthetic */ void onSuccess(@Nullable String str) {
        long j;
        Executor executor;
        final String str2 = str;
        synchronized (this) {
            this.f10393a.f13050b = true;
            zzceq zzceqVar = this.f10393a;
            long elapsedRealtime = zzq.zzkx().elapsedRealtime();
            j = this.f10393a.f13051c;
            zzceqVar.m3794a("com.google.android.gms.ads.MobileAds", true, "", (int) (elapsedRealtime - j));
            executor = this.f10393a.f13056h;
            executor.execute(new Runnable(this, str2) { // from class: com.google.android.gms.internal.ads.rc

                /* renamed from: a */
                private final C2184qy f10402a;

                /* renamed from: b */
                private final String f10403b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f10402a = this;
                    this.f10403b = str2;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    C2184qy qyVar = this.f10402a;
                    zzceq.m3798a(qyVar.f10393a, this.f10403b);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdgt
    public final void zzb(Throwable th) {
        long j;
        zzazl zzazlVar;
        synchronized (this) {
            this.f10393a.f13050b = true;
            zzceq zzceqVar = this.f10393a;
            long elapsedRealtime = zzq.zzkx().elapsedRealtime();
            j = this.f10393a.f13051c;
            zzceqVar.m3794a("com.google.android.gms.ads.MobileAds", false, "Internal Error.", (int) (elapsedRealtime - j));
            zzazlVar = this.f10393a.f13052d;
            zzazlVar.setException(new Exception());
        }
    }
}
