package kotlinx.coroutines;

import kotlin.Deprecated;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Deprecated
@InternalCoroutinesApi
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\bg\u0018��2\u00020\u00012\u00020\u0002J\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H'¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lkotlinx/coroutines/ChildHandle;", "Lkotlinx/coroutines/DisposableHandle;", "Lkotlin/Any;", "", "cause", "", "childCancelled", "(Ljava/lang/Throwable;)Z", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/ChildHandle.class */
public interface ChildHandle extends DisposableHandle {
    @InternalCoroutinesApi
    /* renamed from: g */
    boolean mo1118g(@NotNull Throwable th);
}
