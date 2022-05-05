package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzq;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcrr.class */
public final class zzcrr implements zzcub<C2325wd> {

    /* renamed from: a */
    private final Context f13796a;

    /* renamed from: b */
    private final zzdhd f13797b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcrr(Context context, zzdhd zzdhdVar) {
        this.f13796a = context;
        this.f13797b = zzdhdVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ C2325wd m3700a() {
        zzq.zzkq();
        String zzaz = zzawb.zzaz(this.f13796a);
        String str = "";
        if (((Boolean) zzve.zzoy().zzd(zzzn.zzcpy)).booleanValue()) {
            str = this.f13796a.getSharedPreferences("mobileads_consent", 0).getString("fc_consent", "");
        }
        zzq.zzkq();
        return new C2325wd(zzaz, str, zzawb.zzba(this.f13796a), (byte) 0);
    }

    @Override // com.google.android.gms.internal.ads.zzcub
    public final zzdhe<C2325wd> zzanc() {
        return this.f13797b.zzd(new Callable(this) { // from class: com.google.android.gms.internal.ads.wc

            /* renamed from: a */
            private final zzcrr f10645a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10645a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f10645a.m3700a();
            }
        });
    }
}
