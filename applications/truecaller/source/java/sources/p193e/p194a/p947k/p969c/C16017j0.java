package p193e.p194a.p947k.p969c;

import java.io.File;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.k.c.j0 */
/* loaded from: classes15-dex2jar.jar:e/a/k/c/j0.class */
public final class C16017j0 {

    /* renamed from: a */
    public final File f45160a;

    /* renamed from: b */
    public final long f45161b;

    /* renamed from: c */
    public final boolean f45162c;

    public C16017j0(File file, long j, boolean z) {
        l.e(file, "file");
        this.f45160a = file;
        this.f45161b = j;
        this.f45162c = z;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C16017j0)) {
                return false;
            }
            C16017j0 c16017j0 = (C16017j0) obj;
            return l.a(this.f45160a, c16017j0.f45160a) && this.f45161b == c16017j0.f45161b && this.f45162c == c16017j0.f45162c;
        }
        return true;
    }

    public int hashCode() {
        File file = this.f45160a;
        int hashCode = file != null ? file.hashCode() : 0;
        int m34274a = C4876d.m34274a(this.f45161b);
        boolean z = this.f45162c;
        int i = z ? 1 : 0;
        if (z) {
            i = 1;
        }
        return (((hashCode * 31) + m34274a) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("RecordingInfo(file=");
        m8728C.append(this.f45160a);
        m8728C.append(", duration=");
        m8728C.append(this.f45161b);
        m8728C.append(", mirrorPlayback=");
        return C22128a.m8590o(m8728C, this.f45162c, ")");
    }
}
