package p193e.p194a.p619d.p627b0;

import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import com.truecaller.voip.VoipUserBadge;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.f0.v;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.d.b0.a */
/* loaded from: classes15-dex2jar.jar:e/a/d/b0/a.class */
public final class C11161a {

    /* renamed from: a */
    public final Long f32993a;

    /* renamed from: b */
    public final String f32994b;

    /* renamed from: c */
    public final String f32995c;

    /* renamed from: d */
    public final String f32996d;

    /* renamed from: e */
    public final String f32997e;

    /* renamed from: f */
    public final VoipUserBadge f32998f;

    /* renamed from: g */
    public final boolean f32999g;

    /* renamed from: h */
    public final Integer f33000h;

    /* renamed from: i */
    public final boolean f33001i;

    /* renamed from: j */
    public final boolean f33002j;

    public C11161a(Long l, String str, String str2, String str3, String str4, VoipUserBadge voipUserBadge, boolean z, Integer num, boolean z2, boolean z3) {
        l.e(str2, AnalyticsConstants.NAME);
        l.e(str3, "number");
        l.e(voipUserBadge, "badge");
        this.f32993a = l;
        this.f32994b = str;
        this.f32995c = str2;
        this.f32996d = str3;
        this.f32997e = str4;
        this.f32998f = voipUserBadge;
        this.f32999g = z;
        this.f33000h = num;
        this.f33001i = z2;
        this.f33002j = z3;
    }

    /* renamed from: a */
    public final String m25084a() {
        return (String) i.B(v.U(this.f32995c, new String[]{StringConstant.SPACE}, false, 0, 6));
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C11161a)) {
                return false;
            }
            C11161a c11161a = (C11161a) obj;
            return l.a(this.f32993a, c11161a.f32993a) && l.a(this.f32994b, c11161a.f32994b) && l.a(this.f32995c, c11161a.f32995c) && l.a(this.f32996d, c11161a.f32996d) && l.a(this.f32997e, c11161a.f32997e) && l.a(this.f32998f, c11161a.f32998f) && this.f32999g == c11161a.f32999g && l.a(this.f33000h, c11161a.f33000h) && this.f33001i == c11161a.f33001i && this.f33002j == c11161a.f33002j;
        }
        return true;
    }

    public int hashCode() {
        Long l = this.f32993a;
        int i = 0;
        int hashCode = l != null ? l.hashCode() : 0;
        String str = this.f32994b;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.f32995c;
        int hashCode3 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f32996d;
        int hashCode4 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.f32997e;
        int hashCode5 = str4 != null ? str4.hashCode() : 0;
        VoipUserBadge voipUserBadge = this.f32998f;
        int hashCode6 = voipUserBadge != null ? voipUserBadge.hashCode() : 0;
        boolean z = this.f32999g;
        int i2 = 1;
        int i3 = z ? 1 : 0;
        if (z) {
            i3 = 1;
        }
        Integer num = this.f33000h;
        if (num != null) {
            i = num.hashCode();
        }
        boolean z2 = this.f33001i;
        int i4 = z2 ? 1 : 0;
        if (z2) {
            i4 = 1;
        }
        boolean z3 = this.f33002j;
        if (!z3) {
            i2 = z3 ? 1 : 0;
        }
        return (((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + i3) * 31) + i) * 31) + i4) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CallUser(phoneBookId=");
        m8728C.append(this.f32993a);
        m8728C.append(", contactId=");
        m8728C.append(this.f32994b);
        m8728C.append(", name=");
        m8728C.append(this.f32995c);
        m8728C.append(", number=");
        m8728C.append(this.f32996d);
        m8728C.append(", pictureUrl=");
        m8728C.append(this.f32997e);
        m8728C.append(", badge=");
        m8728C.append(this.f32998f);
        m8728C.append(", blocked=");
        m8728C.append(this.f32999g);
        m8728C.append(", spamScore=");
        m8728C.append(this.f33000h);
        m8728C.append(", isPhoneBookUser=");
        m8728C.append(this.f33001i);
        m8728C.append(", isUnknown=");
        return C22128a.m8590o(m8728C, this.f33002j, ")");
    }
}
