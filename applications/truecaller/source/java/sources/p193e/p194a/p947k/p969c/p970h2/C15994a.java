package p193e.p194a.p947k.p969c.p970h2;

import android.os.Bundle;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1146q2.AbstractC19549v;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.z.c.l;
/* renamed from: e.a.k.c.h2.a */
/* loaded from: classes15-dex2jar.jar:e/a/k/c/h2/a.class */
public final class C15994a implements AbstractC19549v {

    /* renamed from: a */
    public final String f45087a;

    public C15994a(String str) {
        l.e(str, "exceptionMessage");
        this.f45087a = str;
    }

    @Override // p193e.p194a.p1146q2.AbstractC19549v
    /* renamed from: a */
    public AbstractC19580x mo9106a() {
        Bundle bundle = new Bundle();
        return C22128a.m8588o1(bundle, "exceptionMessage", this.f45087a, "FetchUploadLinksFailed", bundle);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof C15994a) && l.a(this.f45087a, ((C15994a) obj).f45087a);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f45087a;
        return str != null ? str.hashCode() : 0;
    }

    public String toString() {
        return C22128a.m8618h(C22128a.m8728C("FetchUploadLinksFailedEvent(exceptionMessage="), this.f45087a, ")");
    }
}
