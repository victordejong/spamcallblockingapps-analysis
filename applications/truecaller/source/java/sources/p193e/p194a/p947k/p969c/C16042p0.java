package p193e.p194a.p947k.p969c;

import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.k.c.p0 */
/* loaded from: classes15-dex2jar.jar:e/a/k/c/p0.class */
public final class C16042p0 {

    /* renamed from: a */
    public final String f45231a;

    /* renamed from: b */
    public final String f45232b;

    /* renamed from: c */
    public final String f45233c;

    /* renamed from: d */
    public final Map<String, String> f45234d;

    public C16042p0(String str, String str2, String str3, Map<String, String> map) {
        l.e(str, "id");
        l.e(str2, "uploadUrl");
        l.e(str3, "downloadUrl");
        l.e(map, "formFields");
        this.f45231a = str;
        this.f45232b = str2;
        this.f45233c = str3;
        this.f45234d = map;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C16042p0)) {
                return false;
            }
            C16042p0 c16042p0 = (C16042p0) obj;
            return l.a(this.f45231a, c16042p0.f45231a) && l.a(this.f45232b, c16042p0.f45232b) && l.a(this.f45233c, c16042p0.f45233c) && l.a(this.f45234d, c16042p0.f45234d);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f45231a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f45232b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f45233c;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        Map<String, String> map = this.f45234d;
        if (map != null) {
            i = map.hashCode();
        }
        return (((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("UploadLinks(id=");
        m8728C.append(this.f45231a);
        m8728C.append(", uploadUrl=");
        m8728C.append(this.f45232b);
        m8728C.append(", downloadUrl=");
        m8728C.append(this.f45233c);
        m8728C.append(", formFields=");
        m8728C.append(this.f45234d);
        m8728C.append(")");
        return m8728C.toString();
    }
}
