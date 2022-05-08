package net.sqlcipher;

import android.util.Log;
import java.io.File;
import net.sqlcipher.database.SQLiteDatabase;
/* loaded from: classes3-dex2jar.jar:net/sqlcipher/DefaultDatabaseErrorHandler.class */
public final class DefaultDatabaseErrorHandler implements DatabaseErrorHandler {
    public final String TAG = DefaultDatabaseErrorHandler.class.getSimpleName();

    private void deleteDatabaseFile(String str) {
        if (!str.equalsIgnoreCase(SQLiteDatabase.MEMORY) && str.trim().length() != 0) {
            Log.e(this.TAG, "deleting the database file: " + str);
            try {
                new File(str).delete();
            } catch (Exception e) {
                String str2 = "delete failed: " + e.getMessage();
            }
        }
    }

    @Override // net.sqlcipher.DatabaseErrorHandler
    public void onCorruption(SQLiteDatabase sQLiteDatabase) {
        String str = this.TAG;
        Log.e(str, "Corruption reported by sqlite on database, deleting: " + sQLiteDatabase.getPath());
        if (sQLiteDatabase.isOpen()) {
            Log.e(this.TAG, "Database object for corrupted database is already open, closing");
            try {
                sQLiteDatabase.close();
            } catch (Exception e) {
                Log.e(this.TAG, "Exception closing Database object for corrupted database, ignored", e);
            }
        }
        deleteDatabaseFile(sQLiteDatabase.getPath());
    }
}
