package io.realm.internal;

import io.realm.OrderedCollectionChangeSet;
import io.realm.internal.sync.OsSubscription;
import java.util.Arrays;
import javax.annotation.Nullable;
/* loaded from: classes3-dex2jar.jar:io/realm/internal/OsCollectionChangeSet.class */
public class OsCollectionChangeSet implements OrderedCollectionChangeSet, NativeObject {
    public static final int MAX_ARRAY_LENGTH = 2147483639;
    public static final int TYPE_DELETION = 0;
    public static final int TYPE_INSERTION = 1;
    public static final int TYPE_MODIFICATION = 2;
    public static long finalizerPtr = nativeGetFinalizerPtr();
    public final boolean firstAsyncCallback;
    public final boolean isPartialRealm;
    public final long nativePtr;
    public final OsSubscription subscription;

    public OsCollectionChangeSet(long j, boolean z) {
        this(j, z, null, false);
    }

    public OsCollectionChangeSet(long j, boolean z, @Nullable OsSubscription osSubscription, boolean z2) {
        this.nativePtr = j;
        this.firstAsyncCallback = z;
        this.subscription = osSubscription;
        this.isPartialRealm = z2;
        NativeContext.dummyContext.addReference(this);
    }

    private OrderedCollectionChangeSet.Range[] longArrayToRangeArray(int[] iArr) {
        if (iArr == null) {
            return new OrderedCollectionChangeSet.Range[0];
        }
        OrderedCollectionChangeSet.Range[] rangeArr = new OrderedCollectionChangeSet.Range[iArr.length / 2];
        for (int i = 0; i < rangeArr.length; i++) {
            int i2 = i * 2;
            rangeArr[i] = new OrderedCollectionChangeSet.Range(iArr[i2], iArr[i2 + 1]);
        }
        return rangeArr;
    }

    public static native long nativeGetFinalizerPtr();

    public static native int[] nativeGetIndices(long j, int i);

    public static native int[] nativeGetRanges(long j, int i);

    @Override // io.realm.OrderedCollectionChangeSet
    public OrderedCollectionChangeSet.Range[] getChangeRanges() {
        return longArrayToRangeArray(nativeGetRanges(this.nativePtr, 2));
    }

    @Override // io.realm.OrderedCollectionChangeSet
    public int[] getChanges() {
        return nativeGetIndices(this.nativePtr, 2);
    }

    @Override // io.realm.OrderedCollectionChangeSet
    public OrderedCollectionChangeSet.Range[] getDeletionRanges() {
        return longArrayToRangeArray(nativeGetRanges(this.nativePtr, 0));
    }

    @Override // io.realm.OrderedCollectionChangeSet
    public int[] getDeletions() {
        return nativeGetIndices(this.nativePtr, 0);
    }

    @Override // io.realm.OrderedCollectionChangeSet
    public Throwable getError() {
        OsSubscription osSubscription = this.subscription;
        if (osSubscription == null || osSubscription.getState() != OsSubscription.SubscriptionState.ERROR) {
            return null;
        }
        return this.subscription.getError();
    }

    @Override // io.realm.OrderedCollectionChangeSet
    public OrderedCollectionChangeSet.Range[] getInsertionRanges() {
        return longArrayToRangeArray(nativeGetRanges(this.nativePtr, 1));
    }

    @Override // io.realm.OrderedCollectionChangeSet
    public int[] getInsertions() {
        return nativeGetIndices(this.nativePtr, 1);
    }

    public long getNativeFinalizerPtr() {
        return finalizerPtr;
    }

    public long getNativePtr() {
        return this.nativePtr;
    }

    @Override // io.realm.OrderedCollectionChangeSet
    public OrderedCollectionChangeSet.State getState() {
        throw new UnsupportedOperationException("This method should be overridden in a subclass");
    }

    @Override // io.realm.OrderedCollectionChangeSet
    public boolean isCompleteResult() {
        throw new UnsupportedOperationException("This method should be overridden in a subclass");
    }

    public boolean isEmpty() {
        return this.nativePtr == 0;
    }

    public boolean isFirstAsyncCallback() {
        return this.firstAsyncCallback;
    }

    public boolean isRemoteDataLoaded() {
        boolean z = true;
        if (!this.isPartialRealm) {
            return true;
        }
        OsSubscription osSubscription = this.subscription;
        if (osSubscription == null) {
            return false;
        }
        if (osSubscription.getState() != OsSubscription.SubscriptionState.COMPLETE) {
            z = false;
        }
        return z;
    }

    public String toString() {
        if (this.nativePtr == 0) {
            return "Change set is empty.";
        }
        return "Deletion Ranges: " + Arrays.toString(getDeletionRanges()) + "\nInsertion Ranges: " + Arrays.toString(getInsertionRanges()) + "\nChange Ranges: " + Arrays.toString(getChangeRanges());
    }
}
