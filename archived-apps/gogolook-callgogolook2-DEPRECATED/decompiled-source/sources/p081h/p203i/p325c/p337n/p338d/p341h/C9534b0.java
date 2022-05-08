package p081h.p203i.p325c.p337n.p338d.p341h;

import androidx.annotation.NonNull;
import androidx.lifecycle.SavedStateHandle;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p203i.p325c.p337n.p338d.C9513b;
/* renamed from: h.i.c.n.d.h.b0 */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/b0.class */
public class C9534b0 {

    /* renamed from: b */
    public static final Charset f21712b = Charset.forName("UTF-8");

    /* renamed from: a */
    public final File f21713a;

    /* renamed from: h.i.c.n.d.h.b0$a */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/b0$a.class */
    public class C9535a extends JSONObject {

        /* renamed from: a */
        public final /* synthetic */ C9557j0 f21714a;

        public C9535a(C9557j0 j0Var) throws JSONException {
            this.f21714a = j0Var;
            put("userId", this.f21714a.m14878b());
        }
    }

    public C9534b0(File file) {
        this.f21713a = file;
    }

    /* renamed from: a */
    public static String m14967a(C9557j0 j0Var) throws JSONException {
        return new C9535a(j0Var).toString();
    }

    /* renamed from: a */
    public static String m14963a(Map<String, String> map) throws JSONException {
        return new JSONObject(map).toString();
    }

    /* renamed from: a */
    public static String m14962a(JSONObject jSONObject, String str) {
        String str2 = null;
        if (!jSONObject.isNull(str)) {
            str2 = jSONObject.optString(str, null);
        }
        return str2;
    }

    /* renamed from: d */
    public static C9557j0 m14959d(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        C9557j0 j0Var = new C9557j0();
        j0Var.m14880a(m14962a(jSONObject, "userId"));
        return j0Var;
    }

    @NonNull
    /* renamed from: a */
    public File m14966a(String str) {
        File file = this.f21713a;
        return new File(file, str + SavedStateHandle.KEYS + ".meta");
    }

    /* renamed from: a */
    public void m14965a(String str, C9557j0 j0Var) {
        Throwable th;
        Exception e;
        String a;
        File b = m14961b(str);
        r6 = null;
        BufferedWriter bufferedWriter = null;
        try {
            try {
                a = m14967a(j0Var);
                bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(b), f21712b));
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
        }
        try {
            bufferedWriter.write(a);
            bufferedWriter.flush();
            C9546h.m14934a((Closeable) bufferedWriter, "Failed to close user metadata file.");
        } catch (Exception e3) {
            e = e3;
            bufferedWriter = bufferedWriter;
            C9513b.m15015a().m15010b("Error serializing user metadata.", e);
            C9546h.m14934a((Closeable) bufferedWriter, "Failed to close user metadata file.");
        } catch (Throwable th3) {
            th = th3;
            C9546h.m14934a((Closeable) bufferedWriter, "Failed to close user metadata file.");
            throw th;
        }
    }

    /* renamed from: a */
    public void m14964a(String str, Map<String, String> map) {
        Throwable th;
        Exception e;
        String a;
        File a2 = m14966a(str);
        r6 = null;
        BufferedWriter bufferedWriter = null;
        try {
            try {
                a = m14963a(map);
                bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(a2), f21712b));
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
        }
        try {
            bufferedWriter.write(a);
            bufferedWriter.flush();
            C9546h.m14934a((Closeable) bufferedWriter, "Failed to close key/value metadata file.");
        } catch (Exception e3) {
            e = e3;
            bufferedWriter = bufferedWriter;
            C9513b.m15015a().m15010b("Error serializing key/value metadata.", e);
            C9546h.m14934a((Closeable) bufferedWriter, "Failed to close key/value metadata file.");
        } catch (Throwable th3) {
            th = th3;
            C9546h.m14934a((Closeable) bufferedWriter, "Failed to close key/value metadata file.");
            throw th;
        }
    }

    @NonNull
    /* renamed from: b */
    public File m14961b(String str) {
        File file = this.f21713a;
        return new File(file, str + "user.meta");
    }

    /* renamed from: c */
    public C9557j0 m14960c(String str) {
        Throwable th;
        Exception e;
        File b = m14961b(str);
        if (!b.exists()) {
            return new C9557j0();
        }
        FileInputStream fileInputStream = null;
        FileInputStream fileInputStream2 = null;
        try {
            try {
                fileInputStream = new FileInputStream(b);
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            C9557j0 d = m14959d(C9546h.m14931a((InputStream) fileInputStream));
            C9546h.m14934a(fileInputStream, "Failed to close user metadata file.");
            return d;
        } catch (Exception e3) {
            e = e3;
            fileInputStream2 = fileInputStream;
            C9513b.m15015a().m15010b("Error deserializing user metadata.", e);
            C9546h.m14934a(fileInputStream, "Failed to close user metadata file.");
            return new C9557j0();
        } catch (Throwable th3) {
            th = th3;
            fileInputStream2 = fileInputStream;
            C9546h.m14934a(fileInputStream2, "Failed to close user metadata file.");
            throw th;
        }
    }
}
