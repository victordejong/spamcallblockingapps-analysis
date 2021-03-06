package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.JvmName;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.internal.ScopeCoroutine;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��8\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u001aP\u0010\t\u001a\b\u0012\u0004\u0012\u00028��0\b\"\u0004\b��\u0010��2/\b\u0005\u0010\u0007\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0001¢\u0006\u0002\b\u0006H\u0081\bø\u0001��¢\u0006\u0004\b\t\u0010\n\u001a\u001f\u0010\u000e\u001a\u00020\u0004*\u0006\u0012\u0002\b\u00030\u000b2\u0006\u0010\r\u001a\u00020\fH\u0001¢\u0006\u0004\b\u000e\u0010\u000f\u001a\"\u0010\u0012\u001a\u0004\u0018\u00010\u0010*\u0004\u0018\u00010\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0080\u0010¢\u0006\u0004\b\u0012\u0010\u0013\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0014"}, d2 = {"T", "Lkotlin/Function2;", "Lkotlinx/coroutines/flow/FlowCollector;", "Lkotlin/coroutines/Continuation;", "", "", "Lkotlin/ExtensionFunctionType;", "block", "Lkotlinx/coroutines/flow/Flow;", "unsafeFlow", "(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;", "Lkotlinx/coroutines/flow/internal/SafeCollector;", "Lkotlin/coroutines/CoroutineContext;", "currentContext", "checkContext", "(Lkotlinx/coroutines/flow/internal/SafeCollector;Lkotlin/coroutines/CoroutineContext;)V", "Lkotlinx/coroutines/Job;", "collectJob", "transitiveCoroutineParent", "(Lkotlinx/coroutines/Job;Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/Job;", "kotlinx-coroutines-core"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/internal/SafeCollector_commonKt.class */
public final class SafeCollector_commonKt {
    @JvmName
    /* renamed from: a */
    public static final void m592a(@NotNull SafeCollector<?> safeCollector, @NotNull CoroutineContext coroutineContext) {
        if (((Number) coroutineContext.fold(0, new SafeCollector_commonKt$checkContext$result$1(safeCollector))).intValue() != safeCollector.f23866f) {
            throw new IllegalStateException(("Flow invariant is violated:\n\t\tFlow was collected in " + safeCollector.f23870j + ",\n\t\tbut emission happened in " + coroutineContext + ".\n\t\tPlease refer to 'flow' documentation or use 'flowOn' instead").toString());
        }
    }

    @Nullable
    /* renamed from: b */
    public static final Job m591b(@Nullable Job job, @Nullable Job job2) {
        while (job != null) {
            if (job != job2 && (job instanceof ScopeCoroutine)) {
                job = ((ScopeCoroutine) job).m470V0();
            }
            return job;
        }
        return null;
    }
}
