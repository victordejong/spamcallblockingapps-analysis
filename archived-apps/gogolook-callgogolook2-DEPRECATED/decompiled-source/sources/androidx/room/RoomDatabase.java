package androidx.room;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.content.Context;
import android.database.Cursor;
import android.os.Build;
import android.os.CancellationSignal;
import android.os.Looper;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.WorkerThread;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.arch.core.executor.ArchTaskExecutor;
import androidx.room.migration.Migration;
import androidx.room.util.SneakyThrow;
import androidx.sqlite.p008db.SimpleSQLiteQuery;
import androidx.sqlite.p008db.SupportSQLiteDatabase;
import androidx.sqlite.p008db.SupportSQLiteOpenHelper;
import androidx.sqlite.p008db.SupportSQLiteQuery;
import androidx.sqlite.p008db.SupportSQLiteStatement;
import androidx.sqlite.p008db.framework.FrameworkSQLiteOpenHelperFactory;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
/* loaded from: classes-dex2jar.jar:androidx/room/RoomDatabase.class */
public abstract class RoomDatabase {
    public static final String DB_IMPL_SUFFIX = "_Impl";
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static final int MAX_BIND_PARAMETER_CNT = 999;
    public boolean mAllowMainThreadQueries;
    @Nullable
    @Deprecated
    public List<Callback> mCallbacks;
    @Deprecated
    public volatile SupportSQLiteDatabase mDatabase;
    public SupportSQLiteOpenHelper mOpenHelper;
    public Executor mQueryExecutor;
    public Executor mTransactionExecutor;
    public boolean mWriteAheadLoggingEnabled;
    public final ReentrantReadWriteLock mCloseLock = new ReentrantReadWriteLock();
    public final ThreadLocal<Integer> mSuspendingTransactionId = new ThreadLocal<>();
    public final Map<String, Object> mBackingFieldMap = new ConcurrentHashMap();
    public final InvalidationTracker mInvalidationTracker = createInvalidationTracker();

    /* loaded from: classes-dex2jar.jar:androidx/room/RoomDatabase$Builder.class */
    public static class Builder<T extends RoomDatabase> {
        public boolean mAllowDestructiveMigrationOnDowngrade;
        public boolean mAllowMainThreadQueries;
        public ArrayList<Callback> mCallbacks;
        public final Context mContext;
        public String mCopyFromAssetPath;
        public File mCopyFromFile;
        public final Class<T> mDatabaseClass;
        public SupportSQLiteOpenHelper.Factory mFactory;
        public Set<Integer> mMigrationStartAndEndVersions;
        public Set<Integer> mMigrationsNotRequiredFrom;
        public boolean mMultiInstanceInvalidation;
        public final String mName;
        public Executor mQueryExecutor;
        public Executor mTransactionExecutor;
        public JournalMode mJournalMode = JournalMode.AUTOMATIC;
        public boolean mRequireMigration = true;
        public final MigrationContainer mMigrationContainer = new MigrationContainer();

        public Builder(@NonNull Context context, @NonNull Class<T> cls, @Nullable String str) {
            this.mContext = context;
            this.mDatabaseClass = cls;
            this.mName = str;
        }

        @NonNull
        public Builder<T> addCallback(@NonNull Callback callback) {
            if (this.mCallbacks == null) {
                this.mCallbacks = new ArrayList<>();
            }
            this.mCallbacks.add(callback);
            return this;
        }

        @NonNull
        public Builder<T> addMigrations(@NonNull Migration... migrationArr) {
            if (this.mMigrationStartAndEndVersions == null) {
                this.mMigrationStartAndEndVersions = new HashSet();
            }
            for (Migration migration : migrationArr) {
                this.mMigrationStartAndEndVersions.add(Integer.valueOf(migration.startVersion));
                this.mMigrationStartAndEndVersions.add(Integer.valueOf(migration.endVersion));
            }
            this.mMigrationContainer.addMigrations(migrationArr);
            return this;
        }

        @NonNull
        public Builder<T> allowMainThreadQueries() {
            this.mAllowMainThreadQueries = true;
            return this;
        }

        @NonNull
        @SuppressLint({"RestrictedApi"})
        public T build() {
            Executor executor;
            if (this.mContext == null) {
                throw new IllegalArgumentException("Cannot provide null context for the database.");
            } else if (this.mDatabaseClass != null) {
                if (this.mQueryExecutor == null && this.mTransactionExecutor == null) {
                    Executor iOThreadExecutor = ArchTaskExecutor.getIOThreadExecutor();
                    this.mTransactionExecutor = iOThreadExecutor;
                    this.mQueryExecutor = iOThreadExecutor;
                } else {
                    Executor executor2 = this.mQueryExecutor;
                    if (executor2 != null && this.mTransactionExecutor == null) {
                        this.mTransactionExecutor = executor2;
                    } else if (this.mQueryExecutor == null && (executor = this.mTransactionExecutor) != null) {
                        this.mQueryExecutor = executor;
                    }
                }
                Set<Integer> set = this.mMigrationStartAndEndVersions;
                if (!(set == null || this.mMigrationsNotRequiredFrom == null)) {
                    for (Integer num : set) {
                        if (this.mMigrationsNotRequiredFrom.contains(num)) {
                            throw new IllegalArgumentException("Inconsistency detected. A Migration was supplied to addMigration(Migration... migrations) that has a start or end version equal to a start version supplied to fallbackToDestructiveMigrationFrom(int... startVersions). Start version: " + num);
                        }
                    }
                }
                if (this.mFactory == null) {
                    this.mFactory = new FrameworkSQLiteOpenHelperFactory();
                }
                if (!(this.mCopyFromAssetPath == null && this.mCopyFromFile == null)) {
                    if (this.mName == null) {
                        throw new IllegalArgumentException("Cannot create from asset or file for an in-memory database.");
                    } else if (this.mCopyFromAssetPath == null || this.mCopyFromFile == null) {
                        this.mFactory = new SQLiteCopyOpenHelperFactory(this.mCopyFromAssetPath, this.mCopyFromFile, this.mFactory);
                    } else {
                        throw new IllegalArgumentException("Both createFromAsset() and createFromFile() was called on this Builder but the database can only be created using one of the two configurations.");
                    }
                }
                Context context = this.mContext;
                DatabaseConfiguration databaseConfiguration = new DatabaseConfiguration(context, this.mName, this.mFactory, this.mMigrationContainer, this.mCallbacks, this.mAllowMainThreadQueries, this.mJournalMode.resolve(context), this.mQueryExecutor, this.mTransactionExecutor, this.mMultiInstanceInvalidation, this.mRequireMigration, this.mAllowDestructiveMigrationOnDowngrade, this.mMigrationsNotRequiredFrom, this.mCopyFromAssetPath, this.mCopyFromFile);
                T t = (T) ((RoomDatabase) Room.getGeneratedImplementation(this.mDatabaseClass, RoomDatabase.DB_IMPL_SUFFIX));
                t.init(databaseConfiguration);
                return t;
            } else {
                throw new IllegalArgumentException("Must provide an abstract class that extends RoomDatabase");
            }
        }

        @NonNull
        public Builder<T> createFromAsset(@NonNull String str) {
            this.mCopyFromAssetPath = str;
            return this;
        }

        @NonNull
        public Builder<T> createFromFile(@NonNull File file) {
            this.mCopyFromFile = file;
            return this;
        }

        @NonNull
        public Builder<T> enableMultiInstanceInvalidation() {
            this.mMultiInstanceInvalidation = this.mName != null;
            return this;
        }

        @NonNull
        public Builder<T> fallbackToDestructiveMigration() {
            this.mRequireMigration = false;
            this.mAllowDestructiveMigrationOnDowngrade = true;
            return this;
        }

        @NonNull
        public Builder<T> fallbackToDestructiveMigrationFrom(int... iArr) {
            if (this.mMigrationsNotRequiredFrom == null) {
                this.mMigrationsNotRequiredFrom = new HashSet(iArr.length);
            }
            for (int i : iArr) {
                this.mMigrationsNotRequiredFrom.add(Integer.valueOf(i));
            }
            return this;
        }

        @NonNull
        public Builder<T> fallbackToDestructiveMigrationOnDowngrade() {
            this.mRequireMigration = true;
            this.mAllowDestructiveMigrationOnDowngrade = true;
            return this;
        }

        @NonNull
        public Builder<T> openHelperFactory(@Nullable SupportSQLiteOpenHelper.Factory factory) {
            this.mFactory = factory;
            return this;
        }

        @NonNull
        public Builder<T> setJournalMode(@NonNull JournalMode journalMode) {
            this.mJournalMode = journalMode;
            return this;
        }

        @NonNull
        public Builder<T> setQueryExecutor(@NonNull Executor executor) {
            this.mQueryExecutor = executor;
            return this;
        }

        @NonNull
        public Builder<T> setTransactionExecutor(@NonNull Executor executor) {
            this.mTransactionExecutor = executor;
            return this;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/room/RoomDatabase$Callback.class */
    public static abstract class Callback {
        public void onCreate(@NonNull SupportSQLiteDatabase supportSQLiteDatabase) {
        }

        public void onDestructiveMigration(@NonNull SupportSQLiteDatabase supportSQLiteDatabase) {
        }

        public void onOpen(@NonNull SupportSQLiteDatabase supportSQLiteDatabase) {
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/room/RoomDatabase$JournalMode.class */
    public enum JournalMode {
        AUTOMATIC,
        TRUNCATE,
        WRITE_AHEAD_LOGGING;

        public static boolean isLowRamDevice(@NonNull ActivityManager activityManager) {
            if (Build.VERSION.SDK_INT >= 19) {
                return activityManager.isLowRamDevice();
            }
            return false;
        }

        @SuppressLint({"NewApi"})
        public JournalMode resolve(Context context) {
            ActivityManager activityManager;
            return this != AUTOMATIC ? this : (Build.VERSION.SDK_INT < 16 || (activityManager = (ActivityManager) context.getSystemService(ActivityChooserModel.ATTRIBUTE_ACTIVITY)) == null || isLowRamDevice(activityManager)) ? TRUNCATE : WRITE_AHEAD_LOGGING;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/room/RoomDatabase$MigrationContainer.class */
    public static class MigrationContainer {
        public HashMap<Integer, TreeMap<Integer, Migration>> mMigrations = new HashMap<>();

        private void addMigration(Migration migration) {
            int i = migration.startVersion;
            int i2 = migration.endVersion;
            TreeMap<Integer, Migration> treeMap = this.mMigrations.get(Integer.valueOf(i));
            TreeMap<Integer, Migration> treeMap2 = treeMap;
            if (treeMap == null) {
                treeMap2 = new TreeMap<>();
                this.mMigrations.put(Integer.valueOf(i), treeMap2);
            }
            Migration migration2 = treeMap2.get(Integer.valueOf(i2));
            if (migration2 != null) {
                String str = "Overriding migration " + migration2 + " with " + migration;
            }
            treeMap2.put(Integer.valueOf(i2), migration);
        }

        /* JADX WARN: Code restructure failed: missing block: B:23:0x0081, code lost:
            if (r0 > r7) goto L_0x0084;
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x0084, code lost:
            r15 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x009c, code lost:
            if (r0 < r7) goto L_0x0084;
         */
        /* JADX WARN: Removed duplicated region for block: B:11:0x002a  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x0028 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:42:0x00a7 A[SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private java.util.List<androidx.room.migration.Migration> findUpMigrationPath(java.util.List<androidx.room.migration.Migration> r5, boolean r6, int r7, int r8) {
            /*
                r4 = this;
            L_0x0000:
                r0 = r6
                if (r0 == 0) goto L_0x000d
                r0 = r7
                r1 = r8
                if (r0 >= r1) goto L_0x00cc
                goto L_0x0013
            L_0x000d:
                r0 = r7
                r1 = r8
                if (r0 <= r1) goto L_0x00cc
            L_0x0013:
                r0 = r4
                java.util.HashMap<java.lang.Integer, java.util.TreeMap<java.lang.Integer, androidx.room.migration.Migration>> r0 = r0.mMigrations
                r1 = r7
                java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
                java.lang.Object r0 = r0.get(r1)
                java.util.TreeMap r0 = (java.util.TreeMap) r0
                r9 = r0
                r0 = r9
                if (r0 != 0) goto L_0x002a
                r0 = 0
                return r0
            L_0x002a:
                r0 = r6
                if (r0 == 0) goto L_0x0038
                r0 = r9
                java.util.NavigableSet r0 = r0.descendingKeySet()
                r10 = r0
                goto L_0x003f
            L_0x0038:
                r0 = r9
                java.util.Set r0 = r0.keySet()
                r10 = r0
            L_0x003f:
                r0 = r10
                java.util.Iterator r0 = r0.iterator()
                r10 = r0
            L_0x0048:
                r0 = r10
                boolean r0 = r0.hasNext()
                r11 = r0
                r0 = 1
                r12 = r0
                r0 = 0
                r13 = r0
                r0 = r11
                if (r0 == 0) goto L_0x00c2
                r0 = r10
                java.lang.Object r0 = r0.next()
                java.lang.Integer r0 = (java.lang.Integer) r0
                int r0 = r0.intValue()
                r14 = r0
                r0 = r6
                if (r0 == 0) goto L_0x008a
                r0 = r13
                r15 = r0
                r0 = r14
                r1 = r8
                if (r0 > r1) goto L_0x00a2
                r0 = r13
                r15 = r0
                r0 = r14
                r1 = r7
                if (r0 <= r1) goto L_0x00a2
            L_0x0084:
                r0 = 1
                r15 = r0
                goto L_0x00a2
            L_0x008a:
                r0 = r13
                r15 = r0
                r0 = r14
                r1 = r8
                if (r0 < r1) goto L_0x00a2
                r0 = r13
                r15 = r0
                r0 = r14
                r1 = r7
                if (r0 >= r1) goto L_0x00a2
                goto L_0x0084
            L_0x00a2:
                r0 = r15
                if (r0 == 0) goto L_0x0048
                r0 = r5
                r1 = r9
                r2 = r14
                java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
                java.lang.Object r1 = r1.get(r2)
                boolean r0 = r0.add(r1)
                r0 = r14
                r7 = r0
                r0 = r12
                r15 = r0
                goto L_0x00c5
            L_0x00c2:
                r0 = 0
                r15 = r0
            L_0x00c5:
                r0 = r15
                if (r0 != 0) goto L_0x0000
                r0 = 0
                return r0
            L_0x00cc:
                r0 = r5
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.room.RoomDatabase.MigrationContainer.findUpMigrationPath(java.util.List, boolean, int, int):java.util.List");
        }

        public void addMigrations(@NonNull Migration... migrationArr) {
            for (Migration migration : migrationArr) {
                addMigration(migration);
            }
        }

        @Nullable
        public List<Migration> findMigrationPath(int i, int i2) {
            if (i == i2) {
                return Collections.emptyList();
            }
            return findUpMigrationPath(new ArrayList(), i2 > i, i, i2);
        }
    }

    public static boolean isMainThread() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void assertNotMainThread() {
        if (!this.mAllowMainThreadQueries && isMainThread()) {
            throw new IllegalStateException("Cannot access database on the main thread since it may potentially lock the UI for a long period of time.");
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void assertNotSuspendingTransaction() {
        if (!inTransaction() && this.mSuspendingTransactionId.get() != null) {
            throw new IllegalStateException("Cannot access database on a different coroutine context inherited from a suspending transaction.");
        }
    }

    @Deprecated
    public void beginTransaction() {
        assertNotMainThread();
        SupportSQLiteDatabase writableDatabase = this.mOpenHelper.getWritableDatabase();
        this.mInvalidationTracker.syncTriggers(writableDatabase);
        writableDatabase.beginTransaction();
    }

    @WorkerThread
    public abstract void clearAllTables();

    public void close() {
        if (isOpen()) {
            ReentrantReadWriteLock.WriteLock writeLock = this.mCloseLock.writeLock();
            try {
                writeLock.lock();
                this.mInvalidationTracker.stopMultiInstanceInvalidation();
                this.mOpenHelper.close();
            } finally {
                writeLock.unlock();
            }
        }
    }

    public SupportSQLiteStatement compileStatement(@NonNull String str) {
        assertNotMainThread();
        assertNotSuspendingTransaction();
        return this.mOpenHelper.getWritableDatabase().compileStatement(str);
    }

    @NonNull
    public abstract InvalidationTracker createInvalidationTracker();

    @NonNull
    public abstract SupportSQLiteOpenHelper createOpenHelper(DatabaseConfiguration databaseConfiguration);

    @Deprecated
    public void endTransaction() {
        this.mOpenHelper.getWritableDatabase().endTransaction();
        if (!inTransaction()) {
            this.mInvalidationTracker.refreshVersionsAsync();
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public Map<String, Object> getBackingFieldMap() {
        return this.mBackingFieldMap;
    }

    public Lock getCloseLock() {
        return this.mCloseLock.readLock();
    }

    @NonNull
    public InvalidationTracker getInvalidationTracker() {
        return this.mInvalidationTracker;
    }

    @NonNull
    public SupportSQLiteOpenHelper getOpenHelper() {
        return this.mOpenHelper;
    }

    @NonNull
    public Executor getQueryExecutor() {
        return this.mQueryExecutor;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public ThreadLocal<Integer> getSuspendingTransactionId() {
        return this.mSuspendingTransactionId;
    }

    @NonNull
    public Executor getTransactionExecutor() {
        return this.mTransactionExecutor;
    }

    public boolean inTransaction() {
        return this.mOpenHelper.getWritableDatabase().inTransaction();
    }

    @CallSuper
    public void init(@NonNull DatabaseConfiguration databaseConfiguration) {
        this.mOpenHelper = createOpenHelper(databaseConfiguration);
        SupportSQLiteOpenHelper supportSQLiteOpenHelper = this.mOpenHelper;
        if (supportSQLiteOpenHelper instanceof SQLiteCopyOpenHelper) {
            ((SQLiteCopyOpenHelper) supportSQLiteOpenHelper).setDatabaseConfiguration(databaseConfiguration);
        }
        boolean z = false;
        z = false;
        if (Build.VERSION.SDK_INT >= 16) {
            if (databaseConfiguration.journalMode == JournalMode.WRITE_AHEAD_LOGGING) {
                z = true;
            }
            this.mOpenHelper.setWriteAheadLoggingEnabled(z);
        }
        this.mCallbacks = databaseConfiguration.callbacks;
        this.mQueryExecutor = databaseConfiguration.queryExecutor;
        this.mTransactionExecutor = new TransactionExecutor(databaseConfiguration.transactionExecutor);
        this.mAllowMainThreadQueries = databaseConfiguration.allowMainThreadQueries;
        this.mWriteAheadLoggingEnabled = z;
        if (databaseConfiguration.multiInstanceInvalidation) {
            this.mInvalidationTracker.startMultiInstanceInvalidation(databaseConfiguration.context, databaseConfiguration.name);
        }
    }

    public void internalInitInvalidationTracker(@NonNull SupportSQLiteDatabase supportSQLiteDatabase) {
        this.mInvalidationTracker.internalInit(supportSQLiteDatabase);
    }

    public boolean isOpen() {
        SupportSQLiteDatabase supportSQLiteDatabase = this.mDatabase;
        return supportSQLiteDatabase != null && supportSQLiteDatabase.isOpen();
    }

    @NonNull
    public Cursor query(@NonNull SupportSQLiteQuery supportSQLiteQuery) {
        return query(supportSQLiteQuery, (CancellationSignal) null);
    }

    @NonNull
    public Cursor query(@NonNull SupportSQLiteQuery supportSQLiteQuery, @Nullable CancellationSignal cancellationSignal) {
        assertNotMainThread();
        assertNotSuspendingTransaction();
        return (cancellationSignal == null || Build.VERSION.SDK_INT < 16) ? this.mOpenHelper.getWritableDatabase().query(supportSQLiteQuery) : this.mOpenHelper.getWritableDatabase().query(supportSQLiteQuery, cancellationSignal);
    }

    @NonNull
    public Cursor query(@NonNull String str, @Nullable Object[] objArr) {
        return this.mOpenHelper.getWritableDatabase().query(new SimpleSQLiteQuery(str, objArr));
    }

    public <V> V runInTransaction(@NonNull Callable<V> callable) {
        beginTransaction();
        try {
            try {
                try {
                    V call = callable.call();
                    setTransactionSuccessful();
                    endTransaction();
                    return call;
                } catch (RuntimeException e) {
                    throw e;
                }
            } catch (Exception e2) {
                SneakyThrow.reThrow(e2);
                endTransaction();
                return null;
            }
        } catch (Throwable th) {
            endTransaction();
            throw th;
        }
    }

    public void runInTransaction(@NonNull Runnable runnable) {
        beginTransaction();
        try {
            runnable.run();
            setTransactionSuccessful();
        } finally {
            endTransaction();
        }
    }

    @Deprecated
    public void setTransactionSuccessful() {
        this.mOpenHelper.getWritableDatabase().setTransactionSuccessful();
    }
}
