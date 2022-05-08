package android.support.p001v4.util;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* renamed from: android.support.v4.util.ArraySet */
/* loaded from: classes-dex2jar.jar:android/support/v4/util/ArraySet.class */
public final class ArraySet<E> implements Collection<E>, Set<E> {
    private static final int BASE_SIZE = 4;
    private static final int CACHE_SIZE = 10;
    private static final boolean DEBUG = false;
    private static final int[] INT = new int[0];
    private static final Object[] OBJECT = new Object[0];
    private static final String TAG = "ArraySet";
    @Nullable
    private static Object[] sBaseCache;
    private static int sBaseCacheSize;
    @Nullable
    private static Object[] sTwiceBaseCache;
    private static int sTwiceBaseCacheSize;
    Object[] mArray;
    private MapCollections<E, E> mCollections;
    private int[] mHashes;
    int mSize;

    public ArraySet() {
        this(0);
    }

    public ArraySet(int i) {
        if (i == 0) {
            this.mHashes = INT;
            this.mArray = OBJECT;
        } else {
            allocArrays(i);
        }
        this.mSize = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ArraySet(@Nullable ArraySet<E> arraySet) {
        this();
        if (arraySet != 0) {
            addAll((ArraySet) arraySet);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ArraySet(@Nullable Collection<E> collection) {
        this();
        if (collection != 0) {
            addAll(collection);
        }
    }

    private void allocArrays(int i) {
        if (i == 8) {
            synchronized (ArraySet.class) {
                try {
                    if (sTwiceBaseCache != null) {
                        Object[] objArr = sTwiceBaseCache;
                        this.mArray = objArr;
                        sTwiceBaseCache = (Object[]) objArr[0];
                        this.mHashes = (int[]) objArr[1];
                        objArr[1] = null;
                        objArr[0] = null;
                        sTwiceBaseCacheSize--;
                        return;
                    }
                } finally {
                }
            }
        } else if (i == 4) {
            synchronized (ArraySet.class) {
                try {
                    if (sBaseCache != null) {
                        Object[] objArr2 = sBaseCache;
                        this.mArray = objArr2;
                        sBaseCache = (Object[]) objArr2[0];
                        this.mHashes = (int[]) objArr2[1];
                        objArr2[1] = null;
                        objArr2[0] = null;
                        sBaseCacheSize--;
                        return;
                    }
                } finally {
                }
            }
        }
        this.mHashes = new int[i];
        this.mArray = new Object[i];
    }

    private static void freeArrays(int[] iArr, Object[] objArr, int i) {
        if (iArr.length == 8) {
            synchronized (ArraySet.class) {
                try {
                    if (sTwiceBaseCacheSize < 10) {
                        objArr[0] = sTwiceBaseCache;
                        objArr[1] = iArr;
                        while (true) {
                            i--;
                            if (i < 2) {
                                break;
                            }
                            objArr[i] = null;
                        }
                        sTwiceBaseCache = objArr;
                        sTwiceBaseCacheSize++;
                    }
                } finally {
                }
            }
        } else if (iArr.length == 4) {
            synchronized (ArraySet.class) {
                try {
                    if (sBaseCacheSize < 10) {
                        objArr[0] = sBaseCache;
                        objArr[1] = iArr;
                        while (true) {
                            i--;
                            if (i < 2) {
                                break;
                            }
                            objArr[i] = null;
                        }
                        sBaseCache = objArr;
                        sBaseCacheSize++;
                    }
                } finally {
                }
            }
        }
    }

    private MapCollections<E, E> getCollection() {
        if (this.mCollections == null) {
            this.mCollections = new MapCollections<E, E>() { // from class: android.support.v4.util.ArraySet.1
                @Override // android.support.p001v4.util.MapCollections
                protected void colClear() {
                    ArraySet.this.clear();
                }

                @Override // android.support.p001v4.util.MapCollections
                protected Object colGetEntry(int i, int i2) {
                    return ArraySet.this.mArray[i];
                }

                @Override // android.support.p001v4.util.MapCollections
                protected Map<E, E> colGetMap() {
                    throw new UnsupportedOperationException("not a map");
                }

                @Override // android.support.p001v4.util.MapCollections
                protected int colGetSize() {
                    return ArraySet.this.mSize;
                }

                @Override // android.support.p001v4.util.MapCollections
                protected int colIndexOfKey(Object obj) {
                    return ArraySet.this.indexOf(obj);
                }

                @Override // android.support.p001v4.util.MapCollections
                protected int colIndexOfValue(Object obj) {
                    return ArraySet.this.indexOf(obj);
                }

                @Override // android.support.p001v4.util.MapCollections
                protected void colPut(E e, E e2) {
                    ArraySet.this.add(e);
                }

                @Override // android.support.p001v4.util.MapCollections
                protected void colRemoveAt(int i) {
                    ArraySet.this.removeAt(i);
                }

                @Override // android.support.p001v4.util.MapCollections
                protected E colSetValue(int i, E e) {
                    throw new UnsupportedOperationException("not a map");
                }
            };
        }
        return this.mCollections;
    }

    private int indexOf(Object obj, int i) {
        int i2 = this.mSize;
        if (i2 == 0) {
            return -1;
        }
        int binarySearch = ContainerHelpers.binarySearch(this.mHashes, i2, i);
        if (binarySearch >= 0 && !obj.equals(this.mArray[binarySearch])) {
            int i3 = binarySearch + 1;
            while (i3 < i2 && this.mHashes[i3] == i) {
                if (obj.equals(this.mArray[i3])) {
                    return i3;
                }
                i3++;
            }
            for (int i4 = binarySearch - 1; i4 >= 0 && this.mHashes[i4] == i; i4--) {
                if (obj.equals(this.mArray[i4])) {
                    return i4;
                }
            }
            return i3 ^ (-1);
        }
        return binarySearch;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x006d, code lost:
        return r7 ^ (-1);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int indexOfNull() {
        /*
            r4 = this;
            r0 = r4
            int r0 = r0.mSize
            r5 = r0
            r0 = r5
            if (r0 != 0) goto L_0x000b
            r0 = -1
            return r0
        L_0x000b:
            r0 = r4
            int[] r0 = r0.mHashes
            r1 = r5
            r2 = 0
            int r0 = android.support.p001v4.util.ContainerHelpers.binarySearch(r0, r1, r2)
            r6 = r0
            r0 = r6
            if (r0 >= 0) goto L_0x001b
            r0 = r6
            return r0
        L_0x001b:
            r0 = r4
            java.lang.Object[] r0 = r0.mArray
            r1 = r6
            r0 = r0[r1]
            if (r0 != 0) goto L_0x0026
            r0 = r6
            return r0
        L_0x0026:
            r0 = r6
            r1 = 1
            int r0 = r0 + r1
            r7 = r0
        L_0x002a:
            r0 = r7
            r1 = r5
            if (r0 >= r1) goto L_0x0049
            r0 = r4
            int[] r0 = r0.mHashes
            r1 = r7
            r0 = r0[r1]
            if (r0 != 0) goto L_0x0049
            r0 = r4
            java.lang.Object[] r0 = r0.mArray
            r1 = r7
            r0 = r0[r1]
            if (r0 != 0) goto L_0x0043
            r0 = r7
            return r0
        L_0x0043:
            int r7 = r7 + 1
            goto L_0x002a
        L_0x0049:
            int r6 = r6 + (-1)
        L_0x004c:
            r0 = r6
            if (r0 < 0) goto L_0x006a
            r0 = r4
            int[] r0 = r0.mHashes
            r1 = r6
            r0 = r0[r1]
            if (r0 != 0) goto L_0x006a
            r0 = r4
            java.lang.Object[] r0 = r0.mArray
            r1 = r6
            r0 = r0[r1]
            if (r0 != 0) goto L_0x0064
            r0 = r6
            return r0
        L_0x0064:
            int r6 = r6 + (-1)
            goto L_0x004c
        L_0x006a:
            r0 = r7
            r1 = -1
            r0 = r0 ^ r1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.p001v4.util.ArraySet.indexOfNull():int");
    }

    @Override // java.util.Collection, java.util.Set
    public boolean add(@Nullable E e) {
        int i;
        int i2;
        if (e == null) {
            i2 = indexOfNull();
            i = 0;
        } else {
            i = e.hashCode();
            i2 = indexOf(e, i);
        }
        if (i2 >= 0) {
            return false;
        }
        int i3 = i2 ^ (-1);
        if (this.mSize >= this.mHashes.length) {
            int i4 = 4;
            if (this.mSize >= 8) {
                i4 = (this.mSize >> 1) + this.mSize;
            } else if (this.mSize >= 4) {
                i4 = 8;
            }
            int[] iArr = this.mHashes;
            Object[] objArr = this.mArray;
            allocArrays(i4);
            if (this.mHashes.length > 0) {
                System.arraycopy(iArr, 0, this.mHashes, 0, iArr.length);
                System.arraycopy(objArr, 0, this.mArray, 0, objArr.length);
            }
            freeArrays(iArr, objArr, this.mSize);
        }
        if (i3 < this.mSize) {
            int i5 = i3 + 1;
            System.arraycopy(this.mHashes, i3, this.mHashes, i5, this.mSize - i3);
            System.arraycopy(this.mArray, i3, this.mArray, i5, this.mSize - i3);
        }
        this.mHashes[i3] = i;
        this.mArray[i3] = e;
        this.mSize++;
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void addAll(@NonNull ArraySet<? extends E> arraySet) {
        int i = arraySet.mSize;
        ensureCapacity(this.mSize + i);
        if (this.mSize != 0) {
            for (int i2 = 0; i2 < i; i2++) {
                add(arraySet.valueAt(i2));
            }
        } else if (i > 0) {
            System.arraycopy(arraySet.mHashes, 0, this.mHashes, 0, i);
            System.arraycopy(arraySet.mArray, 0, this.mArray, 0, i);
            this.mSize = i;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Collection, java.util.Set
    public boolean addAll(@NonNull Collection<? extends E> collection) {
        ensureCapacity(this.mSize + collection.size());
        Iterator<? extends E> it = collection.iterator();
        boolean z = false;
        while (it.hasNext()) {
            z |= add(it.next());
        }
        return z;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void append(E e) {
        int i = this.mSize;
        int hashCode = e == null ? 0 : e.hashCode();
        if (i >= this.mHashes.length) {
            throw new IllegalStateException("Array is full");
        } else if (i <= 0 || this.mHashes[i - 1] <= hashCode) {
            this.mSize = i + 1;
            this.mHashes[i] = hashCode;
            this.mArray[i] = e;
        } else {
            add(e);
        }
    }

    @Override // java.util.Collection, java.util.Set
    public void clear() {
        if (this.mSize != 0) {
            freeArrays(this.mHashes, this.mArray, this.mSize);
            this.mHashes = INT;
            this.mArray = OBJECT;
            this.mSize = 0;
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean contains(@Nullable Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean containsAll(@NonNull Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    public void ensureCapacity(int i) {
        if (this.mHashes.length < i) {
            int[] iArr = this.mHashes;
            Object[] objArr = this.mArray;
            allocArrays(i);
            if (this.mSize > 0) {
                System.arraycopy(iArr, 0, this.mHashes, 0, this.mSize);
                System.arraycopy(objArr, 0, this.mArray, 0, this.mSize);
            }
            freeArrays(iArr, objArr, this.mSize);
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set = (Set) obj;
        if (size() != set.size()) {
            return false;
        }
        for (int i = 0; i < this.mSize; i++) {
            try {
                if (!set.contains(valueAt(i))) {
                    return false;
                }
            } catch (ClassCastException e) {
                return false;
            } catch (NullPointerException e2) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        int[] iArr = this.mHashes;
        int i = this.mSize;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            i2 += iArr[i3];
        }
        return i2;
    }

    public int indexOf(@Nullable Object obj) {
        return obj == null ? indexOfNull() : indexOf(obj, obj.hashCode());
    }

    @Override // java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.mSize <= 0;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        return getCollection().getKeySet().iterator();
    }

    @Override // java.util.Collection, java.util.Set
    public boolean remove(@Nullable Object obj) {
        int indexOf = indexOf(obj);
        if (indexOf < 0) {
            return false;
        }
        removeAt(indexOf);
        return true;
    }

    public boolean removeAll(@NonNull ArraySet<? extends E> arraySet) {
        int i = arraySet.mSize;
        int i2 = this.mSize;
        boolean z = false;
        for (int i3 = 0; i3 < i; i3++) {
            remove(arraySet.valueAt(i3));
        }
        if (i2 != this.mSize) {
            z = true;
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean removeAll(@NonNull Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        boolean z = false;
        while (it.hasNext()) {
            z |= remove(it.next());
        }
        return z;
    }

    public E removeAt(int i) {
        E e = (E) this.mArray[i];
        if (this.mSize <= 1) {
            freeArrays(this.mHashes, this.mArray, this.mSize);
            this.mHashes = INT;
            this.mArray = OBJECT;
            this.mSize = 0;
        } else {
            int i2 = 8;
            if (this.mHashes.length <= 8 || this.mSize >= this.mHashes.length / 3) {
                this.mSize--;
                if (i < this.mSize) {
                    int i3 = i + 1;
                    System.arraycopy(this.mHashes, i3, this.mHashes, i, this.mSize - i);
                    System.arraycopy(this.mArray, i3, this.mArray, i, this.mSize - i);
                }
                this.mArray[this.mSize] = null;
            } else {
                if (this.mSize > 8) {
                    i2 = (this.mSize >> 1) + this.mSize;
                }
                int[] iArr = this.mHashes;
                Object[] objArr = this.mArray;
                allocArrays(i2);
                this.mSize--;
                if (i > 0) {
                    System.arraycopy(iArr, 0, this.mHashes, 0, i);
                    System.arraycopy(objArr, 0, this.mArray, 0, i);
                }
                if (i < this.mSize) {
                    int i4 = i + 1;
                    System.arraycopy(iArr, i4, this.mHashes, i, this.mSize - i);
                    System.arraycopy(objArr, i4, this.mArray, i, this.mSize - i);
                }
            }
        }
        return e;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean retainAll(@NonNull Collection<?> collection) {
        boolean z = false;
        for (int i = this.mSize - 1; i >= 0; i--) {
            if (!collection.contains(this.mArray[i])) {
                removeAt(i);
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public int size() {
        return this.mSize;
    }

    @Override // java.util.Collection, java.util.Set
    @NonNull
    public Object[] toArray() {
        Object[] objArr = new Object[this.mSize];
        System.arraycopy(this.mArray, 0, objArr, 0, this.mSize);
        return objArr;
    }

    @Override // java.util.Collection, java.util.Set
    @NonNull
    public <T> T[] toArray(@NonNull T[] tArr) {
        T[] tArr2 = tArr;
        if (tArr.length < this.mSize) {
            tArr2 = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), this.mSize));
        }
        System.arraycopy(this.mArray, 0, tArr2, 0, this.mSize);
        if (tArr2.length > this.mSize) {
            tArr2[this.mSize] = null;
        }
        return tArr2;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.mSize * 14);
        sb.append('{');
        for (int i = 0; i < this.mSize; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            E valueAt = valueAt(i);
            if (valueAt != this) {
                sb.append(valueAt);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    @Nullable
    public E valueAt(int i) {
        return (E) this.mArray[i];
    }
}
