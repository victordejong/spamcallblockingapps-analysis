package p131c.p161d.p282e.p289l.p290d.p293h;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.GZIPOutputStream;
/* renamed from: c.d.e.l.d.h.f */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/f.class */
public class C5220f implements AbstractC5290y {

    /* renamed from: a */
    public final byte[] f17906a;

    /* renamed from: b */
    public final String f17907b;

    /* renamed from: c */
    public final String f17908c;

    public C5220f(String str, String str2, byte[] bArr) {
        this.f17907b = str;
        this.f17908c = str2;
        this.f17906a = bArr;
    }

    @Override // p131c.p161d.p282e.p289l.p290d.p293h.AbstractC5290y
    /* renamed from: a */
    public String mo24044a() {
        return this.f17908c;
    }

    @Override // p131c.p161d.p282e.p289l.p290d.p293h.AbstractC5290y
    /* renamed from: b */
    public CrashlyticsReport.AbstractC7781c.AbstractC7783b mo24043b() {
        CrashlyticsReport.AbstractC7781c.AbstractC7783b bVar;
        byte[] c = m24252c();
        if (c == null) {
            bVar = null;
        } else {
            CrashlyticsReport.AbstractC7781c.AbstractC7783b.AbstractC7784a c2 = CrashlyticsReport.AbstractC7781c.AbstractC7783b.m7600c();
            c2.mo7597a(c);
            c2.mo7598a(this.f17907b);
            bVar = c2.mo7599a();
        }
        return bVar;
    }

    /* renamed from: c */
    public final byte[] m24252c() {
        if (m24251d()) {
            return null;
        }
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            try {
                gZIPOutputStream.write(this.f17906a);
                gZIPOutputStream.finish();
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                gZIPOutputStream.close();
                byteArrayOutputStream.close();
                return byteArray;
            } catch (Throwable th) {
                try {
                    gZIPOutputStream.close();
                } catch (Throwable th2) {
                }
                throw th;
            }
        } catch (IOException e) {
            return null;
        }
    }

    /* renamed from: d */
    public final boolean m24251d() {
        byte[] bArr = this.f17906a;
        return bArr == null || bArr.length == 0;
    }

    @Override // p131c.p161d.p282e.p289l.p290d.p293h.AbstractC5290y
    /* renamed from: h */
    public InputStream mo24042h() {
        return m24251d() ? null : new ByteArrayInputStream(this.f17906a);
    }
}
