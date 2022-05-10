package com.google.common.collect;

import com.google.common.base.Equivalence;
import com.google.common.collect.MapMaker;
import com.google.common.collect.MapMakerInternalMap.AbstractC7536h;
import com.google.common.collect.MapMakerInternalMap.Segment;
import com.google.common.primitives.Ints;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.ReentrantLock;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p269c.AbstractC4960b;
import p131c.p161d.p266c.p269c.AbstractConcurrentMapC5026t;
import p131c.p161d.p266c.p269c.C5006n;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap.class */
public class MapMakerInternalMap<K, V, E extends AbstractC7536h<K, V, E>, S extends Segment<K, V, E, S>> extends AbstractMap<K, V> implements ConcurrentMap<K, V>, Serializable {
    public static final long CLEANUP_EXECUTOR_DELAY_SECS = 60;
    public static final int CONTAINS_VALUE_RETRIES = 3;
    public static final int DRAIN_MAX = 16;
    public static final int DRAIN_THRESHOLD = 63;
    public static final int MAXIMUM_CAPACITY = 1073741824;
    public static final int MAX_SEGMENTS = 65536;
    public static final AbstractC7557w<Object, Object, C7532d> UNSET_WEAK_VALUE_REFERENCE = new C7529a();
    public static final long serialVersionUID = 5;
    public final int concurrencyLevel;
    public final transient AbstractC7537i<K, V, E, S> entryHelper;
    public transient Set<Map.Entry<K, V>> entrySet;
    public final Equivalence<Object> keyEquivalence;
    public transient Set<K> keySet;
    public final transient int segmentMask;
    public final transient int segmentShift;
    public final transient Segment<K, V, E, S>[] segments;
    public transient Collection<V> values;

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy.class */
    public static abstract class AbstractSerializationProxy<K, V> extends AbstractConcurrentMapC5026t<K, V> implements Serializable {
        public static final long serialVersionUID = 3;
        public final int concurrencyLevel;
        public transient ConcurrentMap<K, V> delegate;
        public final Equivalence<Object> keyEquivalence;
        public final Strength keyStrength;
        public final Equivalence<Object> valueEquivalence;
        public final Strength valueStrength;

        public AbstractSerializationProxy(Strength strength, Strength strength2, Equivalence<Object> equivalence, Equivalence<Object> equivalence2, int i, ConcurrentMap<K, V> concurrentMap) {
            this.keyStrength = strength;
            this.valueStrength = strength2;
            this.keyEquivalence = equivalence;
            this.valueEquivalence = equivalence2;
            this.concurrencyLevel = i;
            this.delegate = concurrentMap;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractConcurrentMapC5026t, p131c.p161d.p266c.p269c.AbstractC5030v, p131c.p161d.p266c.p269c.AbstractC5040z
        public ConcurrentMap<K, V> delegate() {
            return this.delegate;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void readEntries(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            while (true) {
                Object readObject = objectInputStream.readObject();
                if (readObject != null) {
                    this.delegate.put(readObject, objectInputStream.readObject());
                } else {
                    return;
                }
            }
        }

        public MapMaker readMapMaker(ObjectInputStream objectInputStream) throws IOException {
            int readInt = objectInputStream.readInt();
            MapMaker mapMaker = new MapMaker();
            mapMaker.m8213b(readInt);
            mapMaker.m8215a(this.keyStrength);
            mapMaker.m8212b(this.valueStrength);
            mapMaker.m8216a(this.keyEquivalence);
            mapMaker.m8217a(this.concurrencyLevel);
            return mapMaker;
        }

        public void writeMapTo(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.writeInt(this.delegate.size());
            for (Map.Entry<K, V> entry : this.delegate.entrySet()) {
                objectOutputStream.writeObject(entry.getKey());
                objectOutputStream.writeObject(entry.getValue());
            }
            objectOutputStream.writeObject(null);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$Segment.class */
    public static abstract class Segment<K, V, E extends AbstractC7536h<K, V, E>, S extends Segment<K, V, E, S>> extends ReentrantLock {
        public volatile int count;
        public final MapMakerInternalMap<K, V, E, S> map;
        public final int maxSegmentSize;
        public int modCount;
        public final AtomicInteger readCount = new AtomicInteger();
        public volatile AtomicReferenceArray<E> table;
        public int threshold;

        public Segment(MapMakerInternalMap<K, V, E, S> mapMakerInternalMap, int i, int i2) {
            this.map = mapMakerInternalMap;
            this.maxSegmentSize = i2;
            initTable(newEntryArray(i));
        }

        public static <K, V, E extends AbstractC7536h<K, V, E>> boolean isCollected(E e) {
            return e.getValue() == null;
        }

        public abstract E castForTesting(AbstractC7536h<K, V, ?> hVar);

        public void clear() {
            if (this.count != 0) {
                lock();
                try {
                    AtomicReferenceArray<E> atomicReferenceArray = this.table;
                    for (int i = 0; i < atomicReferenceArray.length(); i++) {
                        atomicReferenceArray.set(i, null);
                    }
                    maybeClearReferenceQueues();
                    this.readCount.set(0);
                    this.modCount++;
                    this.count = 0;
                } finally {
                    unlock();
                }
            }
        }

        public <T> void clearReferenceQueue(ReferenceQueue<T> referenceQueue) {
            do {
            } while (referenceQueue.poll() != null);
        }

        /* JADX WARN: Finally extract failed */
        /* JADX WARN: Multi-variable type inference failed */
        public boolean clearValueForTesting(K k, int i, AbstractC7557w<K, V, ? extends AbstractC7536h<K, V, ?>> wVar) {
            lock();
            try {
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i;
                E e = atomicReferenceArray.get(length);
                for (AbstractC7536h hVar = e; hVar != null; hVar = hVar.getNext()) {
                    Object key = hVar.getKey();
                    if (hVar.getHash() == i && key != null && this.map.keyEquivalence.equivalent(k, key)) {
                        if (((AbstractC7556v) hVar).getValueReference() == wVar) {
                            atomicReferenceArray.set(length, removeFromChain(e, hVar));
                            unlock();
                            return true;
                        } else {
                            unlock();
                            return false;
                        }
                    }
                }
                unlock();
                return false;
            } catch (Throwable th) {
                unlock();
                throw th;
            }
        }

        public boolean containsKey(Object obj, int i) {
            try {
                if (this.count != 0) {
                    E liveEntry = getLiveEntry(obj, i);
                    boolean z = false;
                    if (liveEntry != null) {
                        z = false;
                        if (liveEntry.getValue() != null) {
                            z = true;
                        }
                    }
                    return z;
                }
                postReadCleanup();
                return false;
            } finally {
                postReadCleanup();
            }
        }

        /* JADX WARN: Finally extract failed */
        /* JADX WARN: Multi-variable type inference failed */
        public boolean containsValue(Object obj) {
            try {
                if (this.count != 0) {
                    AtomicReferenceArray<E> atomicReferenceArray = this.table;
                    int length = atomicReferenceArray.length();
                    for (int i = 0; i < length; i++) {
                        for (E e = atomicReferenceArray.get(i); e != null; e = e.getNext()) {
                            Object liveValue = getLiveValue(e);
                            if (liveValue != null && this.map.valueEquivalence().equivalent(obj, liveValue)) {
                                postReadCleanup();
                                return true;
                            }
                        }
                    }
                }
                postReadCleanup();
                return false;
            } catch (Throwable th) {
                postReadCleanup();
                throw th;
            }
        }

        public E copyEntry(E e, E e2) {
            return this.map.entryHelper.mo8165a((AbstractC7537i<K, V, E, S>) self(), (AbstractC7536h) e, (AbstractC7536h) e2);
        }

        public E copyForTesting(AbstractC7536h<K, V, ?> hVar, AbstractC7536h<K, V, ?> hVar2) {
            return this.map.entryHelper.mo8165a((AbstractC7537i<K, V, E, S>) self(), (AbstractC7536h) castForTesting(hVar), (AbstractC7536h) castForTesting(hVar2));
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void drainKeyReferenceQueue(ReferenceQueue<K> referenceQueue) {
            int i;
            int i2 = 0;
            do {
                Reference<? extends K> poll = referenceQueue.poll();
                if (poll != null) {
                    this.map.reclaimKey((AbstractC7536h) poll);
                    i = i2 + 1;
                    i2 = i;
                } else {
                    return;
                }
            } while (i != 16);
        }

        public void drainValueReferenceQueue(ReferenceQueue<V> referenceQueue) {
            int i;
            int i2 = 0;
            do {
                Reference<? extends V> poll = referenceQueue.poll();
                if (poll != null) {
                    this.map.reclaimValue((AbstractC7557w) poll);
                    i = i2 + 1;
                    i2 = i;
                } else {
                    return;
                }
            } while (i != 16);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void expand() {
            AtomicReferenceArray<E> atomicReferenceArray = this.table;
            int length = atomicReferenceArray.length();
            if (length < 1073741824) {
                int i = this.count;
                AtomicReferenceArray<E> atomicReferenceArray2 = (AtomicReferenceArray<E>) newEntryArray(length << 1);
                this.threshold = (atomicReferenceArray2.length() * 3) / 4;
                int length2 = atomicReferenceArray2.length() - 1;
                for (int i2 = 0; i2 < length; i2++) {
                    E e = atomicReferenceArray.get(i2);
                    i = i;
                    if (e != null) {
                        AbstractC7536h next = e.getNext();
                        int hash = e.getHash() & length2;
                        if (next == null) {
                            atomicReferenceArray2.set(hash, e);
                            i = i;
                        } else {
                            AbstractC7536h hVar = e;
                            while (next != null) {
                                int hash2 = next.getHash() & length2;
                                hash = hash;
                                if (hash2 != hash) {
                                    hVar = next;
                                    hash = hash2;
                                }
                                next = next.getNext();
                            }
                            atomicReferenceArray2.set(hash, hVar);
                            while (true) {
                                i = i;
                                if (e != hVar) {
                                    int hash3 = e.getHash() & length2;
                                    AbstractC7536h copyEntry = copyEntry(e, (AbstractC7536h) atomicReferenceArray2.get(hash3));
                                    if (copyEntry != null) {
                                        atomicReferenceArray2.set(hash3, copyEntry);
                                    } else {
                                        i--;
                                    }
                                    e = e.getNext();
                                }
                            }
                        }
                    }
                }
                this.table = atomicReferenceArray2;
                this.count = i;
            }
        }

        /* JADX WARN: Finally extract failed */
        public V get(Object obj, int i) {
            try {
                E liveEntry = getLiveEntry(obj, i);
                if (liveEntry == null) {
                    postReadCleanup();
                    return null;
                }
                V v = (V) liveEntry.getValue();
                if (v == null) {
                    tryDrainReferenceQueues();
                }
                postReadCleanup();
                return v;
            } catch (Throwable th) {
                postReadCleanup();
                throw th;
            }
        }

        public E getEntry(Object obj, int i) {
            if (this.count == 0) {
                return null;
            }
            for (E first = getFirst(i); first != null; first = (E) first.getNext()) {
                if (first.getHash() == i) {
                    Object key = first.getKey();
                    if (key == null) {
                        tryDrainReferenceQueues();
                    } else if (this.map.keyEquivalence.equivalent(obj, key)) {
                        return first;
                    }
                }
            }
            return null;
        }

        public E getFirst(int i) {
            AtomicReferenceArray<E> atomicReferenceArray = this.table;
            return atomicReferenceArray.get(i & (atomicReferenceArray.length() - 1));
        }

        public ReferenceQueue<K> getKeyReferenceQueueForTesting() {
            throw new AssertionError();
        }

        public E getLiveEntry(Object obj, int i) {
            return getEntry(obj, i);
        }

        public V getLiveValue(E e) {
            if (e.getKey() == null) {
                tryDrainReferenceQueues();
                return null;
            }
            V v = (V) e.getValue();
            if (v != null) {
                return v;
            }
            tryDrainReferenceQueues();
            return null;
        }

        public V getLiveValueForTesting(AbstractC7536h<K, V, ?> hVar) {
            return getLiveValue(castForTesting(hVar));
        }

        public ReferenceQueue<V> getValueReferenceQueueForTesting() {
            throw new AssertionError();
        }

        public AbstractC7557w<K, V, E> getWeakValueReferenceForTesting(AbstractC7536h<K, V, ?> hVar) {
            throw new AssertionError();
        }

        public void initTable(AtomicReferenceArray<E> atomicReferenceArray) {
            int length = (atomicReferenceArray.length() * 3) / 4;
            this.threshold = length;
            if (length == this.maxSegmentSize) {
                this.threshold = length + 1;
            }
            this.table = atomicReferenceArray;
        }

        public void maybeClearReferenceQueues() {
        }

        public void maybeDrainReferenceQueues() {
        }

        public AtomicReferenceArray<E> newEntryArray(int i) {
            return new AtomicReferenceArray<>(i);
        }

        public E newEntryForTesting(K k, int i, AbstractC7536h<K, V, ?> hVar) {
            return this.map.entryHelper.mo8163a(self(), k, i, castForTesting(hVar));
        }

        public AbstractC7557w<K, V, E> newWeakValueReferenceForTesting(AbstractC7536h<K, V, ?> hVar, V v) {
            throw new AssertionError();
        }

        public void postReadCleanup() {
            if ((this.readCount.incrementAndGet() & 63) == 0) {
                runCleanup();
            }
        }

        public void preWriteCleanup() {
            runLockedCleanup();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public V put(K k, int i, V v, boolean z) {
            lock();
            try {
                preWriteCleanup();
                int i2 = this.count + 1;
                int i3 = i2;
                if (i2 > this.threshold) {
                    expand();
                    i3 = this.count + 1;
                }
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i;
                E e = atomicReferenceArray.get(length);
                for (AbstractC7536h hVar = e; hVar != null; hVar = hVar.getNext()) {
                    Object key = hVar.getKey();
                    if (hVar.getHash() == i && key != null && this.map.keyEquivalence.equivalent(k, key)) {
                        V v2 = (V) hVar.getValue();
                        if (v2 == null) {
                            this.modCount++;
                            setValue(hVar, v);
                            this.count = this.count;
                            unlock();
                            return null;
                        } else if (z) {
                            unlock();
                            return v2;
                        } else {
                            this.modCount++;
                            setValue(hVar, v);
                            unlock();
                            return v2;
                        }
                    }
                }
                this.modCount++;
                E a = this.map.entryHelper.mo8163a(self(), k, i, e);
                setValue(a, v);
                atomicReferenceArray.set(length, a);
                this.count = i3;
                unlock();
                return null;
            } catch (Throwable th) {
                unlock();
                throw th;
            }
        }

        /* JADX WARN: Finally extract failed */
        /* JADX WARN: Multi-variable type inference failed */
        public boolean reclaimKey(E e, int i) {
            lock();
            try {
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = i & (atomicReferenceArray.length() - 1);
                E e2 = atomicReferenceArray.get(length);
                for (AbstractC7536h hVar = e2; hVar != null; hVar = hVar.getNext()) {
                    if (hVar == e) {
                        this.modCount++;
                        E removeFromChain = removeFromChain(e2, hVar);
                        int i2 = this.count;
                        atomicReferenceArray.set(length, removeFromChain);
                        this.count = i2 - 1;
                        unlock();
                        return true;
                    }
                }
                unlock();
                return false;
            } catch (Throwable th) {
                unlock();
                throw th;
            }
        }

        /* JADX WARN: Finally extract failed */
        /* JADX WARN: Multi-variable type inference failed */
        public boolean reclaimValue(K k, int i, AbstractC7557w<K, V, E> wVar) {
            lock();
            try {
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i;
                E e = atomicReferenceArray.get(length);
                for (AbstractC7536h hVar = e; hVar != null; hVar = hVar.getNext()) {
                    Object key = hVar.getKey();
                    if (hVar.getHash() == i && key != null && this.map.keyEquivalence.equivalent(k, key)) {
                        if (((AbstractC7556v) hVar).getValueReference() == wVar) {
                            this.modCount++;
                            E removeFromChain = removeFromChain(e, hVar);
                            int i2 = this.count;
                            atomicReferenceArray.set(length, removeFromChain);
                            this.count = i2 - 1;
                            unlock();
                            return true;
                        } else {
                            unlock();
                            return false;
                        }
                    }
                }
                unlock();
                return false;
            } catch (Throwable th) {
                unlock();
                throw th;
            }
        }

        /* JADX WARN: Finally extract failed */
        /* JADX WARN: Multi-variable type inference failed */
        public V remove(Object obj, int i) {
            lock();
            try {
                preWriteCleanup();
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i;
                E e = atomicReferenceArray.get(length);
                for (AbstractC7536h hVar = e; hVar != null; hVar = hVar.getNext()) {
                    Object key = hVar.getKey();
                    if (hVar.getHash() == i && key != null && this.map.keyEquivalence.equivalent(obj, key)) {
                        V v = (V) hVar.getValue();
                        if (v == null && !isCollected(hVar)) {
                            unlock();
                            return null;
                        }
                        this.modCount++;
                        E removeFromChain = removeFromChain(e, hVar);
                        int i2 = this.count;
                        atomicReferenceArray.set(length, removeFromChain);
                        this.count = i2 - 1;
                        unlock();
                        return v;
                    }
                }
                unlock();
                return null;
            } catch (Throwable th) {
                unlock();
                throw th;
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x006e, code lost:
            if (r4.map.valueEquivalence().equivalent(r7, r11.getValue()) == false) goto L_0x0077;
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x0071, code lost:
            r12 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x007c, code lost:
            if (isCollected(r11) == false) goto L_0x00ad;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x0080, code lost:
            r4.modCount++;
            r0 = removeFromChain(r0, r11);
            r0 = r4.count;
            r0.set(r0, r0);
            r4.count = r0 - 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x00a7, code lost:
            unlock();
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x00ac, code lost:
            return r12;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x00ad, code lost:
            unlock();
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x00b2, code lost:
            return false;
         */
        /* JADX WARN: Finally extract failed */
        /* JADX WARN: Multi-variable type inference failed */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean remove(java.lang.Object r5, int r6, java.lang.Object r7) {
            /*
                Method dump skipped, instructions count: 210
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.MapMakerInternalMap.Segment.remove(java.lang.Object, int, java.lang.Object):boolean");
        }

        /* JADX WARN: Multi-variable type inference failed */
        public boolean removeEntryForTesting(E e) {
            int hash = e.getHash();
            AtomicReferenceArray<E> atomicReferenceArray = this.table;
            int length = hash & (atomicReferenceArray.length() - 1);
            E e2 = atomicReferenceArray.get(length);
            for (AbstractC7536h hVar = e2; hVar != null; hVar = hVar.getNext()) {
                if (hVar == e) {
                    this.modCount++;
                    E removeFromChain = removeFromChain(e2, hVar);
                    int i = this.count;
                    atomicReferenceArray.set(length, removeFromChain);
                    this.count = i - 1;
                    return true;
                }
            }
            return false;
        }

        public E removeFromChain(E e, E e2) {
            int i = this.count;
            E e3 = (E) e2.getNext();
            while (e != e2) {
                E copyEntry = copyEntry(e, e3);
                if (copyEntry != null) {
                    e3 = copyEntry;
                } else {
                    i--;
                }
                e = (E) e.getNext();
            }
            this.count = i;
            return e3;
        }

        public E removeFromChainForTesting(AbstractC7536h<K, V, ?> hVar, AbstractC7536h<K, V, ?> hVar2) {
            return removeFromChain(castForTesting(hVar), castForTesting(hVar2));
        }

        public boolean removeTableEntryForTesting(AbstractC7536h<K, V, ?> hVar) {
            return removeEntryForTesting(castForTesting(hVar));
        }

        /* JADX WARN: Finally extract failed */
        /* JADX WARN: Multi-variable type inference failed */
        public V replace(K k, int i, V v) {
            lock();
            try {
                preWriteCleanup();
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i;
                E e = atomicReferenceArray.get(length);
                for (AbstractC7536h hVar = e; hVar != null; hVar = hVar.getNext()) {
                    Object key = hVar.getKey();
                    if (hVar.getHash() == i && key != null && this.map.keyEquivalence.equivalent(k, key)) {
                        V v2 = (V) hVar.getValue();
                        if (v2 == null) {
                            if (isCollected(hVar)) {
                                this.modCount++;
                                E removeFromChain = removeFromChain(e, hVar);
                                int i2 = this.count;
                                atomicReferenceArray.set(length, removeFromChain);
                                this.count = i2 - 1;
                            }
                            unlock();
                            return null;
                        }
                        this.modCount++;
                        setValue(hVar, v);
                        unlock();
                        return v2;
                    }
                }
                unlock();
                return null;
            } catch (Throwable th) {
                unlock();
                throw th;
            }
        }

        /* JADX WARN: Finally extract failed */
        /* JADX WARN: Multi-variable type inference failed */
        public boolean replace(K k, int i, V v, V v2) {
            lock();
            try {
                preWriteCleanup();
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i;
                E e = atomicReferenceArray.get(length);
                for (AbstractC7536h hVar = e; hVar != null; hVar = hVar.getNext()) {
                    Object key = hVar.getKey();
                    if (hVar.getHash() == i && key != null && this.map.keyEquivalence.equivalent(k, key)) {
                        Object value = hVar.getValue();
                        if (value == null) {
                            if (isCollected(hVar)) {
                                this.modCount++;
                                E removeFromChain = removeFromChain(e, hVar);
                                int i2 = this.count;
                                atomicReferenceArray.set(length, removeFromChain);
                                this.count = i2 - 1;
                            }
                            unlock();
                            return false;
                        } else if (this.map.valueEquivalence().equivalent(v, value)) {
                            this.modCount++;
                            setValue(hVar, v2);
                            unlock();
                            return true;
                        } else {
                            unlock();
                            return false;
                        }
                    }
                }
                unlock();
                return false;
            } catch (Throwable th) {
                unlock();
                throw th;
            }
        }

        public void runCleanup() {
            runLockedCleanup();
        }

        public void runLockedCleanup() {
            if (tryLock()) {
                try {
                    maybeDrainReferenceQueues();
                    this.readCount.set(0);
                } finally {
                    unlock();
                }
            }
        }

        public abstract S self();

        public void setTableEntryForTesting(int i, AbstractC7536h<K, V, ?> hVar) {
            this.table.set(i, castForTesting(hVar));
        }

        public void setValue(E e, V v) {
            this.map.entryHelper.mo8164a((AbstractC7537i<K, V, E, S>) self(), (S) e, (E) v);
        }

        public void setValueForTesting(AbstractC7536h<K, V, ?> hVar, V v) {
            this.map.entryHelper.mo8164a((AbstractC7537i<K, V, E, S>) self(), (S) castForTesting(hVar), (E) v);
        }

        public void setWeakValueReferenceForTesting(AbstractC7536h<K, V, ?> hVar, AbstractC7557w<K, V, ? extends AbstractC7536h<K, V, ?>> wVar) {
            throw new AssertionError();
        }

        public void tryDrainReferenceQueues() {
            if (tryLock()) {
                try {
                    maybeDrainReferenceQueues();
                } finally {
                    unlock();
                }
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$SerializationProxy.class */
    public static final class SerializationProxy<K, V> extends AbstractSerializationProxy<K, V> {
        public static final long serialVersionUID = 3;

        public SerializationProxy(Strength strength, Strength strength2, Equivalence<Object> equivalence, Equivalence<Object> equivalence2, int i, ConcurrentMap<K, V> concurrentMap) {
            super(strength, strength2, equivalence, equivalence2, i, concurrentMap);
        }

        private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            objectInputStream.defaultReadObject();
            this.delegate = readMapMaker(objectInputStream).m8208f();
            readEntries(objectInputStream);
        }

        private Object readResolve() {
            return this.delegate;
        }

        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            writeMapTo(objectOutputStream);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$Strength.class */
    public enum Strength {
        STRONG { // from class: com.google.common.collect.MapMakerInternalMap.Strength.1
            @Override // com.google.common.collect.MapMakerInternalMap.Strength
            public Equivalence<Object> defaultEquivalence() {
                return Equivalence.equals();
            }
        },
        WEAK { // from class: com.google.common.collect.MapMakerInternalMap.Strength.2
            @Override // com.google.common.collect.MapMakerInternalMap.Strength
            public Equivalence<Object> defaultEquivalence() {
                return Equivalence.identity();
            }
        };

        /* synthetic */ Strength(C7529a aVar) {
            this();
        }

        public abstract Equivalence<Object> defaultEquivalence();
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment.class */
    public static final class StrongKeyDummyValueSegment<K> extends Segment<K, MapMaker.Dummy, C7541m<K>, StrongKeyDummyValueSegment<K>> {
        public StrongKeyDummyValueSegment(MapMakerInternalMap<K, MapMaker.Dummy, C7541m<K>, StrongKeyDummyValueSegment<K>> mapMakerInternalMap, int i, int i2) {
            super(mapMakerInternalMap, i, i2);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public C7541m<K> castForTesting(AbstractC7536h<K, MapMaker.Dummy, ?> hVar) {
            return (C7541m) hVar;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public StrongKeyDummyValueSegment<K> self() {
            return this;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment.class */
    public static final class StrongKeyStrongValueSegment<K, V> extends Segment<K, V, C7543n<K, V>, StrongKeyStrongValueSegment<K, V>> {
        public StrongKeyStrongValueSegment(MapMakerInternalMap<K, V, C7543n<K, V>, StrongKeyStrongValueSegment<K, V>> mapMakerInternalMap, int i, int i2) {
            super(mapMakerInternalMap, i, i2);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public C7543n<K, V> castForTesting(AbstractC7536h<K, V, ?> hVar) {
            return (C7543n) hVar;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public StrongKeyStrongValueSegment<K, V> self() {
            return this;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment.class */
    public static final class StrongKeyWeakValueSegment<K, V> extends Segment<K, V, C7545o<K, V>, StrongKeyWeakValueSegment<K, V>> {
        public final ReferenceQueue<V> queueForValues = new ReferenceQueue<>();

        public StrongKeyWeakValueSegment(MapMakerInternalMap<K, V, C7545o<K, V>, StrongKeyWeakValueSegment<K, V>> mapMakerInternalMap, int i, int i2) {
            super(mapMakerInternalMap, i, i2);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public C7545o<K, V> castForTesting(AbstractC7536h<K, V, ?> hVar) {
            return (C7545o) hVar;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public ReferenceQueue<V> getValueReferenceQueueForTesting() {
            return this.queueForValues;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public AbstractC7557w<K, V, C7545o<K, V>> getWeakValueReferenceForTesting(AbstractC7536h<K, V, ?> hVar) {
            return castForTesting((AbstractC7536h) hVar).getValueReference();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public void maybeClearReferenceQueues() {
            clearReferenceQueue((ReferenceQueue<V>) this.queueForValues);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public void maybeDrainReferenceQueues() {
            drainValueReferenceQueue(this.queueForValues);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public AbstractC7557w<K, V, C7545o<K, V>> newWeakValueReferenceForTesting(AbstractC7536h<K, V, ?> hVar, V v) {
            return new C7558x(this.queueForValues, v, castForTesting((AbstractC7536h) hVar));
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public StrongKeyWeakValueSegment<K, V> self() {
            return this;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public void setWeakValueReferenceForTesting(AbstractC7536h<K, V, ?> hVar, AbstractC7557w<K, V, ? extends AbstractC7536h<K, V, ?>> wVar) {
            C7545o<K, V> castForTesting = castForTesting((AbstractC7536h) hVar);
            AbstractC7557w wVar2 = castForTesting.f30673d;
            castForTesting.f30673d = wVar;
            wVar2.clear();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment.class */
    public static final class WeakKeyDummyValueSegment<K> extends Segment<K, MapMaker.Dummy, C7550s<K>, WeakKeyDummyValueSegment<K>> {
        public final ReferenceQueue<K> queueForKeys = new ReferenceQueue<>();

        public WeakKeyDummyValueSegment(MapMakerInternalMap<K, MapMaker.Dummy, C7550s<K>, WeakKeyDummyValueSegment<K>> mapMakerInternalMap, int i, int i2) {
            super(mapMakerInternalMap, i, i2);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public C7550s<K> castForTesting(AbstractC7536h<K, MapMaker.Dummy, ?> hVar) {
            return (C7550s) hVar;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public ReferenceQueue<K> getKeyReferenceQueueForTesting() {
            return this.queueForKeys;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public void maybeClearReferenceQueues() {
            clearReferenceQueue((ReferenceQueue<K>) this.queueForKeys);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public void maybeDrainReferenceQueues() {
            drainKeyReferenceQueue(this.queueForKeys);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public WeakKeyDummyValueSegment<K> self() {
            return this;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment.class */
    public static final class WeakKeyStrongValueSegment<K, V> extends Segment<K, V, C7552t<K, V>, WeakKeyStrongValueSegment<K, V>> {
        public final ReferenceQueue<K> queueForKeys = new ReferenceQueue<>();

        public WeakKeyStrongValueSegment(MapMakerInternalMap<K, V, C7552t<K, V>, WeakKeyStrongValueSegment<K, V>> mapMakerInternalMap, int i, int i2) {
            super(mapMakerInternalMap, i, i2);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public C7552t<K, V> castForTesting(AbstractC7536h<K, V, ?> hVar) {
            return (C7552t) hVar;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public ReferenceQueue<K> getKeyReferenceQueueForTesting() {
            return this.queueForKeys;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public void maybeClearReferenceQueues() {
            clearReferenceQueue((ReferenceQueue<K>) this.queueForKeys);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public void maybeDrainReferenceQueues() {
            drainKeyReferenceQueue(this.queueForKeys);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public WeakKeyStrongValueSegment<K, V> self() {
            return this;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment.class */
    public static final class WeakKeyWeakValueSegment<K, V> extends Segment<K, V, C7554u<K, V>, WeakKeyWeakValueSegment<K, V>> {
        public final ReferenceQueue<K> queueForKeys = new ReferenceQueue<>();
        public final ReferenceQueue<V> queueForValues = new ReferenceQueue<>();

        public WeakKeyWeakValueSegment(MapMakerInternalMap<K, V, C7554u<K, V>, WeakKeyWeakValueSegment<K, V>> mapMakerInternalMap, int i, int i2) {
            super(mapMakerInternalMap, i, i2);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public C7554u<K, V> castForTesting(AbstractC7536h<K, V, ?> hVar) {
            return (C7554u) hVar;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public ReferenceQueue<K> getKeyReferenceQueueForTesting() {
            return this.queueForKeys;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public ReferenceQueue<V> getValueReferenceQueueForTesting() {
            return this.queueForValues;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public AbstractC7557w<K, V, C7554u<K, V>> getWeakValueReferenceForTesting(AbstractC7536h<K, V, ?> hVar) {
            return castForTesting((AbstractC7536h) hVar).getValueReference();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public void maybeClearReferenceQueues() {
            clearReferenceQueue((ReferenceQueue<K>) this.queueForKeys);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public void maybeDrainReferenceQueues() {
            drainKeyReferenceQueue(this.queueForKeys);
            drainValueReferenceQueue(this.queueForValues);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public AbstractC7557w<K, V, C7554u<K, V>> newWeakValueReferenceForTesting(AbstractC7536h<K, V, ?> hVar, V v) {
            return new C7558x(this.queueForValues, v, castForTesting((AbstractC7536h) hVar));
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public WeakKeyWeakValueSegment<K, V> self() {
            return this;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public void setWeakValueReferenceForTesting(AbstractC7536h<K, V, ?> hVar, AbstractC7557w<K, V, ? extends AbstractC7536h<K, V, ?>> wVar) {
            C7554u<K, V> castForTesting = castForTesting((AbstractC7536h) hVar);
            AbstractC7557w wVar2 = castForTesting.f30679c;
            castForTesting.f30679c = wVar;
            wVar2.clear();
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$a.class */
    public static final class C7529a implements AbstractC7557w<Object, Object, C7532d> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.common.collect.MapMakerInternalMap.AbstractC7557w
        /* renamed from: a */
        public C7532d mo8156a() {
            return null;
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public AbstractC7557w<Object, Object, C7532d> m8206a(ReferenceQueue<Object> referenceQueue, C7532d dVar) {
            return this;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.AbstractC7557w
        /* renamed from: a */
        public /* bridge */ /* synthetic */ AbstractC7557w<Object, Object, C7532d> mo8155a(ReferenceQueue<Object> referenceQueue, C7532d dVar) {
            m8206a(referenceQueue, dVar);
            return this;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.AbstractC7557w
        public void clear() {
        }

        @Override // com.google.common.collect.MapMakerInternalMap.AbstractC7557w
        public Object get() {
            return null;
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$b */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$b.class */
    public static abstract class AbstractC7530b<K, V, E extends AbstractC7536h<K, V, E>> implements AbstractC7536h<K, V, E> {

        /* renamed from: a */
        public final K f30655a;

        /* renamed from: b */
        public final int f30656b;

        /* renamed from: c */
        public final E f30657c;

        public AbstractC7530b(K k, int i, E e) {
            this.f30655a = k;
            this.f30656b = i;
            this.f30657c = e;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.AbstractC7536h
        public int getHash() {
            return this.f30656b;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.AbstractC7536h
        public K getKey() {
            return this.f30655a;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.AbstractC7536h
        public E getNext() {
            return this.f30657c;
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$c */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$c.class */
    public static abstract class AbstractC7531c<K, V, E extends AbstractC7536h<K, V, E>> extends WeakReference<K> implements AbstractC7536h<K, V, E> {

        /* renamed from: a */
        public final int f30658a;

        /* renamed from: b */
        public final E f30659b;

        public AbstractC7531c(ReferenceQueue<K> referenceQueue, K k, int i, E e) {
            super(k, referenceQueue);
            this.f30658a = i;
            this.f30659b = e;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.AbstractC7536h
        public int getHash() {
            return this.f30658a;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.AbstractC7536h
        public K getKey() {
            return get();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.AbstractC7536h
        public E getNext() {
            return this.f30659b;
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$d */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$d.class */
    public static final class C7532d implements AbstractC7536h<Object, Object, C7532d> {
        public C7532d() {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.AbstractC7536h
        public int getHash() {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.AbstractC7536h
        public Object getKey() {
            throw new AssertionError();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.common.collect.MapMakerInternalMap.AbstractC7536h
        public C7532d getNext() {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.AbstractC7536h
        public Object getValue() {
            throw new AssertionError();
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$e */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$e.class */
    public final class C7533e extends MapMakerInternalMap<K, V, E, S>.AbstractC7535g<Map.Entry<K, V>> {
        public C7533e(MapMakerInternalMap mapMakerInternalMap) {
            super();
        }

        @Override // java.util.Iterator
        public Map.Entry<K, V> next() {
            return m8203b();
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$f */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$f.class */
    public final class C7534f extends AbstractC7540l<Map.Entry<K, V>> {
        public C7534f() {
            super(null);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            MapMakerInternalMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            Map.Entry entry;
            Object key;
            if (!(obj instanceof Map.Entry) || (key = (entry = (Map.Entry) obj).getKey()) == null) {
                return false;
            }
            Object obj2 = MapMakerInternalMap.this.get(key);
            boolean z = false;
            if (obj2 != null) {
                z = false;
                if (MapMakerInternalMap.this.valueEquivalence().equivalent(entry.getValue(), obj2)) {
                    z = true;
                }
            }
            return z;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return MapMakerInternalMap.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new C7533e(MapMakerInternalMap.this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            boolean z = false;
            if (key != null) {
                z = false;
                if (MapMakerInternalMap.this.remove(key, entry.getValue())) {
                    z = true;
                }
            }
            return z;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return MapMakerInternalMap.this.size();
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$g */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$g.class */
    public abstract class AbstractC7535g<T> implements Iterator<T> {

        /* renamed from: a */
        public int f30661a;

        /* renamed from: b */
        public int f30662b = -1;

        /* renamed from: c */
        public Segment<K, V, E, S> f30663c;

        /* renamed from: d */
        public AtomicReferenceArray<E> f30664d;

        /* renamed from: e */
        public E f30665e;

        /* renamed from: f */
        public MapMakerInternalMap<K, V, E, S>.C7559y f30666f;

        /* renamed from: g */
        public MapMakerInternalMap<K, V, E, S>.C7559y f30667g;

        public AbstractC7535g() {
            this.f30661a = MapMakerInternalMap.this.segments.length - 1;
            m8205a();
        }

        /* renamed from: a */
        public final void m8205a() {
            this.f30666f = null;
            if (!m8202c() && !m8201d()) {
                while (true) {
                    int i = this.f30661a;
                    if (i >= 0) {
                        Segment<K, V, E, S>[] segmentArr = MapMakerInternalMap.this.segments;
                        this.f30661a = i - 1;
                        Segment<K, V, E, S> segment = segmentArr[i];
                        this.f30663c = segment;
                        if (segment.count != 0) {
                            AtomicReferenceArray<E> atomicReferenceArray = this.f30663c.table;
                            this.f30664d = atomicReferenceArray;
                            this.f30662b = atomicReferenceArray.length() - 1;
                            if (m8201d()) {
                                return;
                            }
                        }
                    } else {
                        return;
                    }
                }
            }
        }

        /* renamed from: a */
        public boolean m8204a(E e) {
            boolean z;
            try {
                Object key = e.getKey();
                Object liveValue = MapMakerInternalMap.this.getLiveValue(e);
                if (liveValue != null) {
                    this.f30666f = new C7559y(key, liveValue);
                    z = true;
                } else {
                    z = false;
                }
                this.f30663c.postReadCleanup();
                return z;
            } catch (Throwable th) {
                this.f30663c.postReadCleanup();
                throw th;
            }
        }

        /* renamed from: b */
        public MapMakerInternalMap<K, V, E, S>.C7559y m8203b() {
            MapMakerInternalMap<K, V, E, S>.C7559y yVar = this.f30666f;
            if (yVar != null) {
                this.f30667g = yVar;
                m8205a();
                return this.f30667g;
            }
            throw new NoSuchElementException();
        }

        /* renamed from: c */
        public boolean m8202c() {
            E e = this.f30665e;
            if (e == null) {
                return false;
            }
            while (true) {
                this.f30665e = (E) e.getNext();
                E e2 = this.f30665e;
                if (e2 == null) {
                    return false;
                }
                if (m8204a(e2)) {
                    return true;
                }
                e = this.f30665e;
            }
        }

        /* renamed from: d */
        public boolean m8201d() {
            while (true) {
                int i = this.f30662b;
                if (i < 0) {
                    return false;
                }
                AtomicReferenceArray<E> atomicReferenceArray = this.f30664d;
                this.f30662b = i - 1;
                E e = atomicReferenceArray.get(i);
                this.f30665e = e;
                if (e != null && (m8204a(e) || m8202c())) {
                    return true;
                }
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f30666f != null;
        }

        @Override // java.util.Iterator
        public void remove() {
            C5006n.m24660a(this.f30667g != null);
            MapMakerInternalMap.this.remove(this.f30667g.getKey());
            this.f30667g = null;
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$h */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$h.class */
    public interface AbstractC7536h<K, V, E extends AbstractC7536h<K, V, E>> {
        int getHash();

        K getKey();

        E getNext();

        V getValue();
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$i */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$i.class */
    public interface AbstractC7537i<K, V, E extends AbstractC7536h<K, V, E>, S extends Segment<K, V, E, S>> {
        /* renamed from: a */
        S mo8159a(MapMakerInternalMap<K, V, E, S> mapMakerInternalMap, int i, int i2);

        /* renamed from: a */
        Strength mo8166a();

        /* renamed from: a */
        E mo8165a(S s, E e, E e2);

        /* renamed from: a */
        E mo8163a(S s, K k, int i, E e);

        /* renamed from: a */
        void mo8164a(S s, E e, V v);

        /* renamed from: b */
        Strength mo8158b();
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$j */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$j.class */
    public final class C7538j extends MapMakerInternalMap<K, V, E, S>.AbstractC7535g<K> {
        public C7538j(MapMakerInternalMap mapMakerInternalMap) {
            super();
        }

        @Override // java.util.Iterator
        public K next() {
            return m8203b().getKey();
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$k */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$k.class */
    public final class C7539k extends AbstractC7540l<K> {
        public C7539k() {
            super(null);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            MapMakerInternalMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return MapMakerInternalMap.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return MapMakerInternalMap.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new C7538j(MapMakerInternalMap.this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return MapMakerInternalMap.this.remove(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return MapMakerInternalMap.this.size();
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$l */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$l.class */
    public static abstract class AbstractC7540l<E> extends AbstractSet<E> {
        public AbstractC7540l() {
        }

        public /* synthetic */ AbstractC7540l(C7529a aVar) {
            this();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public Object[] toArray() {
            return MapMakerInternalMap.toArrayList(this).toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public <T> T[] toArray(T[] tArr) {
            return (T[]) MapMakerInternalMap.toArrayList(this).toArray(tArr);
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$m */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$m.class */
    public static final class C7541m<K> extends AbstractC7530b<K, MapMaker.Dummy, C7541m<K>> implements AbstractC7547p<K, MapMaker.Dummy, C7541m<K>> {

        /* renamed from: com.google.common.collect.MapMakerInternalMap$m$a */
        /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$m$a.class */
        public static final class C7542a<K> implements AbstractC7537i<K, MapMaker.Dummy, C7541m<K>, StrongKeyDummyValueSegment<K>> {

            /* renamed from: a */
            public static final C7542a<?> f30670a = new C7542a<>();

            /* renamed from: c */
            public static <K> C7542a<K> m8196c() {
                return (C7542a<K>) f30670a;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.AbstractC7537i
            /* renamed from: a */
            public Strength mo8166a() {
                return Strength.STRONG;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.AbstractC7537i
            /* renamed from: a */
            public StrongKeyDummyValueSegment<K> mo8159a(MapMakerInternalMap<K, MapMaker.Dummy, C7541m<K>, StrongKeyDummyValueSegment<K>> mapMakerInternalMap, int i, int i2) {
                return new StrongKeyDummyValueSegment<>(mapMakerInternalMap, i, i2);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.AbstractC7537i
            /* renamed from: a */
            public /* bridge */ /* synthetic */ AbstractC7536h mo8165a(Segment segment, AbstractC7536h hVar, AbstractC7536h hVar2) {
                return m8198a((StrongKeyDummyValueSegment) ((StrongKeyDummyValueSegment) segment), (C7541m) ((C7541m) hVar), (C7541m) ((C7541m) hVar2));
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.MapMakerInternalMap.AbstractC7537i
            /* renamed from: a */
            public /* bridge */ /* synthetic */ AbstractC7536h mo8163a(Segment segment, Object obj, int i, AbstractC7536h hVar) {
                return m8197a((StrongKeyDummyValueSegment<StrongKeyDummyValueSegment<K>>) segment, (StrongKeyDummyValueSegment<K>) obj, i, (C7541m<StrongKeyDummyValueSegment<K>>) hVar);
            }

            /* renamed from: a */
            public C7541m<K> m8198a(StrongKeyDummyValueSegment<K> strongKeyDummyValueSegment, C7541m<K> mVar, C7541m<K> mVar2) {
                return mVar.m8200a(mVar2);
            }

            /* renamed from: a */
            public C7541m<K> m8197a(StrongKeyDummyValueSegment<K> strongKeyDummyValueSegment, K k, int i, C7541m<K> mVar) {
                return new C7541m<>(k, i, mVar);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.AbstractC7537i
            /* renamed from: a */
            public /* bridge */ /* synthetic */ void mo8164a(Segment segment, AbstractC7536h hVar, MapMaker.Dummy dummy) {
                m8199a((StrongKeyDummyValueSegment) ((StrongKeyDummyValueSegment) segment), (C7541m) ((C7541m) hVar), dummy);
            }

            /* renamed from: a */
            public void m8199a(StrongKeyDummyValueSegment<K> strongKeyDummyValueSegment, C7541m<K> mVar, MapMaker.Dummy dummy) {
            }

            @Override // com.google.common.collect.MapMakerInternalMap.AbstractC7537i
            /* renamed from: b */
            public Strength mo8158b() {
                return Strength.STRONG;
            }
        }

        public C7541m(K k, int i, C7541m<K> mVar) {
            super(k, i, mVar);
        }

        /* renamed from: a */
        public C7541m<K> m8200a(C7541m<K> mVar) {
            return new C7541m<>(this.f30655a, this.f30656b, mVar);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.AbstractC7536h
        public MapMaker.Dummy getValue() {
            return MapMaker.Dummy.VALUE;
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$n */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$n.class */
    public static final class C7543n<K, V> extends AbstractC7530b<K, V, C7543n<K, V>> implements AbstractC7547p<K, V, C7543n<K, V>> {

        /* renamed from: d */
        public volatile V f30671d = null;

        /* renamed from: com.google.common.collect.MapMakerInternalMap$n$a */
        /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$n$a.class */
        public static final class C7544a<K, V> implements AbstractC7537i<K, V, C7543n<K, V>, StrongKeyStrongValueSegment<K, V>> {

            /* renamed from: a */
            public static final C7544a<?, ?> f30672a = new C7544a<>();

            /* renamed from: c */
            public static <K, V> C7544a<K, V> m8190c() {
                return (C7544a<K, V>) f30672a;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.AbstractC7537i
            /* renamed from: a */
            public Strength mo8166a() {
                return Strength.STRONG;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.AbstractC7537i
            /* renamed from: a */
            public StrongKeyStrongValueSegment<K, V> mo8159a(MapMakerInternalMap<K, V, C7543n<K, V>, StrongKeyStrongValueSegment<K, V>> mapMakerInternalMap, int i, int i2) {
                return new StrongKeyStrongValueSegment<>(mapMakerInternalMap, i, i2);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.AbstractC7537i
            /* renamed from: a */
            public /* bridge */ /* synthetic */ AbstractC7536h mo8165a(Segment segment, AbstractC7536h hVar, AbstractC7536h hVar2) {
                return m8193a((StrongKeyStrongValueSegment) ((StrongKeyStrongValueSegment) segment), (C7543n) ((C7543n) hVar), (C7543n) ((C7543n) hVar2));
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.MapMakerInternalMap.AbstractC7537i
            /* renamed from: a */
            public /* bridge */ /* synthetic */ AbstractC7536h mo8163a(Segment segment, Object obj, int i, AbstractC7536h hVar) {
                return m8191a((StrongKeyStrongValueSegment<StrongKeyStrongValueSegment<K, V>, V>) segment, (StrongKeyStrongValueSegment<K, V>) obj, i, (C7543n<StrongKeyStrongValueSegment<K, V>, V>) hVar);
            }

            /* renamed from: a */
            public C7543n<K, V> m8193a(StrongKeyStrongValueSegment<K, V> strongKeyStrongValueSegment, C7543n<K, V> nVar, C7543n<K, V> nVar2) {
                return nVar.m8195a((C7543n) nVar2);
            }

            /* renamed from: a */
            public C7543n<K, V> m8191a(StrongKeyStrongValueSegment<K, V> strongKeyStrongValueSegment, K k, int i, C7543n<K, V> nVar) {
                return new C7543n<>(k, i, nVar);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.MapMakerInternalMap.AbstractC7537i
            /* renamed from: a */
            public /* bridge */ /* synthetic */ void mo8164a(Segment segment, AbstractC7536h hVar, Object obj) {
                m8192a((StrongKeyStrongValueSegment<K, C7543n<K, V>>) segment, (C7543n<K, C7543n<K, V>>) hVar, (C7543n<K, V>) obj);
            }

            /* renamed from: a */
            public void m8192a(StrongKeyStrongValueSegment<K, V> strongKeyStrongValueSegment, C7543n<K, V> nVar, V v) {
                nVar.m8194a((C7543n<K, V>) v);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.AbstractC7537i
            /* renamed from: b */
            public Strength mo8158b() {
                return Strength.STRONG;
            }
        }

        public C7543n(K k, int i, C7543n<K, V> nVar) {
            super(k, i, nVar);
        }

        /* renamed from: a */
        public C7543n<K, V> m8195a(C7543n<K, V> nVar) {
            C7543n<K, V> nVar2 = new C7543n<>(this.f30655a, this.f30656b, nVar);
            nVar2.f30671d = this.f30671d;
            return nVar2;
        }

        /* renamed from: a */
        public void m8194a(V v) {
            this.f30671d = v;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.AbstractC7536h
        public V getValue() {
            return this.f30671d;
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$o */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$o.class */
    public static final class C7545o<K, V> extends AbstractC7530b<K, V, C7545o<K, V>> implements AbstractC7556v<K, V, C7545o<K, V>> {

        /* renamed from: d */
        public volatile AbstractC7557w<K, V, C7545o<K, V>> f30673d = MapMakerInternalMap.unsetWeakValueReference();

        /* renamed from: com.google.common.collect.MapMakerInternalMap$o$a */
        /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$o$a.class */
        public static final class C7546a<K, V> implements AbstractC7537i<K, V, C7545o<K, V>, StrongKeyWeakValueSegment<K, V>> {

            /* renamed from: a */
            public static final C7546a<?, ?> f30674a = new C7546a<>();

            /* renamed from: c */
            public static <K, V> C7546a<K, V> m8182c() {
                return (C7546a<K, V>) f30674a;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.AbstractC7537i
            /* renamed from: a */
            public Strength mo8166a() {
                return Strength.STRONG;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.AbstractC7537i
            /* renamed from: a */
            public StrongKeyWeakValueSegment<K, V> mo8159a(MapMakerInternalMap<K, V, C7545o<K, V>, StrongKeyWeakValueSegment<K, V>> mapMakerInternalMap, int i, int i2) {
                return new StrongKeyWeakValueSegment<>(mapMakerInternalMap, i, i2);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.AbstractC7537i
            /* renamed from: a */
            public /* bridge */ /* synthetic */ AbstractC7536h mo8165a(Segment segment, AbstractC7536h hVar, AbstractC7536h hVar2) {
                return m8185a((StrongKeyWeakValueSegment) ((StrongKeyWeakValueSegment) segment), (C7545o) ((C7545o) hVar), (C7545o) ((C7545o) hVar2));
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.MapMakerInternalMap.AbstractC7537i
            /* renamed from: a */
            public /* bridge */ /* synthetic */ AbstractC7536h mo8163a(Segment segment, Object obj, int i, AbstractC7536h hVar) {
                return m8183a((StrongKeyWeakValueSegment<StrongKeyWeakValueSegment<K, V>, V>) segment, (StrongKeyWeakValueSegment<K, V>) obj, i, (C7545o<StrongKeyWeakValueSegment<K, V>, V>) hVar);
            }

            /* renamed from: a */
            public C7545o<K, V> m8185a(StrongKeyWeakValueSegment<K, V> strongKeyWeakValueSegment, C7545o<K, V> oVar, C7545o<K, V> oVar2) {
                if (Segment.isCollected(oVar)) {
                    return null;
                }
                return oVar.m8186a(strongKeyWeakValueSegment.queueForValues, oVar2);
            }

            /* renamed from: a */
            public C7545o<K, V> m8183a(StrongKeyWeakValueSegment<K, V> strongKeyWeakValueSegment, K k, int i, C7545o<K, V> oVar) {
                return new C7545o<>(k, i, oVar);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.MapMakerInternalMap.AbstractC7537i
            /* renamed from: a */
            public /* bridge */ /* synthetic */ void mo8164a(Segment segment, AbstractC7536h hVar, Object obj) {
                m8184a((StrongKeyWeakValueSegment<K, C7545o<K, V>>) segment, (C7545o<K, C7545o<K, V>>) hVar, (C7545o<K, V>) obj);
            }

            /* renamed from: a */
            public void m8184a(StrongKeyWeakValueSegment<K, V> strongKeyWeakValueSegment, C7545o<K, V> oVar, V v) {
                oVar.m8187a((C7545o<K, V>) v, (ReferenceQueue<C7545o<K, V>>) strongKeyWeakValueSegment.queueForValues);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.AbstractC7537i
            /* renamed from: b */
            public Strength mo8158b() {
                return Strength.WEAK;
            }
        }

        public C7545o(K k, int i, C7545o<K, V> oVar) {
            super(k, i, oVar);
        }

        /* renamed from: a */
        public C7545o<K, V> m8186a(ReferenceQueue<V> referenceQueue, C7545o<K, V> oVar) {
            C7545o<K, V> oVar2 = new C7545o<>(this.f30655a, this.f30656b, oVar);
            oVar2.f30673d = this.f30673d.mo8155a(referenceQueue, oVar2);
            return oVar2;
        }

        /* renamed from: a */
        public void m8187a(V v, ReferenceQueue<V> referenceQueue) {
            AbstractC7557w<K, V, C7545o<K, V>> wVar = this.f30673d;
            this.f30673d = new C7558x(referenceQueue, v, this);
            wVar.clear();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.AbstractC7536h
        public V getValue() {
            return this.f30673d.get();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.AbstractC7556v
        public AbstractC7557w<K, V, C7545o<K, V>> getValueReference() {
            return this.f30673d;
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$p */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$p.class */
    public interface AbstractC7547p<K, V, E extends AbstractC7536h<K, V, E>> extends AbstractC7536h<K, V, E> {
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$q */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$q.class */
    public final class C7548q extends MapMakerInternalMap<K, V, E, S>.AbstractC7535g<V> {
        public C7548q(MapMakerInternalMap mapMakerInternalMap) {
            super();
        }

        @Override // java.util.Iterator
        public V next() {
            return m8203b().getValue();
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$r */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$r.class */
    public final class C7549r extends AbstractCollection<V> {
        public C7549r() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            MapMakerInternalMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return MapMakerInternalMap.this.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return MapMakerInternalMap.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return new C7548q(MapMakerInternalMap.this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return MapMakerInternalMap.this.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public Object[] toArray() {
            return MapMakerInternalMap.toArrayList(this).toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) MapMakerInternalMap.toArrayList(this).toArray(tArr);
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$s */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$s.class */
    public static final class C7550s<K> extends AbstractC7531c<K, MapMaker.Dummy, C7550s<K>> implements AbstractC7547p<K, MapMaker.Dummy, C7550s<K>> {

        /* renamed from: com.google.common.collect.MapMakerInternalMap$s$a */
        /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$s$a.class */
        public static final class C7551a<K> implements AbstractC7537i<K, MapMaker.Dummy, C7550s<K>, WeakKeyDummyValueSegment<K>> {

            /* renamed from: a */
            public static final C7551a<?> f30676a = new C7551a<>();

            /* renamed from: c */
            public static <K> C7551a<K> m8177c() {
                return (C7551a<K>) f30676a;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.AbstractC7537i
            /* renamed from: a */
            public Strength mo8166a() {
                return Strength.WEAK;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.AbstractC7537i
            /* renamed from: a */
            public WeakKeyDummyValueSegment<K> mo8159a(MapMakerInternalMap<K, MapMaker.Dummy, C7550s<K>, WeakKeyDummyValueSegment<K>> mapMakerInternalMap, int i, int i2) {
                return new WeakKeyDummyValueSegment<>(mapMakerInternalMap, i, i2);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.AbstractC7537i
            /* renamed from: a */
            public /* bridge */ /* synthetic */ AbstractC7536h mo8165a(Segment segment, AbstractC7536h hVar, AbstractC7536h hVar2) {
                return m8179a((WeakKeyDummyValueSegment) ((WeakKeyDummyValueSegment) segment), (C7550s) ((C7550s) hVar), (C7550s) ((C7550s) hVar2));
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.MapMakerInternalMap.AbstractC7537i
            /* renamed from: a */
            public /* bridge */ /* synthetic */ AbstractC7536h mo8163a(Segment segment, Object obj, int i, AbstractC7536h hVar) {
                return m8178a((WeakKeyDummyValueSegment<WeakKeyDummyValueSegment<K>>) segment, (WeakKeyDummyValueSegment<K>) obj, i, (C7550s<WeakKeyDummyValueSegment<K>>) hVar);
            }

            /* renamed from: a */
            public C7550s<K> m8179a(WeakKeyDummyValueSegment<K> weakKeyDummyValueSegment, C7550s<K> sVar, C7550s<K> sVar2) {
                if (sVar.getKey() == null) {
                    return null;
                }
                return sVar.m8181a(weakKeyDummyValueSegment.queueForKeys, sVar2);
            }

            /* renamed from: a */
            public C7550s<K> m8178a(WeakKeyDummyValueSegment<K> weakKeyDummyValueSegment, K k, int i, C7550s<K> sVar) {
                return new C7550s<>(weakKeyDummyValueSegment.queueForKeys, k, i, sVar);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.AbstractC7537i
            /* renamed from: a */
            public /* bridge */ /* synthetic */ void mo8164a(Segment segment, AbstractC7536h hVar, MapMaker.Dummy dummy) {
                m8180a((WeakKeyDummyValueSegment) ((WeakKeyDummyValueSegment) segment), (C7550s) ((C7550s) hVar), dummy);
            }

            /* renamed from: a */
            public void m8180a(WeakKeyDummyValueSegment<K> weakKeyDummyValueSegment, C7550s<K> sVar, MapMaker.Dummy dummy) {
            }

            @Override // com.google.common.collect.MapMakerInternalMap.AbstractC7537i
            /* renamed from: b */
            public Strength mo8158b() {
                return Strength.STRONG;
            }
        }

        public C7550s(ReferenceQueue<K> referenceQueue, K k, int i, C7550s<K> sVar) {
            super(referenceQueue, k, i, sVar);
        }

        /* renamed from: a */
        public C7550s<K> m8181a(ReferenceQueue<K> referenceQueue, C7550s<K> sVar) {
            return new C7550s<>(referenceQueue, getKey(), this.f30658a, sVar);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.AbstractC7536h
        public MapMaker.Dummy getValue() {
            return MapMaker.Dummy.VALUE;
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$t */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$t.class */
    public static final class C7552t<K, V> extends AbstractC7531c<K, V, C7552t<K, V>> implements AbstractC7547p<K, V, C7552t<K, V>> {

        /* renamed from: c */
        public volatile V f30677c = null;

        /* renamed from: com.google.common.collect.MapMakerInternalMap$t$a */
        /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$t$a.class */
        public static final class C7553a<K, V> implements AbstractC7537i<K, V, C7552t<K, V>, WeakKeyStrongValueSegment<K, V>> {

            /* renamed from: a */
            public static final C7553a<?, ?> f30678a = new C7553a<>();

            /* renamed from: c */
            public static <K, V> C7553a<K, V> m8171c() {
                return (C7553a<K, V>) f30678a;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.AbstractC7537i
            /* renamed from: a */
            public Strength mo8166a() {
                return Strength.WEAK;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.AbstractC7537i
            /* renamed from: a */
            public WeakKeyStrongValueSegment<K, V> mo8159a(MapMakerInternalMap<K, V, C7552t<K, V>, WeakKeyStrongValueSegment<K, V>> mapMakerInternalMap, int i, int i2) {
                return new WeakKeyStrongValueSegment<>(mapMakerInternalMap, i, i2);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.AbstractC7537i
            /* renamed from: a */
            public /* bridge */ /* synthetic */ AbstractC7536h mo8165a(Segment segment, AbstractC7536h hVar, AbstractC7536h hVar2) {
                return m8174a((WeakKeyStrongValueSegment) ((WeakKeyStrongValueSegment) segment), (C7552t) ((C7552t) hVar), (C7552t) ((C7552t) hVar2));
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.MapMakerInternalMap.AbstractC7537i
            /* renamed from: a */
            public /* bridge */ /* synthetic */ AbstractC7536h mo8163a(Segment segment, Object obj, int i, AbstractC7536h hVar) {
                return m8172a((WeakKeyStrongValueSegment<WeakKeyStrongValueSegment<K, V>, V>) segment, (WeakKeyStrongValueSegment<K, V>) obj, i, (C7552t<WeakKeyStrongValueSegment<K, V>, V>) hVar);
            }

            /* renamed from: a */
            public C7552t<K, V> m8174a(WeakKeyStrongValueSegment<K, V> weakKeyStrongValueSegment, C7552t<K, V> tVar, C7552t<K, V> tVar2) {
                if (tVar.getKey() == null) {
                    return null;
                }
                return tVar.m8175a(weakKeyStrongValueSegment.queueForKeys, tVar2);
            }

            /* renamed from: a */
            public C7552t<K, V> m8172a(WeakKeyStrongValueSegment<K, V> weakKeyStrongValueSegment, K k, int i, C7552t<K, V> tVar) {
                return new C7552t<>(weakKeyStrongValueSegment.queueForKeys, k, i, tVar);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.MapMakerInternalMap.AbstractC7537i
            /* renamed from: a */
            public /* bridge */ /* synthetic */ void mo8164a(Segment segment, AbstractC7536h hVar, Object obj) {
                m8173a((WeakKeyStrongValueSegment<K, C7552t<K, V>>) segment, (C7552t<K, C7552t<K, V>>) hVar, (C7552t<K, V>) obj);
            }

            /* renamed from: a */
            public void m8173a(WeakKeyStrongValueSegment<K, V> weakKeyStrongValueSegment, C7552t<K, V> tVar, V v) {
                tVar.m8176a(v);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.AbstractC7537i
            /* renamed from: b */
            public Strength mo8158b() {
                return Strength.STRONG;
            }
        }

        public C7552t(ReferenceQueue<K> referenceQueue, K k, int i, C7552t<K, V> tVar) {
            super(referenceQueue, k, i, tVar);
        }

        /* renamed from: a */
        public C7552t<K, V> m8175a(ReferenceQueue<K> referenceQueue, C7552t<K, V> tVar) {
            C7552t<K, V> tVar2 = new C7552t<>(referenceQueue, getKey(), this.f30658a, tVar);
            tVar2.m8176a(this.f30677c);
            return tVar2;
        }

        /* renamed from: a */
        public void m8176a(V v) {
            this.f30677c = v;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.AbstractC7536h
        public V getValue() {
            return this.f30677c;
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$u */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$u.class */
    public static final class C7554u<K, V> extends AbstractC7531c<K, V, C7554u<K, V>> implements AbstractC7556v<K, V, C7554u<K, V>> {

        /* renamed from: c */
        public volatile AbstractC7557w<K, V, C7554u<K, V>> f30679c = MapMakerInternalMap.unsetWeakValueReference();

        /* renamed from: com.google.common.collect.MapMakerInternalMap$u$a */
        /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$u$a.class */
        public static final class C7555a<K, V> implements AbstractC7537i<K, V, C7554u<K, V>, WeakKeyWeakValueSegment<K, V>> {

            /* renamed from: a */
            public static final C7555a<?, ?> f30680a = new C7555a<>();

            /* renamed from: c */
            public static <K, V> C7555a<K, V> m8157c() {
                return (C7555a<K, V>) f30680a;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.AbstractC7537i
            /* renamed from: a */
            public Strength mo8166a() {
                return Strength.WEAK;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.AbstractC7537i
            /* renamed from: a */
            public WeakKeyWeakValueSegment<K, V> mo8159a(MapMakerInternalMap<K, V, C7554u<K, V>, WeakKeyWeakValueSegment<K, V>> mapMakerInternalMap, int i, int i2) {
                return new WeakKeyWeakValueSegment<>(mapMakerInternalMap, i, i2);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.AbstractC7537i
            /* renamed from: a */
            public /* bridge */ /* synthetic */ AbstractC7536h mo8165a(Segment segment, AbstractC7536h hVar, AbstractC7536h hVar2) {
                return m8162a((WeakKeyWeakValueSegment) ((WeakKeyWeakValueSegment) segment), (C7554u) ((C7554u) hVar), (C7554u) ((C7554u) hVar2));
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.MapMakerInternalMap.AbstractC7537i
            /* renamed from: a */
            public /* bridge */ /* synthetic */ AbstractC7536h mo8163a(Segment segment, Object obj, int i, AbstractC7536h hVar) {
                return m8160a((WeakKeyWeakValueSegment<WeakKeyWeakValueSegment<K, V>, V>) segment, (WeakKeyWeakValueSegment<K, V>) obj, i, (C7554u<WeakKeyWeakValueSegment<K, V>, V>) hVar);
            }

            /* renamed from: a */
            public C7554u<K, V> m8162a(WeakKeyWeakValueSegment<K, V> weakKeyWeakValueSegment, C7554u<K, V> uVar, C7554u<K, V> uVar2) {
                if (uVar.getKey() != null && !Segment.isCollected(uVar)) {
                    return uVar.m8167a(weakKeyWeakValueSegment.queueForKeys, weakKeyWeakValueSegment.queueForValues, uVar2);
                }
                return null;
            }

            /* renamed from: a */
            public C7554u<K, V> m8160a(WeakKeyWeakValueSegment<K, V> weakKeyWeakValueSegment, K k, int i, C7554u<K, V> uVar) {
                return new C7554u<>(weakKeyWeakValueSegment.queueForKeys, k, i, uVar);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.MapMakerInternalMap.AbstractC7537i
            /* renamed from: a */
            public /* bridge */ /* synthetic */ void mo8164a(Segment segment, AbstractC7536h hVar, Object obj) {
                m8161a((WeakKeyWeakValueSegment<K, C7554u<K, V>>) segment, (C7554u<K, C7554u<K, V>>) hVar, (C7554u<K, V>) obj);
            }

            /* renamed from: a */
            public void m8161a(WeakKeyWeakValueSegment<K, V> weakKeyWeakValueSegment, C7554u<K, V> uVar, V v) {
                uVar.m8168a((C7554u<K, V>) v, (ReferenceQueue<C7554u<K, V>>) weakKeyWeakValueSegment.queueForValues);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.AbstractC7537i
            /* renamed from: b */
            public Strength mo8158b() {
                return Strength.WEAK;
            }
        }

        public C7554u(ReferenceQueue<K> referenceQueue, K k, int i, C7554u<K, V> uVar) {
            super(referenceQueue, k, i, uVar);
        }

        /* renamed from: a */
        public C7554u<K, V> m8167a(ReferenceQueue<K> referenceQueue, ReferenceQueue<V> referenceQueue2, C7554u<K, V> uVar) {
            C7554u<K, V> uVar2 = new C7554u<>(referenceQueue, getKey(), this.f30658a, uVar);
            uVar2.f30679c = this.f30679c.mo8155a(referenceQueue2, uVar2);
            return uVar2;
        }

        /* renamed from: a */
        public void m8168a(V v, ReferenceQueue<V> referenceQueue) {
            AbstractC7557w<K, V, C7554u<K, V>> wVar = this.f30679c;
            this.f30679c = new C7558x(referenceQueue, v, this);
            wVar.clear();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.AbstractC7536h
        public V getValue() {
            return this.f30679c.get();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.AbstractC7556v
        public AbstractC7557w<K, V, C7554u<K, V>> getValueReference() {
            return this.f30679c;
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$v */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$v.class */
    public interface AbstractC7556v<K, V, E extends AbstractC7536h<K, V, E>> extends AbstractC7536h<K, V, E> {
        AbstractC7557w<K, V, E> getValueReference();
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$w */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$w.class */
    public interface AbstractC7557w<K, V, E extends AbstractC7536h<K, V, E>> {
        /* renamed from: a */
        E mo8156a();

        /* renamed from: a */
        AbstractC7557w<K, V, E> mo8155a(ReferenceQueue<V> referenceQueue, E e);

        void clear();

        V get();
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$x */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$x.class */
    public static final class C7558x<K, V, E extends AbstractC7536h<K, V, E>> extends WeakReference<V> implements AbstractC7557w<K, V, E> {

        /* renamed from: a */
        public final E f30681a;

        public C7558x(ReferenceQueue<V> referenceQueue, V v, E e) {
            super(v, referenceQueue);
            this.f30681a = e;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.AbstractC7557w
        /* renamed from: a */
        public E mo8156a() {
            return this.f30681a;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.AbstractC7557w
        /* renamed from: a */
        public AbstractC7557w<K, V, E> mo8155a(ReferenceQueue<V> referenceQueue, E e) {
            return new C7558x(referenceQueue, get(), e);
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$y */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$y.class */
    public final class C7559y extends AbstractC4960b<K, V> {

        /* renamed from: a */
        public final K f30682a;

        /* renamed from: b */
        public V f30683b;

        public C7559y(K k, V v) {
            this.f30682a = k;
            this.f30683b = v;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4960b, java.util.Map.Entry
        public boolean equals(Object obj) {
            boolean z = false;
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                z = false;
                if (this.f30682a.equals(entry.getKey())) {
                    z = false;
                    if (this.f30683b.equals(entry.getValue())) {
                        z = true;
                    }
                }
            }
            return z;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4960b, java.util.Map.Entry
        public K getKey() {
            return this.f30682a;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4960b, java.util.Map.Entry
        public V getValue() {
            return this.f30683b;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4960b, java.util.Map.Entry
        public int hashCode() {
            return this.f30682a.hashCode() ^ this.f30683b.hashCode();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4960b, java.util.Map.Entry
        public V setValue(V v) {
            V v2 = (V) MapMakerInternalMap.this.put(this.f30682a, v);
            this.f30683b = v;
            return v2;
        }
    }

    public MapMakerInternalMap(MapMaker mapMaker, AbstractC7537i<K, V, E, S> iVar) {
        this.concurrencyLevel = Math.min(mapMaker.m8218a(), (int) MAX_SEGMENTS);
        this.keyEquivalence = mapMaker.m8211c();
        this.entryHelper = iVar;
        int min = Math.min(mapMaker.m8214b(), 1073741824);
        int i = 0;
        int i2 = 1;
        int i3 = 0;
        while (i2 < this.concurrencyLevel) {
            i3++;
            i2 <<= 1;
        }
        this.segmentShift = 32 - i3;
        this.segmentMask = i2 - 1;
        this.segments = newSegmentArray(i2);
        int i4 = min / i2;
        int i5 = 1;
        int i6 = i4;
        if (i2 * i4 < min) {
            i6 = i4 + 1;
            i5 = 1;
        }
        while (i5 < i6) {
            i5 <<= 1;
        }
        while (true) {
            Segment<K, V, E, S>[] segmentArr = this.segments;
            if (i < segmentArr.length) {
                segmentArr[i] = createSegment(i5, -1);
                i++;
            } else {
                return;
            }
        }
    }

    public static <K, V> MapMakerInternalMap<K, V, ? extends AbstractC7536h<K, V, ?>, ?> create(MapMaker mapMaker) {
        if (mapMaker.m8210d() == Strength.STRONG && mapMaker.m8209e() == Strength.STRONG) {
            return new MapMakerInternalMap<>(mapMaker, C7543n.C7544a.m8190c());
        }
        if (mapMaker.m8210d() == Strength.STRONG && mapMaker.m8209e() == Strength.WEAK) {
            return new MapMakerInternalMap<>(mapMaker, C7545o.C7546a.m8182c());
        }
        if (mapMaker.m8210d() == Strength.WEAK && mapMaker.m8209e() == Strength.STRONG) {
            return new MapMakerInternalMap<>(mapMaker, C7552t.C7553a.m8171c());
        }
        if (mapMaker.m8210d() == Strength.WEAK && mapMaker.m8209e() == Strength.WEAK) {
            return new MapMakerInternalMap<>(mapMaker, C7554u.C7555a.m8157c());
        }
        throw new AssertionError();
    }

    public static <K> MapMakerInternalMap<K, MapMaker.Dummy, ? extends AbstractC7536h<K, MapMaker.Dummy, ?>, ?> createWithDummyValues(MapMaker mapMaker) {
        if (mapMaker.m8210d() == Strength.STRONG && mapMaker.m8209e() == Strength.STRONG) {
            return new MapMakerInternalMap<>(mapMaker, C7541m.C7542a.m8196c());
        }
        if (mapMaker.m8210d() == Strength.WEAK && mapMaker.m8209e() == Strength.STRONG) {
            return new MapMakerInternalMap<>(mapMaker, C7550s.C7551a.m8177c());
        }
        if (mapMaker.m8209e() == Strength.WEAK) {
            throw new IllegalArgumentException("Map cannot have both weak and dummy values");
        }
        throw new AssertionError();
    }

    public static int rehash(int i) {
        int i2 = i + ((i << 15) ^ (-12931));
        int i3 = i2 ^ (i2 >>> 10);
        int i4 = i3 + (i3 << 3);
        int i5 = i4 ^ (i4 >>> 6);
        int i6 = i5 + (i5 << 2) + (i5 << 14);
        return i6 ^ (i6 >>> 16);
    }

    public static <E> ArrayList<E> toArrayList(Collection<E> collection) {
        ArrayList<E> arrayList = new ArrayList<>(collection.size());
        Iterators.m8267a(arrayList, collection.iterator());
        return arrayList;
    }

    public static <K, V, E extends AbstractC7536h<K, V, E>> AbstractC7557w<K, V, E> unsetWeakValueReference() {
        return (AbstractC7557w<K, V, E>) UNSET_WEAK_VALUE_REFERENCE;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        for (Segment<K, V, E, S> segment : this.segments) {
            segment.clear();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        if (obj == null) {
            return false;
        }
        int hash = hash(obj);
        return segmentFor(hash).containsKey(obj, hash);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17, types: [com.google.common.collect.MapMakerInternalMap$Segment] */
    /* JADX WARN: Type inference failed for: r0v2, types: [com.google.common.collect.MapMakerInternalMap$Segment<K, V, E extends com.google.common.collect.MapMakerInternalMap$h<K, V, E>, S extends com.google.common.collect.MapMakerInternalMap$Segment<K, V, E, S>>[]] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1, types: [long] */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Unknown variable types count: 3 */
    @Override // java.util.AbstractMap, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean containsValue(java.lang.Object r6) {
        /*
            r5 = this;
            r0 = r6
            if (r0 != 0) goto L_0x0006
            r0 = 0
            return r0
        L_0x0006:
            r0 = r5
            com.google.common.collect.MapMakerInternalMap$Segment<K, V, E extends com.google.common.collect.MapMakerInternalMap$h<K, V, E>, S extends com.google.common.collect.MapMakerInternalMap$Segment<K, V, E, S>>[] r0 = r0.segments
            r7 = r0
            r0 = -1
            r8 = r0
            r0 = 0
            r10 = r0
        L_0x0012:
            r0 = r10
            r1 = 3
            if (r0 >= r1) goto L_0x00ae
            r0 = 0
            r11 = r0
            r0 = r7
            int r0 = r0.length
            r13 = r0
            r0 = 0
            r14 = r0
        L_0x0022:
            r0 = r14
            r1 = r13
            if (r0 >= r1) goto L_0x009b
            r0 = r7
            r1 = r14
            r0 = r0[r1]
            r15 = r0
            r0 = r15
            int r0 = r0.count
            r16 = r0
            r0 = r15
            java.util.concurrent.atomic.AtomicReferenceArray<E extends com.google.common.collect.MapMakerInternalMap$h<K, V, E>> r0 = r0.table
            r17 = r0
            r0 = 0
            r16 = r0
        L_0x0040:
            r0 = r16
            r1 = r17
            int r1 = r1.length()
            if (r0 >= r1) goto L_0x008a
            r0 = r17
            r1 = r16
            java.lang.Object r0 = r0.get(r1)
            com.google.common.collect.MapMakerInternalMap$h r0 = (com.google.common.collect.MapMakerInternalMap.AbstractC7536h) r0
            r18 = r0
        L_0x0056:
            r0 = r18
            if (r0 == 0) goto L_0x0084
            r0 = r15
            r1 = r18
            java.lang.Object r0 = r0.getLiveValue(r1)
            r19 = r0
            r0 = r19
            if (r0 == 0) goto L_0x0078
            r0 = r5
            com.google.common.base.Equivalence r0 = r0.valueEquivalence()
            r1 = r6
            r2 = r19
            boolean r0 = r0.equivalent(r1, r2)
            if (r0 == 0) goto L_0x0078
            r0 = 1
            return r0
        L_0x0078:
            r0 = r18
            com.google.common.collect.MapMakerInternalMap$h r0 = r0.getNext()
            r18 = r0
            goto L_0x0056
        L_0x0084:
            int r16 = r16 + 1
            goto L_0x0040
        L_0x008a:
            r0 = r11
            r1 = r15
            int r1 = r1.modCount
            long r1 = (long) r1
            long r0 = r0 + r1
            r11 = r0
            int r14 = r14 + 1
            goto L_0x0022
        L_0x009b:
            r0 = r11
            r1 = r8
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x00a5
            goto L_0x00ae
        L_0x00a5:
            int r10 = r10 + 1
            r0 = r11
            r8 = r0
            goto L_0x0012
        L_0x00ae:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.MapMakerInternalMap.containsValue(java.lang.Object):boolean");
    }

    public E copyEntry(E e, E e2) {
        return segmentFor(e.getHash()).copyEntry(e, e2);
    }

    public Segment<K, V, E, S> createSegment(int i, int i2) {
        return (S) this.entryHelper.mo8159a(this, i, i2);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.entrySet;
        if (set == null) {
            set = new C7534f();
            this.entrySet = set;
        }
        return set;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        if (obj == null) {
            return null;
        }
        int hash = hash(obj);
        return segmentFor(hash).get(obj, hash);
    }

    public E getEntry(Object obj) {
        if (obj == null) {
            return null;
        }
        int hash = hash(obj);
        return segmentFor(hash).getEntry(obj, hash);
    }

    public V getLiveValue(E e) {
        if (e.getKey() == null) {
            return null;
        }
        return (V) e.getValue();
    }

    public int hash(Object obj) {
        return rehash(this.keyEquivalence.hash(obj));
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean isEmpty() {
        Segment<K, V, E, S>[] segmentArr = this.segments;
        long j = 0;
        for (int i = 0; i < segmentArr.length; i++) {
            if (segmentArr[i].count != 0) {
                return false;
            }
            j += segmentArr[i].modCount;
        }
        if (j == 0) {
            return true;
        }
        for (int i2 = 0; i2 < segmentArr.length; i2++) {
            if (segmentArr[i2].count != 0) {
                return false;
            }
            j -= segmentArr[i2].modCount;
        }
        return j == 0;
    }

    public boolean isLiveForTesting(AbstractC7536h<K, V, ?> hVar) {
        return segmentFor(hVar.getHash()).getLiveValueForTesting(hVar) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        Set<K> set = this.keySet;
        if (set == null) {
            set = new C7539k();
            this.keySet = set;
        }
        return set;
    }

    public Strength keyStrength() {
        return this.entryHelper.mo8166a();
    }

    public final Segment<K, V, E, S>[] newSegmentArray(int i) {
        return new Segment[i];
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k, V v) {
        C4933n.m24795a(k);
        C4933n.m24795a(v);
        int hash = hash(k);
        return segmentFor(hash).put(k, hash, v, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public V putIfAbsent(K k, V v) {
        C4933n.m24795a(k);
        C4933n.m24795a(v);
        int hash = hash(k);
        return segmentFor(hash).put(k, hash, v, true);
    }

    public void reclaimKey(E e) {
        int hash = e.getHash();
        segmentFor(hash).reclaimKey(e, hash);
    }

    public void reclaimValue(AbstractC7557w<K, V, E> wVar) {
        E a = wVar.mo8156a();
        int hash = a.getHash();
        segmentFor(hash).reclaimValue((K) a.getKey(), hash, wVar);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        if (obj == null) {
            return null;
        }
        int hash = hash(obj);
        return segmentFor(hash).remove(obj, hash);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public boolean remove(Object obj, Object obj2) {
        if (obj == null || obj2 == null) {
            return false;
        }
        int hash = hash(obj);
        return segmentFor(hash).remove(obj, hash, obj2);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public V replace(K k, V v) {
        C4933n.m24795a(k);
        C4933n.m24795a(v);
        int hash = hash(k);
        return segmentFor(hash).replace(k, hash, v);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public boolean replace(K k, V v, V v2) {
        C4933n.m24795a(k);
        C4933n.m24795a(v2);
        if (v == null) {
            return false;
        }
        int hash = hash(k);
        return segmentFor(hash).replace(k, hash, v, v2);
    }

    public Segment<K, V, E, S> segmentFor(int i) {
        return this.segments[(i >>> this.segmentShift) & this.segmentMask];
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        long j = 0;
        for (Segment<K, V, E, S> segment : this.segments) {
            j += segment.count;
        }
        return Ints.m7808b(j);
    }

    public Equivalence<Object> valueEquivalence() {
        return this.entryHelper.mo8158b().defaultEquivalence();
    }

    public Strength valueStrength() {
        return this.entryHelper.mo8158b();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Collection<V> values() {
        Collection<V> collection = this.values;
        if (collection == null) {
            collection = new C7549r();
            this.values = collection;
        }
        return collection;
    }

    public Object writeReplace() {
        return new SerializationProxy(this.entryHelper.mo8166a(), this.entryHelper.mo8158b(), this.keyEquivalence, this.entryHelper.mo8158b().defaultEquivalence(), this.concurrencyLevel, this);
    }
}
