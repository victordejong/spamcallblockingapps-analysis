package kotlin.text;

import kotlin.jvm.internal.Lambda;
import p573f.p590w.p591b.AbstractC10031l;
import p573f.p590w.p592c.C10059q;
/* loaded from: classes2-dex2jar.jar:kotlin/text/StringsKt__IndentKt$getIndentFunction$2.class */
public final class StringsKt__IndentKt$getIndentFunction$2 extends Lambda implements AbstractC10031l<String, String> {
    public final /* synthetic */ String $indent;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StringsKt__IndentKt$getIndentFunction$2(String str) {
        super(1);
        this.$indent = str;
    }

    public final String invoke(String str) {
        C10059q.m1637b(str, "line");
        return this.$indent + str;
    }
}
