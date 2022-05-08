package kotlin.coroutines;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "Lkotlin/coroutines/CoroutineContext;", "acc", "element", "Lkotlin/coroutines/CoroutineContext$Element;", "invoke"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/coroutines/CoroutineContext$plus$1.class */
public final class CoroutineContext$plus$1 extends Lambda implements Function2<CoroutineContext, CoroutineContext.Element, CoroutineContext> {

    /* renamed from: f */
    public static final CoroutineContext$plus$1 f20644f = new CoroutineContext$plus$1();

    CoroutineContext$plus$1() {
        super(2);
    }

    @NotNull
    /* renamed from: b */
    public final CoroutineContext mo422o(@NotNull CoroutineContext acc, @NotNull CoroutineContext.Element element) {
        Intrinsics.m1830e(acc, "acc");
        Intrinsics.m1830e(element, "element");
        CoroutineContext minusKey = acc.minusKey(element.getKey());
        CoroutineContext coroutineContext = element;
        if (minusKey != EmptyCoroutineContext.f20645f) {
            ContinuationInterceptor continuationInterceptor = (ContinuationInterceptor) minusKey.get(ContinuationInterceptor.f20640b);
            if (continuationInterceptor == null) {
                coroutineContext = new CombinedContext(minusKey, element);
            } else {
                CoroutineContext minusKey2 = minusKey.minusKey(ContinuationInterceptor.f20640b);
                coroutineContext = minusKey2 == EmptyCoroutineContext.f20645f ? new CombinedContext(element, continuationInterceptor) : new CombinedContext(new CombinedContext(minusKey2, element), continuationInterceptor);
            }
        }
        return coroutineContext;
    }
}
