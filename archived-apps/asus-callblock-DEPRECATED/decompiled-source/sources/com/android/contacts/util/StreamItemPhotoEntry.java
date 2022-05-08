package com.android.contacts.util;

import android.database.Cursor;
import com.android.contacts.activities.PhotoSelectionActivity;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/StreamItemPhotoEntry.class */
public class StreamItemPhotoEntry implements Comparable<StreamItemPhotoEntry> {
    private final int mFileSize;
    private final int mHeight;
    private final long mId;
    private final long mPhotoFileId;
    private final String mPhotoUri;
    private final int mSortIndex;
    private final int mWidth;

    public StreamItemPhotoEntry(long j, int i, long j2, String str, int i2, int i3, int i4) {
        this.mId = j;
        this.mSortIndex = i;
        this.mPhotoFileId = j2;
        this.mPhotoUri = str;
        this.mHeight = i2;
        this.mWidth = i3;
        this.mFileSize = i4;
    }

    public StreamItemPhotoEntry(Cursor cursor) {
        this.mId = getLong(cursor, "_id");
        this.mSortIndex = getInt(cursor, "sort_index", -1);
        this.mPhotoFileId = getLong(cursor, "photo_file_id");
        this.mPhotoUri = getString(cursor, PhotoSelectionActivity.PHOTO_URI);
        this.mHeight = getInt(cursor, "height", -1);
        this.mWidth = getInt(cursor, "width", -1);
        this.mFileSize = getInt(cursor, "filesize", -1);
    }

    private static int getInt(Cursor cursor, String str, int i) {
        int columnIndex = cursor.getColumnIndex(str);
        if (!cursor.isNull(columnIndex)) {
            i = cursor.getInt(columnIndex);
        }
        return i;
    }

    private static long getLong(Cursor cursor, String str) {
        return cursor.getLong(cursor.getColumnIndex(str));
    }

    private static String getString(Cursor cursor, String str) {
        return cursor.getString(cursor.getColumnIndex(str));
    }

    public int compareTo(StreamItemPhotoEntry streamItemPhotoEntry) {
        int i;
        if (this.mSortIndex == streamItemPhotoEntry.mSortIndex) {
            i = 0;
            if (this.mSortIndex == -1) {
                i = this.mId == streamItemPhotoEntry.mId ? 0 : this.mId < streamItemPhotoEntry.mId ? -1 : 1;
            }
        } else if (this.mSortIndex == -1) {
            i = 1;
        } else if (streamItemPhotoEntry.mSortIndex == -1) {
            i = -1;
        } else {
            i = 0;
            if (this.mSortIndex != streamItemPhotoEntry.mSortIndex) {
                i = this.mSortIndex < streamItemPhotoEntry.mSortIndex ? -1 : 1;
            }
        }
        return i;
    }

    public int getFileSize() {
        return this.mFileSize;
    }

    public int getHeight() {
        return this.mHeight;
    }

    public long getId() {
        return this.mId;
    }

    public long getPhotoFileId() {
        return this.mPhotoFileId;
    }

    public String getPhotoUri() {
        return this.mPhotoUri;
    }

    public int getSortIndex() {
        return this.mSortIndex;
    }

    public int getWidth() {
        return this.mWidth;
    }
}
