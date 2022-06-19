package p193e.p194a.p717f.p734z;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.f.z.k0 */
/* loaded from: classes10-dex2jar.jar:e/a/f/z/k0.class */
public final class C13827k0 {

    /* renamed from: a */
    public final String f40087a;

    /* renamed from: b */
    public final String f40088b;

    /* renamed from: c */
    public final String f40089c;

    /* renamed from: d */
    public final String f40090d;

    /* renamed from: e */
    public final boolean f40091e;

    /* renamed from: f */
    public final boolean f40092f;

    /* renamed from: g */
    public final boolean f40093g;

    /* renamed from: h */
    public final boolean f40094h;

    /* renamed from: i */
    public final boolean f40095i;

    /* renamed from: j */
    public final boolean f40096j;

    /* renamed from: k */
    public final String f40097k;

    /* renamed from: l */
    public final boolean f40098l;

    /* renamed from: m */
    public final boolean f40099m;

    /* renamed from: n */
    public final boolean f40100n;

    public C13827k0() {
        this(null, null, null, null, false, false, false, false, false, false, null, false, false, false, 16383);
    }

    public C13827k0(String str, String str2, String str3, String str4, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, String str5, boolean z7, boolean z8, boolean z9, int i) {
        str = (i & 1) != 0 ? null : str;
        str2 = (i & 2) != 0 ? null : str2;
        String str6 = (i & 8) != 0 ? null : str4;
        z = (i & 16) != 0 ? false : z;
        z2 = (i & 32) != 0 ? false : z2;
        z3 = (i & 64) != 0 ? false : z3;
        z4 = (i & 128) != 0 ? false : z4;
        z5 = (i & 256) != 0 ? false : z5;
        z6 = (i & 512) != 0 ? false : z6;
        z7 = (i & 2048) != 0 ? false : z7;
        z8 = (i & 4096) != 0 ? false : z8;
        z9 = (i & 8192) != 0 ? false : z9;
        this.f40087a = str;
        this.f40088b = str2;
        this.f40089c = null;
        this.f40090d = str6;
        this.f40091e = z;
        this.f40092f = z2;
        this.f40093g = z3;
        this.f40094h = z4;
        this.f40095i = z5;
        this.f40096j = z6;
        this.f40097k = null;
        this.f40098l = z7;
        this.f40099m = z8;
        this.f40100n = z9;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C13827k0)) {
                return false;
            }
            C13827k0 c13827k0 = (C13827k0) obj;
            return l.a(this.f40087a, c13827k0.f40087a) && l.a(this.f40088b, c13827k0.f40088b) && l.a(this.f40089c, c13827k0.f40089c) && l.a(this.f40090d, c13827k0.f40090d) && this.f40091e == c13827k0.f40091e && this.f40092f == c13827k0.f40092f && this.f40093g == c13827k0.f40093g && this.f40094h == c13827k0.f40094h && this.f40095i == c13827k0.f40095i && this.f40096j == c13827k0.f40096j && l.a(this.f40097k, c13827k0.f40097k) && this.f40098l == c13827k0.f40098l && this.f40099m == c13827k0.f40099m && this.f40100n == c13827k0.f40100n;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f40087a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f40088b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f40089c;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.f40090d;
        int hashCode4 = str4 != null ? str4.hashCode() : 0;
        boolean z = this.f40091e;
        int i2 = 1;
        int i3 = z ? 1 : 0;
        if (z) {
            i3 = 1;
        }
        boolean z2 = this.f40092f;
        int i4 = z2 ? 1 : 0;
        if (z2) {
            i4 = 1;
        }
        boolean z3 = this.f40093g;
        int i5 = z3 ? 1 : 0;
        if (z3) {
            i5 = 1;
        }
        boolean z4 = this.f40094h;
        int i6 = z4 ? 1 : 0;
        if (z4) {
            i6 = 1;
        }
        boolean z5 = this.f40095i;
        int i7 = z5 ? 1 : 0;
        if (z5) {
            i7 = 1;
        }
        boolean z6 = this.f40096j;
        int i8 = z6 ? 1 : 0;
        if (z6) {
            i8 = 1;
        }
        String str5 = this.f40097k;
        if (str5 != null) {
            i = str5.hashCode();
        }
        boolean z7 = this.f40098l;
        int i9 = z7 ? 1 : 0;
        if (z7) {
            i9 = 1;
        }
        boolean z8 = this.f40099m;
        int i10 = z8 ? 1 : 0;
        if (z8) {
            i10 = 1;
        }
        boolean z9 = this.f40100n;
        if (!z9) {
            i2 = z9 ? 1 : 0;
        }
        return (((((((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i3) * 31) + i4) * 31) + i5) * 31) + i6) * 31) + i7) * 31) + i8) * 31) + i) * 31) + i9) * 31) + i10) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ProfilePictureConfig(profilePictureUrl=");
        m8728C.append(this.f40087a);
        m8728C.append(", normalizedAddress=");
        m8728C.append(this.f40088b);
        m8728C.append(", groupId=");
        m8728C.append(this.f40089c);
        m8728C.append(", letter=");
        m8728C.append(this.f40090d);
        m8728C.append(", isSpam=");
        m8728C.append(this.f40091e);
        m8728C.append(", isGroup=");
        m8728C.append(this.f40092f);
        m8728C.append(", isAlphanumeric=");
        m8728C.append(this.f40093g);
        m8728C.append(", isPremium=");
        m8728C.append(this.f40094h);
        m8728C.append(", isGold=");
        m8728C.append(this.f40095i);
        m8728C.append(", isVerifiedBusiness=");
        m8728C.append(this.f40096j);
        m8728C.append(", availabilityHandle=");
        m8728C.append(this.f40097k);
        m8728C.append(", isCredPrivilege=");
        m8728C.append(this.f40098l);
        m8728C.append(", isPriority=");
        m8728C.append(this.f40099m);
        m8728C.append(", showTruecallerBadge=");
        return C22128a.m8590o(m8728C, this.f40100n, ")");
    }
}
