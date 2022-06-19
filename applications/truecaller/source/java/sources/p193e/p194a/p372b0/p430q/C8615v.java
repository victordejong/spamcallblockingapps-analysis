package p193e.p194a.p372b0.p430q;

import com.truecaller.log.AssertionUtil;
import s1.s;
import s1.z.b.a;
/* renamed from: e.a.b0.q.v */
/* loaded from: classes7-dex2jar.jar:e/a/b0/q/v.class */
public final class C8615v {

    /* renamed from: a */
    public boolean f26466a;

    /* renamed from: b */
    public final a<s> f26467b;

    public C8615v(a<s> aVar) {
        this.f26467b = aVar;
    }

    public C8615v(a aVar, int i) {
        this.f26467b = null;
    }

    /* renamed from: a */
    public final void m28195a() {
        a<s> aVar = this.f26467b;
        if (aVar == null) {
            AssertionUtil.reportWeirdnessButNeverCrash("Constructor-provided callback is null. Use invoke(callback: () -> Unit)");
        } else {
            m28194b(aVar);
        }
    }

    /* renamed from: b */
    public final void m28194b(a<s> aVar) {
        synchronized (this) {
            if (!this.f26466a) {
                this.f26466a = true;
                aVar.invoke();
            }
        }
    }
}
