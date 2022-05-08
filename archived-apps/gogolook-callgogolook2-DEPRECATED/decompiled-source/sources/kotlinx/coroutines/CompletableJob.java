package kotlinx.coroutines;

import kotlin.Metadata;
import kotlinx.coroutines.Job;
import p626l.p634w.AbstractC15049g;
import p626l.p641z.p642c.AbstractC15122p;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0003\n��\bf\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&¨\u0006\u0007"}, m815d2 = {"Lkotlinx/coroutines/CompletableJob;", "Lkotlinx/coroutines/Job;", "complete", "", "completeExceptionally", "exception", "", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/CompletableJob.class */
public interface CompletableJob extends Job {

    @Metadata(m817bv = {1, 0, 3}, m814k = 3, m813mv = {1, 1, 16})
    /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/CompletableJob$DefaultImpls.class */
    public static final class DefaultImpls {
        public static <R> R fold(CompletableJob completableJob, R r, AbstractC15122p<? super R, ? super AbstractC15049g.AbstractC15052b, ? extends R> pVar) {
            return (R) Job.DefaultImpls.fold(completableJob, r, pVar);
        }

        public static <E extends AbstractC15049g.AbstractC15052b> E get(CompletableJob completableJob, AbstractC15049g.AbstractC15054c<E> cVar) {
            return (E) Job.DefaultImpls.get(completableJob, cVar);
        }

        public static AbstractC15049g minusKey(CompletableJob completableJob, AbstractC15049g.AbstractC15054c<?> cVar) {
            return Job.DefaultImpls.minusKey(completableJob, cVar);
        }

        public static Job plus(CompletableJob completableJob, Job job) {
            return Job.DefaultImpls.plus((Job) completableJob, job);
        }

        public static AbstractC15049g plus(CompletableJob completableJob, AbstractC15049g gVar) {
            return Job.DefaultImpls.plus(completableJob, gVar);
        }
    }

    boolean complete();

    boolean completeExceptionally(Throwable th);
}
