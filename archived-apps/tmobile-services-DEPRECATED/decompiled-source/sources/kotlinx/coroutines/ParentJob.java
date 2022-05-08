package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import kotlin.Deprecated;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Deprecated
@InternalCoroutinesApi
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bg\u0018��2\u00020\u00012\u00020\u0002J\u0013\u0010\u0005\u001a\u00060\u0003j\u0002`\u0004H'¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lkotlinx/coroutines/ParentJob;", "Lkotlinx/coroutines/Job;", "Lkotlin/Any;", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "getChildJobCancellationCause", "()Ljava/util/concurrent/CancellationException;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/ParentJob.class */
public interface ParentJob extends Job {

    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/ParentJob$DefaultImpls.class */
    public static final class DefaultImpls {
    }

    @InternalCoroutinesApi
    @NotNull
    /* renamed from: J */
    CancellationException mo1117J();
}
