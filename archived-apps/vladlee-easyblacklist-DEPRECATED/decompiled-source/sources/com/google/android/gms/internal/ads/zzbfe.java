package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zza;
import com.google.android.gms.ads.internal.zzi;
import com.google.android.gms.ads.internal.zzq;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbfe.class */
public final class zzbfe {
    public static zzbdi zza(final Context context, final zzbey zzbeyVar, final String str, final boolean z, final boolean z2, final zzdq zzdqVar, final zzazb zzazbVar, zzaae zzaaeVar, final zzi zziVar, final zza zzaVar, final zzsm zzsmVar, final zzro zzroVar, final boolean z3) {
        try {
            return (zzbdi) zzayc.zza(new zzden(context, zzbeyVar, str, z, z2, zzdqVar, zzazbVar, zziVar, zzaVar, zzsmVar, zzroVar, z3) { // from class: com.google.android.gms.internal.ads.jn

                /* renamed from: a */
                private final Context f8784a;

                /* renamed from: b */
                private final zzbey f8785b;

                /* renamed from: c */
                private final String f8786c;

                /* renamed from: d */
                private final boolean f8787d;

                /* renamed from: e */
                private final boolean f8788e;

                /* renamed from: f */
                private final zzdq f8789f;

                /* renamed from: g */
                private final zzazb f8790g;

                /* renamed from: h */
                private final zzaae f8791h = null;

                /* renamed from: i */
                private final zzi f8792i;

                /* renamed from: j */
                private final zza f8793j;

                /* renamed from: k */
                private final zzsm f8794k;

                /* renamed from: l */
                private final zzro f8795l;

                /* renamed from: m */
                private final boolean f8796m;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f8784a = context;
                    this.f8785b = zzbeyVar;
                    this.f8786c = str;
                    this.f8787d = z;
                    this.f8788e = z2;
                    this.f8789f = zzdqVar;
                    this.f8790g = zzazbVar;
                    this.f8792i = zziVar;
                    this.f8793j = zzaVar;
                    this.f8794k = zzsmVar;
                    this.f8795l = zzroVar;
                    this.f8796m = z3;
                }

                @Override // com.google.android.gms.internal.ads.zzden
                public final Object get() {
                    Context context2 = this.f8784a;
                    zzbey zzbeyVar2 = this.f8785b;
                    String str2 = this.f8786c;
                    boolean z4 = this.f8787d;
                    boolean z5 = this.f8788e;
                    zzdq zzdqVar2 = this.f8789f;
                    zzazb zzazbVar2 = this.f8790g;
                    zzaae zzaaeVar2 = this.f8791h;
                    zzi zziVar2 = this.f8792i;
                    zza zzaVar2 = this.f8793j;
                    zzsm zzsmVar2 = this.f8794k;
                    zzro zzroVar2 = this.f8795l;
                    boolean z6 = this.f8796m;
                    zzbfb zzbfbVar = new zzbfb();
                    ViewTreeObserver$OnGlobalLayoutListenerC1983jm jmVar = new ViewTreeObserver$OnGlobalLayoutListenerC1983jm(new zzbez(context2), zzbfbVar, zzbeyVar2, str2, z4, zzdqVar2, zzazbVar2, zzaaeVar2, zziVar2, zzaVar2, zzsmVar2, zzroVar2, z6);
                    zzbdu zzbduVar = new zzbdu(jmVar);
                    jmVar.setWebChromeClient(new zzbda(zzbduVar));
                    zzbfbVar.m4100a(zzbduVar, z5);
                    return zzbduVar;
                }
            });
        } catch (Throwable th) {
            zzq.zzku().zza(th, "AdWebViewFactory.newAdWebView2");
            throw new zzbdv("Webview initialization failed.", th);
        }
    }
}
