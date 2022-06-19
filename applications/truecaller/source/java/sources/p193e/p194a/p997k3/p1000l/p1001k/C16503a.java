package p193e.p194a.p997k3.p1000l.p1001k;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.k3.l.k.a */
/* loaded from: classes8-dex2jar.jar:e/a/k3/l/k/a.class */
public final class C16503a {

    /* renamed from: a */
    public final String f46397a;

    /* renamed from: b */
    public final int f46398b;

    /* renamed from: c */
    public final String f46399c;

    /* renamed from: d */
    public final String f46400d;

    /* renamed from: e */
    public final String f46401e;

    /* renamed from: f */
    public final String f46402f;

    /* renamed from: g */
    public final String f46403g;

    /* renamed from: h */
    public final long f46404h;

    /* renamed from: i */
    public final String f46405i;

    /* renamed from: j */
    public final int f46406j;

    /* renamed from: k */
    public final long f46407k;

    /* renamed from: l */
    public final Long f46408l;

    public C16503a(String str, int i, String str2, String str3, String str4, String str5, String str6, long j, String str7, int i2, long j2, Long l) {
        l.e(str, "imPeerId");
        this.f46397a = str;
        this.f46398b = i;
        this.f46399c = str2;
        this.f46400d = str3;
        this.f46401e = str4;
        this.f46402f = str5;
        this.f46403g = str6;
        this.f46404h = j;
        this.f46405i = str7;
        this.f46406j = i2;
        this.f46407k = j2;
        this.f46408l = l;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C16503a)) {
                return false;
            }
            C16503a c16503a = (C16503a) obj;
            return l.a(this.f46397a, c16503a.f46397a) && this.f46398b == c16503a.f46398b && l.a(this.f46399c, c16503a.f46399c) && l.a(this.f46400d, c16503a.f46400d) && l.a(this.f46401e, c16503a.f46401e) && l.a(this.f46402f, c16503a.f46402f) && l.a(this.f46403g, c16503a.f46403g) && this.f46404h == c16503a.f46404h && l.a(this.f46405i, c16503a.f46405i) && this.f46406j == c16503a.f46406j && this.f46407k == c16503a.f46407k && l.a(this.f46408l, c16503a.f46408l);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f46397a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        int i2 = this.f46398b;
        String str2 = this.f46399c;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f46400d;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.f46401e;
        int hashCode4 = str4 != null ? str4.hashCode() : 0;
        String str5 = this.f46402f;
        int hashCode5 = str5 != null ? str5.hashCode() : 0;
        String str6 = this.f46403g;
        int hashCode6 = str6 != null ? str6.hashCode() : 0;
        int m34274a = C4876d.m34274a(this.f46404h);
        String str7 = this.f46405i;
        int hashCode7 = str7 != null ? str7.hashCode() : 0;
        int i3 = this.f46406j;
        int m34274a2 = C4876d.m34274a(this.f46407k);
        Long l = this.f46408l;
        if (l != null) {
            i = l.hashCode();
        }
        return (((((((((((((((((((((hashCode * 31) + i2) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + m34274a) * 31) + hashCode7) * 31) + i3) * 31) + m34274a2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ImGroupParticipant(imPeerId=");
        m8728C.append(this.f46397a);
        m8728C.append(", roles=");
        m8728C.append(this.f46398b);
        m8728C.append(", normalizedNumber=");
        m8728C.append(this.f46399c);
        m8728C.append(", rawNumber=");
        m8728C.append(this.f46400d);
        m8728C.append(", name=");
        m8728C.append(this.f46401e);
        m8728C.append(", publicName=");
        m8728C.append(this.f46402f);
        m8728C.append(", imageUrl=");
        m8728C.append(this.f46403g);
        m8728C.append(", phonebookId=");
        m8728C.append(this.f46404h);
        m8728C.append(", tcContactId=");
        m8728C.append(this.f46405i);
        m8728C.append(", source=");
        m8728C.append(this.f46406j);
        m8728C.append(", searchTime=");
        m8728C.append(this.f46407k);
        m8728C.append(", cacheTtl=");
        m8728C.append(this.f46408l);
        m8728C.append(")");
        return m8728C.toString();
    }
}
