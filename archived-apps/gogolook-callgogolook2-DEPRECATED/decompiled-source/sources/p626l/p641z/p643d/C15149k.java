package p626l.p641z.p643d;

import androidx.media2.session.MediaSessionImplBase;
import java.util.Arrays;
import p626l.C14915d;
import p626l.C14988r;
/* renamed from: l.z.d.k */
/* loaded from: classes3-dex2jar.jar:l/z/d/k.class */
public class C15149k {
    /* renamed from: a */
    public static int m386a(int i, int i2) {
        return i < i2 ? -1 : i == i2 ? 0 : 1;
    }

    /* renamed from: a */
    public static String m381a(String str, Object obj) {
        return str + obj;
    }

    /* renamed from: a */
    public static <T extends Throwable> T m380a(T t) {
        m379a((Throwable) t, C15149k.class.getName());
        return t;
    }

    /* renamed from: a */
    public static <T extends Throwable> T m379a(T t, String str) {
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
    public static void m387a() {
        m375c();
        throw null;
    }

    /* renamed from: a */
    public static void m385a(int i, String str) {
        m375c();
        throw null;
    }

    /* renamed from: a */
    public static void m383a(Object obj, String str) {
        if (obj == null) {
            IllegalStateException illegalStateException = new IllegalStateException(str + " must not be null");
            m380a(illegalStateException);
            throw illegalStateException;
        }
    }

    /* renamed from: a */
    public static void m382a(String str) {
        StackTraceElement stackTraceElement = Thread.currentThread().getStackTrace()[3];
        String className = stackTraceElement.getClassName();
        String methodName = stackTraceElement.getMethodName();
        IllegalArgumentException illegalArgumentException = new IllegalArgumentException("Parameter specified as non-null is null: method " + className + MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM + methodName + ", parameter " + str);
        m380a(illegalArgumentException);
        throw illegalArgumentException;
    }

    /* renamed from: a */
    public static boolean m384a(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    /* renamed from: b */
    public static void m378b() {
        C14915d dVar = new C14915d();
        m380a(dVar);
        throw dVar;
    }

    /* renamed from: b */
    public static void m377b(Object obj, String str) {
        if (obj == null) {
            m382a(str);
            throw null;
        }
    }

    /* renamed from: b */
    public static void m376b(String str) {
        throw new UnsupportedOperationException(str);
    }

    /* renamed from: c */
    public static void m375c() {
        m376b("This function has a reified type parameter and thus can only be inlined at compilation time, not called directly.");
        throw null;
    }

    /* renamed from: c */
    public static void m374c(String str) {
        C14988r rVar = new C14988r(str);
        m380a(rVar);
        throw rVar;
    }

    /* renamed from: d */
    public static void m373d(String str) {
        m374c("lateinit property " + str + " has not been initialized");
        throw null;
    }
}
