package p081h.p203i.p325c.p337n.p338d.p352p;

import android.content.Context;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.InputStream;
import org.json.JSONObject;
import p081h.p203i.p325c.p337n.p338d.C9513b;
import p081h.p203i.p325c.p337n.p338d.p341h.C9546h;
import p081h.p203i.p325c.p337n.p338d.p346l.C9777i;
/* renamed from: h.i.c.n.d.p.a */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/p/a.class */
public class C9804a {

    /* renamed from: a */
    public final Context f22242a;

    public C9804a(Context context) {
        this.f22242a = context;
    }

    /* renamed from: a */
    public final File m14172a() {
        return new File(new C9777i(this.f22242a).mo14293a(), "com.crashlytics.settings.json");
    }

    /* renamed from: a */
    public void m14171a(long j, JSONObject jSONObject) {
        Throwable th;
        Exception e;
        FileWriter fileWriter;
        C9513b.m15015a().m15013a("Writing settings to cache file...");
        if (jSONObject != null) {
            FileWriter fileWriter2 = null;
            FileWriter fileWriter3 = null;
            try {
                try {
                    jSONObject.put("expires_at", j);
                    fileWriter3 = null;
                    fileWriter = new FileWriter(m14172a());
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Exception e2) {
                e = e2;
            }
            try {
                fileWriter.write(jSONObject.toString());
                fileWriter.flush();
                C9546h.m14934a((Closeable) fileWriter, "Failed to close settings writer.");
            } catch (Exception e3) {
                e = e3;
                fileWriter2 = fileWriter;
                fileWriter3 = fileWriter2;
                C9513b.m15015a().m15010b("Failed to cache settings", e);
                C9546h.m14934a((Closeable) fileWriter2, "Failed to close settings writer.");
            } catch (Throwable th3) {
                th = th3;
                fileWriter3 = fileWriter;
                C9546h.m14934a((Closeable) fileWriter3, "Failed to close settings writer.");
                throw th;
            }
        }
    }

    /* renamed from: b */
    public JSONObject m14170b() {
        Throwable th;
        FileInputStream fileInputStream;
        Exception e;
        C9513b.m15015a().m15013a("Reading cached settings...");
        JSONObject jSONObject = null;
        FileInputStream fileInputStream2 = null;
        FileInputStream fileInputStream3 = null;
        try {
            File a = m14172a();
            if (a.exists()) {
                fileInputStream = new FileInputStream(a);
                fileInputStream2 = fileInputStream;
                try {
                    try {
                        jSONObject = new JSONObject(C9546h.m14931a((InputStream) fileInputStream));
                        fileInputStream3 = fileInputStream;
                    } catch (Exception e2) {
                        e = e2;
                        fileInputStream2 = fileInputStream;
                        C9513b.m15015a().m15010b("Failed to fetch cached settings", e);
                        C9546h.m14934a(fileInputStream, "Error while closing settings cache file.");
                        return jSONObject;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    C9546h.m14934a(fileInputStream2, "Error while closing settings cache file.");
                    throw th;
                }
            } else {
                C9513b.m15015a().m15013a("No cached settings found.");
                jSONObject = null;
            }
            C9546h.m14934a(fileInputStream3, "Error while closing settings cache file.");
        } catch (Exception e3) {
            e = e3;
            fileInputStream = null;
        } catch (Throwable th3) {
            th = th3;
            C9546h.m14934a(fileInputStream2, "Error while closing settings cache file.");
            throw th;
        }
        return jSONObject;
    }
}
