package io.realm.internal.core;

import io.realm.internal.NativeObject;
/* loaded from: classes3-dex2jar.jar:io/realm/internal/core/DescriptorOrdering.class */
public class DescriptorOrdering implements NativeObject {
    public static final long nativeFinalizerMethodPtr = nativeGetFinalizerMethodPtr();
    public boolean sortDefined = false;
    public boolean distinctDefined = false;
    public boolean limitDefined = false;
    public final long nativePtr = nativeCreate();

    public static native void nativeAppendDistinct(long j, QueryDescriptor queryDescriptor);

    public static native void nativeAppendInclude(long j, long j2);

    public static native void nativeAppendLimit(long j, long j2);

    public static native void nativeAppendSort(long j, QueryDescriptor queryDescriptor);

    public static native long nativeCreate();

    public static native long nativeGetFinalizerMethodPtr();

    public static native boolean nativeIsEmpty(long j);

    public void appendDistinct(QueryDescriptor queryDescriptor) {
        if (!this.distinctDefined) {
            nativeAppendDistinct(this.nativePtr, queryDescriptor);
            this.distinctDefined = true;
            return;
        }
        throw new IllegalStateException("A distinct field was already defined. It cannot be redefined");
    }

    public void appendIncludes(IncludeDescriptor includeDescriptor) {
        nativeAppendInclude(this.nativePtr, includeDescriptor.getNativePtr());
    }

    public void appendSort(QueryDescriptor queryDescriptor) {
        if (!this.sortDefined) {
            nativeAppendSort(this.nativePtr, queryDescriptor);
            this.sortDefined = true;
            return;
        }
        throw new IllegalStateException("A sorting order was already defined. It cannot be redefined");
    }

    @Override // io.realm.internal.NativeObject
    public long getNativeFinalizerPtr() {
        return nativeFinalizerMethodPtr;
    }

    @Override // io.realm.internal.NativeObject
    public long getNativePtr() {
        return this.nativePtr;
    }

    public boolean isEmpty() {
        return nativeIsEmpty(this.nativePtr);
    }

    public void setLimit(long j) {
        if (!this.limitDefined) {
            nativeAppendLimit(this.nativePtr, j);
            this.limitDefined = true;
            return;
        }
        throw new IllegalStateException("A limit was already set. It cannot be redefined.");
    }
}
