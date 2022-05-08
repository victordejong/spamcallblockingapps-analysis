package kotlin.coroutines.experimental;

import kotlin.Metadata;
import kotlin.coroutines.experimental.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0010\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, m254d2 = {"<anonymous>", "", "acc", "element", "Lkotlin/coroutines/experimental/CoroutineContext$Element;", "invoke"}, m253k = 3, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:kotlin/coroutines/experimental/CombinedContext$toString$1.class */
final class CombinedContext$toString$1 extends Lambda implements Function2<String, CoroutineContext.Element, String> {
    public static final CombinedContext$toString$1 INSTANCE = new CombinedContext$toString$1();

    CombinedContext$toString$1() {
        super(2);
    }

    @NotNull
    public final String invoke(@NotNull String acc, @NotNull CoroutineContext.Element element) {
        String str;
        Intrinsics.checkParameterIsNotNull(acc, "acc");
        Intrinsics.checkParameterIsNotNull(element, "element");
        if (acc.length() == 0) {
            str = element.toString();
        } else {
            str = acc + ", " + element;
        }
        return str;
    }
}
