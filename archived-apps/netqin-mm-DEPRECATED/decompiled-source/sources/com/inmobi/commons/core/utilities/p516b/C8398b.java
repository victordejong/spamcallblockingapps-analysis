package com.inmobi.commons.core.utilities.p516b;

import android.content.Context;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Build;
import com.inmobi.commons.core.utilities.C8408e;
import com.inmobi.commons.p508a.C8326a;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
/* renamed from: com.inmobi.commons.core.utilities.b.b */
/* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/utilities/b/b.class */
public class C8398b {
    /* renamed from: a */
    public static int m5691a() {
        String b = m5688b();
        if (b.startsWith("0")) {
            return 0;
        }
        return b.startsWith("1") ? 1 : 2;
    }

    /* renamed from: a */
    public static int m5690a(Context context) {
        return ((AudioManager) context.getSystemService("audio")).getStreamVolume(3);
    }

    /* renamed from: a */
    public static Map<String, String> m5689a(boolean z) {
        int i;
        HashMap hashMap = new HashMap();
        try {
            hashMap.put("d-brand-name", Build.BRAND);
            hashMap.put("d-manufacturer-name", Build.MANUFACTURER);
            hashMap.put("d-model-name", Build.MODEL);
            hashMap.put("d-nettype-raw", m5688b());
            hashMap.put("d-localization", Locale.getDefault().toString());
            Context b = C8326a.m5891b();
            if (b == null || z) {
                i = 0;
            } else {
                AudioManager audioManager = (AudioManager) b.getSystemService("audio");
                i = (audioManager.getStreamVolume(3) * 100) / audioManager.getStreamMaxVolume(3);
            }
            hashMap.put("d-media-volume", String.valueOf(i));
        } catch (Exception e) {
            new StringBuilder("SDK encountered unexpected error in getting device info; ").append(e.getMessage());
        }
        return hashMap;
    }

    /* renamed from: b */
    public static String m5688b() {
        Context b = C8326a.m5891b();
        if (b == null) {
            return "";
        }
        String str = "";
        if (C8408e.m5641a(b, "root", "android.permission.ACCESS_NETWORK_STATE")) {
            ConnectivityManager connectivityManager = (ConnectivityManager) b.getSystemService("connectivity");
            str = "";
            if (connectivityManager != null) {
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                str = "";
                if (activeNetworkInfo != null) {
                    if (Build.VERSION.SDK_INT < 28) {
                        int type = activeNetworkInfo.getType();
                        int subtype = activeNetworkInfo.getSubtype();
                        if (type == 0) {
                            str = type + "|" + subtype;
                        } else {
                            if (type != 1) {
                                str = Integer.toString(type);
                            }
                            str = "1";
                        }
                    } else {
                        NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork());
                        str = "";
                        if (networkCapabilities != null) {
                            if (networkCapabilities.hasTransport(0)) {
                                str = "0|" + activeNetworkInfo.getSubtype();
                            } else {
                                if (!networkCapabilities.hasTransport(1)) {
                                    str = networkCapabilities.hasTransport(2) ? "7" : networkCapabilities.hasTransport(3) ? "9" : networkCapabilities.hasTransport(4) ? "17" : networkCapabilities.hasTransport(5) ? "10" : networkCapabilities.hasTransport(6) ? "11" : "8";
                                }
                                str = "1";
                            }
                        }
                    }
                }
            }
        }
        return str;
    }
}
