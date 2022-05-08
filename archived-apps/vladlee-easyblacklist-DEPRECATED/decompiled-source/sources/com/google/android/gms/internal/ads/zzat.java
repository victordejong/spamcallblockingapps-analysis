package com.google.android.gms.internal.ads;

import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzat.class */
public final class zzat extends zzah {

    /* renamed from: a */
    private final zzav f11348a;

    /* renamed from: b */
    private final SSLSocketFactory f11349b;

    public zzat() {
        this((byte) 0);
    }

    private zzat(byte b) {
        this((char) 0);
    }

    private zzat(char c) {
        this.f11348a = null;
        this.f11349b = null;
    }

    /* renamed from: a */
    private static List<zzk> m4299a(Map<String, List<String>> map) {
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            if (entry.getKey() != null) {
                for (String str : entry.getValue()) {
                    arrayList.add(new zzk(entry.getKey(), str));
                }
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    private static void m4300a(HttpURLConnection httpURLConnection, zzq<?> zzqVar) {
        byte[] zzf = zzqVar.zzf();
        if (zzf != null) {
            httpURLConnection.setDoOutput(true);
            if (!httpURLConnection.getRequestProperties().containsKey("Content-Type")) {
                httpURLConnection.setRequestProperty("Content-Type", "UTF-8".length() != 0 ? "application/x-www-form-urlencoded; charset=".concat("UTF-8") : new String("application/x-www-form-urlencoded; charset="));
            }
            DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
            dataOutputStream.write(zzf);
            dataOutputStream.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static InputStream m4298b(HttpURLConnection httpURLConnection) {
        InputStream inputStream;
        try {
            inputStream = httpURLConnection.getInputStream();
        } catch (IOException e) {
            inputStream = httpURLConnection.getErrorStream();
        }
        return inputStream;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0162 A[Catch: all -> 0x01f2, TRY_ENTER, TryCatch #0 {all -> 0x01f2, blocks: (B:14:0x00a3, B:16:0x00b1, B:18:0x00b9, B:19:0x00d5, B:20:0x00d9, B:21:0x010c, B:21:0x010c, B:23:0x0113, B:25:0x011a, B:27:0x0124, B:31:0x013e, B:32:0x0147, B:34:0x0156, B:37:0x0162, B:52:0x0197, B:59:0x01dc, B:60:0x01e8, B:62:0x01ea, B:63:0x01f1), top: B:71:0x00a3 }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01dc A[Catch: all -> 0x01f2, TRY_ENTER, TryCatch #0 {all -> 0x01f2, blocks: (B:14:0x00a3, B:16:0x00b1, B:18:0x00b9, B:19:0x00d5, B:20:0x00d9, B:21:0x010c, B:21:0x010c, B:23:0x0113, B:25:0x011a, B:27:0x0124, B:31:0x013e, B:32:0x0147, B:34:0x0156, B:37:0x0162, B:52:0x0197, B:59:0x01dc, B:60:0x01e8, B:62:0x01ea, B:63:0x01f1), top: B:71:0x00a3 }] */
    @Override // com.google.android.gms.internal.ads.zzah
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.zzar zza(com.google.android.gms.internal.ads.zzq<?> r8, java.util.Map<java.lang.String, java.lang.String> r9) {
        /*
            Method dump skipped, instructions count: 514
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzat.zza(com.google.android.gms.internal.ads.zzq, java.util.Map):com.google.android.gms.internal.ads.zzar");
    }
}
