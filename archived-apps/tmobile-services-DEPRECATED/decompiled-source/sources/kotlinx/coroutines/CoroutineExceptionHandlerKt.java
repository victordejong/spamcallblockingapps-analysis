package kotlinx.coroutines;

import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u000b\u001a,\u0010\u0006\u001a\u00020\u00052\u001a\b\u0004\u0010\u0004\u001a\u0014\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030��H\u0086\b¢\u0006\u0004\b\u0006\u0010\u0007\u001a\u001f\u0010\n\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\n\u0010\u000b\u001a\u001f\u0010\u000e\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u0002H��¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lkotlin/Function2;", "Lkotlin/coroutines/CoroutineContext;", "", "", "handler", "Lkotlinx/coroutines/CoroutineExceptionHandler;", "CoroutineExceptionHandler", "(Lkotlin/Function2;)Lkotlinx/coroutines/CoroutineExceptionHandler;", "context", "exception", "handleCoroutineException", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V", "originalException", "thrownException", "handlerException", "(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;", "kotlinx-coroutines-core"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/CoroutineExceptionHandlerKt.class */
public final class CoroutineExceptionHandlerKt {
    @InternalCoroutinesApi
    /* renamed from: a */
    public static final void m1318a(@NotNull CoroutineContext coroutineContext, @NotNull Throwable th) {
        try {
            CoroutineExceptionHandler coroutineExceptionHandler = (CoroutineExceptionHandler) coroutineContext.get(CoroutineExceptionHandler.f21135c);
            if (coroutineExceptionHandler != null) {
                coroutineExceptionHandler.handleException(coroutineContext, th);
            } else {
                CoroutineExceptionHandlerImplKt.m1319a(coroutineContext, th);
            }
        } catch (Throwable th2) {
            CoroutineExceptionHandlerImplKt.m1319a(coroutineContext, m1317b(th, th2));
        }
    }

    @NotNull
    /* renamed from: b */
    public static final Throwable m1317b(@NotNull Throwable th, @NotNull Throwable th2) {
        if (th == th2) {
            return th;
        }
        RuntimeException runtimeException = new RuntimeException("Exception while trying to handle coroutine exception", th2);
        ExceptionsKt__ExceptionsKt.m2491a(runtimeException, th);
        return runtimeException;
    }
}
