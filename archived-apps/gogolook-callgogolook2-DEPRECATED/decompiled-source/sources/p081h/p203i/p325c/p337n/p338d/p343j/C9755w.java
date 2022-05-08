package p081h.p203i.p325c.p337n.p338d.p343j;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
/* renamed from: h.i.c.n.d.j.w */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/j/w.class */
public final class C9755w<E> implements List<E>, RandomAccess {

    /* renamed from: a */
    public final List<E> f22153a;

    public C9755w(List<E> list) {
        this.f22153a = Collections.unmodifiableList(list);
    }

    @NonNull
    /* renamed from: a */
    public static <E> C9755w<E> m14391a(@NonNull List<E> list) {
        return new C9755w<>(list);
    }

    @NonNull
    /* renamed from: a */
    public static <E> C9755w<E> m14390a(E... eArr) {
        return new C9755w<>(Arrays.asList(eArr));
    }

    @Override // java.util.List
    public void add(int i, @NonNull E e) {
        this.f22153a.add(i, e);
    }

    @Override // java.util.List, java.util.Collection
    public boolean add(@NonNull E e) {
        return this.f22153a.add(e);
    }

    @Override // java.util.List
    public boolean addAll(int i, @NonNull Collection<? extends E> collection) {
        return this.f22153a.addAll(i, collection);
    }

    @Override // java.util.List, java.util.Collection
    public boolean addAll(@NonNull Collection<? extends E> collection) {
        return this.f22153a.addAll(collection);
    }

    @Override // java.util.List, java.util.Collection
    public void clear() {
        this.f22153a.clear();
    }

    @Override // java.util.List, java.util.Collection
    public boolean contains(@Nullable Object obj) {
        return this.f22153a.contains(obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean containsAll(@NonNull Collection<?> collection) {
        return this.f22153a.containsAll(collection);
    }

    @Override // java.util.List, java.util.Collection
    public boolean equals(@Nullable Object obj) {
        return this.f22153a.equals(obj);
    }

    @Override // java.util.List
    @NonNull
    public E get(int i) {
        return this.f22153a.get(i);
    }

    @Override // java.util.List, java.util.Collection
    public int hashCode() {
        return this.f22153a.hashCode();
    }

    @Override // java.util.List
    public int indexOf(@Nullable Object obj) {
        return this.f22153a.indexOf(obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean isEmpty() {
        return this.f22153a.isEmpty();
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    @NonNull
    public Iterator<E> iterator() {
        return this.f22153a.iterator();
    }

    @Override // java.util.List
    public int lastIndexOf(@Nullable Object obj) {
        return this.f22153a.lastIndexOf(obj);
    }

    @Override // java.util.List
    @NonNull
    public ListIterator<E> listIterator() {
        return this.f22153a.listIterator();
    }

    @Override // java.util.List
    @NonNull
    public ListIterator<E> listIterator(int i) {
        return this.f22153a.listIterator(i);
    }

    @Override // java.util.List
    public E remove(int i) {
        return this.f22153a.remove(i);
    }

    @Override // java.util.List, java.util.Collection
    public boolean remove(@Nullable Object obj) {
        return this.f22153a.remove(obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean removeAll(@NonNull Collection<?> collection) {
        return this.f22153a.removeAll(collection);
    }

    @Override // java.util.List, java.util.Collection
    public boolean retainAll(@NonNull Collection<?> collection) {
        return this.f22153a.retainAll(collection);
    }

    @Override // java.util.List
    @NonNull
    public E set(int i, @NonNull E e) {
        return this.f22153a.set(i, e);
    }

    @Override // java.util.List, java.util.Collection
    public int size() {
        return this.f22153a.size();
    }

    @Override // java.util.List
    @NonNull
    public List<E> subList(int i, int i2) {
        return this.f22153a.subList(i, i2);
    }

    @Override // java.util.List, java.util.Collection
    @Nullable
    public Object[] toArray() {
        return this.f22153a.toArray();
    }

    @Override // java.util.List, java.util.Collection
    public <T> T[] toArray(@Nullable T[] tArr) {
        return (T[]) this.f22153a.toArray(tArr);
    }
}
