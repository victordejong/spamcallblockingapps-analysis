package p193e.p194a.p437c.p598v.p604i;

import com.truecaller.insights.reminders.actions.binders.BillReminderMeta;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p598v.p603h.AbstractC10738e;
import s1.z.c.l;
/* renamed from: e.a.c.v.i.g */
/* loaded from: classes10-dex2jar.jar:e/a/c/v/i/g.class */
public final class C10748g {

    /* renamed from: a */
    public final BillReminderMeta f31935a;

    /* renamed from: b */
    public final String f31936b;

    /* renamed from: c */
    public final AbstractC10738e f31937c;

    /* renamed from: d */
    public final int f31938d;

    public C10748g(BillReminderMeta billReminderMeta, String str, AbstractC10738e abstractC10738e, int i) {
        l.e(billReminderMeta, "reminderMeta");
        l.e(str, "reminderRefId");
        l.e(abstractC10738e, "category");
        this.f31935a = billReminderMeta;
        this.f31936b = str;
        this.f31937c = abstractC10738e;
        this.f31938d = i;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C10748g)) {
                return false;
            }
            C10748g c10748g = (C10748g) obj;
            return l.a(this.f31935a, c10748g.f31935a) && l.a(this.f31936b, c10748g.f31936b) && l.a(this.f31937c, c10748g.f31937c) && this.f31938d == c10748g.f31938d;
        }
        return true;
    }

    public int hashCode() {
        BillReminderMeta billReminderMeta = this.f31935a;
        int i = 0;
        int hashCode = billReminderMeta != null ? billReminderMeta.hashCode() : 0;
        String str = this.f31936b;
        int hashCode2 = str != null ? str.hashCode() : 0;
        AbstractC10738e abstractC10738e = this.f31937c;
        if (abstractC10738e != null) {
            i = abstractC10738e.hashCode();
        }
        return (((((hashCode * 31) + hashCode2) * 31) + i) * 31) + this.f31938d;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ReminderCommonParams(reminderMeta=");
        m8728C.append(this.f31935a);
        m8728C.append(", reminderRefId=");
        m8728C.append(this.f31936b);
        m8728C.append(", category=");
        m8728C.append(this.f31937c);
        m8728C.append(", notificationId=");
        return C22128a.m8697J2(m8728C, this.f31938d, ")");
    }
}
