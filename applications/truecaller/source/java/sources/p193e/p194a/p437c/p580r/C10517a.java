package p193e.p194a.p437c.p580r;

import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import com.truecaller.insights.models.InsightsReminder;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p571k.AbstractC10446a;
import s1.z.c.l;
/* renamed from: e.a.c.r.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/r/a.class */
public final class C10517a {

    /* renamed from: a */
    public final InsightsReminder f31290a;

    /* renamed from: b */
    public final AbstractC10446a f31291b;

    public C10517a(InsightsReminder insightsReminder, AbstractC10446a abstractC10446a) {
        l.e(insightsReminder, "reminder");
        l.e(abstractC10446a, UpdateKey.STATUS);
        this.f31290a = insightsReminder;
        this.f31291b = abstractC10446a;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C10517a)) {
                return false;
            }
            C10517a c10517a = (C10517a) obj;
            return l.a(this.f31290a, c10517a.f31290a) && l.a(this.f31291b, c10517a.f31291b);
        }
        return true;
    }

    public int hashCode() {
        InsightsReminder insightsReminder = this.f31290a;
        int i = 0;
        int hashCode = insightsReminder != null ? insightsReminder.hashCode() : 0;
        AbstractC10446a abstractC10446a = this.f31291b;
        if (abstractC10446a != null) {
            i = abstractC10446a.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("InsightsReminderHolder(reminder=");
        m8728C.append(this.f31290a);
        m8728C.append(", status=");
        m8728C.append(this.f31291b);
        m8728C.append(")");
        return m8728C.toString();
    }
}
