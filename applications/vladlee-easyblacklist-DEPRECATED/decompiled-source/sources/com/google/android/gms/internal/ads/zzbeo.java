package com.google.android.gms.internal.ads;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbeo.class */
public final class zzbeo {

    /* renamed from: a */
    private static final Pattern f11779a = Pattern.compile("^\\uFEFF?\\s*(\\s*<!--([^-]|(?!-->))*-->)*\\s*<!DOCTYPE(\\s)+html(|(\\s)+[^>]*)>", 2);

    /* renamed from: b */
    private static final Pattern f11780b = Pattern.compile("^\\uFEFF?\\s*(\\s*<!--([^-]|(?!-->))*-->)*?\\s*<!DOCTYPE[^>]*>", 2);

    public static String zzabp() {
        String str = (String) zzve.zzoy().zzd(zzzn.zzcho);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("version", str);
            jSONObject.put("sdk", "Google Mobile Ads");
            jSONObject.put("sdkVersion", "12.4.51-000");
            return "<script>Object.defineProperty(window,'MRAID_ENV',{get:function(){return " + jSONObject.toString() + "}});</script>";
        } catch (JSONException e) {
            zzavs.zzd("Unable to build MRAID_ENV", e);
            return null;
        }
    }

    public static String zzf(String str, String... strArr) {
        String str2;
        if (strArr.length == 0) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        Matcher matcher = f11779a.matcher(str);
        int i = 0;
        if (matcher.find()) {
            int end = matcher.end();
            sb.append(str.substring(0, end));
            for (String str3 : strArr) {
                if (str3 != null) {
                    sb.append(str3);
                }
            }
            str2 = str.substring(end);
        } else {
            str2 = str;
            if (!f11780b.matcher(str).find()) {
                int length = strArr.length;
                while (true) {
                    str2 = str;
                    if (i >= length) {
                        break;
                    }
                    String str4 = strArr[i];
                    if (str4 != null) {
                        sb.append(str4);
                    }
                    i++;
                }
            }
        }
        sb.append(str2);
        return sb.toString();
    }
}
