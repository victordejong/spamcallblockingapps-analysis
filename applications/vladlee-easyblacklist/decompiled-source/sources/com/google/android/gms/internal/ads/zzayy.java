package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzayy.class */
public final class zzayy implements zzayp {

    /* renamed from: a */
    private final String f11555a;

    public zzayy() {
        this(null);
    }

    public zzayy(String str) {
        this.f11555a = str;
    }

    @Override // com.google.android.gms.internal.ads.zzayp
    public final void zzen(String str) {
        String sb;
        String message;
        StringBuilder sb2;
        try {
            String valueOf = String.valueOf(str);
            zzayu.zzea(valueOf.length() != 0 ? "Pinging URL: ".concat(valueOf) : new String("Pinging URL: "));
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            try {
                zzve.zzou();
                zzayk.zza(true, httpURLConnection, this.f11555a);
                zzayo zzayoVar = new zzayo();
                zzayoVar.zza(httpURLConnection, (byte[]) null);
                int responseCode = httpURLConnection.getResponseCode();
                zzayoVar.zza(httpURLConnection, responseCode);
                if (responseCode < 200 || responseCode >= 300) {
                    StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 65);
                    sb3.append("Received non-success response code ");
                    sb3.append(responseCode);
                    sb3.append(" from pinging URL: ");
                    sb3.append(str);
                    zzayu.zzez(sb3.toString());
                }
            } finally {
                httpURLConnection.disconnect();
            }
        } catch (IOException e) {
            message = e.getMessage();
            sb2 = new StringBuilder(String.valueOf(str).length() + 27 + String.valueOf(message).length());
            sb2.append("Error while pinging URL: ");
            sb2.append(str);
            sb2.append(". ");
            sb2.append(message);
            sb = sb2.toString();
            zzayu.zzez(sb);
        } catch (IndexOutOfBoundsException e2) {
            String message2 = e2.getMessage();
            StringBuilder sb4 = new StringBuilder(String.valueOf(str).length() + 32 + String.valueOf(message2).length());
            sb4.append("Error while parsing ping URL: ");
            sb4.append(str);
            sb4.append(". ");
            sb4.append(message2);
            sb = sb4.toString();
            zzayu.zzez(sb);
        } catch (RuntimeException e3) {
            message = e3.getMessage();
            sb2 = new StringBuilder(String.valueOf(str).length() + 27 + String.valueOf(message).length());
            sb2.append("Error while pinging URL: ");
            sb2.append(str);
            sb2.append(". ");
            sb2.append(message);
            sb = sb2.toString();
            zzayu.zzez(sb);
        }
    }
}
