package p193e.p194a.p786g0.p788j;

import android.os.Bundle;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1146q2.AbstractC19549v;
import p193e.p194a.p1146q2.AbstractC19580x;
import p193e.p194a.p678d4.AbstractC12603e;
import s1.z.c.l;
/* renamed from: e.a.g0.j.f */
/* loaded from: classes14-dex2jar.jar:e/a/g0/j/f.class */
public final class C14373f implements AbstractC19549v {

    /* renamed from: a */
    public final AbstractC12603e f41511a;

    public C14373f(AbstractC12603e abstractC12603e) {
        l.e(abstractC12603e, "engine");
        this.f41511a = abstractC12603e;
    }

    @Override // p193e.p194a.p1146q2.AbstractC19549v
    /* renamed from: a */
    public AbstractC19580x mo9106a() {
        Bundle bundle = new Bundle();
        return C22128a.m8588o1(bundle, "MobileServices", this.f41511a.f36735a, "RecaptchaTriggered", bundle);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof C14373f) && l.a(this.f41511a, ((C14373f) obj).f41511a);
        }
        return true;
    }

    public int hashCode() {
        AbstractC12603e abstractC12603e = this.f41511a;
        return abstractC12603e != null ? abstractC12603e.hashCode() : 0;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("RecaptchaTriggeredEvent(engine=");
        m8728C.append(this.f41511a);
        m8728C.append(")");
        return m8728C.toString();
    }
}
