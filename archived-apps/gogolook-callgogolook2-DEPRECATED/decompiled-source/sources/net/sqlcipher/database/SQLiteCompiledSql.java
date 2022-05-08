package net.sqlcipher.database;
/* loaded from: classes3-dex2jar.jar:net/sqlcipher/database/SQLiteCompiledSql.class */
public class SQLiteCompiledSql {
    public static final String TAG = "SQLiteCompiledSql";
    public SQLiteDatabase mDatabase;
    public String mSqlStmt;
    public Throwable mStackTrace;
    public long nHandle;
    public long nStatement = 0;
    public boolean mInUse = false;

    public SQLiteCompiledSql(SQLiteDatabase sQLiteDatabase, String str) {
        this.nHandle = 0L;
        this.mSqlStmt = null;
        this.mStackTrace = null;
        if (sQLiteDatabase.isOpen()) {
            this.mDatabase = sQLiteDatabase;
            this.mSqlStmt = str;
            this.mStackTrace = new DatabaseObjectNotClosedException().fillInStackTrace();
            this.nHandle = sQLiteDatabase.mNativeHandle;
            compile(str, true);
            return;
        }
        throw new IllegalStateException("database " + sQLiteDatabase.getPath() + " already closed");
    }

    private void compile(String str, boolean z) {
        if (!this.mDatabase.isOpen()) {
            throw new IllegalStateException("database " + this.mDatabase.getPath() + " already closed");
        } else if (z) {
            this.mDatabase.lock();
            try {
                native_compile(str);
            } finally {
                this.mDatabase.unlock();
            }
        }
    }

    private final native void native_compile(String str);

    private final native void native_finalize();

    public boolean acquire() {
        synchronized (this) {
            if (this.mInUse) {
                return false;
            }
            this.mInUse = true;
            if (SQLiteDebug.DEBUG_ACTIVE_CURSOR_FINALIZATION) {
                String str = "Acquired DbObj (id#" + this.nStatement + ") from DB cache";
            }
            return true;
        }
    }

    public void finalize() throws Throwable {
        try {
            if (this.nStatement != 0) {
                if (SQLiteDebug.DEBUG_ACTIVE_CURSOR_FINALIZATION) {
                    String str = "** warning ** Finalized DbObj (id#" + this.nStatement + ")";
                }
                int length = this.mSqlStmt.length();
                StringBuilder sb = new StringBuilder();
                sb.append("Releasing statement in a finalizer. Please ensure that you explicitly call close() on your cursor: ");
                String str2 = this.mSqlStmt;
                int i = length;
                if (length > 100) {
                    i = 100;
                }
                sb.append(str2.substring(0, i));
                sb.toString();
                releaseSqlStatement();
            }
        } finally {
            super.finalize();
        }
    }

    public void release() {
        synchronized (this) {
            if (SQLiteDebug.DEBUG_ACTIVE_CURSOR_FINALIZATION) {
                String str = "Released DbObj (id#" + this.nStatement + ") back to DB cache";
            }
            this.mInUse = false;
        }
    }

    public void releaseSqlStatement() {
        if (this.nStatement != 0) {
            if (SQLiteDebug.DEBUG_ACTIVE_CURSOR_FINALIZATION) {
                String str = "closed and deallocated DbObj (id#" + this.nStatement + ")";
            }
            try {
                this.mDatabase.lock();
                native_finalize();
                this.nStatement = 0L;
            } finally {
                this.mDatabase.unlock();
            }
        }
    }
}
