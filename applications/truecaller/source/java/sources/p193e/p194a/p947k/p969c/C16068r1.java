package p193e.p194a.p947k.p969c;

import java.io.File;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.k.c.r1 */
/* loaded from: classes15-dex2jar.jar:e/a/k/c/r1.class */
public final class C16068r1 {

    /* renamed from: a */
    public final File f45285a;

    /* renamed from: b */
    public final String f45286b;

    /* renamed from: c */
    public final long f45287c;

    /* renamed from: d */
    public final long f45288d;

    /* renamed from: e */
    public final boolean f45289e;

    public C16068r1(File file, String str, long j, long j2, boolean z) {
        l.e(file, "file");
        l.e(str, "mimeType");
        this.f45285a = file;
        this.f45286b = str;
        this.f45287c = j;
        this.f45288d = j2;
        this.f45289e = z;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C16068r1)) {
                return false;
            }
            C16068r1 c16068r1 = (C16068r1) obj;
            return l.a(this.f45285a, c16068r1.f45285a) && l.a(this.f45286b, c16068r1.f45286b) && this.f45287c == c16068r1.f45287c && this.f45288d == c16068r1.f45288d && this.f45289e == c16068r1.f45289e;
        }
        return true;
    }

    public int hashCode() {
        File file = this.f45285a;
        int i = 0;
        int hashCode = file != null ? file.hashCode() : 0;
        String str = this.f45286b;
        if (str != null) {
            i = str.hashCode();
        }
        int m34274a = C4876d.m34274a(this.f45287c);
        int m34274a2 = C4876d.m34274a(this.f45288d);
        boolean z = this.f45289e;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        return (((((((hashCode * 31) + i) * 31) + m34274a) * 31) + m34274a2) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("VideoFileInfo(file=");
        m8728C.append(this.f45285a);
        m8728C.append(", mimeType=");
        m8728C.append(this.f45286b);
        m8728C.append(", sizeBytes=");
        m8728C.append(this.f45287c);
        m8728C.append(", durationMillis=");
        m8728C.append(this.f45288d);
        m8728C.append(", mirrorPlayback=");
        return C22128a.m8590o(m8728C, this.f45289e, ")");
    }
}
