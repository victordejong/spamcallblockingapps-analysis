package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzq;
import java.util.Set;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcss.class */
public final class zzcss implements zzcub<zzcst> {

    /* renamed from: a */
    private final zzdhd f13825a;

    /* renamed from: b */
    private final Context f13826b;

    /* renamed from: c */
    private final Set<String> f13827c;

    public zzcss(zzdhd zzdhdVar, Context context, Set<String> set) {
        this.f13825a = zzdhdVar;
        this.f13826b = context;
        this.f13827c = set;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ zzcst m3696a() {
        return (!((Boolean) zzve.zzoy().zzd(zzzn.zzcoc)).booleanValue() || !zzcst.m3695a(this.f13827c)) ? new zzcst(null) : new zzcst(zzq.zzlf().getVersion(this.f13826b));
    }

    @Override // com.google.android.gms.internal.ads.zzcub
    public final zzdhe<zzcst> zzanc() {
        return this.f13825a.zzd(new Callable(this) { // from class: com.google.android.gms.internal.ads.wn

            /* renamed from: a */
            private final zzcss f10659a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10659a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f10659a.m3696a();
            }
        });
    }
}
