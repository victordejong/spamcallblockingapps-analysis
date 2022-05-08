package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import p626l.p634w.AbstractC15049g;
import p626l.p641z.p642c.AbstractC15122p;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001a\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\bf\u0018��*\u0004\b��\u0010\u00012\u00020\u0002J\u001d\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00028��H&¢\u0006\u0002\u0010\bJ\u0015\u0010\t\u001a\u00028��2\u0006\u0010\u0005\u001a\u00020\u0006H&¢\u0006\u0002\u0010\n¨\u0006\u000b"}, m815d2 = {"Lkotlinx/coroutines/ThreadContextElement;", ExifInterface.LATITUDE_SOUTH, "Lkotlin/coroutines/CoroutineContext$Element;", "restoreThreadContext", "", "context", "Lkotlin/coroutines/CoroutineContext;", "oldState", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V", "updateThreadContext", "(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/ThreadContextElement.class */
public interface ThreadContextElement<S> extends AbstractC15049g.AbstractC15052b {

    @Metadata(m817bv = {1, 0, 3}, m814k = 3, m813mv = {1, 1, 16})
    /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/ThreadContextElement$DefaultImpls.class */
    public static final class DefaultImpls {
        public static <S, R> R fold(ThreadContextElement<S> threadContextElement, R r, AbstractC15122p<? super R, ? super AbstractC15049g.AbstractC15052b, ? extends R> pVar) {
            return (R) AbstractC15049g.AbstractC15052b.C15053a.m486a(threadContextElement, r, pVar);
        }

        public static <S, E extends AbstractC15049g.AbstractC15052b> E get(ThreadContextElement<S> threadContextElement, AbstractC15049g.AbstractC15054c<E> cVar) {
            return (E) AbstractC15049g.AbstractC15052b.C15053a.m485a(threadContextElement, cVar);
        }

        public static <S> AbstractC15049g minusKey(ThreadContextElement<S> threadContextElement, AbstractC15049g.AbstractC15054c<?> cVar) {
            return AbstractC15049g.AbstractC15052b.C15053a.m483b(threadContextElement, cVar);
        }

        public static <S> AbstractC15049g plus(ThreadContextElement<S> threadContextElement, AbstractC15049g gVar) {
            return AbstractC15049g.AbstractC15052b.C15053a.m484a(threadContextElement, gVar);
        }
    }

    void restoreThreadContext(AbstractC15049g gVar, S s);

    S updateThreadContext(AbstractC15049g gVar);
}
