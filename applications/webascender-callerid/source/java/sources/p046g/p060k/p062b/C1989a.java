package p046g.p060k.p062b;

import android.os.Build;
import com.zendesk.service.AbstractC1939a;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import p046g.p060k.p064d.C2009f;
/* renamed from: g.k.b.a */
/* loaded from: classes2-dex2jar.jar:g/k/b/a.class */
public class C1989a {

    /* renamed from: a */
    private static final TimeZone f5329a = TimeZone.getTimeZone("UTC");

    /* renamed from: b */
    private static final List<AbstractC1990c> f5330b = new ArrayList();

    /* renamed from: c */
    private static AbstractC1990c f5331c;

    /* renamed from: d */
    private static boolean f5332d;

    /* renamed from: g.k.b.a$c */
    /* loaded from: classes2-dex2jar.jar:g/k/b/a$c.class */
    public interface AbstractC1990c {
        /* renamed from: a */
        void m418a(EnumC1991d enumC1991d, String str, String str2, Throwable th);
    }

    /* renamed from: g.k.b.a$d */
    /* loaded from: classes2-dex2jar.jar:g/k/b/a$d.class */
    public enum EnumC1991d {
        VERBOSE(2),
        DEBUG(3),
        INFO(4),
        WARN(5),
        ERROR(6);
        
        private final int priority;

        EnumC1991d(int i) {
            this.priority = i;
        }
    }

    static {
        b bVar;
        try {
            Class.forName("android.os.Build");
            if (Build.VERSION.SDK_INT != 0) {
                f5331c = new a();
            }
        } catch (ClassNotFoundException e) {
            if (f5331c == null) {
                bVar = new b();
            }
        } catch (Throwable th) {
            if (f5331c == null) {
                f5331c = new b();
            }
            throw th;
        }
        if (f5331c == null) {
            bVar = new b();
            f5331c = bVar;
        }
        f5332d = false;
    }

    /* renamed from: b */
    public static void m428b(String str, String str2, Object... objArr) {
        m421i(EnumC1991d.DEBUG, str, str2, null, objArr);
    }

    /* renamed from: c */
    public static void m427c(String str, AbstractC1939a abstractC1939a) {
        StringBuilder sb = new StringBuilder();
        if (abstractC1939a != null) {
            sb.append("Network Error: ");
            sb.append(abstractC1939a.m595d());
            sb.append(", Status Code: ");
            sb.append(abstractC1939a.m592i());
            if (C2009f.m390b(abstractC1939a.m596c())) {
                sb.append(", Reason: ");
                sb.append(abstractC1939a.m596c());
            }
        }
        String sb2 = sb.toString();
        EnumC1991d enumC1991d = EnumC1991d.ERROR;
        if (!C2009f.m390b(sb2)) {
            sb2 = "Unknown error";
        }
        m421i(enumC1991d, str, sb2, null, new Object[0]);
    }

    /* renamed from: d */
    public static void m426d(String str, String str2, Throwable th, Object... objArr) {
        m421i(EnumC1991d.ERROR, str, str2, th, objArr);
    }

    /* renamed from: e */
    public static void m425e(String str, String str2, Object... objArr) {
        m421i(EnumC1991d.ERROR, str, str2, null, objArr);
    }

    /* renamed from: f */
    public static void m424f(String str, String str2, Throwable th, Object... objArr) {
        m421i(EnumC1991d.INFO, str, str2, th, objArr);
    }

    /* renamed from: g */
    public static void m423g(String str, String str2, Object... objArr) {
        m421i(EnumC1991d.INFO, str, str2, null, objArr);
    }

    /* renamed from: h */
    public static boolean m422h() {
        return f5332d;
    }

    /* renamed from: i */
    private static void m421i(EnumC1991d enumC1991d, String str, String str2, Throwable th, Object... objArr) {
        String str3 = str2;
        if (objArr != null) {
            str3 = str2;
            if (objArr.length > 0) {
                str3 = String.format(Locale.US, str2, objArr);
            }
        }
        if (f5332d) {
            f5331c.m418a(enumC1991d, str, str3, th);
            for (AbstractC1990c abstractC1990c : f5330b) {
                abstractC1990c.m418a(enumC1991d, str, str3, th);
            }
        }
    }

    /* renamed from: j */
    public static void m420j(String str, String str2, Throwable th, Object... objArr) {
        m421i(EnumC1991d.WARN, str, str2, th, objArr);
    }

    /* renamed from: k */
    public static void m419k(String str, String str2, Object... objArr) {
        m421i(EnumC1991d.WARN, str, str2, null, objArr);
    }
}
