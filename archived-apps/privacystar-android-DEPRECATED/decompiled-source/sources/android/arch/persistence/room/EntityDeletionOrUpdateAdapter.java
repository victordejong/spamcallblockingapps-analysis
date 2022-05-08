package android.arch.persistence.room;

import android.arch.persistence.p000db.SupportSQLiteStatement;
import android.support.annotation.RestrictTo;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:android/arch/persistence/room/EntityDeletionOrUpdateAdapter.class */
public abstract class EntityDeletionOrUpdateAdapter<T> extends SharedSQLiteStatement {
    public EntityDeletionOrUpdateAdapter(RoomDatabase roomDatabase) {
        super(roomDatabase);
    }

    protected abstract void bind(SupportSQLiteStatement supportSQLiteStatement, T t);

    @Override // android.arch.persistence.room.SharedSQLiteStatement
    protected abstract String createQuery();

    public final int handle(T t) {
        SupportSQLiteStatement acquire = acquire();
        try {
            bind(acquire, t);
            return acquire.executeUpdateDelete();
        } finally {
            release(acquire);
        }
    }

    public final int handleMultiple(Iterable<T> iterable) {
        SupportSQLiteStatement acquire = acquire();
        int i = 0;
        try {
            for (T t : iterable) {
                bind(acquire, t);
                i += acquire.executeUpdateDelete();
            }
            return i;
        } finally {
            release(acquire);
        }
    }

    public final int handleMultiple(T[] tArr) {
        SupportSQLiteStatement acquire = acquire();
        try {
            int i = 0;
            for (T t : tArr) {
                bind(acquire, t);
                i += acquire.executeUpdateDelete();
            }
            return i;
        } finally {
            release(acquire);
        }
    }
}
