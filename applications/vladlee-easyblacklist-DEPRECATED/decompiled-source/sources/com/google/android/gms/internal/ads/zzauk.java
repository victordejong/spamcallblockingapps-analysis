package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzq;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzauk.class */
public final class zzauk {
    /* renamed from: a */
    private static Uri m4271a(String str, String str2, String str3) {
        int indexOf = str.indexOf("&adurl");
        int i = indexOf;
        if (indexOf == -1) {
            i = str.indexOf("?adurl");
        }
        if (i == -1) {
            return Uri.parse(str).buildUpon().appendQueryParameter(str2, str3).build();
        }
        int i2 = i + 1;
        return Uri.parse(str.substring(0, i2) + str2 + "=" + str3 + "&" + str.substring(i2));
    }

    public static String zzb(Uri uri, Context context) {
        String zzag;
        Uri uri2;
        if (zzq.zzlo().zzab(context) && (zzag = zzq.zzlo().zzag(context)) != null) {
            if (((Boolean) zzve.zzoy().zzd(zzzn.zzcic)).booleanValue()) {
                String str = (String) zzve.zzoy().zzd(zzzn.zzcid);
                String uri3 = uri.toString();
                uri2 = uri;
                if (uri3.contains(str)) {
                    zzq.zzlo().zzh(context, zzag);
                    return uri3.replace(str, zzag);
                }
            } else {
                uri2 = uri;
                if (TextUtils.isEmpty(uri.getQueryParameter("fbs_aeid"))) {
                    uri2 = m4271a(uri.toString(), "fbs_aeid", zzag);
                    zzq.zzlo().zzh(context, zzag);
                }
            }
            return uri2.toString();
        }
        return uri.toString();
    }

    public static String zzb(String str, Context context, boolean z) {
        if (((Boolean) zzve.zzoy().zzd(zzzn.zzcik)).booleanValue() && !z) {
            return str;
        }
        String str2 = str;
        if (zzq.zzlo().zzab(context)) {
            if (TextUtils.isEmpty(str)) {
                str2 = str;
            } else {
                String zzag = zzq.zzlo().zzag(context);
                if (zzag == null) {
                    return str;
                }
                if (((Boolean) zzve.zzoy().zzd(zzzn.zzcic)).booleanValue()) {
                    String str3 = (String) zzve.zzoy().zzd(zzzn.zzcid);
                    str2 = str;
                    if (str.contains(str3)) {
                        if (zzq.zzkq().zzek(str)) {
                            zzq.zzlo().zzh(context, zzag);
                            return str.replace(str3, zzag);
                        }
                        str2 = str;
                        if (zzq.zzkq().zzel(str)) {
                            zzq.zzlo().zzi(context, zzag);
                            return str.replace(str3, zzag);
                        }
                    }
                } else {
                    str2 = str;
                    if (!str.contains("fbs_aeid")) {
                        if (zzq.zzkq().zzek(str)) {
                            zzq.zzlo().zzh(context, zzag);
                            return m4271a(str, "fbs_aeid", zzag).toString();
                        }
                        str2 = str;
                        if (zzq.zzkq().zzel(str)) {
                            zzq.zzlo().zzi(context, zzag);
                            str2 = m4271a(str, "fbs_aeid", zzag).toString();
                        }
                    }
                }
            }
        }
        return str2;
    }
}
