package android.arch.persistence.p000db.framework;

import android.arch.persistence.p000db.SupportSQLiteStatement;
import android.database.sqlite.SQLiteStatement;
/* renamed from: android.arch.persistence.db.framework.FrameworkSQLiteStatement */
/* loaded from: classes-dex2jar.jar:android/arch/persistence/db/framework/FrameworkSQLiteStatement.class */
class FrameworkSQLiteStatement extends FrameworkSQLiteProgram implements SupportSQLiteStatement {
    private final SQLiteStatement mDelegate;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FrameworkSQLiteStatement(SQLiteStatement sQLiteStatement) {
        super(sQLiteStatement);
        this.mDelegate = sQLiteStatement;
    }

    @Override // android.arch.persistence.p000db.SupportSQLiteStatement
    public void execute() {
        this.mDelegate.execute();
    }

    @Override // android.arch.persistence.p000db.SupportSQLiteStatement
    public long executeInsert() {
        return this.mDelegate.executeInsert();
    }

    @Override // android.arch.persistence.p000db.SupportSQLiteStatement
    public int executeUpdateDelete() {
        return this.mDelegate.executeUpdateDelete();
    }

    @Override // android.arch.persistence.p000db.SupportSQLiteStatement
    public long simpleQueryForLong() {
        return this.mDelegate.simpleQueryForLong();
    }

    @Override // android.arch.persistence.p000db.SupportSQLiteStatement
    public String simpleQueryForString() {
        return this.mDelegate.simpleQueryForString();
    }
}
