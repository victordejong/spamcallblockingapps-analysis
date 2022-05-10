package kotlin.sequences;

import java.util.Iterator;
import kotlin.jvm.internal.Lambda;
import p573f.p575b0.AbstractC9896b;
import p573f.p590w.p591b.AbstractC10031l;
import p573f.p590w.p592c.C10059q;
/* loaded from: classes2-dex2jar.jar:kotlin/sequences/SequencesKt___SequencesKt$flatMap$1.class */
public final class SequencesKt___SequencesKt$flatMap$1 extends Lambda implements AbstractC10031l<AbstractC9896b<? extends R>, Iterator<? extends R>> {
    public static final SequencesKt___SequencesKt$flatMap$1 INSTANCE = new SequencesKt___SequencesKt$flatMap$1();

    public SequencesKt___SequencesKt$flatMap$1() {
        super(1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Iterator<R> invoke(AbstractC9896b<? extends R> bVar) {
        C10059q.m1637b(bVar, "it");
        return bVar.iterator();
    }
}
