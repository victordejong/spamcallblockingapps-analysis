package kotlin.concurrent;

import com.privacystar.core.data.model.OperationFields;
import com.privacystar.core.service.blocking.api21.BlockingOverlayService;
import kotlin.Metadata;
import kotlin.internal.InlineOnly;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��:\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\b\u0003\u001aJ\u0010��\u001a\u00020\u00012\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\n2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\f\u001a0\u0010\u000e\u001a\u0002H\u000f\"\b\b��\u0010\u000f*\u00020\u0010*\b\u0012\u0004\u0012\u0002H\u000f0\u00112\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u0002H\u000f0\fH\u0087\b¢\u0006\u0002\u0010\u0013¨\u0006\u0014"}, m254d2 = {"thread", "Ljava/lang/Thread;", "start", "", "isDaemon", "contextClassLoader", "Ljava/lang/ClassLoader;", "name", "", OperationFields.PRIORITY, "", BlockingOverlayService.EXTRA_BLOCK_IMMEDIATELY, "Lkotlin/Function0;", "", "getOrSet", "T", "", "Ljava/lang/ThreadLocal;", "default", "(Ljava/lang/ThreadLocal;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "kotlin-stdlib"}, m253k = 2, m252mv = {1, 1, 13})
@JvmName(name = "ThreadsKt")
/* loaded from: classes2-dex2jar.jar:kotlin/concurrent/ThreadsKt.class */
public final class ThreadsKt {
    /* JADX WARN: Multi-variable type inference failed */
    @InlineOnly
    private static final <T> T getOrSet(@NotNull ThreadLocal<T> threadLocal, Function0<? extends T> function0) {
        T t;
        Object obj = threadLocal.get();
        if (obj != null) {
            t = (T) obj;
        } else {
            Object invoke = function0.invoke();
            threadLocal.set(invoke);
            t = (T) invoke;
        }
        return t;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [kotlin.concurrent.ThreadsKt$thread$thread$1] */
    /* JADX WARN: Unknown variable types count: 1 */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Thread thread(boolean r4, boolean r5, @org.jetbrains.annotations.Nullable java.lang.ClassLoader r6, @org.jetbrains.annotations.Nullable java.lang.String r7, int r8, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function0<kotlin.Unit> r9) {
        /*
            r0 = r9
            java.lang.String r1 = "block"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r0, r1)
            kotlin.concurrent.ThreadsKt$thread$thread$1 r0 = new kotlin.concurrent.ThreadsKt$thread$thread$1
            r1 = r0
            r2 = r9
            r1.<init>()
            r9 = r0
            r0 = r5
            if (r0 == 0) goto L_0x001c
            r0 = r9
            r1 = 1
            r0.setDaemon(r1)
        L_0x001c:
            r0 = r8
            if (r0 <= 0) goto L_0x0028
            r0 = r9
            r1 = r8
            r0.setPriority(r1)
        L_0x0028:
            r0 = r7
            if (r0 == 0) goto L_0x0032
            r0 = r9
            r1 = r7
            r0.setName(r1)
        L_0x0032:
            r0 = r6
            if (r0 == 0) goto L_0x003c
            r0 = r9
            r1 = r6
            r0.setContextClassLoader(r1)
        L_0x003c:
            r0 = r4
            if (r0 == 0) goto L_0x0045
            r0 = r9
            r0.start()
        L_0x0045:
            r0 = r9
            java.lang.Thread r0 = (java.lang.Thread) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.concurrent.ThreadsKt.thread(boolean, boolean, java.lang.ClassLoader, java.lang.String, int, kotlin.jvm.functions.Function0):java.lang.Thread");
    }

    @NotNull
    public static /* synthetic */ Thread thread$default(boolean z, boolean z2, ClassLoader classLoader, String str, int i, Function0 function0, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            z = true;
        }
        if ((i2 & 2) != 0) {
            z2 = false;
        }
        if ((i2 & 4) != 0) {
            classLoader = null;
        }
        if ((i2 & 8) != 0) {
            str = null;
        }
        if ((i2 & 16) != 0) {
            i = -1;
        }
        return thread(z, z2, classLoader, str, i, function0);
    }
}
