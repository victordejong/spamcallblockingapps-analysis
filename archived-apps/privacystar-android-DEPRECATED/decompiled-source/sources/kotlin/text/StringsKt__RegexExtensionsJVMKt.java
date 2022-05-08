package kotlin.text;

import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.internal.InlineOnly;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\u001a\r\u0010��\u001a\u00020\u0001*\u00020\u0002H\u0087\b¨\u0006\u0003"}, m254d2 = {"toRegex", "Lkotlin/text/Regex;", "Ljava/util/regex/Pattern;", "kotlin-stdlib"}, m253k = 5, m252mv = {1, 1, 13}, m250xi = 1, m249xs = "kotlin/text/StringsKt")
/* loaded from: classes2-dex2jar.jar:kotlin/text/StringsKt__RegexExtensionsJVMKt.class */
class StringsKt__RegexExtensionsJVMKt extends StringsKt__IndentKt {
    @InlineOnly
    private static final Regex toRegex(@NotNull Pattern pattern) {
        return new Regex(pattern);
    }
}
