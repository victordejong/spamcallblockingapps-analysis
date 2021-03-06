package kotlin.collections.builders;

import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.AbstractMutableSet;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableSet;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��D\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010)\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\b��\u0018��*\u0004\b��\u0010\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u001b\b��\u0012\u0010\u0010\u001a\u001a\f\u0012\u0004\u0012\u00028��\u0012\u0002\b\u00030\u0019¢\u0006\u0004\b \u0010!J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00028��H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u001d\u0010\u000b\u001a\u00020\u00062\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028��0\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0018\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00028��H\u0096\u0002¢\u0006\u0004\b\u0010\u0010\bJ\u000f\u0010\u0011\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u0016\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028��0\u0013H\u0096\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00028��H\u0016¢\u0006\u0004\b\u0016\u0010\bJ\u001d\u0010\u0017\u001a\u00020\u00062\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028��0\tH\u0016¢\u0006\u0004\b\u0017\u0010\fJ\u001d\u0010\u0018\u001a\u00020\u00062\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028��0\tH\u0016¢\u0006\u0004\b\u0018\u0010\fR \u0010\u001a\u001a\f\u0012\u0004\u0012\u00028��\u0012\u0002\b\u00030\u00198\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0016\u0010\u001f\u001a\u00020\u001c8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001e¨\u0006\""}, d2 = {"Lkotlin/collections/builders/MapBuilderKeys;", "E", "Ljava/util/Set;", "Lkotlin/jvm/internal/markers/KMutableSet;", "Lkotlin/collections/AbstractMutableSet;", "element", "", "add", "(Ljava/lang/Object;)Z", "", "elements", "addAll", "(Ljava/util/Collection;)Z", "", "clear", "()V", "contains", "isEmpty", "()Z", "", "iterator", "()Ljava/util/Iterator;", "remove", "removeAll", "retainAll", "Lkotlin/collections/builders/MapBuilder;", "backing", "Lkotlin/collections/builders/MapBuilder;", "", "getSize", "()I", "size", "<init>", "(Lkotlin/collections/builders/MapBuilder;)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/collections/builders/MapBuilderKeys.class */
public final class MapBuilderKeys<E> extends AbstractMutableSet<E> implements Set<E>, KMutableSet {

    /* renamed from: f */
    private final MapBuilder<E, ?> f20591f;

    public MapBuilderKeys(@NotNull MapBuilder<E, ?> backing) {
        Intrinsics.m1830e(backing, "backing");
        this.f20591f = backing;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean add(E e) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean addAll(@NotNull Collection<? extends E> elements) {
        Intrinsics.m1830e(elements, "elements");
        throw new UnsupportedOperationException();
    }

    @Override // kotlin.collections.AbstractMutableSet
    /* renamed from: c */
    public int mo763c() {
        return this.f20591f.size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        this.f20591f.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return this.f20591f.containsKey(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.f20591f.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    @NotNull
    public Iterator<E> iterator() {
        return this.f20591f.m2024B();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        return this.f20591f.m2017I(obj) >= 0;
    }

    @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean removeAll(@NotNull Collection<? extends Object> elements) {
        Intrinsics.m1830e(elements, "elements");
        this.f20591f.m2005k();
        return super.removeAll(elements);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean retainAll(@NotNull Collection<? extends Object> elements) {
        Intrinsics.m1830e(elements, "elements");
        this.f20591f.m2005k();
        return super.retainAll(elements);
    }
}
