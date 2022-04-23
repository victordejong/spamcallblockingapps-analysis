package p000a.p001a.p002a.p003a.p004a.p012g;

import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.InputStream;
import org.json.JSONObject;
import p000a.p001a.p002a.p003a.AbstractC0147l;
import p000a.p001a.p002a.p003a.C0137d;
import p000a.p001a.p002a.p003a.p004a.p006b.C0026j;
import p000a.p001a.p002a.p003a.p004a.p011f.C0106b;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: a.a.a.a.a.g.i */
/* loaded from: classes-dex2jar.jar:a/a/a/a/a/g/i.class */
public final class C0117i implements AbstractC0115g {

    /* renamed from: a */
    private final AbstractC0147l f243a;

    public C0117i(AbstractC0147l lVar) {
        this.f243a = lVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v13 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3, types: [org.json.JSONObject] */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v8 */
    @Override // p000a.p001a.p002a.p003a.p004a.p012g.AbstractC0115g
    /* renamed from: a */
    public final JSONObject mo10186a() {
        Throwable th;
        FileInputStream fileInputStream;
        Exception e;
        C0137d.m10155c().mo10135a("Fabric", "Reading cached settings...");
        FileInputStream fileInputStream2 = null;
        try {
            File file = new File(new C0106b(this.f243a).mo10191a(), "com.crashlytics.settings.json");
            if (file.exists()) {
                fileInputStream = new FileInputStream(file);
                fileInputStream2 = fileInputStream;
                try {
                    try {
                        fileInputStream2 = new JSONObject(C0026j.m10346a((InputStream) fileInputStream));
                    } catch (Exception e2) {
                        e = e2;
                        fileInputStream2 = fileInputStream;
                        C0137d.m10155c().mo10130c("Fabric", "Failed to fetch cached settings", e);
                        fileInputStream2 = 0;
                        C0026j.m10349a((Closeable) fileInputStream, "Error while closing settings cache file.");
                        return fileInputStream2;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    C0026j.m10349a((Closeable) fileInputStream2, "Error while closing settings cache file.");
                    throw th;
                }
            } else {
                C0137d.m10155c().mo10135a("Fabric", "No cached settings found.");
                fileInputStream = null;
                fileInputStream2 = 0;
            }
        } catch (Exception e3) {
            e = e3;
            fileInputStream = null;
        } catch (Throwable th3) {
            th = th3;
            C0026j.m10349a((Closeable) fileInputStream2, "Error while closing settings cache file.");
            throw th;
        }
        C0026j.m10349a((Closeable) fileInputStream, "Error while closing settings cache file.");
        return fileInputStream2;
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p012g.AbstractC0115g
    /* renamed from: a */
    public final void mo10185a(long j, JSONObject jSONObject) {
        Throwable th;
        Exception e;
        FileWriter fileWriter;
        C0137d.m10155c().mo10135a("Fabric", "Writing settings to cache file...");
        if (jSONObject != null) {
            FileWriter fileWriter2 = null;
            FileWriter fileWriter3 = null;
            try {
                try {
                    jSONObject.put("expires_at", j);
                    fileWriter = new FileWriter(new File(new C0106b(this.f243a).mo10191a(), "com.crashlytics.settings.json"));
                } catch (Exception e2) {
                    e = e2;
                }
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                fileWriter.write(jSONObject.toString());
                fileWriter.flush();
                C0026j.m10349a((Closeable) fileWriter, "Failed to close settings writer.");
            } catch (Exception e3) {
                e = e3;
                fileWriter2 = fileWriter;
                fileWriter3 = fileWriter2;
                C0137d.m10155c().mo10130c("Fabric", "Failed to cache settings", e);
                C0026j.m10349a((Closeable) fileWriter2, "Failed to close settings writer.");
            } catch (Throwable th3) {
                th = th3;
                fileWriter3 = fileWriter;
                C0026j.m10349a((Closeable) fileWriter3, "Failed to close settings writer.");
                throw th;
            }
        }
    }
}
