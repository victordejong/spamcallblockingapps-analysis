package p193e.p194a.p786g0.p788j;

import android.os.Bundle;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1146q2.AbstractC19549v;
import p193e.p194a.p1146q2.AbstractC19580x;
import p193e.p194a.p678d4.AbstractC12603e;
import s1.z.c.l;
/* renamed from: e.a.g0.j.c */
/* loaded from: classes14-dex2jar.jar:e/a/g0/j/c.class */
public final class C14370c implements AbstractC19549v {

    /* renamed from: a */
    public final AbstractC12603e f41498a;

    /* renamed from: b */
    public final String f41499b;

    public C14370c(AbstractC12603e abstractC12603e, String str) {
        l.e(abstractC12603e, "engine");
        l.e(str, "failureReason");
        this.f41498a = abstractC12603e;
        this.f41499b = str;
    }

    @Override // p193e.p194a.p1146q2.AbstractC19549v
    /* renamed from: a */
    public AbstractC19580x mo9106a() {
        Bundle bundle = new Bundle();
        bundle.putString("MobileServices", this.f41498a.f36735a);
        return C22128a.m8588o1(bundle, "FailureReason", this.f41499b, "RecaptchaFailed", bundle);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C14370c)) {
                return false;
            }
            C14370c c14370c = (C14370c) obj;
            return l.a(this.f41498a, c14370c.f41498a) && l.a(this.f41499b, c14370c.f41499b);
        }
        return true;
    }

    public int hashCode() {
        AbstractC12603e abstractC12603e = this.f41498a;
        int i = 0;
        int hashCode = abstractC12603e != null ? abstractC12603e.hashCode() : 0;
        String str = this.f41499b;
        if (str != null) {
            i = str.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("RecaptchaFailedEvent(engine=");
        m8728C.append(this.f41498a);
        m8728C.append(", failureReason=");
        return C22128a.m8618h(m8728C, this.f41499b, ")");
    }
}
