package p193e.p194a.p947k.p948a.p959g;

import java.io.File;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.k.a.g.d */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/g/d.class */
public final class C15711d {

    /* renamed from: a */
    public final File f44316a;

    /* renamed from: b */
    public final String f44317b;

    /* renamed from: c */
    public final long f44318c;

    /* renamed from: d */
    public final boolean f44319d;

    public C15711d(File file, String str, long j, boolean z) {
        l.e(str, "videoId");
        this.f44316a = file;
        this.f44317b = str;
        this.f44318c = j;
        this.f44319d = z;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C15711d)) {
                return false;
            }
            C15711d c15711d = (C15711d) obj;
            return l.a(this.f44316a, c15711d.f44316a) && l.a(this.f44317b, c15711d.f44317b) && this.f44318c == c15711d.f44318c && this.f44319d == c15711d.f44319d;
        }
        return true;
    }

    public int hashCode() {
        File file = this.f44316a;
        int i = 0;
        int hashCode = file != null ? file.hashCode() : 0;
        String str = this.f44317b;
        if (str != null) {
            i = str.hashCode();
        }
        int m34274a = C4876d.m34274a(this.f44318c);
        boolean z = this.f44319d;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        return (((((hashCode * 31) + i) * 31) + m34274a) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("PreviousOutgoingVideo(file=");
        m8728C.append(this.f44316a);
        m8728C.append(", videoId=");
        m8728C.append(this.f44317b);
        m8728C.append(", videoDuration=");
        m8728C.append(this.f44318c);
        m8728C.append(", mirrorPlayback=");
        return C22128a.m8590o(m8728C, this.f44319d, ")");
    }
}
