package kotlin.text;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.ranges.RangesKt;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\u0010��\u001a\u0002H\u0001\"\u0004\b��\u0010\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, m254d2 = {"<anonymous>", "R", FirebaseAnalytics.Param.INDEX, "", "invoke", "(I)Ljava/lang/Object;"}, m253k = 3, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:kotlin/text/StringsKt___StringsKt$windowedSequence$2.class */
final class StringsKt___StringsKt$windowedSequence$2 extends Lambda implements Function1<Integer, R> {
    final /* synthetic */ int $size;
    final /* synthetic */ CharSequence $this_windowedSequence;
    final /* synthetic */ Function1 $transform;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StringsKt___StringsKt$windowedSequence$2(CharSequence charSequence, Function1 function1, int i) {
        super(1);
        this.$this_windowedSequence = charSequence;
        this.$transform = function1;
        this.$size = i;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [R, java.lang.Object] */
    public final R invoke(int i) {
        return this.$transform.invoke(this.$this_windowedSequence.subSequence(i, RangesKt.coerceAtMost(this.$size + i, this.$this_windowedSequence.length())));
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Object invoke(Integer num) {
        return invoke(num.intValue());
    }
}
