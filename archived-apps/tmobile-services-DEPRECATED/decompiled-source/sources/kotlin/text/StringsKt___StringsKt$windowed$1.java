package kotlin.text;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\r\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/text/StringsKt___StringsKt$windowed$1.class */
final class StringsKt___StringsKt$windowed$1 extends Lambda implements Function1<CharSequence, String> {
    static {
        new StringsKt___StringsKt$windowed$1();
    }

    StringsKt___StringsKt$windowed$1() {
        super(1);
    }

    @NotNull
    /* renamed from: b */
    public final String invoke(@NotNull CharSequence it) {
        Intrinsics.m1830e(it, "it");
        return it.toString();
    }
}
