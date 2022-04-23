package p000a.p001a.p002a.p003a;

import android.os.SystemClock;
import android.text.TextUtils;
import com.google.ads.AdRequest;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.Callable;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import p000a.p001a.p002a.p003a.p004a.p006b.C0026j;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: a.a.a.a.h */
/* loaded from: classes-dex2jar.jar:a/a/a/a/h.class */
public final class CallableC0142h implements Callable<Map<String, C0149n>> {

    /* renamed from: a */
    final String f336a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CallableC0142h(String str) {
        this.f336a = str;
    }

    /* renamed from: a */
    private static C0149n m10150a(ZipEntry zipEntry, ZipFile zipFile) {
        Throwable th;
        IOException e;
        InputStream inputStream;
        try {
            try {
                inputStream = zipFile.getInputStream(zipEntry);
                try {
                    Properties properties = new Properties();
                    properties.load(inputStream);
                    String property = properties.getProperty("fabric-identifier");
                    String property2 = properties.getProperty("fabric-version");
                    String property3 = properties.getProperty("fabric-build-type");
                    if (TextUtils.isEmpty(property) || TextUtils.isEmpty(property2)) {
                        StringBuilder sb = new StringBuilder("Invalid format of fabric file,");
                        sb.append(zipEntry.getName());
                        throw new IllegalStateException(sb.toString());
                    }
                    C0149n nVar = new C0149n(property, property2, property3);
                    C0026j.m10350a((Closeable) inputStream);
                    return nVar;
                } catch (IOException e2) {
                    e = e2;
                    AbstractC0150o c = C0137d.m10155c();
                    StringBuilder sb2 = new StringBuilder("Error when parsing fabric properties ");
                    sb2.append(zipEntry.getName());
                    c.mo10130c("Fabric", sb2.toString(), e);
                    C0026j.m10350a((Closeable) inputStream);
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                C0026j.m10350a(zipFile);
                throw th;
            }
        } catch (IOException e3) {
            e = e3;
            inputStream = null;
        } catch (Throwable th3) {
            th = th3;
            zipFile = null;
            C0026j.m10350a(zipFile);
            throw th;
        }
    }

    /* renamed from: a */
    private static Map<String, C0149n> m10151a() {
        HashMap hashMap = new HashMap();
        try {
            Class.forName("com.google.android.gms.ads.AdView");
            C0149n nVar = new C0149n("com.google.firebase.firebase-ads", AdRequest.VERSION, "binary");
            hashMap.put(nVar.m10141a(), nVar);
            C0137d.m10155c().mo10133b("Fabric", "Found kit: com.google.firebase.firebase-ads");
        } catch (Exception e) {
        }
        return hashMap;
    }

    /* renamed from: b */
    private Map<String, C0149n> m10149b() {
        C0149n a;
        HashMap hashMap = new HashMap();
        ZipFile zipFile = new ZipFile(this.f336a);
        Enumeration<? extends ZipEntry> entries = zipFile.entries();
        while (entries.hasMoreElements()) {
            ZipEntry zipEntry = (ZipEntry) entries.nextElement();
            if (zipEntry.getName().startsWith("fabric/") && zipEntry.getName().length() > 7 && (a = m10150a(zipEntry, zipFile)) != null) {
                hashMap.put(a.m10141a(), a);
                C0137d.m10155c().mo10133b("Fabric", String.format("Found kit:[%s] version:[%s]", a.m10141a(), a.m10140b()));
            }
        }
        try {
            zipFile.close();
        } catch (IOException e) {
        }
        return hashMap;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Map<String, C0149n> call() {
        HashMap hashMap = new HashMap();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        hashMap.putAll(m10151a());
        hashMap.putAll(m10149b());
        AbstractC0150o c = C0137d.m10155c();
        c.mo10133b("Fabric", "finish scanning in " + (SystemClock.elapsedRealtime() - elapsedRealtime));
        return hashMap;
    }
}
