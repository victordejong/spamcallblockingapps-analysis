package com.inmobi.p497a.p499b;

import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import com.inmobi.commons.core.p509a.C8328a;
import com.inmobi.commons.core.p513e.C8365a;
import com.inmobi.commons.core.utilities.C8408e;
import com.inmobi.commons.p508a.C8326a;
import com.inmobi.p497a.C8003o;
import com.inmobi.p497a.C8004p;
/* renamed from: com.inmobi.a.b.b */
/* loaded from: classes2-dex2jar.jar:com/inmobi/a/b/b.class */
public final class C7985b {
    /* renamed from: a */
    public static long m6783a(String str) {
        String[] split = str.split("\\:");
        byte[] bArr = new byte[6];
        for (int i = 0; i < 6; i++) {
            try {
                bArr[i] = (byte) Integer.parseInt(split[i], 16);
            } catch (NumberFormatException e) {
                return 0L;
            }
        }
        return ((bArr[0] & 255) << 40) | ((bArr[3] & 255) << 16) | (bArr[5] & 255) | ((bArr[4] & 255) << 8) | ((bArr[2] & 255) << 24) | ((bArr[1] & 255) << 32);
    }

    /* renamed from: a */
    public static C7984a m6785a() {
        int i;
        if (!(C8326a.m5899a() && C8408e.m5641a(C8326a.m5891b(), "signals", "android.permission.ACCESS_WIFI_STATE"))) {
            return null;
        }
        C8004p.C8006b bVar = C8003o.m6743a().f31245a.f31250a;
        boolean z = false;
        if (bVar.f31272l) {
            z = false;
            if (bVar.f31261a) {
                z = true;
            }
        }
        if (!z) {
            return null;
        }
        return m6782a(!m6784a(i, 2), m6784a(C8003o.m6743a().f31245a.f31250a.f31270j, 1));
    }

    /* renamed from: a */
    public static C7984a m6782a(boolean z, boolean z2) {
        NoSuchMethodError e;
        Exception e2;
        Context b = C8326a.m5891b();
        r7 = null;
        C7984a aVar = null;
        String str = null;
        if (b == null) {
            return null;
        }
        try {
            WifiInfo connectionInfo = ((WifiManager) b.getSystemService("wifi")).getConnectionInfo();
            aVar = null;
            if (connectionInfo != null) {
                String bssid = connectionInfo.getBSSID();
                String ssid = connectionInfo.getSSID();
                aVar = null;
                if (bssid != null) {
                    aVar = null;
                    if (!(z && ssid != null && ssid.endsWith("_nomap"))) {
                        aVar = new C7984a();
                        try {
                            aVar.f31180a = m6783a(bssid);
                            str = ssid;
                            if (ssid != null) {
                                str = ssid;
                                if (ssid.startsWith("\"")) {
                                    str = ssid;
                                    if (ssid.endsWith("\"")) {
                                        str = ssid.substring(1, ssid.length() - 1);
                                    }
                                }
                            }
                            if (z2) {
                            }
                            aVar.f31181b = str;
                            aVar.f31182c = connectionInfo.getRssi();
                            aVar.f31183d = connectionInfo.getIpAddress();
                        } catch (Exception e3) {
                            e2 = e3;
                            C8328a.m5878a().m5875a(new C8365a(e2));
                            return aVar;
                        } catch (NoSuchMethodError e4) {
                            e = e4;
                            C8328a.m5878a().m5875a(new C8365a(e));
                            return aVar;
                        }
                    }
                }
            }
        } catch (Exception e5) {
            e2 = e5;
        } catch (NoSuchMethodError e6) {
            e = e6;
        }
        return aVar;
    }

    /* renamed from: a */
    public static boolean m6784a(int i, int i2) {
        return (i & i2) == i2;
    }
}
