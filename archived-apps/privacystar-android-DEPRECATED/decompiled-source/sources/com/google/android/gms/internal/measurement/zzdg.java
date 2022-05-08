package com.google.android.gms.internal.measurement;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.HttpUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URLDecoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.apache.commons.cli.HelpFormatter;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzdg.class */
public final class zzdg {
    private static final char[] zzacp = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    public static MessageDigest getMessageDigest(String str) {
        MessageDigest instance;
        for (int i = 0; i < 2; i++) {
            try {
                instance = MessageDigest.getInstance(str);
            } catch (NoSuchAlgorithmException e) {
            }
            if (instance != null) {
                return instance;
            }
        }
        return null;
    }

    public static double zza(String str, double d) {
        if (str == null) {
            return 100.0d;
        }
        try {
            return Double.parseDouble(str);
        } catch (NumberFormatException e) {
            return 100.0d;
        }
    }

    public static zzy zza(zzcp zzcpVar, String str) {
        Preconditions.checkNotNull(zzcpVar);
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        new HashMap();
        try {
            String valueOf = String.valueOf(str);
            Map<String, String> parse = HttpUtils.parse(new URI(valueOf.length() != 0 ? "?".concat(valueOf) : new String("?")), "UTF-8");
            zzy zzyVar = new zzy();
            zzyVar.zzf(parse.get("utm_content"));
            zzyVar.zzd(parse.get("utm_medium"));
            zzyVar.setName(parse.get("utm_campaign"));
            zzyVar.zzc(parse.get("utm_source"));
            zzyVar.zze(parse.get("utm_term"));
            zzyVar.zzg(parse.get("utm_id"));
            zzyVar.zzh(parse.get("anid"));
            zzyVar.zzi(parse.get("gclid"));
            zzyVar.zzj(parse.get("dclid"));
            zzyVar.zzk(parse.get(FirebaseAnalytics.Param.ACLID));
            return zzyVar;
        } catch (URISyntaxException e) {
            zzcpVar.zzd("No valid campaign data found", e);
            return null;
        }
    }

    public static String zza(Locale locale) {
        if (locale == null) {
            return null;
        }
        String language = locale.getLanguage();
        if (TextUtils.isEmpty(language)) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(language.toLowerCase(locale));
        if (!TextUtils.isEmpty(locale.getCountry())) {
            sb.append(HelpFormatter.DEFAULT_OPT_PREFIX);
            sb.append(locale.getCountry().toLowerCase(locale));
        }
        return sb.toString();
    }

    public static void zza(Map<String, String> map, String str, Map<String, String> map2) {
        zzb(map, str, map2.get(str));
    }

    public static boolean zza(double d, String str) {
        int i;
        if (d <= 0.0d || d >= 100.0d) {
            return false;
        }
        if (!TextUtils.isEmpty(str)) {
            int length = str.length() - 1;
            int i2 = 0;
            while (true) {
                i = i2;
                if (length < 0) {
                    break;
                }
                char charAt = str.charAt(length);
                int i3 = ((i2 << 6) & 268435455) + charAt + (charAt << 14);
                int i4 = 266338304 & i3;
                i2 = i3;
                if (i4 != 0) {
                    i2 = i3 ^ (i4 >> 21);
                }
                length--;
            }
        } else {
            i = 1;
        }
        return ((double) (i % 10000)) >= d * 100.0d;
    }

    public static boolean zza(Context context, String str, boolean z) {
        try {
            ActivityInfo receiverInfo = context.getPackageManager().getReceiverInfo(new ComponentName(context, str), 0);
            if (receiverInfo == null || !receiverInfo.enabled) {
                return false;
            }
            if (z) {
                return receiverInfo.exported;
            }
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    public static Map<String, String> zzae(String str) {
        HashMap hashMap = new HashMap();
        for (String str2 : str.split("&")) {
            String[] split = str2.split("=", 3);
            String str3 = null;
            if (split.length > 1) {
                hashMap.put(split[0], TextUtils.isEmpty(split[1]) ? null : split[1]);
                if (split.length == 3 && !TextUtils.isEmpty(split[1]) && !hashMap.containsKey(split[1])) {
                    String str4 = split[1];
                    if (!TextUtils.isEmpty(split[2])) {
                        str3 = split[2];
                    }
                    hashMap.put(str4, str3);
                }
            } else if (split.length == 1 && split[0].length() != 0) {
                hashMap.put(split[0], null);
            }
        }
        return hashMap;
    }

    public static long zzaf(String str) {
        if (str == null) {
            return 0L;
        }
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException e) {
            return 0L;
        }
    }

    public static String zzag(String str) {
        String decode;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String str2 = str;
        if (str.contains("?")) {
            String[] split = str.split("[\\?]");
            str2 = str;
            if (split.length > 1) {
                str2 = split[1];
            }
        }
        if (str2.contains("%3D")) {
            try {
                decode = URLDecoder.decode(str2, "UTF-8");
            } catch (UnsupportedEncodingException e) {
                return null;
            }
        } else {
            decode = str2;
            if (!str2.contains("=")) {
                return null;
            }
        }
        Map<String, String> zzae = zzae(decode);
        String[] strArr = {"dclid", "utm_source", "gclid", FirebaseAnalytics.Param.ACLID, "utm_campaign", "utm_medium", "utm_term", "utm_content", "utm_id", "anid", "gmob_t"};
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < 11; i++) {
            if (!TextUtils.isEmpty(zzae.get(strArr[i]))) {
                if (sb.length() > 0) {
                    sb.append("&");
                }
                sb.append(strArr[i]);
                sb.append("=");
                sb.append(zzae.get(strArr[i]));
            }
        }
        return sb.toString();
    }

    public static boolean zzah(String str) {
        return TextUtils.isEmpty(str) || !str.startsWith("http:");
    }

    public static void zzb(Map<String, String> map, String str, String str2) {
        if (str2 != null && !map.containsKey(str)) {
            map.put(str, str2);
        }
    }

    public static void zzb(Map<String, String> map, String str, boolean z) {
        if (!map.containsKey(str)) {
            map.put(str, z ? "1" : "0");
        }
    }

    public static boolean zzb(String str, boolean z) {
        if (str == null || str.equalsIgnoreCase("true") || str.equalsIgnoreCase("yes") || str.equalsIgnoreCase("1")) {
            return true;
        }
        return !str.equalsIgnoreCase("false") && !str.equalsIgnoreCase("no") && !str.equalsIgnoreCase("0");
    }

    public static String zzc(boolean z) {
        return z ? "1" : "0";
    }

    public static void zzc(Map<String, String> map, String str, String str2) {
        if (str2 != null && TextUtils.isEmpty(map.get(str))) {
            map.put(str, str2);
        }
    }

    public static boolean zzc(Context context, String str) {
        try {
            ServiceInfo serviceInfo = context.getPackageManager().getServiceInfo(new ComponentName(context, str), 0);
            if (serviceInfo != null) {
                return serviceInfo.enabled;
            }
            return false;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }
}
