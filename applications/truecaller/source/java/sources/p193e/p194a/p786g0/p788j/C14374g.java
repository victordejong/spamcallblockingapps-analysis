package p193e.p194a.p786g0.p788j;

import android.os.Bundle;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1146q2.AbstractC19549v;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.z.c.l;
/* renamed from: e.a.g0.j.g */
/* loaded from: classes14-dex2jar.jar:e/a/g0/j/g.class */
public final class C14374g implements AbstractC19549v {

    /* renamed from: a */
    public final String f41512a;

    public C14374g(String str) {
        l.e(str, "failureReason");
        this.f41512a = str;
    }

    @Override // p193e.p194a.p1146q2.AbstractC19549v
    /* renamed from: a */
    public AbstractC19580x mo9106a() {
        Bundle bundle = new Bundle();
        return C22128a.m8588o1(bundle, "FailureReason", this.f41512a, "SendFeedbackFailed", bundle);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof C14374g) && l.a(this.f41512a, ((C14374g) obj).f41512a);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f41512a;
        return str != null ? str.hashCode() : 0;
    }

    public String toString() {
        return C22128a.m8618h(C22128a.m8728C("SendFeedbackFailedEvent(failureReason="), this.f41512a, ")");
    }
}
