package kotlin.text;

import kotlin.jvm.internal.Lambda;
import p573f.p576c0.AbstractC9912d;
import p573f.p590w.p591b.AbstractC10031l;
/* loaded from: classes2-dex2jar.jar:kotlin/text/RegexKt$fromInt$$inlined$apply$lambda$1.class */
public final class RegexKt$fromInt$$inlined$apply$lambda$1 extends Lambda implements AbstractC10031l<T, Boolean> {
    public final /* synthetic */ int $value$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RegexKt$fromInt$$inlined$apply$lambda$1(int i) {
        super(1);
        this.$value$inlined = i;
    }

    @Override // p573f.p590w.p591b.AbstractC10031l
    public /* bridge */ /* synthetic */ Boolean invoke(Object obj) {
        return Boolean.valueOf(invoke((Enum) obj));
    }

    /* JADX WARN: Incorrect types in method signature: (TT;)Z */
    public final boolean invoke(Enum r4) {
        AbstractC9912d dVar = (AbstractC9912d) r4;
        return (this.$value$inlined & dVar.getMask()) == dVar.getValue();
    }
}
