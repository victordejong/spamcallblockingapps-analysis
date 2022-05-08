package kotlin.coroutines.jvm.internal;

import kotlin.Metadata;
import kotlin.SinceKotlin;
import org.jetbrains.annotations.Nullable;
@SinceKotlin
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\bg\u0018��2\u00020\u0001J\u0011\u0010\u0003\u001a\u0004\u0018\u00010\u0002H&¢\u0006\u0004\b\u0003\u0010\u0004R\u0018\u0010\u0007\u001a\u0004\u0018\u00010��8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "Lkotlin/Any;", "Ljava/lang/StackTraceElement;", "getStackTraceElement", "()Ljava/lang/StackTraceElement;", "getCallerFrame", "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "callerFrame", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/coroutines/jvm/internal/CoroutineStackFrame.class */
public interface CoroutineStackFrame {
    @Nullable
    CoroutineStackFrame getCallerFrame();

    @Nullable
    StackTraceElement getStackTraceElement();
}
