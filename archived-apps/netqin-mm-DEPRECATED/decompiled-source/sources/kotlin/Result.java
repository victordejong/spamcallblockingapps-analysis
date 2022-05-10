package kotlin;

import java.io.Serializable;
import p573f.p590w.p592c.C10057o;
import p573f.p590w.p592c.C10059q;
/* loaded from: classes2-dex2jar.jar:kotlin/Result.class */
public final class Result<T> implements Serializable {
    public static final C10473a Companion = new C10473a(null);
    public final Object value;

    /* loaded from: classes2-dex2jar.jar:kotlin/Result$Failure.class */
    public static final class Failure implements Serializable {
        public final Throwable exception;

        public Failure(Throwable th) {
            C10059q.m1637b(th, "exception");
            this.exception = th;
        }

        public boolean equals(Object obj) {
            return (obj instanceof Failure) && C10059q.m1643a(this.exception, ((Failure) obj).exception);
        }

        public int hashCode() {
            return this.exception.hashCode();
        }

        public String toString() {
            return "Failure(" + this.exception + ')';
        }
    }

    /* renamed from: kotlin.Result$a */
    /* loaded from: classes2-dex2jar.jar:kotlin/Result$a.class */
    public static final class C10473a {
        public C10473a() {
        }

        public /* synthetic */ C10473a(C10057o oVar) {
            this();
        }
    }

    public /* synthetic */ Result(Object obj) {
        this.value = obj;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ Result m42789boximpl(Object obj) {
        return new Result(obj);
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static Object m42790constructorimpl(Object obj) {
        return obj;
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m42791equalsimpl(Object obj, Object obj2) {
        return (obj2 instanceof Result) && C10059q.m1643a(obj, ((Result) obj2).m42799unboximpl());
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m42792equalsimpl0(Object obj, Object obj2) {
        throw null;
    }

    /* renamed from: exceptionOrNull-impl  reason: not valid java name */
    public static final Throwable m42793exceptionOrNullimpl(Object obj) {
        return obj instanceof Failure ? ((Failure) obj).exception : null;
    }

    /* renamed from: getOrNull-impl  reason: not valid java name */
    public static final T m42794getOrNullimpl(Object obj) {
        T t = (T) obj;
        if (m42796isFailureimpl(obj)) {
            t = null;
        }
        return t;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m42795hashCodeimpl(Object obj) {
        return obj != null ? obj.hashCode() : 0;
    }

    /* renamed from: isFailure-impl  reason: not valid java name */
    public static final boolean m42796isFailureimpl(Object obj) {
        return obj instanceof Failure;
    }

    /* renamed from: isSuccess-impl  reason: not valid java name */
    public static final boolean m42797isSuccessimpl(Object obj) {
        return !(obj instanceof Failure);
    }

    /* renamed from: toString-impl  reason: not valid java name */
    public static String m42798toStringimpl(Object obj) {
        String str;
        if (obj instanceof Failure) {
            str = obj.toString();
        } else {
            str = "Success(" + obj + ')';
        }
        return str;
    }

    public static /* synthetic */ void value$annotations() {
    }

    public boolean equals(Object obj) {
        return m42791equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m42795hashCodeimpl(this.value);
    }

    public String toString() {
        return m42798toStringimpl(this.value);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ Object m42799unboximpl() {
        return this.value;
    }
}
