package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import com.google.android.gms.ads.internal.overlay.zzd;
import com.google.android.gms.ads.internal.zzc;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.internal.ads.zzbei;
import com.google.android.gms.internal.ads.zzbel;
import com.google.android.gms.internal.ads.zzbep;
import com.google.android.gms.internal.ads.zzbeq;
import com.google.android.gms.internal.ads.zzbes;
import java.net.URISyntaxException;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzafr.class */
public final class zzafr<T extends zzbei & zzbel & zzbep & zzbeq & zzbes> implements zzafn<T> {

    /* renamed from: a */
    private final zzc f10890a;

    /* renamed from: b */
    private final zzaoe f10891b;

    public zzafr(zzc zzcVar, zzaoe zzaoeVar) {
        this.f10890a = zzcVar;
        this.f10891b = zzaoeVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static Uri m4422a(Context context, zzdq zzdqVar, Uri uri, View view, Activity activity) {
        if (zzdqVar == null) {
            return uri;
        }
        Uri uri2 = uri;
        try {
            if (zzdqVar.zzc(uri)) {
                uri2 = zzdqVar.zza(uri, context, view, activity);
            }
        } catch (zzdt e) {
            uri2 = uri;
        } catch (Exception e2) {
            zzq.zzku().zza(e2, "OpenGmsgHandler.maybeAddClickSignalsToUri");
            uri2 = uri;
        }
        return uri2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static Uri m4421a(Uri uri) {
        try {
            if (uri.getQueryParameter("aclk_ms") != null) {
                return uri.buildUpon().appendQueryParameter("aclk_upms", String.valueOf(SystemClock.uptimeMillis())).build();
            }
        } catch (UnsupportedOperationException e) {
            String valueOf = String.valueOf(uri.toString());
            zzavs.zzc(valueOf.length() != 0 ? "Error adding click uptime parameter to url: ".concat(valueOf) : new String("Error adding click uptime parameter to url: "), e);
        }
        return uri;
    }

    /* renamed from: a */
    private final void m4419a(boolean z) {
        zzaoe zzaoeVar = this.f10891b;
        if (zzaoeVar != null) {
            zzaoeVar.zzac(z);
        }
    }

    /* renamed from: a */
    private static boolean m4420a(Map<String, String> map) {
        return "1".equals(map.get("custom_close"));
    }

    /* renamed from: b */
    private static int m4418b(Map<String, String> map) {
        String str = map.get("o");
        if (str == null) {
            return -1;
        }
        if ("p".equalsIgnoreCase(str)) {
            zzq.zzks();
            return 7;
        } else if ("l".equalsIgnoreCase(str)) {
            zzq.zzks();
            return 6;
        } else if ("c".equalsIgnoreCase(str)) {
            return zzq.zzks().zzwo();
        } else {
            return -1;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final /* synthetic */ void zza(Object obj, Map map) {
        zzbei zzbeiVar = (zzbei) obj;
        String zzb = zzauk.zzb((String) map.get("u"), zzbeiVar.getContext(), true);
        String str = (String) map.get("a");
        if (str == null) {
            zzavs.zzez("Action missing from an open GMSG.");
            return;
        }
        zzc zzcVar = this.f10890a;
        if (zzcVar != null && !zzcVar.zzjq()) {
            this.f10890a.zzbq(zzb);
        } else if ("expand".equalsIgnoreCase(str)) {
            if (((zzbel) zzbeiVar).zzaaf()) {
                zzavs.zzez("Cannot expand WebView that is already expanded.");
                return;
            }
            m4419a(false);
            ((zzbep) zzbeiVar).zzc(m4420a(map), m4418b(map));
        } else if ("webapp".equalsIgnoreCase(str)) {
            m4419a(false);
            zzbep zzbepVar = (zzbep) zzbeiVar;
            boolean a = m4420a(map);
            if (zzb != null) {
                zzbepVar.zza(a, m4418b(map), zzb);
            } else {
                zzbepVar.zza(a, m4418b(map), (String) map.get("html"), (String) map.get("baseurl"));
            }
        } else if (!"app".equalsIgnoreCase(str) || !"true".equalsIgnoreCase((String) map.get("system_browser"))) {
            m4419a(true);
            String str2 = (String) map.get("intent_url");
            Intent intent = null;
            if (!TextUtils.isEmpty(str2)) {
                try {
                    intent = Intent.parseUri(str2, 0);
                } catch (URISyntaxException e) {
                    String valueOf = String.valueOf(str2);
                    zzavs.zzc(valueOf.length() != 0 ? "Error parsing the url: ".concat(valueOf) : new String("Error parsing the url: "), e);
                    intent = null;
                }
            }
            if (!(intent == null || intent.getData() == null)) {
                Uri data = intent.getData();
                if (!Uri.EMPTY.equals(data)) {
                    intent.setData(m4421a(m4422a(zzbeiVar.getContext(), ((zzbeq) zzbeiVar).zzaad(), data, ((zzbes) zzbeiVar).getView(), zzbeiVar.zzyn())));
                }
            }
            if (intent != null) {
                ((zzbep) zzbeiVar).zza(new zzd(intent));
                return;
            }
            String str3 = zzb;
            if (!TextUtils.isEmpty(zzb)) {
                str3 = m4421a(m4422a(zzbeiVar.getContext(), ((zzbeq) zzbeiVar).zzaad(), Uri.parse(zzb), ((zzbes) zzbeiVar).getView(), zzbeiVar.zzyn())).toString();
            }
            ((zzbep) zzbeiVar).zza(new zzd((String) map.get("i"), str3, (String) map.get("m"), (String) map.get("p"), (String) map.get("c"), (String) map.get("f"), (String) map.get("e")));
        } else {
            m4419a(true);
            if (TextUtils.isEmpty(zzb)) {
                zzavs.zzez("Destination url cannot be empty.");
                return;
            }
            try {
                ((zzbep) zzbeiVar).zza(new zzd(new zzafu(zzbeiVar.getContext(), ((zzbeq) zzbeiVar).zzaad(), ((zzbes) zzbeiVar).getView()).zze(map)));
            } catch (ActivityNotFoundException e2) {
                zzavs.zzez(e2.getMessage());
            }
        }
    }
}
