package kotlinx.coroutines;

import kotlin.Metadata;
import kotlinx.coroutines.Job;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0012\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b \u0018��*\n\b��\u0010\u0001 \u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00028��¢\u0006\u0002\u0010\u0005¨\u0006\u0006"}, m815d2 = {"Lkotlinx/coroutines/JobCancellingNode;", "J", "Lkotlinx/coroutines/Job;", "Lkotlinx/coroutines/JobNode;", "job", "(Lkotlinx/coroutines/Job;)V", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/JobCancellingNode.class */
public abstract class JobCancellingNode<J extends Job> extends JobNode<J> {
    public JobCancellingNode(J j) {
        super(j);
    }
}
