package android.arch.persistence.room;

import android.arch.persistence.p000db.SupportSQLiteOpenHelper;
import android.arch.persistence.room.RoomDatabase;
import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import java.util.List;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:android/arch/persistence/room/DatabaseConfiguration.class */
public class DatabaseConfiguration {
    public final boolean allowMainThreadQueries;
    @Nullable
    public final List<RoomDatabase.Callback> callbacks;
    @NonNull
    public final Context context;
    public final RoomDatabase.JournalMode journalMode;
    private final Set<Integer> mMigrationNotRequiredFrom;
    @NonNull
    public final RoomDatabase.MigrationContainer migrationContainer;
    @Nullable
    public final String name;
    public final boolean requireMigration;
    @NonNull
    public final SupportSQLiteOpenHelper.Factory sqliteOpenHelperFactory;

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public DatabaseConfiguration(@NonNull Context context, @Nullable String str, @NonNull SupportSQLiteOpenHelper.Factory factory, @NonNull RoomDatabase.MigrationContainer migrationContainer, @Nullable List<RoomDatabase.Callback> list, boolean z, RoomDatabase.JournalMode journalMode, boolean z2, @Nullable Set<Integer> set) {
        this.sqliteOpenHelperFactory = factory;
        this.context = context;
        this.name = str;
        this.migrationContainer = migrationContainer;
        this.callbacks = list;
        this.allowMainThreadQueries = z;
        this.journalMode = journalMode;
        this.requireMigration = z2;
        this.mMigrationNotRequiredFrom = set;
    }

    public boolean isMigrationRequiredFrom(int i) {
        return this.requireMigration && (this.mMigrationNotRequiredFrom == null || !this.mMigrationNotRequiredFrom.contains(Integer.valueOf(i)));
    }
}
