package p131c.p161d.p266c.p267a;

import com.google.common.base.JdkPattern;
import java.util.Locale;
import java.util.logging.Logger;
import java.util.regex.Pattern;
/* renamed from: c.d.c.a.m */
/* loaded from: classes2-dex2jar.jar:c/d/c/a/m.class */
public final class C4930m {

    /* renamed from: a */
    public static final AbstractC4929l f17567a = m24806a();

    /* renamed from: c.d.c.a.m$b */
    /* loaded from: classes2-dex2jar.jar:c/d/c/a/m$b.class */
    public static final class C4932b implements AbstractC4929l {
        public C4932b() {
        }

        @Override // p131c.p161d.p266c.p267a.AbstractC4929l
        /* renamed from: a */
        public AbstractC4918e mo24799a(String str) {
            return new JdkPattern(Pattern.compile(str));
        }

        @Override // p131c.p161d.p266c.p267a.AbstractC4929l
        /* renamed from: a */
        public boolean mo24800a() {
            return true;
        }
    }

    static {
        Logger.getLogger(C4930m.class.getName());
    }

    /* renamed from: a */
    public static AbstractC4918e m24804a(String str) {
        C4933n.m24795a(str);
        return f17567a.mo24799a(str);
    }

    /* renamed from: a */
    public static AbstractC4929l m24806a() {
        return new C4932b();
    }

    /* renamed from: a */
    public static String m24805a(double d) {
        return String.format(Locale.ROOT, "%.4g", Double.valueOf(d));
    }

    /* renamed from: b */
    public static boolean m24803b() {
        return f17567a.mo24800a();
    }

    /* renamed from: b */
    public static boolean m24802b(String str) {
        return str == null || str.isEmpty();
    }

    /* renamed from: c */
    public static long m24801c() {
        return System.nanoTime();
    }
}
