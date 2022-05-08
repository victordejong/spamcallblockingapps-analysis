package android.arch.persistence.p000db.framework;

import android.arch.persistence.p000db.SupportSQLiteProgram;
import android.database.sqlite.SQLiteProgram;
/* renamed from: android.arch.persistence.db.framework.FrameworkSQLiteProgram */
/* loaded from: classes-dex2jar.jar:android/arch/persistence/db/framework/FrameworkSQLiteProgram.class */
class FrameworkSQLiteProgram implements SupportSQLiteProgram {
    private final SQLiteProgram mDelegate;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FrameworkSQLiteProgram(SQLiteProgram sQLiteProgram) {
        this.mDelegate = sQLiteProgram;
    }

    @Override // android.arch.persistence.p000db.SupportSQLiteProgram
    public void bindBlob(int i, byte[] bArr) {
        this.mDelegate.bindBlob(i, bArr);
    }

    @Override // android.arch.persistence.p000db.SupportSQLiteProgram
    public void bindDouble(int i, double d) {
        this.mDelegate.bindDouble(i, d);
    }

    @Override // android.arch.persistence.p000db.SupportSQLiteProgram
    public void bindLong(int i, long j) {
        this.mDelegate.bindLong(i, j);
    }

    @Override // android.arch.persistence.p000db.SupportSQLiteProgram
    public void bindNull(int i) {
        this.mDelegate.bindNull(i);
    }

    @Override // android.arch.persistence.p000db.SupportSQLiteProgram
    public void bindString(int i, String str) {
        this.mDelegate.bindString(i, str);
    }

    @Override // android.arch.persistence.p000db.SupportSQLiteProgram
    public void clearBindings() {
        this.mDelegate.clearBindings();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.mDelegate.close();
    }
}
