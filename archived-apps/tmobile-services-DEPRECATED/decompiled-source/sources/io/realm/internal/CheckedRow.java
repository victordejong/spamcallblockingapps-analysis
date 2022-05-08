package io.realm.internal;

import io.realm.RealmFieldType;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/CheckedRow.class */
public class CheckedRow extends UncheckedRow {
    private CheckedRow(NativeContext nativeContext, Table table, long j) {
        super(nativeContext, table, j);
    }

    public CheckedRow(UncheckedRow uncheckedRow) {
        super(uncheckedRow);
    }

    /* renamed from: d */
    public static CheckedRow m2838d(NativeContext nativeContext, Table table, long j) {
        return new CheckedRow(nativeContext, table, table.nativeGetRowPtr(table.getNativePtr(), j));
    }

    /* renamed from: e */
    public static CheckedRow m2837e(UncheckedRow uncheckedRow) {
        return new CheckedRow(uncheckedRow);
    }

    @Override // io.realm.internal.UncheckedRow, io.realm.internal.Row
    public Row freeze(OsSharedRealm osSharedRealm) {
        return !isValid() ? InvalidRow.INSTANCE : new CheckedRow(this.f20198f, this.f20199g.m2643j(osSharedRealm), nativeFreeze(getNativePtr(), osSharedRealm.getNativePtr()));
    }

    @Override // io.realm.internal.UncheckedRow, io.realm.internal.Row
    public OsList getModelList(long j) {
        if (getTable().m2635r(j) == RealmFieldType.LIST) {
            return super.getModelList(j);
        }
        throw new IllegalArgumentException(String.format(Locale.US, "Field '%s' is not a 'RealmList'.", getTable().m2637p(j)));
    }

    @Override // io.realm.internal.UncheckedRow, io.realm.internal.Row
    public OsList getValueList(long j, RealmFieldType realmFieldType) {
        if (realmFieldType == getTable().m2635r(j)) {
            return super.getValueList(j, realmFieldType);
        }
        throw new IllegalArgumentException(String.format(Locale.US, "The type of field '%1$s' is not 'RealmFieldType.%2$s'.", getTable().m2637p(j), realmFieldType.name()));
    }

    @Override // io.realm.internal.UncheckedRow, io.realm.internal.Row
    public boolean isNull(long j) {
        return super.isNull(j);
    }

    @Override // io.realm.internal.UncheckedRow, io.realm.internal.Row
    public boolean isNullLink(long j) {
        RealmFieldType columnType = getColumnType(j);
        if (columnType == RealmFieldType.OBJECT || columnType == RealmFieldType.LIST) {
            return super.isNullLink(j);
        }
        return false;
    }

    @Override // io.realm.internal.UncheckedRow
    protected native boolean nativeGetBoolean(long j, long j2);

    @Override // io.realm.internal.UncheckedRow
    protected native byte[] nativeGetByteArray(long j, long j2);

    @Override // io.realm.internal.UncheckedRow
    protected native long nativeGetColumnKey(long j, String str);

    @Override // io.realm.internal.UncheckedRow
    protected native int nativeGetColumnType(long j, long j2);

    @Override // io.realm.internal.UncheckedRow
    protected native double nativeGetDouble(long j, long j2);

    @Override // io.realm.internal.UncheckedRow
    protected native float nativeGetFloat(long j, long j2);

    @Override // io.realm.internal.UncheckedRow
    protected native long nativeGetLink(long j, long j2);

    @Override // io.realm.internal.UncheckedRow
    protected native long nativeGetLong(long j, long j2);

    @Override // io.realm.internal.UncheckedRow
    protected native String nativeGetString(long j, long j2);

    @Override // io.realm.internal.UncheckedRow
    protected native long nativeGetTimestamp(long j, long j2);

    @Override // io.realm.internal.UncheckedRow
    protected native boolean nativeIsNullLink(long j, long j2);

    @Override // io.realm.internal.UncheckedRow
    protected native void nativeNullifyLink(long j, long j2);

    @Override // io.realm.internal.UncheckedRow
    protected native void nativeSetBoolean(long j, long j2, boolean z);

    @Override // io.realm.internal.UncheckedRow
    protected native void nativeSetByteArray(long j, long j2, byte[] bArr);

    @Override // io.realm.internal.UncheckedRow
    protected native void nativeSetDouble(long j, long j2, double d);

    @Override // io.realm.internal.UncheckedRow
    protected native void nativeSetFloat(long j, long j2, float f);

    @Override // io.realm.internal.UncheckedRow
    protected native void nativeSetLink(long j, long j2, long j3);

    @Override // io.realm.internal.UncheckedRow
    protected native void nativeSetLong(long j, long j2, long j3);

    @Override // io.realm.internal.UncheckedRow
    protected native void nativeSetString(long j, long j2, String str);

    @Override // io.realm.internal.UncheckedRow
    protected native void nativeSetTimestamp(long j, long j2, long j3);

    @Override // io.realm.internal.UncheckedRow, io.realm.internal.Row
    public void setNull(long j) {
        if (getColumnType(j) == RealmFieldType.BINARY) {
            super.setBinaryByteArray(j, null);
        } else {
            super.setNull(j);
        }
    }
}
