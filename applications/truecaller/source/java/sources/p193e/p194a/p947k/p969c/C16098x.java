package p193e.p194a.p947k.p969c;

import java.io.File;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.k.c.x */
/* loaded from: classes15-dex2jar.jar:e/a/k/c/x.class */
public final class C16098x {

    /* renamed from: a */
    public final File f45348a;

    /* renamed from: b */
    public final long f45349b;

    /* renamed from: c */
    public final String f45350c;

    /* renamed from: d */
    public final String f45351d;

    /* renamed from: e */
    public final Map<String, String> f45352e;

    public C16098x(File file, long j, String str, String str2, Map<String, String> map) {
        l.e(file, "file");
        l.e(str, "mimeType");
        l.e(str2, "url");
        l.e(map, "formFields");
        this.f45348a = file;
        this.f45349b = j;
        this.f45350c = str;
        this.f45351d = str2;
        this.f45352e = map;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C16098x)) {
                return false;
            }
            C16098x c16098x = (C16098x) obj;
            return l.a(this.f45348a, c16098x.f45348a) && this.f45349b == c16098x.f45349b && l.a(this.f45350c, c16098x.f45350c) && l.a(this.f45351d, c16098x.f45351d) && l.a(this.f45352e, c16098x.f45352e);
        }
        return true;
    }

    public int hashCode() {
        File file = this.f45348a;
        int i = 0;
        int hashCode = file != null ? file.hashCode() : 0;
        int m34274a = C4876d.m34274a(this.f45349b);
        String str = this.f45350c;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.f45351d;
        int hashCode3 = str2 != null ? str2.hashCode() : 0;
        Map<String, String> map = this.f45352e;
        if (map != null) {
            i = map.hashCode();
        }
        return (((((((hashCode * 31) + m34274a) * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("FileUploadRequest(file=");
        m8728C.append(this.f45348a);
        m8728C.append(", sizeBytes=");
        m8728C.append(this.f45349b);
        m8728C.append(", mimeType=");
        m8728C.append(this.f45350c);
        m8728C.append(", url=");
        m8728C.append(this.f45351d);
        m8728C.append(", formFields=");
        m8728C.append(this.f45352e);
        m8728C.append(")");
        return m8728C.toString();
    }
}
