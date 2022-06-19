package p193e.p194a.p372b0.p411g;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import com.truecaller.common.account.analytics.LogoutContext;
import com.truecaller.log.AssertionUtil;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1041l0.AbstractC17356k;
import p193e.p194a.p1053m0.p1058d1.AbstractC18091a;
import p193e.p194a.p1129p5.AbstractC19251o0;
import p193e.p194a.p1146q2.AbstractC19496e;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.AbstractC8412c;
import p193e.p194a.p432b4.p433a.AbstractC8640d;
/* renamed from: e.a.b0.g.a */
/* loaded from: classes7-dex2jar.jar:e/a/b0/g/a.class */
public abstract class AbstractApplicationC8442a extends Application {

    /* renamed from: a */
    public static volatile AbstractApplicationC8442a f26146a;

    /* renamed from: e.a.b0.g.a$a */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/g/a$a.class */
    public static class C8443a {
    }

    public AbstractApplicationC8442a() {
        f26146a = this;
    }

    /* renamed from: L */
    public static AbstractApplicationC8442a m28551L() {
        AssertionUtil.isTrue(f26146a != null, new String[0]);
        return f26146a;
    }

    /* renamed from: F */
    public abstract int mo28557F();

    /* renamed from: G */
    public abstract String mo28556G();

    /* renamed from: H */
    public abstract int mo28555H();

    /* renamed from: I */
    public abstract String mo28554I();

    /* renamed from: J */
    public abstract String mo28553J();

    @Deprecated
    /* renamed from: K */
    public AbstractC19496e m28552K() {
        return (AbstractC19496e) C25225a.m3812z0(C25225a.m4019F0(getApplicationContext()), AbstractC19496e.class);
    }

    /* renamed from: M */
    public abstract Intent mo28550M(Context context);

    @Deprecated
    /* renamed from: N */
    public AbstractC8412c m28549N() {
        return (AbstractC8412c) C25225a.m3812z0(C25225a.m4019F0(getApplicationContext()), AbstractC8412c.class);
    }

    /* renamed from: O */
    public abstract String mo28548O();

    /* renamed from: P */
    public abstract String mo28547P();

    /* renamed from: Q */
    public abstract AbstractC17356k mo28546Q();

    /* renamed from: R */
    public abstract C20592g mo28545R();

    /* renamed from: S */
    public abstract AbstractC18091a mo28544S();

    /* renamed from: T */
    public String m28543T() {
        String mo28578f = m28549N().mo11657L().mo28578f();
        String str = mo28578f;
        if (mo28578f == null) {
            str = "";
        }
        return str;
    }

    /* renamed from: U */
    public abstract AbstractC8640d mo28542U();

    @Deprecated
    /* renamed from: V */
    public AbstractC19251o0 m28541V() {
        return (AbstractC19251o0) C25225a.m3812z0(C25225a.m4019F0(getApplicationContext()), AbstractC19251o0.class);
    }

    /* renamed from: W */
    public abstract boolean mo28540W();

    /* renamed from: X */
    public abstract boolean mo28539X();

    /* renamed from: Y */
    public abstract boolean mo28538Y();

    /* renamed from: Z */
    public abstract boolean mo28537Z(String str, boolean z, LogoutContext logoutContext) throws SecurityException;

    /* renamed from: a0 */
    public abstract void mo28536a0(boolean z);

    /* renamed from: p */
    public abstract String mo10422p();
}
