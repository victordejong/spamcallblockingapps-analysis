package p193e.p194a.p437c.p598v.p603h;

import com.razorpay.AnalyticsConstants;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.c.v.h.f */
/* loaded from: classes10-dex2jar.jar:e/a/c/v/h/f.class */
public final class C10740f {

    /* renamed from: a */
    public final int f31898a;

    /* renamed from: b */
    public final String f31899b;

    /* renamed from: c */
    public final String f31900c;

    /* renamed from: d */
    public final String f31901d;

    /* renamed from: e */
    public final Integer f31902e;

    /* renamed from: f */
    public final String f31903f;

    /* renamed from: g */
    public final Integer f31904g;

    /* renamed from: h */
    public final C10737d f31905h;

    public C10740f(int i, String str, String str2, String str3, Integer num, String str4, Integer num2, C10737d c10737d, int i2) {
        Integer num3 = (i2 & 64) != 0 ? null : num2;
        c10737d = (i2 & 128) != 0 ? null : c10737d;
        C22128a.m8699J0(str, "contentTitle", str2, "contentText", str3, AnalyticsConstants.AMOUNT, str4, "dueDateText");
        this.f31898a = i;
        this.f31899b = str;
        this.f31900c = str2;
        this.f31901d = str3;
        this.f31902e = null;
        this.f31903f = str4;
        this.f31904g = num3;
        this.f31905h = c10737d;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C10740f)) {
                return false;
            }
            C10740f c10740f = (C10740f) obj;
            return this.f31898a == c10740f.f31898a && l.a(this.f31899b, c10740f.f31899b) && l.a(this.f31900c, c10740f.f31900c) && l.a(this.f31901d, c10740f.f31901d) && l.a(this.f31902e, c10740f.f31902e) && l.a(this.f31903f, c10740f.f31903f) && l.a(this.f31904g, c10740f.f31904g) && l.a(this.f31905h, c10740f.f31905h);
        }
        return true;
    }

    public int hashCode() {
        int i = this.f31898a;
        String str = this.f31899b;
        int i2 = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f31900c;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f31901d;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        Integer num = this.f31902e;
        int hashCode4 = num != null ? num.hashCode() : 0;
        String str4 = this.f31903f;
        int hashCode5 = str4 != null ? str4.hashCode() : 0;
        Integer num2 = this.f31904g;
        int hashCode6 = num2 != null ? num2.hashCode() : 0;
        C10737d c10737d = this.f31905h;
        if (c10737d != null) {
            i2 = c10737d.hashCode();
        }
        return (((((((((((((i * 31) + hashCode) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ReminderInfoCard(primaryIcon=");
        m8728C.append(this.f31898a);
        m8728C.append(", contentTitle=");
        m8728C.append(this.f31899b);
        m8728C.append(", contentText=");
        m8728C.append(this.f31900c);
        m8728C.append(", amount=");
        m8728C.append(this.f31901d);
        m8728C.append(", amountColor=");
        m8728C.append(this.f31902e);
        m8728C.append(", dueDateText=");
        m8728C.append(this.f31903f);
        m8728C.append(", dueDateTextColor=");
        m8728C.append(this.f31904g);
        m8728C.append(", analyticsInfo=");
        m8728C.append(this.f31905h);
        m8728C.append(")");
        return m8728C.toString();
    }
}
