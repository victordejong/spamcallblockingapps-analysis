package p131c.p161d.p282e.p289l.p290d.p304p;

import android.content.Context;
import com.google.firebase.crashlytics.internal.common.CommonUtils;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.InputStream;
import org.json.JSONObject;
import p131c.p161d.p282e.p289l.p290d.C5192b;
import p131c.p161d.p282e.p289l.p290d.p298l.C5405i;
/* renamed from: c.d.e.l.d.p.a */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/p/a.class */
public class C5427a {

    /* renamed from: a */
    public final Context f18375a;

    public C5427a(Context context) {
        this.f18375a = context;
    }

    /* renamed from: a */
    public final File m23809a() {
        return new File(new C5405i(this.f18375a).mo23875b(), "com.crashlytics.settings.json");
    }

    /* renamed from: a */
    public void m23808a(long j, JSONObject jSONObject) {
        Throwable th;
        Exception e;
        FileWriter fileWriter;
        C5192b.m24319a().m24317a("Writing settings to cache file...");
        if (jSONObject != null) {
            FileWriter fileWriter2 = null;
            FileWriter fileWriter3 = null;
            try {
                try {
                    jSONObject.put("expires_at", j);
                    fileWriter3 = null;
                    fileWriter = new FileWriter(m23809a());
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Exception e2) {
                e = e2;
            }
            try {
                fileWriter.write(jSONObject.toString());
                fileWriter.flush();
                CommonUtils.m7665a((Closeable) fileWriter, "Failed to close settings writer.");
            } catch (Exception e3) {
                e = e3;
                fileWriter2 = fileWriter;
                fileWriter3 = fileWriter2;
                C5192b.m24319a().m24314b("Failed to cache settings", e);
                CommonUtils.m7665a((Closeable) fileWriter2, "Failed to close settings writer.");
            } catch (Throwable th3) {
                th = th3;
                fileWriter3 = fileWriter;
                CommonUtils.m7665a((Closeable) fileWriter3, "Failed to close settings writer.");
                throw th;
            }
        }
    }

    /* renamed from: b */
    public JSONObject m23807b() {
        Throwable th;
        FileInputStream fileInputStream;
        Exception e;
        C5192b.m24319a().m24317a("Reading cached settings...");
        JSONObject jSONObject = null;
        FileInputStream fileInputStream2 = null;
        try {
            File a = m23809a();
            if (a.exists()) {
                fileInputStream2 = new FileInputStream(a);
                fileInputStream = fileInputStream2;
                try {
                    try {
                        jSONObject = new JSONObject(CommonUtils.m7662a((InputStream) fileInputStream2));
                    } catch (Exception e2) {
                        e = e2;
                        fileInputStream = fileInputStream2;
                        C5192b.m24319a().m24314b("Failed to fetch cached settings", e);
                        CommonUtils.m7665a(fileInputStream2, "Error while closing settings cache file.");
                        return jSONObject;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    CommonUtils.m7665a(fileInputStream, "Error while closing settings cache file.");
                    throw th;
                }
            } else {
                C5192b.m24319a().m24317a("No cached settings found.");
                jSONObject = null;
            }
            CommonUtils.m7665a(fileInputStream2, "Error while closing settings cache file.");
        } catch (Exception e3) {
            e = e3;
            fileInputStream2 = null;
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = null;
            CommonUtils.m7665a(fileInputStream, "Error while closing settings cache file.");
            throw th;
        }
        return jSONObject;
    }
}
