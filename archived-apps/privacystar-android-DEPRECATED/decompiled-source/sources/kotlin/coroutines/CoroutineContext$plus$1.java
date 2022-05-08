package kotlin.coroutines;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0010\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, m254d2 = {"<anonymous>", "Lkotlin/coroutines/CoroutineContext;", "acc", "element", "Lkotlin/coroutines/CoroutineContext$Element;", "invoke"}, m253k = 3, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:kotlin/coroutines/CoroutineContext$plus$1.class */
public final class CoroutineContext$plus$1 extends Lambda implements Function2<CoroutineContext, CoroutineContext.Element, CoroutineContext> {
    public static final CoroutineContext$plus$1 INSTANCE = new CoroutineContext$plus$1();

    CoroutineContext$plus$1() {
        super(2);
    }

    @NotNull
    public final CoroutineContext invoke(@NotNull CoroutineContext acc, @NotNull CoroutineContext.Element element) {
        CombinedContext combinedContext;
        CombinedContext combinedContext2;
        Intrinsics.checkParameterIsNotNull(acc, "acc");
        Intrinsics.checkParameterIsNotNull(element, "element");
        CoroutineContext minusKey = acc.minusKey(element.getKey());
        if (minusKey == EmptyCoroutineContext.INSTANCE) {
            combinedContext = element;
        } else {
            ContinuationInterceptor continuationInterceptor = (ContinuationInterceptor) minusKey.get(ContinuationInterceptor.Key);
            if (continuationInterceptor == null) {
                combinedContext2 = new CombinedContext(minusKey, element);
            } else {
                CoroutineContext minusKey2 = minusKey.minusKey(ContinuationInterceptor.Key);
                combinedContext2 = minusKey2 == EmptyCoroutineContext.INSTANCE ? new CombinedContext(element, continuationInterceptor) : new CombinedContext(new CombinedContext(minusKey2, element), continuationInterceptor);
            }
            combinedContext = combinedContext2;
        }
        return combinedContext;
    }
}
