package kotlin.jvm.internal;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0005\b\u0002\u0018��*\u0004\b��\u0010\u00012\u00020\u00022\u00020\u0003B\u0015\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028��0\t¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0005\u001a\u00020\u0004H\u0096\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\u0007\u001a\u00028��H\u0096\u0002¢\u0006\u0004\b\u0007\u0010\bR\u001f\u0010\n\u001a\b\u0012\u0004\u0012\u00028��0\t8\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR\u0016\u0010\u000f\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, d2 = {"Lkotlin/jvm/internal/ArrayIterator;", "T", "Ljava/util/Iterator;", "Lkotlin/jvm/internal/markers/KMappedMarker;", "", "hasNext", "()Z", "next", "()Ljava/lang/Object;", "", "array", "[Ljava/lang/Object;", "getArray", "()[Ljava/lang/Object;", "", FirebaseAnalytics.Param.INDEX, "I", "<init>", "([Ljava/lang/Object;)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/jvm/internal/ArrayIterator.class */
final class ArrayIterator<T> implements Iterator<T>, KMappedMarker {

    /* renamed from: f */
    private int f20728f;
    @NotNull

    /* renamed from: g */
    private final T[] f20729g;

    public ArrayIterator(@NotNull T[] array) {
        Intrinsics.m1830e(array, "array");
        this.f20729g = array;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f20728f < this.f20729g.length;
    }

    @Override // java.util.Iterator
    public T next() {
        try {
            T[] tArr = this.f20729g;
            int i = this.f20728f;
            this.f20728f = i + 1;
            return tArr[i];
        } catch (ArrayIndexOutOfBoundsException e) {
            this.f20728f--;
            throw new NoSuchElementException(e.getMessage());
        }
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
