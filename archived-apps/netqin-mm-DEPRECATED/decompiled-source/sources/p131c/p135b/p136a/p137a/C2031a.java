package p131c.p135b.p136a.p137a;

import android.net.Uri;
import com.applovin.impl.p483a.C6900e;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.p153y.C2422o;
import p131c.p135b.p136a.p148e.p153y.C2429t;
/* renamed from: c.b.a.a.a */
/* loaded from: classes-dex2jar.jar:c/b/a/a/a.class */
public class C2031a {

    /* renamed from: a */
    public int f7920a;

    /* renamed from: b */
    public int f7921b;

    /* renamed from: c */
    public Uri f7922c;

    /* renamed from: d */
    public C6900e f7923d;

    /* renamed from: e */
    public Set<C2034d> f7924e = new HashSet();

    /* renamed from: f */
    public Map<String, Set<C2034d>> f7925f = new HashMap();

    /* renamed from: a */
    public static C2031a m31245a(C2429t tVar, C2031a aVar, C2032b bVar, C2341l lVar) {
        C2429t b;
        if (tVar == null) {
            throw new IllegalArgumentException("No node specified.");
        } else if (lVar != null) {
            if (aVar == null) {
                try {
                    aVar = new C2031a();
                } catch (Throwable th) {
                    lVar.m30262d0().m30043b("VastCompanionAd", "Error occurred while initializing", th);
                    return null;
                }
            }
            if (aVar.f7920a == 0 && aVar.f7921b == 0) {
                int a = C2422o.m29859a(tVar.m29764b().get("width"));
                int a2 = C2422o.m29859a(tVar.m29764b().get("height"));
                if (a > 0 && a2 > 0) {
                    aVar.f7920a = a;
                    aVar.f7921b = a2;
                }
            }
            aVar.f7923d = C6900e.m19424a(tVar, aVar.f7923d, lVar);
            if (aVar.f7922c == null && (b = tVar.m29763b("CompanionClickThrough")) != null) {
                String c = b.m29762c();
                if (C2422o.m29851b(c)) {
                    aVar.f7922c = Uri.parse(c);
                }
            }
            C2036f.m31216a(tVar.m29765a("CompanionClickTracking"), aVar.f7924e, bVar, lVar);
            C2036f.m31219a(tVar, aVar.f7925f, bVar, lVar);
            return aVar;
        } else {
            throw new IllegalArgumentException("No sdk specified.");
        }
    }

    /* renamed from: a */
    public Uri m31246a() {
        return this.f7922c;
    }

    /* renamed from: b */
    public C6900e m31244b() {
        return this.f7923d;
    }

    /* renamed from: c */
    public Set<C2034d> m31243c() {
        return this.f7924e;
    }

    /* renamed from: d */
    public Map<String, Set<C2034d>> m31242d() {
        return this.f7925f;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2031a)) {
            return false;
        }
        C2031a aVar = (C2031a) obj;
        if (this.f7920a != aVar.f7920a || this.f7921b != aVar.f7921b) {
            return false;
        }
        Uri uri = this.f7922c;
        if (uri != null) {
            if (!uri.equals(aVar.f7922c)) {
                return false;
            }
        } else if (aVar.f7922c != null) {
            return false;
        }
        C6900e eVar = this.f7923d;
        if (eVar != null) {
            if (!eVar.equals(aVar.f7923d)) {
                return false;
            }
        } else if (aVar.f7923d != null) {
            return false;
        }
        Set<C2034d> set = this.f7924e;
        if (set != null) {
            if (!set.equals(aVar.f7924e)) {
                return false;
            }
        } else if (aVar.f7924e != null) {
            return false;
        }
        Map<String, Set<C2034d>> map = this.f7925f;
        Map<String, Set<C2034d>> map2 = aVar.f7925f;
        if (map != null) {
            z = map.equals(map2);
        } else if (map2 != null) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int i = this.f7920a;
        int i2 = this.f7921b;
        Uri uri = this.f7922c;
        int i3 = 0;
        int hashCode = uri != null ? uri.hashCode() : 0;
        C6900e eVar = this.f7923d;
        int hashCode2 = eVar != null ? eVar.hashCode() : 0;
        Set<C2034d> set = this.f7924e;
        int hashCode3 = set != null ? set.hashCode() : 0;
        Map<String, Set<C2034d>> map = this.f7925f;
        if (map != null) {
            i3 = map.hashCode();
        }
        return (((((((((i * 31) + i2) * 31) + hashCode) * 31) + hashCode2) * 31) + hashCode3) * 31) + i3;
    }

    public String toString() {
        return "VastCompanionAd{width=" + this.f7920a + ", height=" + this.f7921b + ", destinationUri=" + this.f7922c + ", nonVideoResource=" + this.f7923d + ", clickTrackers=" + this.f7924e + ", eventTrackers=" + this.f7925f + '}';
    }
}
