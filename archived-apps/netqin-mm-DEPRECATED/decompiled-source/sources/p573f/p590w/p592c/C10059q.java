package p573f.p590w.p592c;

import java.util.Arrays;
import kotlin.KotlinNullPointerException;
import kotlin.UninitializedPropertyAccessException;
/* renamed from: f.w.c.q */
/* loaded from: classes2-dex2jar.jar:f/w/c/q.class */
public class C10059q {
    /* renamed from: a */
    public static int m1645a(int i, int i2) {
        return i < i2 ? -1 : i == i2 ? 0 : 1;
    }

    /* renamed from: a */
    public static <T extends Throwable> T m1640a(T t) {
        m1639a((Throwable) t, C10059q.class.getName());
        return t;
    }

    /* renamed from: a */
    public static <T extends Throwable> T m1639a(T t, String str) {
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

    /* renamed from: a */
    public static void m1646a() {
        KotlinNullPointerException kotlinNullPointerException = new KotlinNullPointerException();
        m1640a(kotlinNullPointerException);
        throw kotlinNullPointerException;
    }

    /* renamed from: a */
    public static void m1644a(int i, String str) {
        m1638b();
        throw null;
    }

    /* renamed from: a */
    public static void m1642a(Object obj, String str) {
        if (obj == null) {
            IllegalStateException illegalStateException = new IllegalStateException(str + " must not be null");
            m1640a(illegalStateException);
            throw illegalStateException;
        }
    }

    /* renamed from: a */
    public static void m1641a(String str) {
        StackTraceElement stackTraceElement = Thread.currentThread().getStackTrace()[3];
        String className = stackTraceElement.getClassName();
        String methodName = stackTraceElement.getMethodName();
        IllegalArgumentException illegalArgumentException = new IllegalArgumentException("Parameter specified as non-null is null: method " + className + "." + methodName + ", parameter " + str);
        m1640a(illegalArgumentException);
        throw illegalArgumentException;
    }

    /* renamed from: a */
    public static boolean m1643a(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    /* renamed from: b */
    public static void m1638b() {
        m1636b("This function has a reified type parameter and thus can only be inlined at compilation time, not called directly.");
        throw null;
    }

    /* renamed from: b */
    public static void m1637b(Object obj, String str) {
        if (obj == null) {
            m1641a(str);
            throw null;
        }
    }

    /* renamed from: b */
    public static void m1636b(String str) {
        throw new UnsupportedOperationException(str);
    }

    /* renamed from: c */
    public static void m1635c(String str) {
        UninitializedPropertyAccessException uninitializedPropertyAccessException = new UninitializedPropertyAccessException(str);
        m1640a(uninitializedPropertyAccessException);
        throw uninitializedPropertyAccessException;
    }

    /* renamed from: d */
    public static void m1634d(String str) {
        m1635c("lateinit property " + str + " has not been initialized");
        throw null;
    }
}
