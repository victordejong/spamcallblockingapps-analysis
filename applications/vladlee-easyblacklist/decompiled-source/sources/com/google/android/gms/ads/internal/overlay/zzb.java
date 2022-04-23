package com.google.android.gms.ads.internal.overlay;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.internal.ads.zzavs;
import com.google.android.gms.internal.ads.zzawb;
import com.google.android.gms.internal.ads.zzve;
import com.google.android.gms.internal.ads.zzzn;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/zzb.class */
public final class zzb {
    /* renamed from: a */
    private static boolean m6057a(Context context, Intent intent, zzt zztVar) {
        try {
            String valueOf = String.valueOf(intent.toURI());
            zzavs.zzed(valueOf.length() != 0 ? "Launching an intent: ".concat(valueOf) : new String("Launching an intent: "));
            zzq.zzkq();
            zzawb.zza(context, intent);
            if (zztVar == null) {
                return true;
            }
            zztVar.zztv();
            return true;
        } catch (ActivityNotFoundException e) {
            zzavs.zzez(e.getMessage());
            return false;
        }
    }

    public static boolean zza(Context context, zzd zzdVar, zzt zztVar) {
        String str;
        int i = 0;
        if (zzdVar == null) {
            str = "No intent data for launcher overlay.";
        } else {
            zzzn.initialize(context);
            if (zzdVar.intent != null) {
                return m6057a(context, zzdVar.intent, zztVar);
            }
            Intent intent = new Intent();
            if (TextUtils.isEmpty(zzdVar.url)) {
                str = "Open GMSG did not contain a URL.";
            } else {
                if (!TextUtils.isEmpty(zzdVar.mimeType)) {
                    intent.setDataAndType(Uri.parse(zzdVar.url), zzdVar.mimeType);
                } else {
                    intent.setData(Uri.parse(zzdVar.url));
                }
                intent.setAction("android.intent.action.VIEW");
                if (!TextUtils.isEmpty(zzdVar.packageName)) {
                    intent.setPackage(zzdVar.packageName);
                }
                if (!TextUtils.isEmpty(zzdVar.zzdhf)) {
                    String[] split = zzdVar.zzdhf.split("/", 2);
                    if (split.length < 2) {
                        String valueOf = String.valueOf(zzdVar.zzdhf);
                        zzavs.zzez(valueOf.length() != 0 ? "Could not parse component name from open GMSG: ".concat(valueOf) : new String("Could not parse component name from open GMSG: "));
                        return false;
                    }
                    intent.setClassName(split[0], split[1]);
                }
                String str2 = zzdVar.zzdhg;
                if (!TextUtils.isEmpty(str2)) {
                    try {
                        i = Integer.parseInt(str2);
                    } catch (NumberFormatException e) {
                        zzavs.zzez("Could not parse intent flags.");
                    }
                    intent.addFlags(i);
                }
                if (((Boolean) zzve.zzoy().zzd(zzzn.zzcnk)).booleanValue()) {
                    intent.addFlags(268435456);
                    intent.putExtra("android.support.customtabs.extra.user_opt_out", true);
                } else {
                    if (((Boolean) zzve.zzoy().zzd(zzzn.zzcnj)).booleanValue()) {
                        zzq.zzkq();
                        zzawb.zzb(context, intent);
                    }
                }
                return m6057a(context, intent, zztVar);
            }
        }
        zzavs.zzez(str);
        return false;
    }
}
