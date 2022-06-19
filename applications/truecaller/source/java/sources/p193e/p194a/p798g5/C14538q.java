package p193e.p194a.p798g5;

import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.Tag;
import java.util.Set;
import javax.inject.Inject;
import p193e.p194a.p1129p5.C19231g0;
import p193e.p194a.p372b0.p426p.AbstractC8552d;
import p193e.p194a.p372b0.p426p.C8551c;
import s1.z.c.l;
import w3.c.a.a.a.h;
/* renamed from: e.a.g5.q */
/* loaded from: classes14-dex2jar.jar:e/a/g5/q.class */
public final class C14538q implements AbstractC14537p {

    /* renamed from: a */
    public final AbstractC8552d f41818a;

    @Inject
    public C14538q(AbstractC8552d abstractC8552d) {
        l.e(abstractC8552d, "tagManager");
        this.f41818a = abstractC8552d;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0050  */
    @Override // p193e.p194a.p798g5.AbstractC14537p
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p194a.p372b0.p426p.C8551c mo20026a(p193e.p194a.p372b0.p426p.C8551c r11) {
        /*
            r10 = this;
            r0 = r11
            java.lang.String r1 = "tag"
            s1.z.c.l.e(r0, r1)
            r0 = r11
            long r0 = r0.f26352c
            r12 = r0
            r0 = r12
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L1e
            r0 = r11
            java.lang.Long r0 = r0.f26353d
            r14 = r0
        L17:
            r0 = r14
            r15 = r0
            goto L3c
        L1e:
            r0 = r10
            e.a.b0.p.d r0 = r0.f41818a
            r1 = r12
            e.a.b0.p.c r0 = r0.mo28396h(r1)
            r14 = r0
            r0 = r14
            if (r0 == 0) goto L39
            r0 = r14
            java.lang.Long r0 = r0.f26353d
            r14 = r0
            goto L17
        L39:
            r0 = 0
            r15 = r0
        L3c:
            r0 = r11
            long r0 = r0.f26352c
            r12 = r0
            r0 = r12
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L50
            r0 = r11
            java.lang.String r0 = r0.f26354e
            r14 = r0
        L4d:
            goto L6e
        L50:
            r0 = r10
            e.a.b0.p.d r0 = r0.f41818a
            r1 = r12
            e.a.b0.p.c r0 = r0.mo28396h(r1)
            r14 = r0
            r0 = r14
            if (r0 == 0) goto L6b
            r0 = r14
            java.lang.String r0 = r0.f26354e
            r14 = r0
            goto L4d
        L6b:
            r0 = 0
            r14 = r0
        L6e:
            r0 = r11
            r1 = 0
            r2 = 0
            r3 = 0
            r4 = r15
            r5 = r14
            r6 = 7
            e.a.b0.p.c r0 = p193e.p194a.p372b0.p426p.C8551c.m28404a(r0, r1, r2, r3, r4, r5, r6)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p798g5.C14538q.mo20026a(e.a.b0.p.c):e.a.b0.p.c");
    }

    @Override // p193e.p194a.p798g5.AbstractC14537p
    /* renamed from: b */
    public C8551c mo20025b(Contact contact) {
        int i;
        l.e(contact, AnalyticsConstants.CONTACT);
        C8551c c8551c = null;
        Tag tag = null;
        for (Tag tag2 : contact.m35524d0()) {
            l.d(tag2, RemoteMessageConst.Notification.TAG);
            String value = tag2.getValue();
            Set<Character> set = C19231g0.f53598a;
            if (h.j(value)) {
                i = 0;
            } else {
                try {
                    i = Integer.parseInt(value);
                } catch (NumberFormatException e) {
                    i = 0;
                }
            }
            long j = i;
            if (j == -1 && m20022e(tag2)) {
                return null;
            }
            C8551c mo28396h = this.f41818a.mo28396h(j);
            if (mo28396h != null && (tag == null || ((m20022e(tag2) && !m20022e(tag)) || (m20023d(mo28396h) && !m20023d(c8551c))))) {
                tag = tag2;
                c8551c = mo28396h;
            }
        }
        C8551c c8551c2 = null;
        if (c8551c != null) {
            c8551c2 = mo20026a(c8551c);
        }
        return c8551c2;
    }

    @Override // p193e.p194a.p798g5.AbstractC14537p
    /* renamed from: c */
    public C8551c mo20024c(long j) {
        C8551c mo28396h = this.f41818a.mo28396h(j);
        return mo28396h != null ? mo20026a(mo28396h) : null;
    }

    /* renamed from: d */
    public final boolean m20023d(C8551c c8551c) {
        return ((c8551c != null ? Long.valueOf(c8551c.f26352c) : null) == null || c8551c.f26352c == 0) ? false : true;
    }

    /* renamed from: e */
    public final boolean m20022e(Tag tag) {
        return (tag.getSource() & 16) != 0;
    }
}
