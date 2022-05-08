package kotlin.sequences;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b��\u0018��*\u0004\b��\u0010\u0001*\u0004\b\u0001\u0010\u00022\u00020\u0003B)\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028��0\u0003\u0012\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0007¢\u0006\u0004\b\f\u0010\rJ\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0\u0004H\u0096\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\"\u0010\b\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u00078\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u001c\u0010\n\u001a\b\u0012\u0004\u0012\u00028��0\u00038\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u000e"}, d2 = {"Lkotlin/sequences/DistinctSequence;", "T", "K", "Lkotlin/sequences/Sequence;", "", "iterator", "()Ljava/util/Iterator;", "Lkotlin/Function1;", "keySelector", "Lkotlin/Function1;", "source", "Lkotlin/sequences/Sequence;", "<init>", "(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/sequences/DistinctSequence.class */
public final class DistinctSequence<T, K> implements Sequence<T> {

    /* renamed from: a */
    private final Sequence<T> f20846a;

    /* renamed from: b */
    private final Function1<T, K> f20847b;

    @Override // kotlin.sequences.Sequence
    @NotNull
    public Iterator<T> iterator() {
        return new DistinctIterator(this.f20846a.iterator(), this.f20847b);
    }
}
