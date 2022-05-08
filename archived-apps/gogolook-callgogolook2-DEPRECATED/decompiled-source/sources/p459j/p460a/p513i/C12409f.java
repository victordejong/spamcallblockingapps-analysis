package p459j.p460a.p513i;

import androidx.core.app.NotificationCompat;
import gogolook.callgogolook2.developmode.LogManager;
import java.nio.charset.Charset;
import kotlin.Metadata;
import okhttp3.Interceptor;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018�� \u000b2\u00020\u0001:\u0001\u000bB\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0002¨\u0006\f"}, m815d2 = {"Lgogolook/callgogolook2/api/LogInterceptor;", "Lokhttp3/Interceptor;", "()V", "intercept", "Lokhttp3/Response;", "chain", "Lokhttp3/Interceptor$Chain;", "logging", "", NotificationCompat.CATEGORY_MESSAGE, "", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.i.f */
/* loaded from: classes2-dex2jar.jar:j/a/i/f.class */
public final class C12409f implements Interceptor {

    /* renamed from: a */
    public static final Charset f27986a;

    /* renamed from: j.a.i.f$a */
    /* loaded from: classes2-dex2jar.jar:j/a/i/f$a.class */
    public static final class C12410a {
        public C12410a() {
        }

        public /* synthetic */ C12410a(C15145g gVar) {
            this();
        }
    }

    static {
        new C12410a(null);
        Charset forName = Charset.forName("UTF-8");
        C15149k.m383a((Object) forName, "Charset.forName(\"UTF-8\")");
        f27986a = forName;
    }

    /* renamed from: a */
    public final void m6229a(String str) {
        LogManager.m28581a(str);
        LogManager.putNotificationLog(str);
    }

    /* JADX WARN: Type inference failed for: r0v37, types: [T, okhttp3.Response, java.lang.Object] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // okhttp3.Interceptor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public okhttp3.Response intercept(okhttp3.Interceptor.Chain r7) {
        /*
            Method dump skipped, instructions count: 417
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p513i.C12409f.intercept(okhttp3.Interceptor$Chain):okhttp3.Response");
    }
}
