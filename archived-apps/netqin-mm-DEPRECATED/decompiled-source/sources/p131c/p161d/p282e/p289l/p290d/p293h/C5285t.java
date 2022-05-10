package p131c.p161d.p282e.p289l.p290d.p293h;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.GZIPOutputStream;
/* renamed from: c.d.e.l.d.h.t */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/t.class */
public class C5285t implements AbstractC5290y {

    /* renamed from: a */
    public final File f18063a;

    /* renamed from: b */
    public final String f18064b;

    /* renamed from: c */
    public final String f18065c;

    public C5285t(String str, String str2, File file) {
        this.f18064b = str;
        this.f18065c = str2;
        this.f18063a = file;
    }

    @Override // p131c.p161d.p282e.p289l.p290d.p293h.AbstractC5290y
    /* renamed from: a */
    public String mo24044a() {
        return this.f18065c;
    }

    @Override // p131c.p161d.p282e.p289l.p290d.p293h.AbstractC5290y
    /* renamed from: b */
    public CrashlyticsReport.AbstractC7781c.AbstractC7783b mo24043b() {
        CrashlyticsReport.AbstractC7781c.AbstractC7783b bVar;
        byte[] c = m24062c();
        if (c != null) {
            CrashlyticsReport.AbstractC7781c.AbstractC7783b.AbstractC7784a c2 = CrashlyticsReport.AbstractC7781c.AbstractC7783b.m7600c();
            c2.mo7597a(c);
            c2.mo7598a(this.f18064b);
            bVar = c2.mo7599a();
        } else {
            bVar = null;
        }
        return bVar;
    }

    /* renamed from: c */
    public final byte[] m24062c() {
        byte[] bArr = new byte[8192];
        try {
            InputStream h = mo24042h();
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
                if (h == null) {
                    gZIPOutputStream.close();
                    byteArrayOutputStream.close();
                    if (h == null) {
                        return null;
                    }
                    h.close();
                    return null;
                }
                while (true) {
                    int read = h.read(bArr);
                    if (read <= 0) {
                        break;
                    }
                    gZIPOutputStream.write(bArr, 0, read);
                }
                gZIPOutputStream.finish();
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                gZIPOutputStream.close();
                byteArrayOutputStream.close();
                if (h != null) {
                    h.close();
                }
                return byteArray;
            } catch (Throwable th) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th2) {
                }
                throw th;
            }
        } catch (IOException e) {
            return null;
        }
    }

    @Override // p131c.p161d.p282e.p289l.p290d.p293h.AbstractC5290y
    /* renamed from: h */
    public InputStream mo24042h() {
        if (!this.f18063a.exists() || !this.f18063a.isFile()) {
            return null;
        }
        try {
            return new FileInputStream(this.f18063a);
        } catch (FileNotFoundException e) {
            return null;
        }
    }
}
