package kotlinx.coroutines;

import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\"\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018��*\u0006\b��\u0010\u0001 \u00012\u00020\u00022\u00020\u0003J\u0013\u0010\u0004\u001a\u00028��H¦@ø\u0001��¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0006\u001a\u00028��H'¢\u0006\u0004\b\u0006\u0010\u0007J\u0011\u0010\t\u001a\u0004\u0018\u00010\bH'¢\u0006\u0004\b\t\u0010\nR\u001c\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028��0\u000b8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\r\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000f"}, d2 = {"Lkotlinx/coroutines/Deferred;", "T", "Lkotlinx/coroutines/Job;", "Lkotlin/Any;", "await", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getCompleted", "()Ljava/lang/Object;", "", "getCompletionExceptionOrNull", "()Ljava/lang/Throwable;", "Lkotlinx/coroutines/selects/SelectClause1;", "getOnAwait", "()Lkotlinx/coroutines/selects/SelectClause1;", "onAwait", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/Deferred.class */
public interface Deferred<T> extends Job {

    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/Deferred$DefaultImpls.class */
    public static final class DefaultImpls {
    }

    @ExperimentalCoroutinesApi
    /* renamed from: d */
    T mo1295d();
}
