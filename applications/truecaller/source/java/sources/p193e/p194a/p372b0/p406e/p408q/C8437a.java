package p193e.p194a.p372b0.p406e.p408q;

import android.accounts.AccountManager;
import javax.inject.Inject;
import javax.inject.Named;
import s1.z.c.l;
/* renamed from: e.a.b0.e.q.a */
/* loaded from: classes7-dex2jar.jar:e/a/b0/e/q/a.class */
public final class C8437a {

    /* renamed from: a */
    public final AccountManager f26140a;

    /* renamed from: b */
    public final String f26141b;

    @Inject
    public C8437a(AccountManager accountManager, @Named("account_type") String str) {
        l.e(accountManager, "accountManager");
        l.e(str, "accountType");
        this.f26140a = accountManager;
        this.f26141b = str;
    }
}
