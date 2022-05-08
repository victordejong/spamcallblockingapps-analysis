package okhttp3.internal.platform.android;

import java.lang.reflect.Method;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b��\u0018�� \u0011:\u0001\u0011B%\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\b\u0010\tR\u0018\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0018\u0010\r\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\fR\u0018\u0010\u000e\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\f¨\u0006\u0012"}, d2 = {"Lokhttp3/internal/platform/android/CloseGuard;", "", "closer", "", "createAndOpen", "(Ljava/lang/String;)Ljava/lang/Object;", "closeGuardInstance", "", "warnIfOpen", "(Ljava/lang/Object;)Z", "Ljava/lang/reflect/Method;", "getMethod", "Ljava/lang/reflect/Method;", "openMethod", "warnIfOpenMethod", "<init>", "(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V", "Companion", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/platform/android/CloseGuard.class */
public final class CloseGuard {
    public static final Companion Companion = new Companion(null);
    private final Method getMethod;
    private final Method openMethod;
    private final Method warnIfOpenMethod;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\r\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0006"}, d2 = {"Lokhttp3/internal/platform/android/CloseGuard$Companion;", "Lokhttp3/internal/platform/android/CloseGuard;", "get", "()Lokhttp3/internal/platform/android/CloseGuard;", "<init>", "()V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:okhttp3/internal/platform/android/CloseGuard$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final CloseGuard get() {
            Method method;
            Method method2;
            Method method3 = null;
            try {
                Class<?> cls = Class.forName("dalvik.system.CloseGuard");
                method3 = cls.getMethod("get", new Class[0]);
                method = cls.getMethod("open", String.class);
                method2 = cls.getMethod("warnIfOpen", new Class[0]);
            } catch (Exception e) {
                method2 = null;
                method = null;
            }
            return new CloseGuard(method3, method, method2);
        }
    }

    public CloseGuard(@Nullable Method method, @Nullable Method method2, @Nullable Method method3) {
        this.getMethod = method;
        this.openMethod = method2;
        this.warnIfOpenMethod = method3;
    }

    @Nullable
    public final Object createAndOpen(@NotNull String closer) {
        Intrinsics.m1830e(closer, "closer");
        Method method = this.getMethod;
        if (method == null) {
            return null;
        }
        try {
            Object invoke = method.invoke(null, new Object[0]);
            Method method2 = this.openMethod;
            Intrinsics.m1832c(method2);
            method2.invoke(invoke, closer);
            return invoke;
        } catch (Exception e) {
            return null;
        }
    }

    public final boolean warnIfOpen(@Nullable Object obj) {
        boolean z = false;
        if (obj != null) {
            try {
                Method method = this.warnIfOpenMethod;
                Intrinsics.m1832c(method);
                method.invoke(obj, new Object[0]);
                z = true;
            } catch (Exception e) {
                z = false;
            }
        }
        return z;
    }
}
