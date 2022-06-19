package p193e.p194a.p619d.p643d.p650c;

import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.Number;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.d.d.c.a */
/* loaded from: classes15-dex2jar.jar:e/a/d/d/c/a.class */
public final class C11694a {

    /* renamed from: a */
    public final Contact f34312a;

    /* renamed from: b */
    public final Number f34313b;

    /* renamed from: c */
    public final String f34314c;

    /* renamed from: d */
    public boolean f34315d;

    /* renamed from: e */
    public final boolean f34316e;

    /* renamed from: f */
    public final boolean f34317f;

    /* renamed from: g */
    public final boolean f34318g;

    public C11694a(Contact contact, Number number, String str, boolean z, boolean z2, boolean z3, boolean z4) {
        l.e(contact, AnalyticsConstants.CONTACT);
        l.e(number, "number");
        l.e(str, AnalyticsConstants.NAME);
        this.f34312a = contact;
        this.f34313b = number;
        this.f34314c = str;
        this.f34315d = z;
        this.f34316e = z2;
        this.f34317f = z3;
        this.f34318g = z4;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C11694a)) {
                return false;
            }
            C11694a c11694a = (C11694a) obj;
            return l.a(this.f34312a, c11694a.f34312a) && l.a(this.f34313b, c11694a.f34313b) && l.a(this.f34314c, c11694a.f34314c) && this.f34315d == c11694a.f34315d && this.f34316e == c11694a.f34316e && this.f34317f == c11694a.f34317f && this.f34318g == c11694a.f34318g;
        }
        return true;
    }

    public int hashCode() {
        Contact contact = this.f34312a;
        int i = 0;
        int hashCode = contact != null ? contact.hashCode() : 0;
        Number number = this.f34313b;
        int hashCode2 = number != null ? number.hashCode() : 0;
        String str = this.f34314c;
        if (str != null) {
            i = str.hashCode();
        }
        boolean z = this.f34315d;
        int i2 = 1;
        int i3 = z ? 1 : 0;
        if (z) {
            i3 = 1;
        }
        boolean z2 = this.f34316e;
        int i4 = z2 ? 1 : 0;
        if (z2) {
            i4 = 1;
        }
        boolean z3 = this.f34317f;
        int i5 = z3 ? 1 : 0;
        if (z3) {
            i5 = 1;
        }
        boolean z4 = this.f34318g;
        if (!z4) {
            i2 = z4 ? 1 : 0;
        }
        return (((((((((((hashCode * 31) + hashCode2) * 31) + i) * 31) + i3) * 31) + i4) * 31) + i5) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("VoipContact(contact=");
        m8728C.append(this.f34312a);
        m8728C.append(", number=");
        m8728C.append(this.f34313b);
        m8728C.append(", name=");
        m8728C.append(this.f34314c);
        m8728C.append(", isSelected=");
        m8728C.append(this.f34315d);
        m8728C.append(", isSelectable=");
        m8728C.append(this.f34316e);
        m8728C.append(", hasMultipleNumbers=");
        m8728C.append(this.f34317f);
        m8728C.append(", isPhonebookContact=");
        return C22128a.m8590o(m8728C, this.f34318g, ")");
    }
}
