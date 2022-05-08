package kotlin.jvm.internal;

import java.util.Arrays;
import kotlin.KotlinNullPointerException;
import kotlin.SinceKotlin;
import kotlin.UninitializedPropertyAccessException;
/* loaded from: classes2-dex2jar.jar:kotlin/jvm/internal/Intrinsics.class */
public class Intrinsics {

    @SinceKotlin
    /* loaded from: classes2-dex2jar.jar:kotlin/jvm/internal/Intrinsics$Kotlin.class */
    public static class Kotlin {
        private Kotlin() {
        }
    }

    private Intrinsics() {
    }

    /* renamed from: a */
    public static boolean m1834a(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    /* renamed from: b */
    public static void m1833b(Object obj, String str) {
        if (obj == null) {
            IllegalStateException illegalStateException = new IllegalStateException(str + " must not be null");
            m1824k(illegalStateException);
            throw illegalStateException;
        }
    }

    /* renamed from: c */
    public static void m1832c(Object obj) {
        if (obj == null) {
            m1821n();
            throw null;
        }
    }

    /* renamed from: d */
    public static void m1831d(Object obj, String str) {
        if (obj == null) {
            NullPointerException nullPointerException = new NullPointerException(str + " must not be null");
            m1824k(nullPointerException);
            throw nullPointerException;
        }
    }

    /* renamed from: e */
    public static void m1830e(Object obj, String str) {
        if (obj == null) {
            m1818q(str);
            throw null;
        }
    }

    /* renamed from: f */
    public static void m1829f(Object obj, String str) {
        if (obj == null) {
            m1819p(str);
            throw null;
        }
    }

    /* renamed from: g */
    public static int m1828g(int i, int i2) {
        return i < i2 ? -1 : i == i2 ? 0 : 1;
    }

    /* renamed from: h */
    private static String m1827h(String str) {
        StackTraceElement stackTraceElement = Thread.currentThread().getStackTrace()[4];
        String className = stackTraceElement.getClassName();
        String methodName = stackTraceElement.getMethodName();
        return "Parameter specified as non-null is null: method " + className + "." + methodName + ", parameter " + str;
    }

    /* renamed from: i */
    public static void m1826i() {
        m1817r();
        throw null;
    }

    /* renamed from: j */
    public static void m1825j(int i, String str) {
        m1817r();
        throw null;
    }

    /* renamed from: k */
    private static <T extends Throwable> T m1824k(T t) {
        m1823l(t, Intrinsics.class.getName());
        return t;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l */
    public static <T extends Throwable> T m1823l(T t, String str) {
        StackTraceElement[] stackTrace = t.getStackTrace();
        int length = stackTrace.length;
        int i = -1;
        for (int i2 = 0; i2 < length; i2++) {
            if (str.equals(stackTrace[i2].getClassName())) {
                i = i2;
            }
        }
        t.setStackTrace((StackTraceElement[]) Arrays.copyOfRange(stackTrace, i + 1, length));
        return t;
    }

    /* renamed from: m */
    public static String m1822m(String str, Object obj) {
        return str + obj;
    }

    @SinceKotlin
    /* renamed from: n */
    public static void m1821n() {
        NullPointerException nullPointerException = new NullPointerException();
        m1824k(nullPointerException);
        throw nullPointerException;
    }

    /* renamed from: o */
    public static void m1820o() {
        KotlinNullPointerException kotlinNullPointerException = new KotlinNullPointerException();
        m1824k(kotlinNullPointerException);
        throw kotlinNullPointerException;
    }

    /* renamed from: p */
    private static void m1819p(String str) {
        IllegalArgumentException illegalArgumentException = new IllegalArgumentException(m1827h(str));
        m1824k(illegalArgumentException);
        throw illegalArgumentException;
    }

    /* renamed from: q */
    private static void m1818q(String str) {
        NullPointerException nullPointerException = new NullPointerException(m1827h(str));
        m1824k(nullPointerException);
        throw nullPointerException;
    }

    /* renamed from: r */
    public static void m1817r() {
        m1816s("This function has a reified type parameter and thus can only be inlined at compilation time, not called directly.");
        throw null;
    }

    /* renamed from: s */
    public static void m1816s(String str) {
        throw new UnsupportedOperationException(str);
    }

    /* renamed from: t */
    public static void m1815t(String str) {
        UninitializedPropertyAccessException uninitializedPropertyAccessException = new UninitializedPropertyAccessException(str);
        m1824k(uninitializedPropertyAccessException);
        throw uninitializedPropertyAccessException;
    }

    /* renamed from: u */
    public static void m1814u(String str) {
        m1815t("lateinit property " + str + " has not been initialized");
        throw null;
    }
}
