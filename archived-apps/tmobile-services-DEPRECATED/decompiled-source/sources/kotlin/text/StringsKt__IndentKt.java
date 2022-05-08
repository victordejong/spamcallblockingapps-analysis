package kotlin.text;

import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u000f\u001a#\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020��\u0012\u0004\u0012\u00020��0\u00022\u0006\u0010\u0001\u001a\u00020��H\u0002¢\u0006\u0004\b\u0003\u0010\u0004\u001a\u0013\u0010\t\u001a\u00020\u0006*\u00020��H\u0002¢\u0006\u0004\b\u0007\u0010\b\u001a\u001b\u0010\n\u001a\u00020��*\u00020��2\b\b\u0002\u0010\u0001\u001a\u00020��¢\u0006\u0004\b\n\u0010\u000b\u001aL\u0010\u0012\u001a\u00020��*\b\u0012\u0004\u0012\u00020��0\f2\u0006\u0010\r\u001a\u00020\u00062\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020��\u0012\u0004\u0012\u00020��0\u00022\u0014\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020��\u0012\u0006\u0012\u0004\u0018\u00010��0\u0002H\u0082\b¢\u0006\u0004\b\u0010\u0010\u0011\u001a\u001b\u0010\u0014\u001a\u00020��*\u00020��2\b\b\u0002\u0010\u0013\u001a\u00020��¢\u0006\u0004\b\u0014\u0010\u000b\u001a%\u0010\u0016\u001a\u00020��*\u00020��2\b\b\u0002\u0010\u0013\u001a\u00020��2\b\b\u0002\u0010\u0015\u001a\u00020��¢\u0006\u0004\b\u0016\u0010\u0017\u001a\u0011\u0010\u0018\u001a\u00020��*\u00020��¢\u0006\u0004\b\u0018\u0010\u0019\u001a\u001b\u0010\u001a\u001a\u00020��*\u00020��2\b\b\u0002\u0010\u0015\u001a\u00020��¢\u0006\u0004\b\u001a\u0010\u000b¨\u0006\u001b"}, d2 = {"", "indent", "Lkotlin/Function1;", "getIndentFunction$StringsKt__IndentKt", "(Ljava/lang/String;)Lkotlin/Function1;", "getIndentFunction", "", "indentWidth$StringsKt__IndentKt", "(Ljava/lang/String;)I", "indentWidth", "prependIndent", "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "", "resultSizeEstimate", "indentAddFunction", "indentCutFunction", "reindent$StringsKt__IndentKt", "(Ljava/util/List;ILkotlin/Function1;Lkotlin/Function1;)Ljava/lang/String;", "reindent", "newIndent", "replaceIndent", "marginPrefix", "replaceIndentByMargin", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "trimIndent", "(Ljava/lang/String;)Ljava/lang/String;", "trimMargin", "kotlin-stdlib"}, k = 5, mv = {1, 1, 15}, pn = "", xi = 0, xs = "kotlin/text/StringsKt")
/* loaded from: classes2-dex2jar.jar:kotlin/text/StringsKt__IndentKt.class */
public class StringsKt__IndentKt extends StringsKt__AppendableKt {
    /* renamed from: b */
    private static final Function1<String, String> m1507b(String str) {
        return str.length() == 0 ? StringsKt__IndentKt$getIndentFunction$1.f21047f : new StringsKt__IndentKt$getIndentFunction$2(str);
    }

    /* renamed from: c */
    private static final int m1506c(String str) {
        int length = str.length();
        int i = 0;
        while (true) {
            if (i >= length) {
                i = -1;
                break;
            } else if (!CharsKt__CharJVMKt.m1573c(str.charAt(i))) {
                break;
            } else {
                i++;
            }
        }
        int i2 = i;
        if (i == -1) {
            i2 = str.length();
        }
        return i2;
    }

    @NotNull
    /* renamed from: d */
    public static final String m1505d(@NotNull String replaceIndent, @NotNull String newIndent) {
        String G0;
        String invoke;
        Intrinsics.m1830e(replaceIndent, "$this$replaceIndent");
        Intrinsics.m1830e(newIndent, "newIndent");
        List<String> d0 = StringsKt__StringsKt.m1444d0(replaceIndent);
        ArrayList<String> arrayList = new ArrayList();
        for (Object obj : d0) {
            if (!StringsKt.m1515r((String) obj)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt.m2187p(arrayList, 10));
        for (String str : arrayList) {
            arrayList2.add(Integer.valueOf(m1506c(str)));
        }
        Integer num = (Integer) CollectionsKt.m2206L(arrayList2);
        int i = 0;
        int intValue = num != null ? num.intValue() : 0;
        int length = replaceIndent.length();
        int length2 = newIndent.length();
        int size = d0.size();
        Function1<String, String> b = m1507b(newIndent);
        int h = CollectionsKt.m2194h(d0);
        ArrayList arrayList3 = new ArrayList();
        for (Object obj2 : d0) {
            String str2 = null;
            if (i >= 0) {
                str2 = (String) obj2;
                if (!(((i == 0 || i == h) && StringsKt.m1515r(str2)) || (G0 = StringsKt___StringsKt.m1416G0(str2, intValue)) == null || (invoke = b.invoke(G0)) == null)) {
                    str2 = invoke;
                }
                if (str2 != null) {
                    arrayList3.add(str2);
                }
                i++;
            } else {
                CollectionsKt.m2188o();
                throw null;
            }
        }
        StringBuilder sb = new StringBuilder(length + (length2 * size));
        CollectionsKt.m2209H(arrayList3, sb, "\n", null, null, 0, null, null, 124, null);
        String sb2 = sb.toString();
        Intrinsics.m1831d(sb2, "mapIndexedNotNull { inde…\"\\n\")\n        .toString()");
        return sb2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0108, code lost:
        if (r11 != null) goto L_0x0110;
     */
    @org.jetbrains.annotations.NotNull
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.String m1504e(@org.jetbrains.annotations.NotNull java.lang.String r11, @org.jetbrains.annotations.NotNull java.lang.String r12, @org.jetbrains.annotations.NotNull java.lang.String r13) {
        /*
            Method dump skipped, instructions count: 355
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.text.StringsKt__IndentKt.m1504e(java.lang.String, java.lang.String, java.lang.String):java.lang.String");
    }

    @NotNull
    /* renamed from: f */
    public static String m1503f(@NotNull String trimIndent) {
        Intrinsics.m1830e(trimIndent, "$this$trimIndent");
        return m1505d(trimIndent, "");
    }

    @NotNull
    /* renamed from: g */
    public static final String m1502g(@NotNull String trimMargin, @NotNull String marginPrefix) {
        Intrinsics.m1830e(trimMargin, "$this$trimMargin");
        Intrinsics.m1830e(marginPrefix, "marginPrefix");
        return m1504e(trimMargin, "", marginPrefix);
    }

    /* renamed from: h */
    public static /* synthetic */ String m1501h(String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str2 = "|";
        }
        return m1502g(str, str2);
    }
}
