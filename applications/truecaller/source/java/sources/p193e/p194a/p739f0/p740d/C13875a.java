package p193e.p194a.p739f0.p740d;

import android.os.Bundle;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1146q2.AbstractC19549v;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.z.c.l;
/* renamed from: e.a.f0.d.a */
/* loaded from: classes13-dex2jar.jar:e/a/f0/d/a.class */
public final class C13875a implements AbstractC19549v {

    /* renamed from: a */
    public final String f40241a;

    /* renamed from: b */
    public final String f40242b;

    public C13875a(String str, String str2) {
        l.e(str, "eventName");
        this.f40241a = str;
        this.f40242b = str2;
    }

    @Override // p193e.p194a.p1146q2.AbstractC19549v
    /* renamed from: a */
    public AbstractC19580x mo9106a() {
        String str = this.f40241a;
        Bundle bundle = new Bundle();
        String str2 = this.f40242b;
        if (str2 != null) {
            bundle.putString("source", str2);
        }
        return new AbstractC19580x.C19582b(str, bundle);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C13875a)) {
                return false;
            }
            C13875a c13875a = (C13875a) obj;
            return l.a(this.f40241a, c13875a.f40241a) && l.a(this.f40242b, c13875a.f40242b);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f40241a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f40242b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SocialMediaEvent(eventName=");
        m8728C.append(this.f40241a);
        m8728C.append(", source=");
        return C22128a.m8618h(m8728C, this.f40242b, ")");
    }
}
