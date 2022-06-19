package p193e.p194a.p372b0.p373a.p378c.p380m;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.b0.a.c.m.b */
/* loaded from: classes7-dex2jar.jar:e/a/b0/a/c/m/b.class */
public final class C8279b {

    /* renamed from: a */
    public final String f25520a;

    /* renamed from: b */
    public final String f25521b;

    /* renamed from: c */
    public final String f25522c;

    /* renamed from: d */
    public final boolean f25523d;

    public C8279b() {
        this(null, null, null, false, 15);
    }

    public C8279b(String str, String str2, String str3, boolean z) {
        this.f25520a = str;
        this.f25521b = str2;
        this.f25522c = str3;
        this.f25523d = z;
    }

    public /* synthetic */ C8279b(String str, String str2, String str3, boolean z, int i) {
        this(null, null, null, (i & 8) != 0 ? false : z);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C8279b)) {
                return false;
            }
            C8279b c8279b = (C8279b) obj;
            return l.a(this.f25520a, c8279b.f25520a) && l.a(this.f25521b, c8279b.f25521b) && l.a(this.f25522c, c8279b.f25522c) && this.f25523d == c8279b.f25523d;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f25520a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f25521b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f25522c;
        if (str3 != null) {
            i = str3.hashCode();
        }
        boolean z = this.f25523d;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        return (((((hashCode * 31) + hashCode2) * 31) + i) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("GroupAvatarXViewConfig(photoUrl=");
        m8728C.append(this.f25520a);
        m8728C.append(", normalizedAddress=");
        m8728C.append(this.f25521b);
        m8728C.append(", letter=");
        m8728C.append(this.f25522c);
        m8728C.append(", isSpam=");
        return C22128a.m8590o(m8728C, this.f25523d, ")");
    }
}
