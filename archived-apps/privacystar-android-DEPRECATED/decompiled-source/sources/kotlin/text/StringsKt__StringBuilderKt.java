package kotlin.text;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.Unit;
import kotlin.internal.InlineOnly;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��B\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\u0010\r\n��\n\u0002\u0010��\n\u0002\b\u0007\u001a.\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u001b\u0010\u0004\u001a\u0017\u0012\b\u0012\u00060\u0006j\u0002`\u0007\u0012\u0004\u0012\u00020\b0\u0005¢\u0006\u0002\b\tH\u0087\b\u001a&\u0010��\u001a\u00020\u00012\u001b\u0010\u0004\u001a\u0017\u0012\b\u0012\u00060\u0006j\u0002`\u0007\u0012\u0004\u0012\u00020\b0\u0005¢\u0006\u0002\b\tH\u0087\b\u001a5\u0010\n\u001a\u0002H\u000b\"\f\b��\u0010\u000b*\u00060\fj\u0002`\r*\u0002H\u000b2\u0016\u0010\u000e\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00100\u000f\"\u0004\u0018\u00010\u0010¢\u0006\u0002\u0010\u0011\u001a/\u0010\n\u001a\u00060\u0006j\u0002`\u0007*\u00060\u0006j\u0002`\u00072\u0016\u0010\u000e\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00120\u000f\"\u0004\u0018\u00010\u0012¢\u0006\u0002\u0010\u0013\u001a/\u0010\n\u001a\u00060\u0006j\u0002`\u0007*\u00060\u0006j\u0002`\u00072\u0016\u0010\u000e\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\u000f\"\u0004\u0018\u00010\u0001¢\u0006\u0002\u0010\u0014\u001a9\u0010\u0015\u001a\u00020\b\"\u0004\b��\u0010\u000b*\u00060\fj\u0002`\r2\u0006\u0010\u0016\u001a\u0002H\u000b2\u0014\u0010\u0017\u001a\u0010\u0012\u0004\u0012\u0002H\u000b\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u0005H��¢\u0006\u0002\u0010\u0018¨\u0006\u0019"}, m254d2 = {"buildString", "", "capacity", "", "builderAction", "Lkotlin/Function1;", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "", "Lkotlin/ExtensionFunctionType;", "append", "T", "Ljava/lang/Appendable;", "Lkotlin/text/Appendable;", FirebaseAnalytics.Param.VALUE, "", "", "(Ljava/lang/Appendable;[Ljava/lang/CharSequence;)Ljava/lang/Appendable;", "", "(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;", "(Ljava/lang/StringBuilder;[Ljava/lang/String;)Ljava/lang/StringBuilder;", "appendElement", "element", "transform", "(Ljava/lang/Appendable;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V", "kotlin-stdlib"}, m253k = 5, m252mv = {1, 1, 13}, m250xi = 1, m249xs = "kotlin/text/StringsKt")
/* loaded from: classes2-dex2jar.jar:kotlin/text/StringsKt__StringBuilderKt.class */
public class StringsKt__StringBuilderKt extends StringsKt__StringBuilderJVMKt {
    @NotNull
    public static final <T extends Appendable> T append(@NotNull T receiver$0, @NotNull CharSequence... value) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(value, "value");
        for (CharSequence charSequence : value) {
            receiver$0.append(charSequence);
        }
        return receiver$0;
    }

    @NotNull
    public static final StringBuilder append(@NotNull StringBuilder receiver$0, @NotNull Object... value) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(value, "value");
        for (Object obj : value) {
            receiver$0.append(obj);
        }
        return receiver$0;
    }

    @NotNull
    public static final StringBuilder append(@NotNull StringBuilder receiver$0, @NotNull String... value) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(value, "value");
        for (String str : value) {
            receiver$0.append(str);
        }
        return receiver$0;
    }

    public static final <T> void appendElement(@NotNull Appendable receiver$0, T t, @Nullable Function1<? super T, ? extends CharSequence> function1) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        if (function1 != null) {
            receiver$0.append((CharSequence) function1.invoke(t));
            return;
        }
        if (t != null ? t instanceof CharSequence : true) {
            receiver$0.append((CharSequence) t);
        } else if (t instanceof Character) {
            receiver$0.append(((Character) t).charValue());
        } else {
            receiver$0.append(String.valueOf(t));
        }
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final String buildString(int i, Function1<? super StringBuilder, Unit> function1) {
        StringBuilder sb = new StringBuilder(i);
        function1.invoke(sb);
        String sb2 = sb.toString();
        Intrinsics.checkExpressionValueIsNotNull(sb2, "StringBuilder(capacity).…builderAction).toString()");
        return sb2;
    }

    @InlineOnly
    private static final String buildString(Function1<? super StringBuilder, Unit> function1) {
        StringBuilder sb = new StringBuilder();
        function1.invoke(sb);
        String sb2 = sb.toString();
        Intrinsics.checkExpressionValueIsNotNull(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }
}
