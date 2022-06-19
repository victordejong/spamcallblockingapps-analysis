package p193e.p194a.p751f4.p761f;

import com.truecaller.common.network.util.KnownEndpoints;
import com.truecaller.network.notification.NotificationScope;
import com.truecaller.network.notification.NotificationType;
import e.m.e.b0;
import e.m.e.g0.c;
import e.m.e.l;
import java.io.IOException;
import p193e.p194a.p372b0.p394b.p395a.C8365b;
import x3.b;
import x3.g0.a.a;
import x3.h0.f;
import x3.h0.s;
import x3.h0.t;
/* renamed from: e.a.f4.f.b */
/* loaded from: classes11-dex2jar.jar:e/a/f4/f/b.class */
public class C13994b {

    /* renamed from: a */
    public static final a f40459a;

    /* renamed from: e.a.f4.f.b$b */
    /* loaded from: classes11-dex2jar.jar:e/a/f4/f/b$b.class */
    public interface AbstractC13996b {
        @f("/notification/{notifScope}")
        /* renamed from: a */
        b<C13999c> m20876a(@s("notifScope") String str, @t("lastId") long j, @t("language") String str2);
    }

    /* renamed from: e.a.f4.f.b$c */
    /* loaded from: classes11-dex2jar.jar:e/a/f4/f/b$c.class */
    public static class C13997c extends b0<NotificationScope> {
        public C13997c(C13995a c13995a) {
        }

        public Object read(e.m.e.g0.a aVar) throws IOException {
            return NotificationScope.valueOf(aVar.S());
        }

        public void write(c cVar, Object obj) throws IOException {
            cVar.k0(((NotificationScope) obj).value);
        }
    }

    /* renamed from: e.a.f4.f.b$d */
    /* loaded from: classes11-dex2jar.jar:e/a/f4/f/b$d.class */
    public static class C13998d extends b0<NotificationType> {
        public C13998d(C13995a c13995a) {
        }

        public Object read(e.m.e.g0.a aVar) throws IOException {
            return NotificationType.valueOf(aVar.S());
        }

        public void write(c cVar, Object obj) throws IOException {
            cVar.k0(((NotificationType) obj).value);
        }
    }

    static {
        l lVar = new l();
        lVar.b(NotificationScope.class, new C13997c(null).nullSafe());
        lVar.b(NotificationType.class, new C13998d(null).nullSafe());
        f40459a = new a(lVar.a());
    }

    /* renamed from: a */
    public static b<C13999c> m20877a(long j, NotificationScope notificationScope, String str) {
        C8365b c8365b = new C8365b();
        c8365b.m28639a(KnownEndpoints.NOTIFICATION);
        c8365b.m28634f(AbstractC13996b.class);
        c8365b.m28638b(f40459a);
        return ((AbstractC13996b) c8365b.m28637c(AbstractC13996b.class)).m20876a(notificationScope.stringValue, j, str);
    }
}
