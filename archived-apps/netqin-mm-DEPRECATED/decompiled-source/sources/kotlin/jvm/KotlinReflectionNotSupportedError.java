package kotlin.jvm;
/* loaded from: classes2-dex2jar.jar:kotlin/jvm/KotlinReflectionNotSupportedError.class */
public class KotlinReflectionNotSupportedError extends Error {
    public KotlinReflectionNotSupportedError() {
        super("Kotlin reflection implementation is not found at runtime. Make sure you have kotlin-reflect.jar in the classpath");
    }

    public KotlinReflectionNotSupportedError(String str) {
        super(str);
    }

    public KotlinReflectionNotSupportedError(String str, Throwable th) {
        super(str, th);
    }

    public KotlinReflectionNotSupportedError(Throwable th) {
        super(th);
    }
}
