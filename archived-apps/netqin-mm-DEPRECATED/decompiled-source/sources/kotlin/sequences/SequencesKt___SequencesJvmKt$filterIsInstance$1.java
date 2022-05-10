package kotlin.sequences;

import kotlin.jvm.internal.Lambda;
import p573f.p590w.p591b.AbstractC10031l;
/* loaded from: classes2-dex2jar.jar:kotlin/sequences/SequencesKt___SequencesJvmKt$filterIsInstance$1.class */
public final class SequencesKt___SequencesJvmKt$filterIsInstance$1 extends Lambda implements AbstractC10031l<Object, Boolean> {
    public final /* synthetic */ Class $klass;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SequencesKt___SequencesJvmKt$filterIsInstance$1(Class cls) {
        super(1);
        this.$klass = cls;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [boolean, java.lang.Boolean] */
    @Override // p573f.p590w.p591b.AbstractC10031l
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Boolean invoke2(Object obj) {
        return this.$klass.isInstance(obj);
    }
}
