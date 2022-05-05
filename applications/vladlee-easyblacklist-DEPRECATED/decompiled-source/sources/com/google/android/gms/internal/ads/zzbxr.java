package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbxr.class */
public final class zzbxr {

    /* renamed from: a */
    private final Context f12673a;

    /* renamed from: b */
    private final zzcbn f12674b;

    /* renamed from: c */
    private final zzcaj f12675c;

    /* renamed from: d */
    private final zzbjq f12676d;

    /* renamed from: e */
    private final zzbxa f12677e;

    public zzbxr(Context context, zzcbn zzcbnVar, zzcaj zzcajVar, zzbjq zzbjqVar, zzbxa zzbxaVar) {
        this.f12673a = context;
        this.f12674b = zzcbnVar;
        this.f12675c = zzcajVar;
        this.f12676d = zzbjqVar;
        this.f12677e = zzbxaVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m3858a() {
        this.f12677e.zzaip();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m3857a(zzbdi zzbdiVar) {
        zzavs.zzey("Hiding native ads overlay.");
        zzbdiVar.getView().setVisibility(8);
        this.f12676d.zzbf(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m3856a(Map map) {
        HashMap hashMap = new HashMap();
        hashMap.put("messageType", "htmlLoaded");
        hashMap.put("id", (String) map.get("id"));
        this.f12675c.zza("sendMessageToNativeJs", hashMap);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final /* synthetic */ void m3855b(zzbdi zzbdiVar) {
        zzavs.zzey("Showing native ads overlay.");
        zzbdiVar.getView().setVisibility(0);
        this.f12676d.zzbf(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final /* synthetic */ void m3854b(Map map) {
        this.f12675c.zza("sendMessageToNativeJs", map);
    }

    public final View zzakj() {
        zzbdi zza = this.f12674b.zza(zzuj.zzg(this.f12673a), false);
        zza.getView().setVisibility(8);
        zza.zza("/sendMessageToSdk", new zzafn(this) { // from class: com.google.android.gms.internal.ads.of

            /* renamed from: a */
            private final zzbxr f10271a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10271a = this;
            }

            @Override // com.google.android.gms.internal.ads.zzafn
            public final void zza(Object obj, Map map) {
                this.f10271a.m3854b(map);
            }
        });
        zza.zza("/adMuted", new zzafn(this) { // from class: com.google.android.gms.internal.ads.oe

            /* renamed from: a */
            private final zzbxr f10270a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10270a = this;
            }

            @Override // com.google.android.gms.internal.ads.zzafn
            public final void zza(Object obj, Map map) {
                this.f10270a.m3858a();
            }
        });
        this.f12675c.zza(new WeakReference(zza), "/loadHtml", new zzafn(this) { // from class: com.google.android.gms.internal.ads.oh

            /* renamed from: a */
            private final zzbxr f10273a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10273a = this;
            }

            @Override // com.google.android.gms.internal.ads.zzafn
            public final void zza(Object obj, final Map map) {
                final zzbxr zzbxrVar = this.f10273a;
                zzbdi zzbdiVar = (zzbdi) obj;
                zzbdiVar.zzaaa().zza(new zzbeu(zzbxrVar, map) { // from class: com.google.android.gms.internal.ads.oi

                    /* renamed from: a */
                    private final zzbxr f10274a;

                    /* renamed from: b */
                    private final Map f10275b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f10274a = zzbxrVar;
                        this.f10275b = map;
                    }

                    @Override // com.google.android.gms.internal.ads.zzbeu
                    public final void zzak(boolean z) {
                        this.f10274a.m3856a(this.f10275b);
                    }
                });
                String str = (String) map.get("overlayHtml");
                String str2 = (String) map.get("baseUrl");
                if (TextUtils.isEmpty(str2)) {
                    zzbdiVar.loadData(str, "text/html", "UTF-8");
                } else {
                    zzbdiVar.loadDataWithBaseURL(str2, str, "text/html", "UTF-8", null);
                }
            }
        });
        this.f12675c.zza(new WeakReference(zza), "/showOverlay", new zzafn(this) { // from class: com.google.android.gms.internal.ads.og

            /* renamed from: a */
            private final zzbxr f10272a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10272a = this;
            }

            @Override // com.google.android.gms.internal.ads.zzafn
            public final void zza(Object obj, Map map) {
                this.f10272a.m3855b((zzbdi) obj);
            }
        });
        this.f12675c.zza(new WeakReference(zza), "/hideOverlay", new zzafn(this) { // from class: com.google.android.gms.internal.ads.oj

            /* renamed from: a */
            private final zzbxr f10276a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10276a = this;
            }

            @Override // com.google.android.gms.internal.ads.zzafn
            public final void zza(Object obj, Map map) {
                this.f10276a.m3857a((zzbdi) obj);
            }
        });
        return zza.getView();
    }
}
