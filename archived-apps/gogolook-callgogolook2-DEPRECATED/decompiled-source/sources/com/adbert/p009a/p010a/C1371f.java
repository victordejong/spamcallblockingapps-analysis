package com.adbert.p009a.p010a;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import javax.net.ssl.HttpsURLConnection;
/* renamed from: com.adbert.a.a.f */
/* loaded from: classes-dex2jar.jar:com/adbert/a/a/f.class */
public class C1371f {

    /* renamed from: b */
    public C1367d f381b;

    /* renamed from: c */
    public Context f382c;

    /* renamed from: a */
    public boolean f380a = true;

    /* renamed from: d */
    public int f383d = 10000;

    public C1371f(Context context, C1367d dVar) {
        this.f381b = dVar;
        this.f382c = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public String m37218a(String str) {
        String str2 = str;
        if (str.startsWith("http://")) {
            str2 = "https://" + str.substring(7);
        }
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public HttpsURLConnection m37217a(URL url, C1360a aVar) {
        HttpsURLConnection httpsURLConnection = (HttpsURLConnection) FirebasePerfUrlConnection.instrument(url.openConnection());
        httpsURLConnection.setConnectTimeout(this.f383d);
        httpsURLConnection.setReadTimeout(this.f383d);
        httpsURLConnection.setDoInput(true);
        if (aVar.m37279a() == EnumC1366c.post) {
            httpsURLConnection.setDoOutput(true);
            httpsURLConnection.setRequestMethod("POST");
            httpsURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
            httpsURLConnection.setRequestProperty("Content-Length", String.valueOf(aVar.m37275c().length));
        } else if (aVar.m37279a() == EnumC1366c.gets) {
            httpsURLConnection.setRequestMethod("GET");
        }
        return httpsURLConnection;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m37216a(URL url, HttpsURLConnection httpsURLConnection, C1360a aVar) {
        if (aVar.m37279a() == EnumC1366c.post || aVar.m37279a() == EnumC1366c.gets) {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpsURLConnection.getInputStream()));
            String str = "";
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    str = str + readLine;
                } else {
                    this.f381b.m37261a(str);
                    return;
                }
            }
        } else if (aVar.m37279a() == EnumC1366c.getImage) {
            Bitmap decodeStream = BitmapFactory.decodeStream(httpsURLConnection.getInputStream());
            if (decodeStream != null) {
                this.f381b.m37264a(decodeStream);
            } else {
                this.f381b.m37257b(0);
            }
        } else if (aVar.m37279a() == EnumC1366c.getImageAndSave) {
            Bitmap decodeStream2 = BitmapFactory.decodeStream(httpsURLConnection.getInputStream());
            if (decodeStream2 != null) {
                this.f381b.m37264a(decodeStream2);
                this.f381b.m37263a(decodeStream2, aVar.m37273d());
                if (!new File(aVar.m37273d()).exists()) {
                    this.f381b.m37257b(0);
                    return;
                }
                return;
            }
            this.f381b.m37257b(0);
        } else if (aVar.m37279a() == EnumC1366c.getFile && !new File(aVar.m37273d()).exists()) {
            InputStream openStream = FirebasePerfUrlConnection.openStream(url);
            FileOutputStream fileOutputStream = new FileOutputStream(new File(aVar.m37273d()));
            byte[] bArr = new byte[1024];
            if (openStream != null) {
                while (true) {
                    int read = openStream.read(bArr);
                    if (read <= 0) {
                        break;
                    }
                    fileOutputStream.write(bArr, 0, read);
                }
            }
            fileOutputStream.close();
            if (!new File(aVar.m37273d()).exists()) {
                this.f381b.m37257b(0);
            }
        }
    }

    @SuppressLint({"MissingPermission"})
    /* renamed from: a */
    private boolean m37224a(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                return activeNetworkInfo.isConnected();
            }
            return false;
        } catch (Exception e) {
            return false;
        }
    }

    /* renamed from: a */
    public void m37223a(final C1360a aVar) {
        if (aVar.m37277b().isEmpty() || aVar.m37277b().startsWith("?") || !m37224a(this.f382c)) {
            this.f381b.m37246h();
        } else {
            new Thread(new Runnable() { // from class: com.adbert.a.a.f.1
                /* JADX WARN: Code restructure failed: missing block: B:100:0x0302, code lost:
                    if (r5.f385b.f380a == false) goto L_0x0308;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:57:0x0247, code lost:
                    if (r5.f385b.f380a == false) goto L_0x0308;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:58:0x024a, code lost:
                    r6.printStackTrace();
                 */
                /* JADX WARN: Code restructure failed: missing block: B:81:0x02ac, code lost:
                    if (r5.f385b.f380a == false) goto L_0x0308;
                 */
                @Override // java.lang.Runnable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public void run() {
                    /*
                        Method dump skipped, instructions count: 831
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.adbert.p009a.p010a.C1371f.RunnableC13721.run():void");
                }
            }).start();
        }
    }
}
