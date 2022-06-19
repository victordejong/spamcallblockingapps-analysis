package p193e.p194a.p437c.p580r.p590k;

import android.app.PendingIntent;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.c.r.k.e */
/* loaded from: classes10-dex2jar.jar:e/a/c/r/k/e.class */
public final class C10647e {

    /* renamed from: a */
    public final String f31725a;

    /* renamed from: b */
    public final PendingIntent f31726b;

    public C10647e(String str, PendingIntent pendingIntent) {
        l.e(str, "actionText");
        this.f31725a = str;
        this.f31726b = pendingIntent;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C10647e)) {
                return false;
            }
            C10647e c10647e = (C10647e) obj;
            return l.a(this.f31725a, c10647e.f31725a) && l.a(this.f31726b, c10647e.f31726b);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f31725a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        PendingIntent pendingIntent = this.f31726b;
        if (pendingIntent != null) {
            i = pendingIntent.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("PendingIntentWithActionText(actionText=");
        m8728C.append(this.f31725a);
        m8728C.append(", pendingIntent=");
        m8728C.append(this.f31726b);
        m8728C.append(")");
        return m8728C.toString();
    }
}
