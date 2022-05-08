package com.google.android.gms.tagmanager;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import com.google.android.gms.common.util.VisibleForTesting;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Locale;
import org.apache.commons.cli.HelpFormatter;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzfu.class */
public final class zzfu implements zzbe {
    private final String zzabl;
    private final zzfx zzbgb;
    private final zzfw zzbgc;
    private final Context zzri;

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public zzfu(Context context, zzfw zzfwVar) {
        this(new zzfv(), context, zzfwVar);
    }

    @VisibleForTesting
    private zzfu(zzfx zzfxVar, Context context, zzfw zzfwVar) {
        String str;
        this.zzbgb = zzfxVar;
        this.zzri = context.getApplicationContext();
        this.zzbgc = zzfwVar;
        String str2 = Build.VERSION.RELEASE;
        Locale locale = Locale.getDefault();
        if (locale == null) {
            str = null;
        } else {
            str = null;
            if (locale.getLanguage() != null) {
                if (locale.getLanguage().length() == 0) {
                    str = null;
                } else {
                    StringBuilder sb = new StringBuilder();
                    sb.append(locale.getLanguage().toLowerCase());
                    if (!(locale.getCountry() == null || locale.getCountry().length() == 0)) {
                        sb.append(HelpFormatter.DEFAULT_OPT_PREFIX);
                        sb.append(locale.getCountry().toLowerCase());
                    }
                    str = sb.toString();
                }
            }
        }
        this.zzabl = String.format("%s/%s (Linux; U; Android %s; %s; %s Build/%s)", "GoogleTagManager", "4.00", str2, str, Build.MODEL, Build.ID);
    }

    @VisibleForTesting
    private static URL zzd(zzbw zzbwVar) {
        try {
            return new URL(zzbwVar.zzoo());
        } catch (MalformedURLException e) {
            zzdi.m329e("Error trying to parse the GTM url.");
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0106  */
    @Override // com.google.android.gms.tagmanager.zzbe
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zze(java.util.List<com.google.android.gms.tagmanager.zzbw> r5) {
        /*
            Method dump skipped, instructions count: 372
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.zzfu.zze(java.util.List):void");
    }

    @Override // com.google.android.gms.tagmanager.zzbe
    public final boolean zzod() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.zzri.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
            return true;
        }
        zzdi.m328v("...no network connectivity");
        return false;
    }
}
