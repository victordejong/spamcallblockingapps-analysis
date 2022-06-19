package p193e.p194a.p682e.p684b;

import com.razorpay.AnalyticsConstants;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1146q2.AbstractC19549v;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.z.c.l;
/* renamed from: e.a.e.b.f */
/* loaded from: classes15-dex2jar.jar:e/a/e/b/f.class */
public final class C12918f implements AbstractC19549v {

    /* renamed from: a */
    public final String f37524a;

    /* renamed from: b */
    public final String f37525b;

    /* renamed from: c */
    public final String f37526c;

    public C12918f(String str, String str2, String str3) {
        C22128a.m8703I0(str, AnalyticsConstants.CONTEXT, str2, "setting", str3, "state");
        this.f37524a = str;
        this.f37525b = str2;
        this.f37526c = str3;
    }

    @Override // p193e.p194a.p1146q2.AbstractC19549v
    /* renamed from: a */
    public AbstractC19580x mo9106a() {
        return AbstractC19580x.C19583c.f54428a;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C12918f)) {
                return false;
            }
            C12918f c12918f = (C12918f) obj;
            return l.a(this.f37524a, c12918f.f37524a) && l.a(this.f37525b, c12918f.f37525b) && l.a(this.f37526c, c12918f.f37526c);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f37524a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f37525b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f37526c;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SettingsUIEvent(context=");
        m8728C.append(this.f37524a);
        m8728C.append(", setting=");
        m8728C.append(this.f37525b);
        m8728C.append(", state=");
        return C22128a.m8618h(m8728C, this.f37526c, ")");
    }
}
