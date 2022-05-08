package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.selects.SelectClause0;
import p626l.C14989s;
import p626l.p630d0.AbstractC14921e;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.AbstractC15049g;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p642c.AbstractC15122p;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\bf\u0018�� (2\u00020\u0001:\u0001(J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H'J\b\u0010\u0013\u001a\u00020\u0014H\u0017J\u0014\u0010\u0013\u001a\u00020\u00072\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016H'J\u001a\u0010\u0013\u001a\u00020\u00142\u0010\b\u0002\u0010\u0015\u001a\n\u0018\u00010\u0017j\u0004\u0018\u0001`\u0018H&J\f\u0010\u0019\u001a\u00060\u0017j\u0002`\u0018H'JE\u0010\u001a\u001a\u00020\u001b2\b\b\u0002\u0010\u001c\u001a\u00020\u00072\b\b\u0002\u0010\u001d\u001a\u00020\u00072'\u0010\u001e\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u0016¢\u0006\f\b \u0012\b\b!\u0012\u0004\b\b(\u0015\u0012\u0004\u0012\u00020\u00140\u001fj\u0002`\"H'J1\u0010\u001a\u001a\u00020\u001b2'\u0010\u001e\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u0016¢\u0006\f\b \u0012\b\b!\u0012\u0004\b\b(\u0015\u0012\u0004\u0012\u00020\u00140\u001fj\u0002`\"H&J\u0011\u0010#\u001a\u00020\u0014H¦@ø\u0001��¢\u0006\u0002\u0010$J\u0011\u0010%\u001a\u00020��2\u0006\u0010&\u001a\u00020��H\u0097\u0002J\b\u0010'\u001a\u00020\u0007H&R\u0018\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020��0\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\bR\u0012\u0010\t\u001a\u00020\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\bR\u0012\u0010\n\u001a\u00020\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\bR\u0012\u0010\u000b\u001a\u00020\fX¦\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000e\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006)"}, m815d2 = {"Lkotlinx/coroutines/Job;", "Lkotlin/coroutines/CoroutineContext$Element;", "children", "Lkotlin/sequences/Sequence;", "getChildren", "()Lkotlin/sequences/Sequence;", "isActive", "", "()Z", "isCancelled", "isCompleted", "onJoin", "Lkotlinx/coroutines/selects/SelectClause0;", "getOnJoin", "()Lkotlinx/coroutines/selects/SelectClause0;", "attachChild", "Lkotlinx/coroutines/ChildHandle;", "child", "Lkotlinx/coroutines/ChildJob;", "cancel", "", "cause", "", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "getCancellationException", "invokeOnCompletion", "Lkotlinx/coroutines/DisposableHandle;", "onCancelling", "invokeImmediately", "handler", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "Lkotlinx/coroutines/CompletionHandler;", "join", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "plus", "other", "start", "Key", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/Job.class */
public interface Job extends AbstractC15049g.AbstractC15052b {
    public static final Key Key = Key.$$INSTANCE;

    @Metadata(m817bv = {1, 0, 3}, m814k = 3, m813mv = {1, 1, 16})
    /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/Job$DefaultImpls.class */
    public static final class DefaultImpls {
        public static /* synthetic */ void cancel$default(Job job, CancellationException cancellationException, int i, Object obj) {
            if (obj == null) {
                if ((i & 1) != 0) {
                    cancellationException = null;
                }
                job.cancel(cancellationException);
                return;
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
        }

        public static /* synthetic */ boolean cancel$default(Job job, Throwable th, int i, Object obj) {
            if (obj == null) {
                if ((i & 1) != 0) {
                    th = null;
                }
                return job.cancel(th);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
        }

        public static <R> R fold(Job job, R r, AbstractC15122p<? super R, ? super AbstractC15049g.AbstractC15052b, ? extends R> pVar) {
            return (R) AbstractC15049g.AbstractC15052b.C15053a.m486a(job, r, pVar);
        }

        public static <E extends AbstractC15049g.AbstractC15052b> E get(Job job, AbstractC15049g.AbstractC15054c<E> cVar) {
            return (E) AbstractC15049g.AbstractC15052b.C15053a.m485a(job, cVar);
        }

        public static /* synthetic */ DisposableHandle invokeOnCompletion$default(Job job, boolean z, boolean z2, AbstractC15118l lVar, int i, Object obj) {
            if (obj == null) {
                if ((i & 1) != 0) {
                    z = false;
                }
                if ((i & 2) != 0) {
                    z2 = true;
                }
                return job.invokeOnCompletion(z, z2, lVar);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: invokeOnCompletion");
        }

        public static AbstractC15049g minusKey(Job job, AbstractC15049g.AbstractC15054c<?> cVar) {
            return AbstractC15049g.AbstractC15052b.C15053a.m483b(job, cVar);
        }

        public static Job plus(Job job, Job job2) {
            return job2;
        }

        public static AbstractC15049g plus(Job job, AbstractC15049g gVar) {
            return AbstractC15049g.AbstractC15052b.C15053a.m484a(job, gVar);
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003¨\u0006\u0004"}, m815d2 = {"Lkotlinx/coroutines/Job$Key;", "Lkotlin/coroutines/CoroutineContext$Key;", "Lkotlinx/coroutines/Job;", "()V", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
    /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/Job$Key.class */
    public static final class Key implements AbstractC15049g.AbstractC15054c<Job> {
        public static final /* synthetic */ Key $$INSTANCE = new Key();

        static {
            CoroutineExceptionHandler.Key key = CoroutineExceptionHandler.Key;
        }
    }

    @InternalCoroutinesApi
    ChildHandle attachChild(ChildJob childJob);

    /* synthetic */ void cancel();

    void cancel(CancellationException cancellationException);

    /* synthetic */ boolean cancel(Throwable th);

    @InternalCoroutinesApi
    CancellationException getCancellationException();

    AbstractC14921e<Job> getChildren();

    SelectClause0 getOnJoin();

    DisposableHandle invokeOnCompletion(AbstractC15118l<? super Throwable, C14989s> lVar);

    @InternalCoroutinesApi
    DisposableHandle invokeOnCompletion(boolean z, boolean z2, AbstractC15118l<? super Throwable, C14989s> lVar);

    boolean isActive();

    boolean isCancelled();

    boolean isCompleted();

    Object join(AbstractC15044d<? super C14989s> dVar);

    Job plus(Job job);

    boolean start();
}
