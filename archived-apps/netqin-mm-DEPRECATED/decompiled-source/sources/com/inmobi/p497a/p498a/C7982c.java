package com.inmobi.p497a.p498a;

import android.content.Context;
import android.location.LocationManager;
import android.os.Build;
import android.telephony.TelephonyManager;
import com.inmobi.commons.p508a.C8326a;
import com.inmobi.p497a.C8003o;
import com.inmobi.p497a.C8004p;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
/* renamed from: com.inmobi.a.a.c */
/* loaded from: classes2-dex2jar.jar:com/inmobi/a/a/c.class */
public class C7982c {

    /* renamed from: a */
    public static final String f31176a = "c";

    /* renamed from: a */
    public static Map<String, String> m6792a() {
        String str;
        HashMap hashMap = new HashMap();
        Context b = C8326a.m5891b();
        if (b == null) {
            return hashMap;
        }
        C8004p.C8006b bVar = C8003o.m6743a().f31245a.f31250a;
        if (!(bVar.f31274n && bVar.f31261a)) {
            return hashMap;
        }
        int i = C8003o.m6743a().f31245a.f31250a.f31273m;
        boolean a = m6791a(i, 2);
        boolean a2 = m6791a(i, 1);
        C7980a aVar = new C7980a();
        TelephonyManager telephonyManager = (TelephonyManager) b.getSystemService("phone");
        if (!a) {
            int[] a3 = m6790a(telephonyManager.getNetworkOperator());
            aVar.f31167a = a3[0];
            aVar.f31168b = a3[1];
            String networkCountryIso = telephonyManager.getNetworkCountryIso();
            if (networkCountryIso != null) {
                aVar.f31171e = networkCountryIso.toLowerCase(Locale.ENGLISH);
            }
        }
        if (!a2) {
            int[] a4 = m6790a(telephonyManager.getSimOperator());
            aVar.f31169c = a4[0];
            aVar.f31170d = a4[1];
        }
        String str2 = null;
        if (aVar.f31169c == -1 && aVar.f31170d == -1) {
            str = null;
        } else {
            str = aVar.f31169c + "_" + aVar.f31170d;
        }
        hashMap.put("s-ho", str);
        if (aVar.f31167a != -1 || aVar.f31168b != -1) {
            str2 = aVar.f31167a + "_" + aVar.f31168b;
        }
        hashMap.put("s-co", str2);
        hashMap.put("s-iso", aVar.f31171e);
        return hashMap;
    }

    /* renamed from: a */
    public static boolean m6791a(int i, int i2) {
        return (i & i2) == i2;
    }

    /* renamed from: a */
    public static int[] m6790a(String str) {
        int[] iArr = {-1, -1};
        if (str != null && !str.equals("")) {
            try {
                int parseInt = Integer.parseInt(str.substring(0, 3));
                int parseInt2 = Integer.parseInt(str.substring(3));
                iArr[0] = parseInt;
                iArr[1] = parseInt2;
            } catch (IndexOutOfBoundsException | NumberFormatException e) {
            }
        }
        return iArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0058  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.Map<java.lang.String, java.lang.String> m6789b() {
        /*
            Method dump skipped, instructions count: 417
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.p497a.p498a.C7982c.m6789b():java.util.Map");
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x018f  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01f3  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.Map<java.lang.String, java.lang.String> m6788c() {
        /*
            Method dump skipped, instructions count: 551
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.p497a.p498a.C7982c.m6788c():java.util.Map");
    }

    /* renamed from: d */
    public static boolean m6787d() {
        if (Build.VERSION.SDK_INT < 28) {
            return true;
        }
        LocationManager locationManager = (LocationManager) C8326a.m5891b().getSystemService("location");
        if (locationManager != null) {
            return locationManager.isLocationEnabled();
        }
        return false;
    }
}
