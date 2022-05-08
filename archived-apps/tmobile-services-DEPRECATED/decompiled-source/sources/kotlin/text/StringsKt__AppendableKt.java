package kotlin.text;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\u0010\r\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\f\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\u001a7\u0010\u0006\u001a\u00028��\"\f\b��\u0010\u0002*\u00060��j\u0002`\u0001*\u00028��2\u0016\u0010\u0005\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00040\u0003\"\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007\u001a;\u0010\f\u001a\u00020\u000b\"\u0004\b��\u0010\u0002*\u00060��j\u0002`\u00012\u0006\u0010\b\u001a\u00028��2\u0014\u0010\n\u001a\u0010\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00020\u0004\u0018\u00010\tH��¢\u0006\u0004\b\f\u0010\r\u001a\u001c\u0010\u000e\u001a\u00060��j\u0002`\u0001*\u00060��j\u0002`\u0001H\u0087\b¢\u0006\u0004\b\u000e\u0010\u000f\u001a$\u0010\u000e\u001a\u00060��j\u0002`\u0001*\u00060��j\u0002`\u00012\u0006\u0010\u0005\u001a\u00020\u0010H\u0087\b¢\u0006\u0004\b\u000e\u0010\u0011\u001a&\u0010\u000e\u001a\u00060��j\u0002`\u0001*\u00060��j\u0002`\u00012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0087\b¢\u0006\u0004\b\u000e\u0010\u0012\u001a9\u0010\u0016\u001a\u00028��\"\f\b��\u0010\u0002*\u00060��j\u0002`\u0001*\u00028��2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0013H\u0007¢\u0006\u0004\b\u0016\u0010\u0017¨\u0006\u0018"}, d2 = {"Ljava/lang/Appendable;", "Lkotlin/text/Appendable;", "T", "", "", FirebaseAnalytics.Param.VALUE, "append", "(Ljava/lang/Appendable;[Ljava/lang/CharSequence;)Ljava/lang/Appendable;", "element", "Lkotlin/Function1;", "transform", "", "appendElement", "(Ljava/lang/Appendable;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V", "appendLine", "(Ljava/lang/Appendable;)Ljava/lang/Appendable;", "", "(Ljava/lang/Appendable;C)Ljava/lang/Appendable;", "(Ljava/lang/Appendable;Ljava/lang/CharSequence;)Ljava/lang/Appendable;", "", "startIndex", "endIndex", "appendRange", "(Ljava/lang/Appendable;Ljava/lang/CharSequence;II)Ljava/lang/Appendable;", "kotlin-stdlib"}, k = 5, mv = {1, 1, 15}, pn = "", xi = 0, xs = "kotlin/text/StringsKt")
/* loaded from: classes2-dex2jar.jar:kotlin/text/StringsKt__AppendableKt.class */
public class StringsKt__AppendableKt {
    /* renamed from: a */
    public static <T> void m1508a(@NotNull Appendable appendElement, T t, @Nullable Function1<? super T, ? extends CharSequence> function1) {
        Intrinsics.m1830e(appendElement, "$this$appendElement");
        if (function1 != null) {
            appendElement.append((CharSequence) function1.invoke(t));
            return;
        }
        if (t != null ? t instanceof CharSequence : true) {
            appendElement.append((CharSequence) t);
        } else if (t instanceof Character) {
            appendElement.append(((Character) t).charValue());
        } else {
            appendElement.append(String.valueOf(t));
        }
    }
}
