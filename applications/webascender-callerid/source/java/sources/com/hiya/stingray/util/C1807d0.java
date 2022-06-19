package com.hiya.stingray.util;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import com.google.common.base.j;
import com.google.common.base.r;
/* renamed from: com.hiya.stingray.util.d0 */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/util/d0.class */
public class C1807d0 {
    /* renamed from: a */
    public static j<String> m965a(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null) {
            return j.a();
        }
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        return (activeNetworkInfo == null || !activeNetworkInfo.isConnectedOrConnecting()) ? j.a() : activeNetworkInfo.getType() == 1 ? j.e("WIFI") : (activeNetworkInfo.getType() != 0 || r.b(activeNetworkInfo.getSubtypeName())) ? j.a() : j.e(activeNetworkInfo.getSubtypeName());
    }

    /* renamed from: b */
    public static j<String> m964b(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        return (telephonyManager == null || r.b(telephonyManager.getNetworkOperatorName())) ? j.a() : j.e(telephonyManager.getNetworkOperatorName());
    }

    /* renamed from: c */
    public static j<String> m963c(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        return (telephonyManager == null || r.b(telephonyManager.getSimCountryIso())) ? j.a() : j.e(telephonyManager.getSimCountryIso());
    }
}
