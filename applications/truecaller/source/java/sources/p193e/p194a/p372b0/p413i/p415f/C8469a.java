package p193e.p194a.p372b0.p413i.p415f;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.DatabaseErrorHandler;
import android.database.DatabaseUtils;
import android.database.DefaultDatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.log.AssertionUtil;
import java.util.Collection;
import p193e.p194a.p372b0.p413i.p414e.AbstractC8468e;
/* renamed from: e.a.b0.i.f.a */
/* loaded from: classes7-dex2jar.jar:e/a/b0/i/f/a.class */
public class C8469a extends SQLiteOpenHelper implements AbstractC8468e {

    /* renamed from: a */
    public final AbstractC8473c[] f26213a;

    /* renamed from: b */
    public final AbstractC8475d[] f26214b;

    /* renamed from: e.a.b0.i.f.a$b */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/i/f/a$b.class */
    public static class C8471b implements DatabaseErrorHandler {
        public C8471b(C8470a c8470a) {
        }

        @Override // android.database.DatabaseErrorHandler
        public void onCorruption(SQLiteDatabase sQLiteDatabase) {
            AssertionUtil.isTrue(false, sQLiteDatabase.toString());
            new DefaultDatabaseErrorHandler().onCorruption(sQLiteDatabase);
        }
    }

    public C8469a(Context context, String str, int i, AbstractC8473c[] abstractC8473cArr, AbstractC8475d[] abstractC8475dArr, DatabaseErrorHandler databaseErrorHandler) {
        super(context, str, null, i, new C8471b(null));
        this.f26213a = abstractC8473cArr;
        this.f26214b = abstractC8475dArr;
    }

    /* renamed from: d */
    public static void m28504d(Cursor cursor, Collection<ContentValues> collection) {
        if (cursor.getCount() < 1) {
            return;
        }
        cursor.moveToPosition(-1);
        while (cursor.moveToNext()) {
            ContentValues contentValues = new ContentValues();
            DatabaseUtils.cursorRowToContentValues(cursor, contentValues);
            if (contentValues.size() > 0) {
                collection.add(contentValues);
            }
        }
    }

    @Override // p193e.p194a.p372b0.p413i.p414e.AbstractC8468e
    /* renamed from: b */
    public SQLiteDatabase mo28505b(Context context) throws SQLiteException {
        return getWritableDatabase();
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        AbstractC8473c[] abstractC8473cArr;
        for (AbstractC8473c abstractC8473c : this.f26213a) {
            if (abstractC8473c != null) {
                abstractC8473c.m28494a(sQLiteDatabase);
            }
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onOpen(SQLiteDatabase sQLiteDatabase) {
        super.onOpen(sQLiteDatabase);
        sQLiteDatabase.setForeignKeyConstraintsEnabled(true);
        sQLiteDatabase.beginTransaction();
        try {
            C8472b.m28503a(sQLiteDatabase, ViewAction.VIEW);
            for (AbstractC8475d abstractC8475d : this.f26214b) {
                if (abstractC8475d != null) {
                    throw null;
                }
            }
            sQLiteDatabase.setTransactionSuccessful();
        } finally {
            sQLiteDatabase.endTransaction();
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        AbstractC8473c[] abstractC8473cArr;
        for (AbstractC8473c abstractC8473c : this.f26213a) {
            if (abstractC8473c != null) {
                abstractC8473c.mo28391b(sQLiteDatabase, i, i2);
            }
        }
    }
}
