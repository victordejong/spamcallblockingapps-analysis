package p193e.p194a.p619d.p637c0;

import com.razorpay.AnalyticsConstants;
import com.truecaller.voip.VoipUserBadge;
import java.util.Set;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.d.c0.k1 */
/* loaded from: classes15-dex2jar.jar:e/a/d/c0/k1.class */
public final class C11426k1 {

    /* renamed from: a */
    public final String f33565a;

    /* renamed from: b */
    public final Set<String> f33566b;

    /* renamed from: c */
    public final Long f33567c;

    /* renamed from: d */
    public final String f33568d;

    /* renamed from: e */
    public final String f33569e;

    /* renamed from: f */
    public final boolean f33570f;

    /* renamed from: g */
    public final boolean f33571g;

    /* renamed from: h */
    public final VoipUserBadge f33572h;

    /* renamed from: i */
    public final int f33573i;

    /* renamed from: j */
    public final boolean f33574j;

    public C11426k1(String str, Set<String> set, Long l, String str2, String str3, boolean z, boolean z2, VoipUserBadge voipUserBadge, int i, boolean z3) {
        l.e(set, "numbers");
        l.e(str2, AnalyticsConstants.NAME);
        l.e(voipUserBadge, "badge");
        this.f33565a = str;
        this.f33566b = set;
        this.f33567c = l;
        this.f33568d = str2;
        this.f33569e = str3;
        this.f33570f = z;
        this.f33571g = z2;
        this.f33572h = voipUserBadge;
        this.f33573i = i;
        this.f33574j = z3;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C11426k1)) {
                return false;
            }
            C11426k1 c11426k1 = (C11426k1) obj;
            return l.a(this.f33565a, c11426k1.f33565a) && l.a(this.f33566b, c11426k1.f33566b) && l.a(this.f33567c, c11426k1.f33567c) && l.a(this.f33568d, c11426k1.f33568d) && l.a(this.f33569e, c11426k1.f33569e) && this.f33570f == c11426k1.f33570f && this.f33571g == c11426k1.f33571g && l.a(this.f33572h, c11426k1.f33572h) && this.f33573i == c11426k1.f33573i && this.f33574j == c11426k1.f33574j;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f33565a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        Set<String> set = this.f33566b;
        int hashCode2 = set != null ? set.hashCode() : 0;
        Long l = this.f33567c;
        int hashCode3 = l != null ? l.hashCode() : 0;
        String str2 = this.f33568d;
        int hashCode4 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f33569e;
        int hashCode5 = str3 != null ? str3.hashCode() : 0;
        boolean z = this.f33570f;
        int i2 = 1;
        int i3 = z ? 1 : 0;
        if (z) {
            i3 = 1;
        }
        boolean z2 = this.f33571g;
        int i4 = z2 ? 1 : 0;
        if (z2) {
            i4 = 1;
        }
        VoipUserBadge voipUserBadge = this.f33572h;
        if (voipUserBadge != null) {
            i = voipUserBadge.hashCode();
        }
        int i5 = this.f33573i;
        boolean z3 = this.f33574j;
        if (!z3) {
            i2 = z3 ? 1 : 0;
        }
        return (((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + i3) * 31) + i4) * 31) + i) * 31) + i5) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("VoipSupportContact(contactId=");
        m8728C.append(this.f33565a);
        m8728C.append(", numbers=");
        m8728C.append(this.f33566b);
        m8728C.append(", phonebookId=");
        m8728C.append(this.f33567c);
        m8728C.append(", name=");
        m8728C.append(this.f33568d);
        m8728C.append(", pictureUrl=");
        m8728C.append(this.f33569e);
        m8728C.append(", isPhonebook=");
        m8728C.append(this.f33570f);
        m8728C.append(", isUnknown=");
        m8728C.append(this.f33571g);
        m8728C.append(", badge=");
        m8728C.append(this.f33572h);
        m8728C.append(", spamScore=");
        m8728C.append(this.f33573i);
        m8728C.append(", isStale=");
        return C22128a.m8590o(m8728C, this.f33574j, ")");
    }
}
