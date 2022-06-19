package p193e.p194a.p619d.p637c0;

import com.truecaller.voip.VoipUserBadge;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.d.c0.f1 */
/* loaded from: classes15-dex2jar.jar:e/a/d/c0/f1.class */
public final class C11406f1 {

    /* renamed from: a */
    public final Long f33499a;

    /* renamed from: b */
    public final String f33500b;

    /* renamed from: c */
    public final String f33501c;

    /* renamed from: d */
    public final String f33502d;

    /* renamed from: e */
    public final String f33503e;

    /* renamed from: f */
    public final boolean f33504f;

    /* renamed from: g */
    public final Integer f33505g;

    /* renamed from: h */
    public final boolean f33506h;

    /* renamed from: i */
    public final boolean f33507i;

    /* renamed from: j */
    public final VoipUserBadge f33508j;

    public C11406f1(Long l, String str, String str2, String str3, String str4, boolean z, Integer num, boolean z2, boolean z3, VoipUserBadge voipUserBadge, int i) {
        str = (i & 2) != 0 ? null : str;
        l.e(str2, "profileName");
        l.e(str4, "phoneNumber");
        l.e(voipUserBadge, "badge");
        this.f33499a = null;
        this.f33500b = str;
        this.f33501c = str2;
        this.f33502d = str3;
        this.f33503e = str4;
        this.f33504f = z;
        this.f33505g = num;
        this.f33506h = z2;
        this.f33507i = z3;
        this.f33508j = voipUserBadge;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C11406f1)) {
                return false;
            }
            C11406f1 c11406f1 = (C11406f1) obj;
            return l.a(this.f33499a, c11406f1.f33499a) && l.a(this.f33500b, c11406f1.f33500b) && l.a(this.f33501c, c11406f1.f33501c) && l.a(this.f33502d, c11406f1.f33502d) && l.a(this.f33503e, c11406f1.f33503e) && this.f33504f == c11406f1.f33504f && l.a(this.f33505g, c11406f1.f33505g) && this.f33506h == c11406f1.f33506h && this.f33507i == c11406f1.f33507i && l.a(this.f33508j, c11406f1.f33508j);
        }
        return true;
    }

    public int hashCode() {
        Long l = this.f33499a;
        int i = 0;
        int hashCode = l != null ? l.hashCode() : 0;
        String str = this.f33500b;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.f33501c;
        int hashCode3 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f33502d;
        int hashCode4 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.f33503e;
        int hashCode5 = str4 != null ? str4.hashCode() : 0;
        boolean z = this.f33504f;
        int i2 = 1;
        int i3 = z ? 1 : 0;
        if (z) {
            i3 = 1;
        }
        Integer num = this.f33505g;
        int hashCode6 = num != null ? num.hashCode() : 0;
        boolean z2 = this.f33506h;
        int i4 = z2 ? 1 : 0;
        if (z2) {
            i4 = 1;
        }
        boolean z3 = this.f33507i;
        if (!z3) {
            i2 = z3 ? 1 : 0;
        }
        VoipUserBadge voipUserBadge = this.f33508j;
        if (voipUserBadge != null) {
            i = voipUserBadge.hashCode();
        }
        return (((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + i3) * 31) + hashCode6) * 31) + i4) * 31) + i2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("VoipSearchResult(phoneBookId=");
        m8728C.append(this.f33499a);
        m8728C.append(", contactId=");
        m8728C.append(this.f33500b);
        m8728C.append(", profileName=");
        m8728C.append(this.f33501c);
        m8728C.append(", profilePictureUrl=");
        m8728C.append(this.f33502d);
        m8728C.append(", phoneNumber=");
        m8728C.append(this.f33503e);
        m8728C.append(", blocked=");
        m8728C.append(this.f33504f);
        m8728C.append(", spamScore=");
        m8728C.append(this.f33505g);
        m8728C.append(", isPhonebookContact=");
        m8728C.append(this.f33506h);
        m8728C.append(", isUnknown=");
        m8728C.append(this.f33507i);
        m8728C.append(", badge=");
        m8728C.append(this.f33508j);
        m8728C.append(")");
        return m8728C.toString();
    }
}
