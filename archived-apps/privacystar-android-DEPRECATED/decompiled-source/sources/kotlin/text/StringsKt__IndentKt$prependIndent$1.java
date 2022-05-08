package kotlin.text;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\n\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0003"}, m254d2 = {"<anonymous>", "", "it", "invoke"}, m253k = 3, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:kotlin/text/StringsKt__IndentKt$prependIndent$1.class */
final class StringsKt__IndentKt$prependIndent$1 extends Lambda implements Function1<String, String> {
    final /* synthetic */ String $indent;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StringsKt__IndentKt$prependIndent$1(String str) {
        super(1);
        this.$indent = str;
    }

    @NotNull
    public final String invoke(@NotNull String it) {
        String str;
        Intrinsics.checkParameterIsNotNull(it, "it");
        if (StringsKt.isBlank(it)) {
            str = it;
            if (it.length() < this.$indent.length()) {
                str = this.$indent;
            }
        } else {
            str = this.$indent + it;
        }
        return str;
    }
}
