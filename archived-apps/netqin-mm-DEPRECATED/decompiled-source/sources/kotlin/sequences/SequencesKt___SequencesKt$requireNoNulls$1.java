package kotlin.sequences;

import kotlin.jvm.internal.Lambda;
import p573f.p575b0.AbstractC9896b;
import p573f.p590w.p591b.AbstractC10031l;
/* loaded from: classes2-dex2jar.jar:kotlin/sequences/SequencesKt___SequencesKt$requireNoNulls$1.class */
public final class SequencesKt___SequencesKt$requireNoNulls$1 extends Lambda implements AbstractC10031l<T, T> {
    public final /* synthetic */ AbstractC9896b $this_requireNoNulls;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SequencesKt___SequencesKt$requireNoNulls$1(AbstractC9896b bVar) {
        super(1);
        this.$this_requireNoNulls = bVar;
    }

    @Override // p573f.p590w.p591b.AbstractC10031l
    public final T invoke(T t) {
        if (t != 0) {
            return t;
        }
        throw new IllegalArgumentException("null element found in " + this.$this_requireNoNulls + '.');
    }
}
