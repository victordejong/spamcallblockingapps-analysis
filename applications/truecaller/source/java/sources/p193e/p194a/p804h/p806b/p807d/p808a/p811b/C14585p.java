package p193e.p194a.p804h.p806b.p807d.p808a.p811b;

import com.razorpay.AnalyticsConstants;
import com.truecaller.calling.dialer.call_log.data.CallLogItemType;
import com.truecaller.calling.dialer.call_log.items.entries.ContactBadge;
import com.truecaller.data.entity.Contact;
import java.util.Set;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.h.b.d.a.b.p */
/* loaded from: classes3-dex2jar.jar:e/a/h/b/d/a/b/p.class */
public final class C14585p {

    /* renamed from: a */
    public final boolean f41908a;

    /* renamed from: b */
    public final boolean f41909b;

    /* renamed from: c */
    public final boolean f41910c;

    /* renamed from: d */
    public final String f41911d;

    /* renamed from: e */
    public final String f41912e;

    /* renamed from: f */
    public final String f41913f;

    /* renamed from: g */
    public final Contact f41914g;

    /* renamed from: h */
    public final CallLogItemType f41915h;

    /* renamed from: i */
    public final Long f41916i;

    /* renamed from: j */
    public final long f41917j;

    /* renamed from: k */
    public final ContactBadge f41918k;

    /* renamed from: l */
    public final Set<Long> f41919l;

    public C14585p(boolean z, boolean z2, boolean z3, String str, String str2, String str3, Contact contact, CallLogItemType callLogItemType, Long l, long j, ContactBadge contactBadge, Set<Long> set) {
        l.e(str, AnalyticsConstants.NAME);
        l.e(callLogItemType, "itemType");
        l.e(contactBadge, "contactBadge");
        l.e(set, "historyEventIds");
        this.f41908a = z;
        this.f41909b = z2;
        this.f41910c = z3;
        this.f41911d = str;
        this.f41912e = str2;
        this.f41913f = str3;
        this.f41914g = contact;
        this.f41915h = callLogItemType;
        this.f41916i = l;
        this.f41917j = j;
        this.f41918k = contactBadge;
        this.f41919l = set;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C14585p)) {
                return false;
            }
            C14585p c14585p = (C14585p) obj;
            return this.f41908a == c14585p.f41908a && this.f41909b == c14585p.f41909b && this.f41910c == c14585p.f41910c && l.a(this.f41911d, c14585p.f41911d) && l.a(this.f41912e, c14585p.f41912e) && l.a(this.f41913f, c14585p.f41913f) && l.a(this.f41914g, c14585p.f41914g) && l.a(this.f41915h, c14585p.f41915h) && l.a(this.f41916i, c14585p.f41916i) && this.f41917j == c14585p.f41917j && l.a(this.f41918k, c14585p.f41918k) && l.a(this.f41919l, c14585p.f41919l);
        }
        return true;
    }

    public int hashCode() {
        boolean z = this.f41908a;
        int i = 1;
        boolean z2 = z;
        if (z) {
            z2 = true;
        }
        boolean z3 = this.f41909b;
        boolean z4 = z3;
        if (z3) {
            z4 = true;
        }
        boolean z5 = this.f41910c;
        if (!z5) {
            i = z5;
        }
        String str = this.f41911d;
        int i2 = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f41912e;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f41913f;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        Contact contact = this.f41914g;
        int hashCode4 = contact != null ? contact.hashCode() : 0;
        CallLogItemType callLogItemType = this.f41915h;
        int hashCode5 = callLogItemType != null ? callLogItemType.hashCode() : 0;
        Long l = this.f41916i;
        int hashCode6 = l != null ? l.hashCode() : 0;
        int m34274a = C4876d.m34274a(this.f41917j);
        ContactBadge contactBadge = this.f41918k;
        int hashCode7 = contactBadge != null ? contactBadge.hashCode() : 0;
        Set<Long> set = this.f41919l;
        if (set != null) {
            i2 = set.hashCode();
        }
        return ((((((((((((((((((((((z2 ? 1 : 0) * 31) + (z4 ? 1 : 0)) * 31) + i) * 31) + hashCode) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + m34274a) * 31) + hashCode7) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ItemData(isSpam=");
        m8728C.append(this.f41908a);
        m8728C.append(", isCallHidden=");
        m8728C.append(this.f41909b);
        m8728C.append(", isBlocked=");
        m8728C.append(this.f41910c);
        m8728C.append(", name=");
        m8728C.append(this.f41911d);
        m8728C.append(", searchKey=");
        m8728C.append(this.f41912e);
        m8728C.append(", normalizedNumber=");
        m8728C.append(this.f41913f);
        m8728C.append(", contact=");
        m8728C.append(this.f41914g);
        m8728C.append(", itemType=");
        m8728C.append(this.f41915h);
        m8728C.append(", historyId=");
        m8728C.append(this.f41916i);
        m8728C.append(", timestamp=");
        m8728C.append(this.f41917j);
        m8728C.append(", contactBadge=");
        m8728C.append(this.f41918k);
        m8728C.append(", historyEventIds=");
        m8728C.append(this.f41919l);
        m8728C.append(")");
        return m8728C.toString();
    }
}
