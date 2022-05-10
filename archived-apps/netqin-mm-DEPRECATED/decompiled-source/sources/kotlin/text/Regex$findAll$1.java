package kotlin.text;

import kotlin.jvm.internal.Lambda;
import p573f.p576c0.AbstractC9916h;
import p573f.p590w.p591b.AbstractC10020a;
/* loaded from: classes2-dex2jar.jar:kotlin/text/Regex$findAll$1.class */
public final class Regex$findAll$1 extends Lambda implements AbstractC10020a<AbstractC9916h> {
    public final /* synthetic */ CharSequence $input;
    public final /* synthetic */ int $startIndex;
    public final /* synthetic */ Regex this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Regex$findAll$1(Regex regex, CharSequence charSequence, int i) {
        super(0);
        this.this$0 = regex;
        this.$input = charSequence;
        this.$startIndex = i;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // p573f.p590w.p591b.AbstractC10020a
    public final AbstractC9916h invoke() {
        return this.this$0.find(this.$input, this.$startIndex);
    }
}
