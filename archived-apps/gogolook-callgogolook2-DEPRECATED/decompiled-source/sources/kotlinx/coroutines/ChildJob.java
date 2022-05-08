package kotlinx.coroutines;

import kotlin.Metadata;
import kotlinx.coroutines.Job;
import p626l.p634w.AbstractC15049g;
import p626l.p641z.p642c.AbstractC15122p;
@InternalCoroutinesApi
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\bg\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H'¨\u0006\u0006"}, m815d2 = {"Lkotlinx/coroutines/ChildJob;", "Lkotlinx/coroutines/Job;", "parentCancelled", "", "parentJob", "Lkotlinx/coroutines/ParentJob;", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/ChildJob.class */
public interface ChildJob extends Job {

    @Metadata(m817bv = {1, 0, 3}, m814k = 3, m813mv = {1, 1, 16})
    /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/ChildJob$DefaultImpls.class */
    public static final class DefaultImpls {
        public static <R> R fold(ChildJob childJob, R r, AbstractC15122p<? super R, ? super AbstractC15049g.AbstractC15052b, ? extends R> pVar) {
            return (R) Job.DefaultImpls.fold(childJob, r, pVar);
        }

        public static <E extends AbstractC15049g.AbstractC15052b> E get(ChildJob childJob, AbstractC15049g.AbstractC15054c<E> cVar) {
            return (E) Job.DefaultImpls.get(childJob, cVar);
        }

        public static AbstractC15049g minusKey(ChildJob childJob, AbstractC15049g.AbstractC15054c<?> cVar) {
            return Job.DefaultImpls.minusKey(childJob, cVar);
        }

        public static Job plus(ChildJob childJob, Job job) {
            return Job.DefaultImpls.plus((Job) childJob, job);
        }

        public static AbstractC15049g plus(ChildJob childJob, AbstractC15049g gVar) {
            return Job.DefaultImpls.plus(childJob, gVar);
        }
    }

    @InternalCoroutinesApi
    void parentCancelled(ParentJob parentJob);
}
