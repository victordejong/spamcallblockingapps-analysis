package io.realm.internal;

import io.realm.OrderedRealmCollectionChangeListener;
import io.realm.RealmChangeListener;
import io.realm.internal.ObservableCollection;
import java.util.Date;
import javax.annotation.Nullable;
/* loaded from: classes3-dex2jar.jar:io/realm/internal/OsList.class */
public class OsList implements NativeObject, ObservableCollection {
    public static final long nativeFinalizerPtr = nativeGetFinalizerPtr();
    public final NativeContext context;
    public final long nativePtr;
    public final ObserverPairList<ObservableCollection.CollectionObserverPair> observerPairs = new ObserverPairList<>();
    public final Table targetTable;

    public OsList(UncheckedRow uncheckedRow, long j) {
        OsSharedRealm sharedRealm = uncheckedRow.getTable().getSharedRealm();
        long[] nativeCreate = nativeCreate(sharedRealm.getNativePtr(), uncheckedRow.getNativePtr(), j);
        this.nativePtr = nativeCreate[0];
        this.context = sharedRealm.context;
        this.context.addReference(this);
        if (nativeCreate[1] != 0) {
            this.targetTable = new Table(sharedRealm, nativeCreate[1]);
        } else {
            this.targetTable = null;
        }
    }

    public static native void nativeAddBinary(long j, @Nullable byte[] bArr);

    public static native void nativeAddBoolean(long j, boolean z);

    public static native void nativeAddDate(long j, long j2);

    public static native void nativeAddDouble(long j, double d);

    public static native void nativeAddFloat(long j, float f);

    public static native void nativeAddLong(long j, long j2);

    public static native void nativeAddNull(long j);

    public static native void nativeAddRow(long j, long j2);

    public static native void nativeAddString(long j, @Nullable String str);

    public static native long[] nativeCreate(long j, long j2, long j3);

    public static native void nativeDelete(long j, long j2);

    public static native void nativeDeleteAll(long j);

    public static native long nativeGetFinalizerPtr();

    public static native long nativeGetQuery(long j);

    public static native long nativeGetRow(long j, long j2);

    public static native Object nativeGetValue(long j, long j2);

    public static native void nativeInsertBinary(long j, long j2, @Nullable byte[] bArr);

    public static native void nativeInsertBoolean(long j, long j2, boolean z);

    public static native void nativeInsertDate(long j, long j2, long j3);

    public static native void nativeInsertDouble(long j, long j2, double d);

    public static native void nativeInsertFloat(long j, long j2, float f);

    public static native void nativeInsertLong(long j, long j2, long j3);

    public static native void nativeInsertNull(long j, long j2);

    public static native void nativeInsertRow(long j, long j2, long j3);

    public static native void nativeInsertString(long j, long j2, @Nullable String str);

    public static native boolean nativeIsValid(long j);

    public static native void nativeMove(long j, long j2, long j3);

    public static native void nativeRemove(long j, long j2);

    public static native void nativeRemoveAll(long j);

    public static native void nativeSetBinary(long j, long j2, @Nullable byte[] bArr);

    public static native void nativeSetBoolean(long j, long j2, boolean z);

    public static native void nativeSetDate(long j, long j2, long j3);

    public static native void nativeSetDouble(long j, long j2, double d);

    public static native void nativeSetFloat(long j, long j2, float f);

    public static native void nativeSetLong(long j, long j2, long j3);

    public static native void nativeSetNull(long j, long j2);

    public static native void nativeSetRow(long j, long j2, long j3);

    public static native void nativeSetString(long j, long j2, @Nullable String str);

    public static native long nativeSize(long j);

    private native void nativeStartListening(long j);

    private native void nativeStopListening(long j);

    public void addBinary(@Nullable byte[] bArr) {
        nativeAddBinary(this.nativePtr, bArr);
    }

    public void addBoolean(boolean z) {
        nativeAddBoolean(this.nativePtr, z);
    }

    public void addDate(@Nullable Date date) {
        if (date == null) {
            nativeAddNull(this.nativePtr);
        } else {
            nativeAddDate(this.nativePtr, date.getTime());
        }
    }

    public void addDouble(double d) {
        nativeAddDouble(this.nativePtr, d);
    }

    public void addFloat(float f) {
        nativeAddFloat(this.nativePtr, f);
    }

    public <T> void addListener(T t, OrderedRealmCollectionChangeListener<T> orderedRealmCollectionChangeListener) {
        if (this.observerPairs.isEmpty()) {
            nativeStartListening(this.nativePtr);
        }
        this.observerPairs.add(new ObservableCollection.CollectionObserverPair(t, orderedRealmCollectionChangeListener));
    }

    public <T> void addListener(T t, RealmChangeListener<T> realmChangeListener) {
        addListener((OsList) t, (OrderedRealmCollectionChangeListener<OsList>) new ObservableCollection.RealmChangeListenerWrapper(realmChangeListener));
    }

    public void addLong(long j) {
        nativeAddLong(this.nativePtr, j);
    }

    public void addNull() {
        nativeAddNull(this.nativePtr);
    }

    public void addRow(long j) {
        nativeAddRow(this.nativePtr, j);
    }

    public void addString(@Nullable String str) {
        nativeAddString(this.nativePtr, str);
    }

    public void delete(long j) {
        nativeDelete(this.nativePtr, j);
    }

    public void deleteAll() {
        nativeDeleteAll(this.nativePtr);
    }

    @Override // io.realm.internal.NativeObject
    public long getNativeFinalizerPtr() {
        return nativeFinalizerPtr;
    }

    @Override // io.realm.internal.NativeObject
    public long getNativePtr() {
        return this.nativePtr;
    }

    public TableQuery getQuery() {
        return new TableQuery(this.context, this.targetTable, nativeGetQuery(this.nativePtr));
    }

    public Table getTargetTable() {
        return this.targetTable;
    }

    public UncheckedRow getUncheckedRow(long j) {
        return this.targetTable.getUncheckedRowByPointer(nativeGetRow(this.nativePtr, j));
    }

    @Nullable
    public Object getValue(long j) {
        return nativeGetValue(this.nativePtr, j);
    }

    public void insertBinary(long j, @Nullable byte[] bArr) {
        nativeInsertBinary(this.nativePtr, j, bArr);
    }

    public void insertBoolean(long j, boolean z) {
        nativeInsertBoolean(this.nativePtr, j, z);
    }

    public void insertDate(long j, @Nullable Date date) {
        if (date == null) {
            nativeInsertNull(this.nativePtr, j);
        } else {
            nativeInsertDate(this.nativePtr, j, date.getTime());
        }
    }

    public void insertDouble(long j, double d) {
        nativeInsertDouble(this.nativePtr, j, d);
    }

    public void insertFloat(long j, float f) {
        nativeInsertFloat(this.nativePtr, j, f);
    }

    public void insertLong(long j, long j2) {
        nativeInsertLong(this.nativePtr, j, j2);
    }

    public void insertNull(long j) {
        nativeInsertNull(this.nativePtr, j);
    }

    public void insertRow(long j, long j2) {
        nativeInsertRow(this.nativePtr, j, j2);
    }

    public void insertString(long j, @Nullable String str) {
        nativeInsertString(this.nativePtr, j, str);
    }

    public boolean isEmpty() {
        return nativeSize(this.nativePtr) <= 0;
    }

    public boolean isValid() {
        return nativeIsValid(this.nativePtr);
    }

    public void move(long j, long j2) {
        nativeMove(this.nativePtr, j, j2);
    }

    @Override // io.realm.internal.ObservableCollection
    public void notifyChangeListeners(long j) {
        OsCollectionChangeSet osCollectionChangeSet = new OsCollectionChangeSet(j, false);
        if (!osCollectionChangeSet.isEmpty()) {
            this.observerPairs.foreach(new ObservableCollection.Callback(osCollectionChangeSet));
        }
    }

    public void remove(long j) {
        nativeRemove(this.nativePtr, j);
    }

    public void removeAll() {
        nativeRemoveAll(this.nativePtr);
    }

    public void removeAllListeners() {
        this.observerPairs.clear();
        nativeStopListening(this.nativePtr);
    }

    public <T> void removeListener(T t, OrderedRealmCollectionChangeListener<T> orderedRealmCollectionChangeListener) {
        this.observerPairs.remove(t, orderedRealmCollectionChangeListener);
        if (this.observerPairs.isEmpty()) {
            nativeStopListening(this.nativePtr);
        }
    }

    public <T> void removeListener(T t, RealmChangeListener<T> realmChangeListener) {
        removeListener((OsList) t, (OrderedRealmCollectionChangeListener<OsList>) new ObservableCollection.RealmChangeListenerWrapper(realmChangeListener));
    }

    public void setBinary(long j, @Nullable byte[] bArr) {
        nativeSetBinary(this.nativePtr, j, bArr);
    }

    public void setBoolean(long j, boolean z) {
        nativeSetBoolean(this.nativePtr, j, z);
    }

    public void setDate(long j, @Nullable Date date) {
        if (date == null) {
            nativeSetNull(this.nativePtr, j);
        } else {
            nativeSetDate(this.nativePtr, j, date.getTime());
        }
    }

    public void setDouble(long j, double d) {
        nativeSetDouble(this.nativePtr, j, d);
    }

    public void setFloat(long j, float f) {
        nativeSetFloat(this.nativePtr, j, f);
    }

    public void setLong(long j, long j2) {
        nativeSetLong(this.nativePtr, j, j2);
    }

    public void setNull(long j) {
        nativeSetNull(this.nativePtr, j);
    }

    public void setRow(long j, long j2) {
        nativeSetRow(this.nativePtr, j, j2);
    }

    public void setString(long j, @Nullable String str) {
        nativeSetString(this.nativePtr, j, str);
    }

    public long size() {
        return nativeSize(this.nativePtr);
    }
}
