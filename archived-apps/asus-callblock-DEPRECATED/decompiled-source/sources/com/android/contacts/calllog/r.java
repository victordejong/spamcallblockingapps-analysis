package com.android.contacts.calllog;

import android.database.AbstractCursor;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DataSetObserver;
import com.android.a.a.a;
/* loaded from: classes-dex2jar.jar:com/android/contacts/calllog/r.class */
public final class r extends AbstractCursor {

    /* renamed from: a  reason: collision with root package name */
    private final Cursor f749a;

    /* renamed from: b  reason: collision with root package name */
    private final String f750b;
    private final Object c;

    public r(Cursor cursor, String str, Object obj) {
        this.f749a = cursor;
        this.f750b = str;
        this.c = obj;
    }

    @Override // android.database.AbstractCursor, android.database.Cursor, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        a.a(this.f749a);
        super.close();
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public final String[] getColumnNames() {
        String[] columnNames = this.f749a.getColumnNames();
        int length = columnNames.length;
        String[] strArr = new String[length + 1];
        System.arraycopy(columnNames, 0, strArr, 0, length);
        strArr[length] = this.f750b;
        return strArr;
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public final int getCount() {
        return this.f749a != null ? this.f749a.getCount() : 0;
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public final double getDouble(int i) {
        return i == this.f749a.getColumnCount() ? ((Double) this.c).doubleValue() : this.f749a.getDouble(i);
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public final float getFloat(int i) {
        return i == this.f749a.getColumnCount() ? ((Float) this.c).floatValue() : this.f749a.getFloat(i);
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public final int getInt(int i) {
        return i == this.f749a.getColumnCount() ? ((Integer) this.c).intValue() : this.f749a.getInt(i);
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public final long getLong(int i) {
        return i == this.f749a.getColumnCount() ? ((Long) this.c).longValue() : this.f749a.getLong(i);
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public final short getShort(int i) {
        return i == this.f749a.getColumnCount() ? ((Short) this.c).shortValue() : this.f749a.getShort(i);
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public final String getString(int i) {
        return i == this.f749a.getColumnCount() ? (String) this.c : this.f749a.getString(i);
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public final boolean isNull(int i) {
        return i == this.f749a.getColumnCount() ? this.c == null : this.f749a.isNull(i);
    }

    @Override // android.database.AbstractCursor, android.database.CrossProcessCursor
    public final boolean onMove(int i, int i2) {
        return this.f749a.moveToPosition(i2);
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public final void registerContentObserver(ContentObserver contentObserver) {
        this.f749a.registerContentObserver(contentObserver);
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public final void registerDataSetObserver(DataSetObserver dataSetObserver) {
        this.f749a.registerDataSetObserver(dataSetObserver);
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public final void unregisterContentObserver(ContentObserver contentObserver) {
        this.f749a.unregisterContentObserver(contentObserver);
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public final void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
        this.f749a.unregisterDataSetObserver(dataSetObserver);
    }
}
