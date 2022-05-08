package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.selects.SelectClause1;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.AbstractC15049g;
import p626l.p641z.p642c.AbstractC15122p;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001a\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0003\n��\bf\u0018��*\u0006\b��\u0010\u0001 \u00012\u00020\u0002J\u0011\u0010\u0007\u001a\u00028��H¦@ø\u0001��¢\u0006\u0002\u0010\bJ\r\u0010\t\u001a\u00028��H'¢\u0006\u0002\u0010\nJ\n\u0010\u000b\u001a\u0004\u0018\u00010\fH'R\u0018\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u0004X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\r"}, m815d2 = {"Lkotlinx/coroutines/Deferred;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/Job;", "onAwait", "Lkotlinx/coroutines/selects/SelectClause1;", "getOnAwait", "()Lkotlinx/coroutines/selects/SelectClause1;", "await", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getCompleted", "()Ljava/lang/Object;", "getCompletionExceptionOrNull", "", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/Deferred.class */
public interface Deferred<T> extends Job {

    @Metadata(m817bv = {1, 0, 3}, m814k = 3, m813mv = {1, 1, 16})
    /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/Deferred$DefaultImpls.class */
    public static final class DefaultImpls {
        public static <T, R> R fold(Deferred<? extends T> deferred, R r, AbstractC15122p<? super R, ? super AbstractC15049g.AbstractC15052b, ? extends R> pVar) {
            return (R) Job.DefaultImpls.fold(deferred, r, pVar);
        }

        public static <T, E extends AbstractC15049g.AbstractC15052b> E get(Deferred<? extends T> deferred, AbstractC15049g.AbstractC15054c<E> cVar) {
            return (E) Job.DefaultImpls.get(deferred, cVar);
        }

        public static <T> AbstractC15049g minusKey(Deferred<? extends T> deferred, AbstractC15049g.AbstractC15054c<?> cVar) {
            return Job.DefaultImpls.minusKey(deferred, cVar);
        }

        public static <T> Job plus(Deferred<? extends T> deferred, Job job) {
            return Job.DefaultImpls.plus((Job) deferred, job);
        }

        public static <T> AbstractC15049g plus(Deferred<? extends T> deferred, AbstractC15049g gVar) {
            return Job.DefaultImpls.plus(deferred, gVar);
        }
    }

    Object await(AbstractC15044d<? super T> dVar);

    @ExperimentalCoroutinesApi
    T getCompleted();

    @ExperimentalCoroutinesApi
    Throwable getCompletionExceptionOrNull();

    SelectClause1<T> getOnAwait();
}
