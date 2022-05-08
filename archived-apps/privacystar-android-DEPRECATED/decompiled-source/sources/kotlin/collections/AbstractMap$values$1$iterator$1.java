package kotlin.collections;

import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMappedMarker;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0013\n��\n\u0002\u0010(\n��\n\u0002\u0010\u000b\n\u0002\b\u0003*\u0001��\b\n\u0018��2\b\u0012\u0004\u0012\u00028��0\u0001J\t\u0010\u0002\u001a\u00020\u0003H\u0096\u0002J\u000e\u0010\u0004\u001a\u00028��H\u0096\u0002¢\u0006\u0002\u0010\u0005¨\u0006\u0006"}, m254d2 = {"kotlin/collections/AbstractMap$values$1$iterator$1", "", "hasNext", "", "next", "()Ljava/lang/Object;", "kotlin-stdlib"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:kotlin/collections/AbstractMap$values$1$iterator$1.class */
public final class AbstractMap$values$1$iterator$1 implements Iterator<V>, KMappedMarker {
    final /* synthetic */ Iterator $entryIterator;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractMap$values$1$iterator$1(Iterator it) {
        this.$entryIterator = it;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.$entryIterator.hasNext();
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [V, java.lang.Object] */
    @Override // java.util.Iterator
    public V next() {
        return ((Map.Entry) this.$entryIterator.next()).getValue();
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
