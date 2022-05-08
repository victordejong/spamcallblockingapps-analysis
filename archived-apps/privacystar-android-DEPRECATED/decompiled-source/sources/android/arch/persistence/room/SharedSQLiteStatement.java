package android.arch.persistence.room;

import android.arch.persistence.p000db.SupportSQLiteStatement;
import android.support.annotation.RestrictTo;
import java.util.concurrent.atomic.AtomicBoolean;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:android/arch/persistence/room/SharedSQLiteStatement.class */
public abstract class SharedSQLiteStatement {
    private final RoomDatabase mDatabase;
    private final AtomicBoolean mLock = new AtomicBoolean(false);
    private volatile SupportSQLiteStatement mStmt;

    public SharedSQLiteStatement(RoomDatabase roomDatabase) {
        this.mDatabase = roomDatabase;
    }

    private SupportSQLiteStatement createNewStatement() {
        return this.mDatabase.compileStatement(createQuery());
    }

    private SupportSQLiteStatement getStmt(boolean z) {
        SupportSQLiteStatement supportSQLiteStatement;
        if (z) {
            if (this.mStmt == null) {
                this.mStmt = createNewStatement();
            }
            supportSQLiteStatement = this.mStmt;
        } else {
            supportSQLiteStatement = createNewStatement();
        }
        return supportSQLiteStatement;
    }

    public SupportSQLiteStatement acquire() {
        assertNotMainThread();
        return getStmt(this.mLock.compareAndSet(false, true));
    }

    protected void assertNotMainThread() {
        this.mDatabase.assertNotMainThread();
    }

    protected abstract String createQuery();

    public void release(SupportSQLiteStatement supportSQLiteStatement) {
        if (supportSQLiteStatement == this.mStmt) {
            this.mLock.set(false);
        }
    }
}
