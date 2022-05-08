package com.amazonaws.mobileconnectors.p016s3.transferutility;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
/* renamed from: com.amazonaws.mobileconnectors.s3.transferutility.TransferDatabaseHelper */
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/TransferDatabaseHelper.class */
public class TransferDatabaseHelper extends SQLiteOpenHelper {
    public int version;

    public TransferDatabaseHelper(Context context) {
        this(context, 4);
    }

    public TransferDatabaseHelper(Context context, int i) {
        super(context, "awss3transfertable.db", (SQLiteDatabase.CursorFactory) null, i);
        this.version = i;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        TransferTable.onCreate(sQLiteDatabase, this.version);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        TransferTable.onUpgrade(sQLiteDatabase, i, i2);
    }
}
