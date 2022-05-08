package net.sqlcipher;

import android.content.ContentResolver;
import android.database.CharArrayBuffer;
import android.database.ContentObservable;
import android.database.ContentObserver;
import android.database.CrossProcessCursor;
import android.database.CursorWindow;
import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:net/sqlcipher/AbstractCursor.class */
public abstract class AbstractCursor implements CrossProcessCursor, Cursor {
    public static final String TAG = "Cursor";
    public ContentResolver mContentResolver;
    public Uri mNotifyUri;
    public ContentObserver mSelfObserver;
    public boolean mSelfObserverRegistered;
    public DataSetObservable mDataSetObservable = new DataSetObservable();
    public ContentObservable mContentObservable = new ContentObservable();
    public Bundle mExtras = Bundle.EMPTY;
    public boolean mClosed = false;
    public final Object mSelfObserverLock = new Object();
    public int mPos = -1;
    public int mRowIdColumnIndex = -1;
    public Long mCurrentRowID = null;
    public HashMap<Long, Map<String, Object>> mUpdatedRows = new HashMap<>();

    /* loaded from: classes3-dex2jar.jar:net/sqlcipher/AbstractCursor$SelfContentObserver.class */
    public static class SelfContentObserver extends ContentObserver {
        public WeakReference<AbstractCursor> mCursor;

        public SelfContentObserver(AbstractCursor abstractCursor) {
            super(null);
            this.mCursor = new WeakReference<>(abstractCursor);
        }

        @Override // android.database.ContentObserver
        public boolean deliverSelfNotifications() {
            return false;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            AbstractCursor abstractCursor = this.mCursor.get();
            if (abstractCursor != null) {
                abstractCursor.onChange(false);
            }
        }
    }

    public void abortUpdates() {
        synchronized (this.mUpdatedRows) {
            this.mUpdatedRows.clear();
        }
    }

    public void checkPosition() {
        if (-1 == this.mPos || getCount() == this.mPos) {
            throw new CursorIndexOutOfBoundsException(this.mPos, getCount());
        }
    }

    @Override // android.database.Cursor, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.mClosed = true;
        this.mContentObservable.unregisterAll();
        deactivateInternal();
    }

    public boolean commitUpdates() {
        return commitUpdates(null);
    }

    public boolean commitUpdates(Map<? extends Long, ? extends Map<String, Object>> map) {
        return false;
    }

    @Override // android.database.Cursor
    public void copyStringToBuffer(int i, CharArrayBuffer charArrayBuffer) {
        String string = getString(i);
        if (string != null) {
            char[] cArr = charArrayBuffer.data;
            if (cArr == null || cArr.length < string.length()) {
                charArrayBuffer.data = string.toCharArray();
            } else {
                string.getChars(0, string.length(), cArr, 0);
            }
            charArrayBuffer.sizeCopied = string.length();
            return;
        }
        charArrayBuffer.sizeCopied = 0;
    }

    @Override // android.database.Cursor
    public void deactivate() {
        deactivateInternal();
    }

    public void deactivateInternal() {
        ContentObserver contentObserver = this.mSelfObserver;
        if (contentObserver != null) {
            this.mContentResolver.unregisterContentObserver(contentObserver);
            this.mSelfObserverRegistered = false;
        }
        this.mDataSetObservable.notifyInvalidated();
    }

    public boolean deleteRow() {
        return false;
    }

    @Override // android.database.CrossProcessCursor
    public void fillWindow(int i, CursorWindow cursorWindow) {
        DatabaseUtils.cursorFillWindow(this, i, cursorWindow);
    }

    public void finalize() {
        ContentObserver contentObserver = this.mSelfObserver;
        if (contentObserver != null && this.mSelfObserverRegistered) {
            this.mContentResolver.unregisterContentObserver(contentObserver);
        }
    }

    @Override // android.database.Cursor
    public byte[] getBlob(int i) {
        throw new UnsupportedOperationException("getBlob is not supported");
    }

    @Override // android.database.Cursor
    public int getColumnCount() {
        return getColumnNames().length;
    }

    @Override // android.database.Cursor
    public int getColumnIndex(String str) {
        int lastIndexOf = str.lastIndexOf(46);
        String str2 = str;
        if (lastIndexOf != -1) {
            Exception exc = new Exception();
            Log.e("Cursor", "requesting column name with table name -- " + str, exc);
            str2 = str.substring(lastIndexOf + 1);
        }
        String[] columnNames = getColumnNames();
        int length = columnNames.length;
        for (int i = 0; i < length; i++) {
            if (columnNames[i].equalsIgnoreCase(str2)) {
                return i;
            }
        }
        return -1;
    }

    @Override // android.database.Cursor
    public int getColumnIndexOrThrow(String str) {
        int columnIndex = getColumnIndex(str);
        if (columnIndex >= 0) {
            return columnIndex;
        }
        throw new IllegalArgumentException("column '" + str + "' does not exist");
    }

    @Override // android.database.Cursor
    public String getColumnName(int i) {
        return getColumnNames()[i];
    }

    @Override // android.database.Cursor
    public abstract String[] getColumnNames();

    @Override // android.database.Cursor
    public abstract int getCount();

    public DataSetObservable getDataSetObservable() {
        return this.mDataSetObservable;
    }

    @Override // android.database.Cursor
    public abstract double getDouble(int i);

    @Override // android.database.Cursor
    public Bundle getExtras() {
        return this.mExtras;
    }

    @Override // android.database.Cursor
    public abstract float getFloat(int i);

    @Override // android.database.Cursor
    public abstract int getInt(int i);

    @Override // android.database.Cursor
    public abstract long getLong(int i);

    @Override // android.database.Cursor
    public Uri getNotificationUri() {
        return this.mNotifyUri;
    }

    @Override // android.database.Cursor
    public final int getPosition() {
        return this.mPos;
    }

    @Override // android.database.Cursor
    public abstract short getShort(int i);

    @Override // android.database.Cursor
    public abstract String getString(int i);

    @Override // android.database.Cursor, net.sqlcipher.Cursor
    public abstract int getType(int i);

    public Object getUpdatedField(int i) {
        return this.mUpdatedRows.get(this.mCurrentRowID).get(getColumnNames()[i]);
    }

    @Override // android.database.Cursor
    public boolean getWantsAllOnMoveCalls() {
        return false;
    }

    @Override // android.database.CrossProcessCursor
    public CursorWindow getWindow() {
        return null;
    }

    public boolean hasUpdates() {
        boolean z;
        synchronized (this.mUpdatedRows) {
            z = this.mUpdatedRows.size() > 0;
        }
        return z;
    }

    @Override // android.database.Cursor
    public final boolean isAfterLast() {
        boolean z = true;
        if (getCount() == 0) {
            return true;
        }
        if (this.mPos != getCount()) {
            z = false;
        }
        return z;
    }

    @Override // android.database.Cursor
    public final boolean isBeforeFirst() {
        boolean z = true;
        if (getCount() == 0) {
            return true;
        }
        if (this.mPos != -1) {
            z = false;
        }
        return z;
    }

    @Override // android.database.Cursor
    public boolean isClosed() {
        return this.mClosed;
    }

    public boolean isFieldUpdated(int i) {
        Map<String, Object> map;
        return this.mRowIdColumnIndex != -1 && this.mUpdatedRows.size() > 0 && (map = this.mUpdatedRows.get(this.mCurrentRowID)) != null && map.containsKey(getColumnNames()[i]);
    }

    @Override // android.database.Cursor
    public final boolean isFirst() {
        return this.mPos == 0 && getCount() != 0;
    }

    @Override // android.database.Cursor
    public final boolean isLast() {
        int count = getCount();
        return this.mPos == count - 1 && count != 0;
    }

    @Override // android.database.Cursor
    public abstract boolean isNull(int i);

    @Override // android.database.Cursor
    public final boolean move(int i) {
        return moveToPosition(this.mPos + i);
    }

    @Override // android.database.Cursor
    public final boolean moveToFirst() {
        return moveToPosition(0);
    }

    @Override // android.database.Cursor
    public final boolean moveToLast() {
        return moveToPosition(getCount() - 1);
    }

    @Override // android.database.Cursor
    public final boolean moveToNext() {
        return moveToPosition(this.mPos + 1);
    }

    @Override // android.database.Cursor
    public final boolean moveToPosition(int i) {
        int count = getCount();
        if (i >= count) {
            this.mPos = count;
            return false;
        } else if (i < 0) {
            this.mPos = -1;
            return false;
        } else {
            int i2 = this.mPos;
            if (i == i2) {
                return true;
            }
            boolean onMove = onMove(i2, i);
            if (!onMove) {
                this.mPos = -1;
            } else {
                this.mPos = i;
                int i3 = this.mRowIdColumnIndex;
                if (i3 != -1) {
                    this.mCurrentRowID = Long.valueOf(getLong(i3));
                }
            }
            return onMove;
        }
    }

    @Override // android.database.Cursor
    public final boolean moveToPrevious() {
        return moveToPosition(this.mPos - 1);
    }

    public void notifyDataSetChange() {
        this.mDataSetObservable.notifyChanged();
    }

    public void onChange(boolean z) {
        synchronized (this.mSelfObserverLock) {
            this.mContentObservable.dispatchChange(z);
            if (this.mNotifyUri != null && z) {
                this.mContentResolver.notifyChange(this.mNotifyUri, this.mSelfObserver);
            }
        }
    }

    @Override // android.database.CrossProcessCursor
    public boolean onMove(int i, int i2) {
        return true;
    }

    @Override // android.database.Cursor
    public void registerContentObserver(ContentObserver contentObserver) {
        this.mContentObservable.registerObserver(contentObserver);
    }

    @Override // android.database.Cursor
    public void registerDataSetObserver(DataSetObserver dataSetObserver) {
        this.mDataSetObservable.registerObserver(dataSetObserver);
    }

    @Override // android.database.Cursor
    public boolean requery() {
        ContentObserver contentObserver = this.mSelfObserver;
        if (contentObserver != null && !this.mSelfObserverRegistered) {
            this.mContentResolver.registerContentObserver(this.mNotifyUri, true, contentObserver);
            this.mSelfObserverRegistered = true;
        }
        this.mDataSetObservable.notifyChanged();
        return true;
    }

    @Override // android.database.Cursor
    public Bundle respond(Bundle bundle) {
        return Bundle.EMPTY;
    }

    @Override // android.database.Cursor
    public void setExtras(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = Bundle.EMPTY;
        }
        this.mExtras = bundle2;
    }

    @Override // android.database.Cursor
    public void setNotificationUri(ContentResolver contentResolver, Uri uri) {
        synchronized (this.mSelfObserverLock) {
            this.mNotifyUri = uri;
            this.mContentResolver = contentResolver;
            if (this.mSelfObserver != null) {
                this.mContentResolver.unregisterContentObserver(this.mSelfObserver);
            }
            this.mSelfObserver = new SelfContentObserver(this);
            this.mContentResolver.registerContentObserver(this.mNotifyUri, true, this.mSelfObserver);
            this.mSelfObserverRegistered = true;
        }
    }

    public boolean supportsUpdates() {
        return this.mRowIdColumnIndex != -1;
    }

    @Override // android.database.Cursor
    public void unregisterContentObserver(ContentObserver contentObserver) {
        if (!this.mClosed) {
            this.mContentObservable.unregisterObserver(contentObserver);
        }
    }

    @Override // android.database.Cursor
    public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
        this.mDataSetObservable.unregisterObserver(dataSetObserver);
    }

    public boolean update(int i, Object obj) {
        if (!supportsUpdates()) {
            return false;
        }
        Long valueOf = Long.valueOf(getLong(this.mRowIdColumnIndex));
        if (valueOf != null) {
            synchronized (this.mUpdatedRows) {
                Map<String, Object> map = this.mUpdatedRows.get(valueOf);
                Map<String, Object> map2 = map;
                if (map == null) {
                    map2 = new HashMap<>();
                    this.mUpdatedRows.put(valueOf, map2);
                }
                map2.put(getColumnNames()[i], obj);
            }
            return true;
        }
        throw new IllegalStateException("null rowid. mRowIdColumnIndex = " + this.mRowIdColumnIndex);
    }

    public boolean updateBlob(int i, byte[] bArr) {
        return update(i, bArr);
    }

    public boolean updateDouble(int i, double d) {
        return update(i, Double.valueOf(d));
    }

    public boolean updateFloat(int i, float f) {
        return update(i, Float.valueOf(f));
    }

    public boolean updateInt(int i, int i2) {
        return update(i, Integer.valueOf(i2));
    }

    public boolean updateLong(int i, long j) {
        return update(i, Long.valueOf(j));
    }

    public boolean updateShort(int i, short s) {
        return update(i, Short.valueOf(s));
    }

    public boolean updateString(int i, String str) {
        return update(i, str);
    }

    public boolean updateToNull(int i) {
        return update(i, null);
    }
}
