package kotlin.sequences;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.IndexedValue;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0002\b\u0007\b��\u0018��*\u0004\b��\u0010\u00012\u00020\u0002B\u0015\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028��0\u0002¢\u0006\u0004\b\t\u0010\nJ\u001c\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u00040\u0003H\u0096\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u001c\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028��0\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lkotlin/sequences/IndexingSequence;", "T", "Lkotlin/sequences/Sequence;", "", "Lkotlin/collections/IndexedValue;", "iterator", "()Ljava/util/Iterator;", "sequence", "Lkotlin/sequences/Sequence;", "<init>", "(Lkotlin/sequences/Sequence;)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/sequences/IndexingSequence.class */
public final class IndexingSequence<T> implements Sequence<IndexedValue<? extends T>> {

    /* renamed from: a */
    private final Sequence<T> f20877a;

    @Override // kotlin.sequences.Sequence
    @NotNull
    public Iterator<IndexedValue<T>> iterator() {
        return new IndexingSequence$iterator$1(this);
    }
}
