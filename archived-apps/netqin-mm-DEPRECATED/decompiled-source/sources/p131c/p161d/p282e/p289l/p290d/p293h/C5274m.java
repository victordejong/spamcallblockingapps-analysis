package p131c.p161d.p282e.p289l.p290d.p293h;

import java.io.File;
import java.io.IOException;
import p131c.p161d.p282e.p289l.p290d.C5192b;
import p131c.p161d.p282e.p289l.p290d.p298l.AbstractC5404h;
/* renamed from: c.d.e.l.d.h.m */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/m.class */
public class C5274m {

    /* renamed from: a */
    public final String f18037a;

    /* renamed from: b */
    public final AbstractC5404h f18038b;

    public C5274m(String str, AbstractC5404h hVar) {
        this.f18037a = str;
        this.f18038b = hVar;
    }

    /* renamed from: a */
    public boolean m24106a() {
        boolean z;
        try {
            z = m24105b().createNewFile();
        } catch (IOException e) {
            C5192b a = C5192b.m24319a();
            a.m24314b("Error creating marker: " + this.f18037a, e);
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public final File m24105b() {
        return new File(this.f18038b.mo23875b(), this.f18037a);
    }

    /* renamed from: c */
    public boolean m24104c() {
        return m24105b().exists();
    }

    /* renamed from: d */
    public boolean m24103d() {
        return m24105b().delete();
    }
}
