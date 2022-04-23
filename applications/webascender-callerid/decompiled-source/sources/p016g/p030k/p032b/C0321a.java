package p016g.p030k.p032b;

import android.os.Build;
import com.zendesk.service.AbstractC0271a;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import p016g.p030k.p034d.C0341f;
/* renamed from: g.k.b.a */
/* loaded from: classes2-dex2jar.jar:g/k/b/a.class */
public class C0321a {

    /* renamed from: a */
    private static final TimeZone f650a = TimeZone.getTimeZone("UTC");

    /* renamed from: b */
    private static final List<AbstractC0322c> f651b = new ArrayList();

    /* renamed from: c */
    private static AbstractC0322c f652c;

    /* renamed from: d */
    private static boolean f653d;

    /* renamed from: g.k.b.a$c */
    /* loaded from: classes2-dex2jar.jar:g/k/b/a$c.class */
    public interface AbstractC0322c {
        /* renamed from: a */
        void m418a(EnumC0323d dVar, String str, String str2, Throwable th);
    }

    /* renamed from: g.k.b.a$d */
    /* loaded from: classes2-dex2jar.jar:g/k/b/a$d.class */
    public enum EnumC0323d {
        VERBOSE(2),
        DEBUG(3),
        INFO(4),
        WARN(5),
        ERROR(6);
        
        private final int priority;

        EnumC0323d(int i) {
            this.priority = i;
        }
    }

    static {
        b bVar;
        try {
            Class.forName("android.os.Build");
            if (Build.VERSION.SDK_INT != 0) {
                f652c = new a();
            }
        } catch (ClassNotFoundException e) {
            if (f652c == null) {
                bVar = new b();
            }
        } catch (Throwable th) {
            if (f652c == null) {
                f652c = new b();
            }
            throw th;
        }
        if (f652c == null) {
            bVar = new b();
            f652c = bVar;
        }
        f653d = false;
    }

    /* renamed from: b */
    public static void m428b(String str, String str2, Object... objArr) {
        m421i(EnumC0323d.DEBUG, str, str2, null, objArr);
    }

    /* renamed from: c */
    public static void m427c(String str, AbstractC0271a aVar) {
        StringBuilder sb = new StringBuilder();
        if (aVar != null) {
            sb.append("Network Error: ");
            sb.append(aVar.m595d());
            sb.append(", Status Code: ");
            sb.append(aVar.m592i());
            if (C0341f.m390b(aVar.m596c())) {
                sb.append(", Reason: ");
                sb.append(aVar.m596c());
            }
        }
        String sb2 = sb.toString();
        EnumC0323d dVar = EnumC0323d.ERROR;
        if (!C0341f.m390b(sb2)) {
            sb2 = "Unknown error";
        }
        m421i(dVar, str, sb2, null, new Object[0]);
    }

    /* renamed from: d */
    public static void m426d(String str, String str2, Throwable th, Object... objArr) {
        m421i(EnumC0323d.ERROR, str, str2, th, objArr);
    }

    /* renamed from: e */
    public static void m425e(String str, String str2, Object... objArr) {
        m421i(EnumC0323d.ERROR, str, str2, null, objArr);
    }

    /* renamed from: f */
    public static void m424f(String str, String str2, Throwable th, Object... objArr) {
        m421i(EnumC0323d.INFO, str, str2, th, objArr);
    }

    /* renamed from: g */
    public static void m423g(String str, String str2, Object... objArr) {
        m421i(EnumC0323d.INFO, str, str2, null, objArr);
    }

    /* renamed from: h */
    public static boolean m422h() {
        return f653d;
    }

    /* renamed from: i */
    private static void m421i(EnumC0323d dVar, String str, String str2, Throwable th, Object... objArr) {
        String str3 = str2;
        if (objArr != null) {
            str3 = str2;
            if (objArr.length > 0) {
                str3 = String.format(Locale.US, str2, objArr);
            }
        }
        if (f653d) {
            f652c.m418a(dVar, str, str3, th);
            for (AbstractC0322c cVar : f651b) {
                cVar.m418a(dVar, str, str3, th);
            }
        }
    }

    /* renamed from: j */
    public static void m420j(String str, String str2, Throwable th, Object... objArr) {
        m421i(EnumC0323d.WARN, str, str2, th, objArr);
    }

    /* renamed from: k */
    public static void m419k(String str, String str2, Object... objArr) {
        m421i(EnumC0323d.WARN, str, str2, null, objArr);
    }
}
