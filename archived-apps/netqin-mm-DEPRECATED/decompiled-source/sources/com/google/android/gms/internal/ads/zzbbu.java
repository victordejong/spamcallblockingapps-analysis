package com.google.android.gms.internal.ads;

import android.net.TrafficStats;
import com.google.android.gms.common.util.ClientLibraryUtils;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbbu.class */
public final class zzbbu implements zzbbl {

    /* renamed from: a */
    public final String f24758a;

    public zzbbu() {
        this(null);
    }

    public zzbbu(String str) {
        this.f24758a = str;
    }

    /* JADX WARN: Finally extract failed */
    @Override // com.google.android.gms.internal.ads.zzbbl
    /* renamed from: a */
    public final void mo15845a(String str) {
        try {
            try {
                try {
                    if (ClientLibraryUtils.m17107a()) {
                        TrafficStats.setThreadStatsTag(263);
                    }
                    String valueOf = String.valueOf(str);
                    zzbbq.m15858a(valueOf.length() != 0 ? "Pinging URL: ".concat(valueOf) : new String("Pinging URL: "));
                    HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
                    try {
                        zzwm.m11170a();
                        zzbbg.m15901a(true, httpURLConnection, this.f24758a);
                        zzbbk zzbbkVar = new zzbbk();
                        zzbbkVar.m15870a(httpURLConnection, (byte[]) null);
                        int responseCode = httpURLConnection.getResponseCode();
                        zzbbkVar.m15871a(httpURLConnection, responseCode);
                        if (responseCode < 200 || responseCode >= 300) {
                            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 65);
                            sb.append("Received non-success response code ");
                            sb.append(responseCode);
                            sb.append(" from pinging URL: ");
                            sb.append(str);
                            zzbbq.m15852d(sb.toString());
                        }
                        httpURLConnection.disconnect();
                        if (ClientLibraryUtils.m17107a()) {
                            TrafficStats.clearThreadStatsTag();
                        }
                    } catch (Throwable th) {
                        httpURLConnection.disconnect();
                        throw th;
                    }
                } catch (RuntimeException e) {
                    String message = e.getMessage();
                    StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 27 + String.valueOf(message).length());
                    sb2.append("Error while pinging URL: ");
                    sb2.append(str);
                    sb2.append(". ");
                    sb2.append(message);
                    zzbbq.m15852d(sb2.toString());
                    if (ClientLibraryUtils.m17107a()) {
                        TrafficStats.clearThreadStatsTag();
                    }
                }
            } catch (IOException e2) {
                String message2 = e2.getMessage();
                StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 27 + String.valueOf(message2).length());
                sb3.append("Error while pinging URL: ");
                sb3.append(str);
                sb3.append(". ");
                sb3.append(message2);
                zzbbq.m15852d(sb3.toString());
                if (ClientLibraryUtils.m17107a()) {
                    TrafficStats.clearThreadStatsTag();
                }
            } catch (IndexOutOfBoundsException e3) {
                String message3 = e3.getMessage();
                StringBuilder sb4 = new StringBuilder(String.valueOf(str).length() + 32 + String.valueOf(message3).length());
                sb4.append("Error while parsing ping URL: ");
                sb4.append(str);
                sb4.append(". ");
                sb4.append(message3);
                zzbbq.m15852d(sb4.toString());
                if (ClientLibraryUtils.m17107a()) {
                    TrafficStats.clearThreadStatsTag();
                }
            }
        } catch (Throwable th2) {
            if (ClientLibraryUtils.m17107a()) {
                TrafficStats.clearThreadStatsTag();
            }
            throw th2;
        }
    }
}
