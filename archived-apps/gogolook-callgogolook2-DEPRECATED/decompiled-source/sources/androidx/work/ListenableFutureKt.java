package androidx.work;

import androidx.annotation.RestrictTo;
import java.util.concurrent.ExecutionException;
import kotlin.Metadata;
import kotlinx.coroutines.CancellableContinuationImpl;
import p081h.p203i.p316b.p323g.p324a.AbstractFutureC9382a;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15059b;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.C15072h;
import p626l.p641z.p643d.C15148j;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\f\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a!\u0010��\u001a\u0002H\u0001\"\u0004\b��\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u0002H\u0087Hø\u0001��¢\u0006\u0002\u0010\u0003\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0004"}, m815d2 = {"await", "R", "Lcom/google/common/util/concurrent/ListenableFuture;", "(Lcom/google/common/util/concurrent/ListenableFuture;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "work-runtime-ktx_release"}, m814k = 2, m813mv = {1, 1, 16})
/* loaded from: classes-dex2jar.jar:androidx/work/ListenableFutureKt.class */
public final class ListenableFutureKt {
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final <R> Object await(AbstractFutureC9382a<R> aVar, AbstractC15044d<? super R> dVar) {
        if (aVar.isDone()) {
            try {
                return aVar.get();
            } catch (ExecutionException e) {
                e = e;
                Throwable cause = e.getCause();
                if (cause != null) {
                    e = cause;
                }
                throw e;
            }
        } else {
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(C15059b.m481a(dVar), 1);
            aVar.addListener(new RunnableC1219x6ec15468(cancellableContinuationImpl, aVar), DirectExecutor.INSTANCE);
            Object result = cancellableContinuationImpl.getResult();
            if (result == C15064c.m478a()) {
                C15072h.m462c(dVar);
            }
            return result;
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final Object await$$forInline(AbstractFutureC9382a aVar, AbstractC15044d dVar) {
        if (aVar.isDone()) {
            try {
                return aVar.get();
            } catch (ExecutionException e) {
                e = e;
                Throwable cause = e.getCause();
                if (cause != null) {
                    e = cause;
                }
                throw e;
            }
        } else {
            C15148j.m388c(0);
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(C15059b.m481a(dVar), 1);
            aVar.addListener(new RunnableC1219x6ec15468(cancellableContinuationImpl, aVar), DirectExecutor.INSTANCE);
            Object result = cancellableContinuationImpl.getResult();
            if (result == C15064c.m478a()) {
                C15072h.m462c(dVar);
            }
            C15148j.m388c(1);
            return result;
        }
    }
}
