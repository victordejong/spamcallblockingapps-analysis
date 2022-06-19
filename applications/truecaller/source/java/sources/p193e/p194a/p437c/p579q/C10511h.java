package p193e.p194a.p437c.p579q;

import java.util.Set;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.c.q.h */
/* loaded from: classes10-dex2jar.jar:e/a/c/q/h.class */
public final class C10511h {

    /* renamed from: a */
    public final String f31255a;

    /* renamed from: b */
    public final Set<String> f31256b;

    /* renamed from: c */
    public final Set<String> f31257c;

    public C10511h(String str, Set<String> set, Set<String> set2) {
        l.e(str, "label");
        l.e(set, "senderIds");
        l.e(set2, "rawSenderIds");
        this.f31255a = str;
        this.f31256b = set;
        this.f31257c = set2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C10511h)) {
                return false;
            }
            C10511h c10511h = (C10511h) obj;
            return l.a(this.f31255a, c10511h.f31255a) && l.a(this.f31256b, c10511h.f31256b) && l.a(this.f31257c, c10511h.f31257c);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f31255a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        Set<String> set = this.f31256b;
        int hashCode2 = set != null ? set.hashCode() : 0;
        Set<String> set2 = this.f31257c;
        if (set2 != null) {
            i = set2.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SenderModel(label=");
        m8728C.append(this.f31255a);
        m8728C.append(", senderIds=");
        m8728C.append(this.f31256b);
        m8728C.append(", rawSenderIds=");
        m8728C.append(this.f31257c);
        m8728C.append(")");
        return m8728C.toString();
    }
}
