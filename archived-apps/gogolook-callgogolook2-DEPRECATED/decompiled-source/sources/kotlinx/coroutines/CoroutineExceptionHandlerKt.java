package kotlinx.coroutines;

import kotlin.Metadata;
import p626l.C14874a;
import p626l.C14989s;
import p626l.p634w.AbstractC15049g;
import p626l.p641z.p642c.AbstractC15122p;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001c\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0010\u0002\n\u0002\b\u0007\u001a%\u0010��\u001a\u00020\u00012\u001a\b\u0004\u0010\u0002\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0003H\u0086\b\u001a\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0005H\u0007\u001a\u0018\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u0005H��¨\u0006\r"}, m815d2 = {"CoroutineExceptionHandler", "Lkotlinx/coroutines/CoroutineExceptionHandler;", "handler", "Lkotlin/Function2;", "Lkotlin/coroutines/CoroutineContext;", "", "", "handleCoroutineException", "context", "exception", "handlerException", "originalException", "thrownException", "kotlinx-coroutines-core"}, m814k = 2, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/CoroutineExceptionHandlerKt.class */
public final class CoroutineExceptionHandlerKt {
    public static final CoroutineExceptionHandler CoroutineExceptionHandler(AbstractC15122p<? super AbstractC15049g, ? super Throwable, C14989s> pVar) {
        return new CoroutineExceptionHandlerKt$CoroutineExceptionHandler$1(pVar, CoroutineExceptionHandler.Key);
    }

    @InternalCoroutinesApi
    public static final void handleCoroutineException(AbstractC15049g gVar, Throwable th) {
        try {
            CoroutineExceptionHandler coroutineExceptionHandler = (CoroutineExceptionHandler) gVar.get(CoroutineExceptionHandler.Key);
            if (coroutineExceptionHandler != null) {
                coroutineExceptionHandler.handleException(gVar, th);
            } else {
                CoroutineExceptionHandlerImplKt.handleCoroutineExceptionImpl(gVar, th);
            }
        } catch (Throwable th2) {
            CoroutineExceptionHandlerImplKt.handleCoroutineExceptionImpl(gVar, handlerException(th, th2));
        }
    }

    public static final Throwable handlerException(Throwable th, Throwable th2) {
        if (th == th2) {
            return th;
        }
        RuntimeException runtimeException = new RuntimeException("Exception while trying to handle coroutine exception", th2);
        C14874a.m808a(runtimeException, th);
        return runtimeException;
    }
}
