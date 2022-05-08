package kotlin;

import kotlin.internal.HidesMembers;
import kotlin.internal.PlatformImplementationsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��:\n\u0002\u0010\u0003\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0005\u001a\u001b\u0010\u0003\u001a\u00020\u0002*\u00020��2\u0006\u0010\u0001\u001a\u00020��H\u0007¢\u0006\u0004\b\u0003\u0010\u0004\u001a\u0014\u0010\u0005\u001a\u00020\u0002*\u00020��H\u0087\b¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u001c\u0010\u0005\u001a\u00020\u0002*\u00020��2\u0006\u0010\b\u001a\u00020\u0007H\u0087\b¢\u0006\u0004\b\u0005\u0010\t\u001a\u001c\u0010\u0005\u001a\u00020\u0002*\u00020��2\u0006\u0010\u000b\u001a\u00020\nH\u0087\b¢\u0006\u0004\b\u0005\u0010\f\u001a\u0013\u0010\u000e\u001a\u00020\r*\u00020��H\u0007¢\u0006\u0004\b\u000e\u0010\u000f\"#\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010*\u00020��8F@\u0006¢\u0006\f\u0012\u0004\b\u0014\u0010\u0006\u001a\u0004\b\u0012\u0010\u0013\"&\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020��0\u0016*\u00020��8F@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\b\u0019\u0010\u0006\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u001b"}, d2 = {"", "exception", "", "addSuppressed", "(Ljava/lang/Throwable;Ljava/lang/Throwable;)V", "printStackTrace", "(Ljava/lang/Throwable;)V", "Ljava/io/PrintStream;", "stream", "(Ljava/lang/Throwable;Ljava/io/PrintStream;)V", "Ljava/io/PrintWriter;", "writer", "(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V", "", "stackTraceToString", "(Ljava/lang/Throwable;)Ljava/lang/String;", "", "Ljava/lang/StackTraceElement;", "getStackTrace", "(Ljava/lang/Throwable;)[Ljava/lang/StackTraceElement;", "getStackTrace$annotations", "stackTrace", "", "getSuppressedExceptions", "(Ljava/lang/Throwable;)Ljava/util/List;", "getSuppressedExceptions$annotations", "suppressedExceptions", "kotlin-stdlib"}, k = 5, mv = {1, 1, 15}, pn = "", xi = 0, xs = "kotlin/ExceptionsKt")
/* loaded from: classes2-dex2jar.jar:kotlin/ExceptionsKt__ExceptionsKt.class */
public class ExceptionsKt__ExceptionsKt {
    @SinceKotlin
    @HidesMembers
    /* renamed from: a */
    public static void m2491a(@NotNull Throwable addSuppressed, @NotNull Throwable exception) {
        Intrinsics.m1830e(addSuppressed, "$this$addSuppressed");
        Intrinsics.m1830e(exception, "exception");
        if (addSuppressed != exception) {
            PlatformImplementationsKt.f20672a.mo1890a(addSuppressed, exception);
        }
    }
}
