package kotlinx.coroutines;

import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "it", "Ljava/lang/Runnable;", "kotlin.jvm.PlatformType", "execute"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/CommonPool$shutdown$2.class */
final class CommonPool$shutdown$2 implements Executor {
    CommonPool$shutdown$2() {
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        throw new RejectedExecutionException("CommonPool was shutdown");
    }
}
