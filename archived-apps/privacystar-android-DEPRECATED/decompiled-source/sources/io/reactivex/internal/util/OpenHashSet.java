package io.reactivex.internal.util;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/util/OpenHashSet.class */
public final class OpenHashSet<T> {
    private static final int INT_PHI = -1640531527;
    T[] keys;
    final float loadFactor;
    int mask;
    int maxSize;
    int size;

    public OpenHashSet() {
        this(16, 0.75f);
    }

    public OpenHashSet(int i) {
        this(i, 0.75f);
    }

    public OpenHashSet(int i, float f) {
        this.loadFactor = f;
        int roundToPowerOfTwo = Pow2.roundToPowerOfTwo(i);
        this.mask = roundToPowerOfTwo - 1;
        this.maxSize = (int) (f * roundToPowerOfTwo);
        this.keys = (T[]) new Object[roundToPowerOfTwo];
    }

    static int mix(int i) {
        int i2 = i * INT_PHI;
        return i2 ^ (i2 >>> 16);
    }

    public boolean add(T t) {
        T t2;
        T[] tArr = this.keys;
        int i = this.mask;
        int mix = mix(t.hashCode()) & i;
        T t3 = tArr[mix];
        int i2 = mix;
        if (t3 != null) {
            i2 = mix;
            if (t3.equals(t)) {
                return false;
            }
            do {
                i2 = (i2 + 1) & i;
                t2 = tArr[i2];
                if (t2 == null) {
                }
            } while (!t2.equals(t));
            return false;
        }
        tArr[i2] = t;
        int i3 = this.size + 1;
        this.size = i3;
        if (i3 < this.maxSize) {
            return true;
        }
        rehash();
        return true;
    }

    public Object[] keys() {
        return this.keys;
    }

    void rehash() {
        T[] tArr = this.keys;
        int length = tArr.length;
        int i = length << 1;
        int i2 = i - 1;
        T[] tArr2 = (T[]) new Object[i];
        for (int i3 = this.size; i3 != 0; i3--) {
            do {
                length--;
            } while (tArr[length] == null);
            int mix = mix(tArr[length].hashCode()) & i2;
            int i4 = mix;
            if (tArr2[mix] != null) {
                do {
                    i4 = (mix + 1) & i2;
                    mix = i4;
                } while (tArr2[i4] != null);
            }
            tArr2[i4] = tArr[length];
        }
        this.mask = i2;
        this.maxSize = (int) (i * this.loadFactor);
        this.keys = tArr2;
    }

    public boolean remove(T t) {
        int i;
        T t2;
        T[] tArr = this.keys;
        int i2 = this.mask;
        int mix = mix(t.hashCode()) & i2;
        T t3 = tArr[mix];
        if (t3 == null) {
            return false;
        }
        int i3 = mix;
        if (t3.equals(t)) {
            return removeEntry(mix, tArr, i2);
        }
        do {
            i = (i3 + 1) & i2;
            t2 = tArr[i];
            if (t2 == null) {
                return false;
            }
            i3 = i;
        } while (!t2.equals(t));
        return removeEntry(i, tArr, i2);
    }

    boolean removeEntry(int i, T[] tArr, int i2) {
        T t;
        this.size--;
        while (true) {
            int i3 = i;
            while (true) {
                i = (i3 + 1) & i2;
                t = tArr[i];
                if (t == null) {
                    tArr[i] = null;
                    return true;
                }
                int mix = mix(t.hashCode()) & i2;
                if (i > i) {
                    if (i >= mix && mix > i) {
                        break;
                    }
                    i3 = i;
                } else if (i < mix && mix <= i) {
                    i3 = i;
                }
            }
            tArr[i] = t;
        }
    }

    public int size() {
        return this.size;
    }
}
