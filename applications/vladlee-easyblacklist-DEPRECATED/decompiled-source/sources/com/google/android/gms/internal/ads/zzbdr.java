package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zza;
import com.google.android.gms.ads.internal.zzi;
import com.google.android.gms.ads.internal.zzq;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbdr.class */
public final class zzbdr {
    public static zzbdi zza(final Context context, final zzbey zzbeyVar, final String str, final boolean z, final boolean z2, final zzdq zzdqVar, final zzazb zzazbVar, zzaae zzaaeVar, final zzi zziVar, final zza zzaVar, final zzsm zzsmVar, final zzro zzroVar, final boolean z3) {
        zzzn.initialize(context);
        if (zzabl.zzcuv.get().booleanValue()) {
            return zzbfe.zza(context, zzbeyVar, str, z, z2, zzdqVar, zzazbVar, null, zziVar, zzaVar, zzsmVar, zzroVar, z3);
        }
        try {
            return (zzbdi) zzayc.zza(new zzden(context, zzbeyVar, str, z, z2, zzdqVar, zzazbVar, zziVar, zzaVar, zzsmVar, zzroVar, z3) { // from class: com.google.android.gms.internal.ads.ix

                /* renamed from: a */
                private final Context f8656a;

                /* renamed from: b */
                private final zzbey f8657b;

                /* renamed from: c */
                private final String f8658c;

                /* renamed from: d */
                private final boolean f8659d;

                /* renamed from: e */
                private final boolean f8660e;

                /* renamed from: f */
                private final zzdq f8661f;

                /* renamed from: g */
                private final zzazb f8662g;

                /* renamed from: h */
                private final zzaae f8663h = null;

                /* renamed from: i */
                private final zzi f8664i;

                /* renamed from: j */
                private final zza f8665j;

                /* renamed from: k */
                private final zzsm f8666k;

                /* renamed from: l */
                private final zzro f8667l;

                /* renamed from: m */
                private final boolean f8668m;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f8656a = context;
                    this.f8657b = zzbeyVar;
                    this.f8658c = str;
                    this.f8659d = z;
                    this.f8660e = z2;
                    this.f8661f = zzdqVar;
                    this.f8662g = zzazbVar;
                    this.f8664i = zziVar;
                    this.f8665j = zzaVar;
                    this.f8666k = zzsmVar;
                    this.f8667l = zzroVar;
                    this.f8668m = z3;
                }

                @Override // com.google.android.gms.internal.ads.zzden
                public final Object get() {
                    Context context2 = this.f8656a;
                    zzbey zzbeyVar2 = this.f8657b;
                    String str2 = this.f8658c;
                    boolean z4 = this.f8659d;
                    boolean z5 = this.f8660e;
                    zzdq zzdqVar2 = this.f8661f;
                    zzazb zzazbVar2 = this.f8662g;
                    zzaae zzaaeVar2 = this.f8663h;
                    zzi zziVar2 = this.f8664i;
                    zza zzaVar2 = this.f8665j;
                    zzsm zzsmVar2 = this.f8666k;
                    zzbdu zzbduVar = new zzbdu(ViewTreeObserver$OnGlobalLayoutListenerC1972jb.m4703a(context2, zzbeyVar2, str2, z4, zzdqVar2, zzazbVar2, zzaaeVar2, zziVar2, zzaVar2, zzsmVar2, this.f8667l, this.f8668m));
                    zzbduVar.setWebViewClient(zzq.zzks().zza(zzbduVar, zzsmVar2, z5));
                    zzbduVar.setWebChromeClient(new zzbda(zzbduVar));
                    return zzbduVar;
                }
            });
        } catch (Throwable th) {
            throw new zzbdv("Webview initialization failed.", th);
        }
    }

    public static zzdhe<zzbdi> zza(final Context context, final zzazb zzazbVar, final String str, final zzdq zzdqVar, final zza zzaVar) {
        return zzdgs.zzb(zzdgs.zzaj(null), new zzdgf(context, zzdqVar, zzazbVar, zzaVar, str) { // from class: com.google.android.gms.internal.ads.iv

            /* renamed from: a */
            private final Context f8650a;

            /* renamed from: b */
            private final zzdq f8651b;

            /* renamed from: c */
            private final zzazb f8652c;

            /* renamed from: d */
            private final zza f8653d;

            /* renamed from: e */
            private final String f8654e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8650a = context;
                this.f8651b = zzdqVar;
                this.f8652c = zzazbVar;
                this.f8653d = zzaVar;
                this.f8654e = str;
            }

            @Override // com.google.android.gms.internal.ads.zzdgf
            public final zzdhe zzf(Object obj) {
                Context context2 = this.f8650a;
                zzdq zzdqVar2 = this.f8651b;
                zzazb zzazbVar2 = this.f8652c;
                zza zzaVar2 = this.f8653d;
                String str2 = this.f8654e;
                zzq.zzkr();
                zzbdi zza = zzbdr.zza(context2, zzbey.zzabq(), "", false, false, zzdqVar2, zzazbVar2, null, null, zzaVar2, zzsm.zzmt(), null, false);
                final zzazi zzl = zzazi.zzl(zza);
                zza.zzaaa().zza(new zzbeu(zzl) { // from class: com.google.android.gms.internal.ads.iw

                    /* renamed from: a */
                    private final zzazi f8655a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f8655a = zzl;
                    }

                    @Override // com.google.android.gms.internal.ads.zzbeu
                    public final void zzak(boolean z) {
                        this.f8655a.zzxn();
                    }
                });
                zza.loadUrl(str2);
                return zzl;
            }
        }, zzazd.zzdwi);
    }
}
