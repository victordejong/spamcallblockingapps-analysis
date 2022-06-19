package p193e.p194a.p437c.p438a.p494m.p496b;

import com.truecaller.insights.models.pdo.ParsedDataObject;
import com.truecaller.insights.models.pdo.SmsBackup;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.c.a.m.b.s */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/m/b/s.class */
public final class C9284s {

    /* renamed from: a */
    public final SmsBackup f28253a;

    /* renamed from: b */
    public final ParsedDataObject f28254b;

    public C9284s(SmsBackup smsBackup, ParsedDataObject parsedDataObject) {
        l.e(smsBackup, "smsBackup");
        this.f28253a = smsBackup;
        this.f28254b = parsedDataObject;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C9284s)) {
                return false;
            }
            C9284s c9284s = (C9284s) obj;
            return l.a(this.f28253a, c9284s.f28253a) && l.a(this.f28254b, c9284s.f28254b);
        }
        return true;
    }

    public int hashCode() {
        SmsBackup smsBackup = this.f28253a;
        int i = 0;
        int hashCode = smsBackup != null ? smsBackup.hashCode() : 0;
        ParsedDataObject parsedDataObject = this.f28254b;
        if (parsedDataObject != null) {
            i = parsedDataObject.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SmsBackupWithPdo(smsBackup=");
        m8728C.append(this.f28253a);
        m8728C.append(", pdo=");
        m8728C.append(this.f28254b);
        m8728C.append(")");
        return m8728C.toString();
    }
}
