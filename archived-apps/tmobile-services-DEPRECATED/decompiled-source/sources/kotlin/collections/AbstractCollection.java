package kotlin.collections;

import java.util.Collection;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
@SinceKotlin
@Metadata(bv = {1, 0, 3}, d1 = {"��D\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\b\u0005\n\u0002\u0010(\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010��\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\b'\u0018��*\u0006\b��\u0010\u0001 \u00012\u00020\u00022\u00020\u0003B\t\b\u0004¢\u0006\u0004\b\u001f\u0010 J\u0018\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00028��H\u0096\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u001d\u0010\n\u001a\u00020\u00052\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028��0\bH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\f\u0010\rJ\u0016\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028��0\u000eH¦\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0011H\u0015¢\u0006\u0004\b\u0013\u0010\u0014J)\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00010\u0011\"\u0004\b\u0001\u0010\u00152\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00010\u0011H\u0014¢\u0006\u0004\b\u0013\u0010\u0017J\u000f\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001e\u001a\u00020\u001b8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001d¨\u0006!"}, d2 = {"Lkotlin/collections/AbstractCollection;", "E", "Ljava/util/Collection;", "Lkotlin/jvm/internal/markers/KMappedMarker;", "element", "", "contains", "(Ljava/lang/Object;)Z", "", "elements", "containsAll", "(Ljava/util/Collection;)Z", "isEmpty", "()Z", "", "iterator", "()Ljava/util/Iterator;", "", "", "toArray", "()[Ljava/lang/Object;", "T", "array", "([Ljava/lang/Object;)[Ljava/lang/Object;", "", "toString", "()Ljava/lang/String;", "", "getSize", "()I", "size", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/collections/AbstractCollection.class */
public abstract class AbstractCollection<E> implements Collection<E>, KMappedMarker {
    @Override // java.util.Collection
    public boolean add(E e) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends E> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* renamed from: c */
    public abstract int mo121c();

    @Override // java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean contains(Object obj) {
        boolean z;
        if (!isEmpty()) {
            Iterator<E> it = iterator();
            while (true) {
                z = false;
                if (it.hasNext()) {
                    if (Intrinsics.m1834a(it.next(), obj)) {
                        z = true;
                        break;
                    }
                } else {
                    break;
                }
            }
        } else {
            z = false;
        }
        return z;
    }

    @Override // java.util.Collection
    public boolean containsAll(@NotNull Collection<? extends Object> elements) {
        boolean z;
        Intrinsics.m1830e(elements, "elements");
        if (!elements.isEmpty()) {
            Iterator<T> it = elements.iterator();
            while (true) {
                z = true;
                if (it.hasNext()) {
                    if (!contains(it.next())) {
                        z = false;
                        break;
                    }
                } else {
                    break;
                }
            }
        } else {
            z = true;
        }
        return z;
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean retainAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final /* bridge */ int size() {
        return mo121c();
    }

    @Override // java.util.Collection
    @NotNull
    public Object[] toArray() {
        return CollectionToArray.m1848a(this);
    }

    @Override // java.util.Collection
    @NotNull
    public <T> T[] toArray(@NotNull T[] array) {
        Intrinsics.m1830e(array, "array");
        T[] tArr = (T[]) CollectionToArray.m1847b(this, array);
        if (tArr != null) {
            return tArr;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
    }

    @NotNull
    public String toString() {
        String J;
        J = CollectionsKt___CollectionsKt.m2144J(this, ", ", "[", "]", 0, null, new AbstractCollection$toString$1(this), 24, null);
        return J;
    }
}
