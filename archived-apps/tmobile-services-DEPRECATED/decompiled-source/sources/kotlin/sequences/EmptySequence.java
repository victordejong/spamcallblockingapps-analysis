package kotlin.sequences;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.EmptyIterator;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010(\n\u0002\u0010\u0001\n\u0002\b\u0006\bÂ\u0002\u0018��2\u00020\u00012\u00020\u0002B\t\b\u0002¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0005\u001a\u00020��2\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0096\u0002¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\u000b\u001a\u00020��2\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u000b\u0010\u0006¨\u0006\u000e"}, d2 = {"Lkotlin/sequences/EmptySequence;", "Lkotlin/sequences/Sequence;", "Lkotlin/sequences/DropTakeSequence;", "", "n", "drop", "(I)Lkotlin/sequences/EmptySequence;", "", "", "iterator", "()Ljava/util/Iterator;", "take", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/sequences/EmptySequence.class */
final class EmptySequence implements Sequence, DropTakeSequence {

    /* renamed from: a */
    public static final EmptySequence f20858a = new EmptySequence();

    private EmptySequence() {
    }

    @NotNull
    /* renamed from: b */
    public EmptySequence mo1589a(int i) {
        return f20858a;
    }

    @Override // kotlin.sequences.Sequence
    @NotNull
    public Iterator iterator() {
        return EmptyIterator.f20519f;
    }
}
