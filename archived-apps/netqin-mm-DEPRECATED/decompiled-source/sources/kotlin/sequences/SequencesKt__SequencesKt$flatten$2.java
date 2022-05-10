package kotlin.sequences;

import java.util.Iterator;
import kotlin.jvm.internal.Lambda;
import p573f.p590w.p591b.AbstractC10031l;
import p573f.p590w.p592c.C10059q;
/* loaded from: classes2-dex2jar.jar:kotlin/sequences/SequencesKt__SequencesKt$flatten$2.class */
public final class SequencesKt__SequencesKt$flatten$2 extends Lambda implements AbstractC10031l<Iterable<? extends T>, Iterator<? extends T>> {
    public static final SequencesKt__SequencesKt$flatten$2 INSTANCE = new SequencesKt__SequencesKt$flatten$2();

    public SequencesKt__SequencesKt$flatten$2() {
        super(1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Iterator<T> invoke(Iterable<? extends T> iterable) {
        C10059q.m1637b(iterable, "it");
        return iterable.iterator();
    }
}
