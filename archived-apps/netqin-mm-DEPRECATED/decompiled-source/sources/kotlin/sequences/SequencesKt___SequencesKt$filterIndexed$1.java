package kotlin.sequences;

import kotlin.jvm.internal.Lambda;
import p573f.p577r.C9991z;
import p573f.p590w.p591b.AbstractC10031l;
import p573f.p590w.p591b.AbstractC10035p;
import p573f.p590w.p592c.C10059q;
/* loaded from: classes2-dex2jar.jar:kotlin/sequences/SequencesKt___SequencesKt$filterIndexed$1.class */
public final class SequencesKt___SequencesKt$filterIndexed$1 extends Lambda implements AbstractC10031l<C9991z<? extends T>, Boolean> {
    public final /* synthetic */ AbstractC10035p $predicate;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SequencesKt___SequencesKt$filterIndexed$1(AbstractC10035p pVar) {
        super(1);
        this.$predicate = pVar;
    }

    @Override // p573f.p590w.p591b.AbstractC10031l
    public /* bridge */ /* synthetic */ Boolean invoke(Object obj) {
        return Boolean.valueOf(invoke((C9991z) obj));
    }

    public final boolean invoke(C9991z<? extends T> zVar) {
        C10059q.m1637b(zVar, "it");
        return ((Boolean) this.$predicate.invoke(Integer.valueOf(zVar.m1692a()), zVar.m1691b())).booleanValue();
    }
}
