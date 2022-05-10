package kotlin.text;

import java.util.List;
import kotlin.Pair;
import kotlin.jvm.internal.Lambda;
import p573f.C9928f;
import p573f.p590w.p591b.AbstractC10035p;
import p573f.p590w.p592c.C10059q;
/* loaded from: classes2-dex2jar.jar:kotlin/text/StringsKt__StringsKt$rangesDelimitedBy$4.class */
public final class StringsKt__StringsKt$rangesDelimitedBy$4 extends Lambda implements AbstractC10035p<CharSequence, Integer, Pair<? extends Integer, ? extends Integer>> {
    public final /* synthetic */ List $delimitersList;
    public final /* synthetic */ boolean $ignoreCase;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StringsKt__StringsKt$rangesDelimitedBy$4(List list, boolean z) {
        super(2);
        this.$delimitersList = list;
        this.$ignoreCase = z;
    }

    @Override // p573f.p590w.p591b.AbstractC10035p
    public /* bridge */ /* synthetic */ Pair<? extends Integer, ? extends Integer> invoke(CharSequence charSequence, Integer num) {
        return invoke(charSequence, num.intValue());
    }

    public final Pair<Integer, Integer> invoke(CharSequence charSequence, int i) {
        Pair b;
        C10059q.m1637b(charSequence, "$receiver");
        b = StringsKt__StringsKt.m16b(charSequence, this.$delimitersList, i, this.$ignoreCase, false);
        return b != null ? C9928f.m1777a(b.getFirst(), Integer.valueOf(((String) b.getSecond()).length())) : null;
    }
}
