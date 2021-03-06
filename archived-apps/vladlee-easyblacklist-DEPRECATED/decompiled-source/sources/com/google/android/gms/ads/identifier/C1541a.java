package com.google.android.gms.ads.identifier;

import android.net.Uri;
import android.util.Log;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;
/* renamed from: com.google.android.gms.ads.identifier.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/identifier/a.class */
final class C1541a extends Thread {

    /* renamed from: a */
    private final /* synthetic */ Map f5891a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1541a(Map map) {
        this.f5891a = map;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        String message;
        StringBuilder sb;
        String str;
        Exception exc;
        new zzc();
        Map map = this.f5891a;
        Uri.Builder buildUpon = Uri.parse("https://pagead2.googlesyndication.com/pagead/gen_204?id=gmob-apps").buildUpon();
        for (String str2 : map.keySet()) {
            buildUpon.appendQueryParameter(str2, (String) map.get(str2));
        }
        String uri = buildUpon.build().toString();
        try {
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(uri).openConnection();
                try {
                    int responseCode = httpURLConnection.getResponseCode();
                    if (responseCode < 200 || responseCode >= 300) {
                        StringBuilder sb2 = new StringBuilder(String.valueOf(uri).length() + 65);
                        sb2.append("Received non-success response code ");
                        sb2.append(responseCode);
                        sb2.append(" from pinging URL: ");
                        sb2.append(uri);
                        Log.w("HttpUrlPinger", sb2.toString());
                    }
                } finally {
                    httpURLConnection.disconnect();
                }
            } catch (IOException | RuntimeException e) {
                message = e.getMessage();
                sb = new StringBuilder(String.valueOf(uri).length() + 27 + String.valueOf(message).length());
                str = "Error while pinging URL: ";
                exc = e;
                sb.append(str);
                sb.append(uri);
                sb.append(". ");
                sb.append(message);
                Log.w("HttpUrlPinger", sb.toString(), exc);
            }
        } catch (IndexOutOfBoundsException e2) {
            message = e2.getMessage();
            sb = new StringBuilder(String.valueOf(uri).length() + 32 + String.valueOf(message).length());
            str = "Error while parsing ping URL: ";
            exc = e2;
            sb.append(str);
            sb.append(uri);
            sb.append(". ");
            sb.append(message);
            Log.w("HttpUrlPinger", sb.toString(), exc);
        }
    }
}
