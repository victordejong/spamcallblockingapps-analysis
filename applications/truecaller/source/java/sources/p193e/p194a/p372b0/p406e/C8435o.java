package p193e.p194a.p372b0.p406e;

import com.truecaller.account.network.AccountPhoneNumberDto;
import java.util.concurrent.TimeUnit;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.b0.e.o */
/* loaded from: classes7-dex2jar.jar:e/a/b0/e/o.class */
public final class C8435o {

    /* renamed from: a */
    public static final long f26134a;

    /* renamed from: b */
    public static final long f26135b;

    /* renamed from: c */
    public static final long f26136c = TimeUnit.MINUTES.toMillis(10);

    /* renamed from: d */
    public static final long f26137d = TimeUnit.HOURS.toMillis(1);

    /* renamed from: e */
    public static final /* synthetic */ int f26138e = 0;

    static {
        TimeUnit timeUnit = TimeUnit.SECONDS;
        f26134a = timeUnit.toMillis(2L);
        f26135b = timeUnit.toMillis(10L);
    }

    /* renamed from: a */
    public static final C8415b m28560a(AccountPhoneNumberDto accountPhoneNumberDto) {
        String countryCode = accountPhoneNumberDto.getCountryCode();
        StringBuilder m8558w = C22128a.m8558w('+');
        m8558w.append(accountPhoneNumberDto.getPhoneNumber());
        return new C8415b(countryCode, m8558w.toString());
    }
}
