package p193e.p194a.p372b0.p406e.p407p;

import android.os.Bundle;
import com.razorpay.AnalyticsConstants;
import com.truecaller.common.account.analytics.LogoutContext;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1146q2.AbstractC19549v;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.z.c.l;
/* renamed from: e.a.b0.e.p.a */
/* loaded from: classes7-dex2jar.jar:e/a/b0/e/p/a.class */
public final class C8436a implements AbstractC19549v {

    /* renamed from: a */
    public final LogoutContext f26139a;

    public C8436a(LogoutContext logoutContext) {
        l.e(logoutContext, AnalyticsConstants.CONTEXT);
        this.f26139a = logoutContext;
    }

    @Override // p193e.p194a.p1146q2.AbstractC19549v
    /* renamed from: a */
    public AbstractC19580x mo9106a() {
        Bundle bundle = new Bundle();
        bundle.putString("Context", this.f26139a.getValue());
        return new AbstractC19580x.C19582b("Logout", bundle);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof C8436a) && l.a(this.f26139a, ((C8436a) obj).f26139a);
        }
        return true;
    }

    public int hashCode() {
        LogoutContext logoutContext = this.f26139a;
        return logoutContext != null ? logoutContext.hashCode() : 0;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("LogoutEvent(context=");
        m8728C.append(this.f26139a);
        m8728C.append(")");
        return m8728C.toString();
    }
}
