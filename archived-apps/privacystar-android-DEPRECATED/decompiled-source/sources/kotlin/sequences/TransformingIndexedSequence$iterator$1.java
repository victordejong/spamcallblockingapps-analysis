package kotlin.sequences;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u001b\n��\n\u0002\u0010(\n��\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0003*\u0001��\b\n\u0018��2\b\u0012\u0004\u0012\u00028��0\u0001J\t\u0010\u000b\u001a\u00020\fH\u0096\u0002J\u000e\u0010\r\u001a\u00028��H\u0096\u0002¢\u0006\u0002\u0010\u000eR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0004\u0010\u0005\"\u0004\b\u0006\u0010\u0007R\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00010\u0001¢\u0006\b\n��\u001a\u0004\b\t\u0010\n¨\u0006\u000f"}, m254d2 = {"kotlin/sequences/TransformingIndexedSequence$iterator$1", "", FirebaseAnalytics.Param.INDEX, "", "getIndex", "()I", "setIndex", "(I)V", "iterator", "getIterator", "()Ljava/util/Iterator;", "hasNext", "", "next", "()Ljava/lang/Object;", "kotlin-stdlib"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:kotlin/sequences/TransformingIndexedSequence$iterator$1.class */
public final class TransformingIndexedSequence$iterator$1 implements Iterator<R>, KMappedMarker {
    private int index;
    @NotNull
    private final Iterator<T> iterator;
    final /* synthetic */ TransformingIndexedSequence this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TransformingIndexedSequence$iterator$1(TransformingIndexedSequence transformingIndexedSequence) {
        Sequence sequence;
        this.this$0 = transformingIndexedSequence;
        sequence = transformingIndexedSequence.sequence;
        this.iterator = sequence.iterator();
    }

    public final int getIndex() {
        return this.index;
    }

    @NotNull
    public final Iterator<T> getIterator() {
        return this.iterator;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.iterator.hasNext();
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [R, java.lang.Object] */
    @Override // java.util.Iterator
    public R next() {
        Function2 function2;
        function2 = this.this$0.transformer;
        int i = this.index;
        this.index = i + 1;
        if (i < 0) {
            CollectionsKt.throwIndexOverflow();
        }
        return function2.invoke(Integer.valueOf(i), this.iterator.next());
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final void setIndex(int i) {
        this.index = i;
    }
}
