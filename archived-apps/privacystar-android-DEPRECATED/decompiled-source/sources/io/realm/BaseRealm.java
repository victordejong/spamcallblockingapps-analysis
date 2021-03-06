package io.realm;

import android.content.Context;
import android.os.Looper;
import io.reactivex.Flowable;
import io.realm.Realm;
import io.realm.RealmCache;
import io.realm.exceptions.RealmException;
import io.realm.exceptions.RealmMigrationNeededException;
import io.realm.internal.CheckedRow;
import io.realm.internal.ColumnInfo;
import io.realm.internal.InvalidRow;
import io.realm.internal.ObjectServerFacade;
import io.realm.internal.OsObjectStore;
import io.realm.internal.OsRealmConfig;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.OsSharedRealm;
import io.realm.internal.Row;
import io.realm.internal.Table;
import io.realm.internal.UncheckedRow;
import io.realm.internal.Util;
import io.realm.internal.async.RealmThreadPoolExecutor;
import io.realm.log.RealmLog;
import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:io/realm/BaseRealm.class */
public abstract class BaseRealm implements Closeable {
    static final String CLOSED_REALM_MESSAGE = "This Realm instance has already been closed, making it unusable.";
    static final String DELETE_NOT_SUPPORTED_UNDER_PARTIAL_SYNC = "This API is not supported by partially synchronized Realms. Either unsubscribe using 'Realm.unsubscribeAsync()' or delete the objects using a query and 'RealmResults.deleteAllFromRealm()'";
    private static final String INCORRECT_THREAD_CLOSE_MESSAGE = "Realm access from incorrect thread. Realm instance can only be closed on the thread it was created.";
    static final String INCORRECT_THREAD_MESSAGE = "Realm access from incorrect thread. Realm objects can only be accessed on the thread they were created.";
    static final String LISTENER_NOT_ALLOWED_MESSAGE = "Listeners cannot be used on current thread.";
    private static final String NOT_IN_TRANSACTION_MESSAGE = "Changing Realm data can only be done from inside a transaction.";
    static volatile Context applicationContext;
    static final RealmThreadPoolExecutor asyncTaskExecutor = RealmThreadPoolExecutor.newDefaultExecutor();
    public static final ThreadLocalRealmObjectContext objectContext = new ThreadLocalRealmObjectContext();
    protected final RealmConfiguration configuration;
    private RealmCache realmCache;
    private OsSharedRealm.SchemaChangedCallback schemaChangedCallback;
    public OsSharedRealm sharedRealm;
    private boolean shouldCloseSharedRealm;
    final long threadId;

    /* loaded from: classes2-dex2jar.jar:io/realm/BaseRealm$InstanceCallback.class */
    public static abstract class InstanceCallback<T extends BaseRealm> {
        public void onError(Throwable th) {
            throw new RealmException("Exception happens when initializing Realm in the background thread.", th);
        }

        public abstract void onSuccess(T t);
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/BaseRealm$RealmObjectContext.class */
    public static final class RealmObjectContext {
        private boolean acceptDefaultValue;
        private ColumnInfo columnInfo;
        private List<String> excludeFields;
        private BaseRealm realm;
        private Row row;

        public void clear() {
            this.realm = null;
            this.row = null;
            this.columnInfo = null;
            this.acceptDefaultValue = false;
            this.excludeFields = null;
        }

        public boolean getAcceptDefaultValue() {
            return this.acceptDefaultValue;
        }

        public ColumnInfo getColumnInfo() {
            return this.columnInfo;
        }

        public List<String> getExcludeFields() {
            return this.excludeFields;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public BaseRealm getRealm() {
            return this.realm;
        }

        public Row getRow() {
            return this.row;
        }

        public void set(BaseRealm baseRealm, Row row, ColumnInfo columnInfo, boolean z, List<String> list) {
            this.realm = baseRealm;
            this.row = row;
            this.columnInfo = columnInfo;
            this.acceptDefaultValue = z;
            this.excludeFields = list;
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/BaseRealm$ThreadLocalRealmObjectContext.class */
    static final class ThreadLocalRealmObjectContext extends ThreadLocal<RealmObjectContext> {
        ThreadLocalRealmObjectContext() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.lang.ThreadLocal
        public RealmObjectContext initialValue() {
            return new RealmObjectContext();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BaseRealm(RealmCache realmCache, @Nullable OsSchemaInfo osSchemaInfo) {
        this(realmCache.getConfiguration(), osSchemaInfo);
        this.realmCache = realmCache;
    }

    BaseRealm(RealmConfiguration realmConfiguration, @Nullable OsSchemaInfo osSchemaInfo) {
        this.schemaChangedCallback = new OsSharedRealm.SchemaChangedCallback() { // from class: io.realm.BaseRealm.1
            @Override // io.realm.internal.OsSharedRealm.SchemaChangedCallback
            public void onSchemaChanged() {
                RealmSchema schema = BaseRealm.this.getSchema();
                if (schema != null) {
                    schema.refresh();
                }
            }
        };
        this.threadId = Thread.currentThread().getId();
        this.configuration = realmConfiguration;
        OsSharedRealm.InitializationCallback initializationCallback = null;
        this.realmCache = null;
        OsSharedRealm.MigrationCallback createMigrationCallback = (osSchemaInfo == null || realmConfiguration.getMigration() == null) ? null : createMigrationCallback(realmConfiguration.getMigration());
        final Realm.Transaction initialDataTransaction = realmConfiguration.getInitialDataTransaction();
        this.sharedRealm = OsSharedRealm.getInstance(new OsRealmConfig.Builder(realmConfiguration).autoUpdateNotification(true).migrationCallback(createMigrationCallback).schemaInfo(osSchemaInfo).initializationCallback(initialDataTransaction != null ? new OsSharedRealm.InitializationCallback() { // from class: io.realm.BaseRealm.2
            @Override // io.realm.internal.OsSharedRealm.InitializationCallback
            public void onInit(OsSharedRealm osSharedRealm) {
                initialDataTransaction.execute(Realm.createInstance(osSharedRealm));
            }
        } : initializationCallback));
        this.shouldCloseSharedRealm = true;
        this.sharedRealm.registerSchemaChangedCallback(this.schemaChangedCallback);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BaseRealm(OsSharedRealm osSharedRealm) {
        this.schemaChangedCallback = new OsSharedRealm.SchemaChangedCallback() { // from class: io.realm.BaseRealm.1
            @Override // io.realm.internal.OsSharedRealm.SchemaChangedCallback
            public void onSchemaChanged() {
                RealmSchema schema = BaseRealm.this.getSchema();
                if (schema != null) {
                    schema.refresh();
                }
            }
        };
        this.threadId = Thread.currentThread().getId();
        this.configuration = osSharedRealm.getConfiguration();
        this.realmCache = null;
        this.sharedRealm = osSharedRealm;
        this.shouldCloseSharedRealm = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean compactRealm(RealmConfiguration realmConfiguration) {
        OsSharedRealm instance = OsSharedRealm.getInstance(realmConfiguration);
        boolean compact = instance.compact();
        instance.close();
        return Boolean.valueOf(compact).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static OsSharedRealm.MigrationCallback createMigrationCallback(final RealmMigration realmMigration) {
        return new OsSharedRealm.MigrationCallback() { // from class: io.realm.BaseRealm.6
            @Override // io.realm.internal.OsSharedRealm.MigrationCallback
            public void onMigrationNeeded(OsSharedRealm osSharedRealm, long j, long j2) {
                RealmMigration.this.migrate(DynamicRealm.createInstance(osSharedRealm), j, j2);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean deleteRealm(final RealmConfiguration realmConfiguration) {
        final AtomicBoolean atomicBoolean = new AtomicBoolean(true);
        if (OsObjectStore.callWithLock(realmConfiguration, new Runnable() { // from class: io.realm.BaseRealm.4
            @Override // java.lang.Runnable
            public void run() {
                atomicBoolean.set(Util.deleteRealm(RealmConfiguration.this.getPath(), RealmConfiguration.this.getRealmDirectory(), RealmConfiguration.this.getRealmFileName()));
            }
        })) {
            return atomicBoolean.get();
        }
        throw new IllegalStateException("It's not allowed to delete the file associated with an open Realm. Remember to close() all the instances of the Realm before deleting its file: " + realmConfiguration.getPath());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void migrateRealm(final RealmConfiguration realmConfiguration, @Nullable final RealmMigration realmMigration) throws FileNotFoundException {
        if (realmConfiguration == null) {
            throw new IllegalArgumentException("RealmConfiguration must be provided");
        } else if (realmConfiguration.isSyncConfiguration()) {
            throw new IllegalArgumentException("Manual migrations are not supported for synced Realms");
        } else if (realmMigration == null && realmConfiguration.getMigration() == null) {
            throw new RealmMigrationNeededException(realmConfiguration.getPath(), "RealmMigration must be provided.");
        } else {
            final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            RealmCache.invokeWithGlobalRefCount(realmConfiguration, new RealmCache.Callback() { // from class: io.realm.BaseRealm.5
                @Override // io.realm.RealmCache.Callback
                public void onResult(int i) {
                    if (i != 0) {
                        throw new IllegalStateException("Cannot migrate a Realm file that is already open: " + RealmConfiguration.this.getPath());
                    } else if (!new File(RealmConfiguration.this.getPath()).exists()) {
                        atomicBoolean.set(true);
                    } else {
                        OsSchemaInfo osSchemaInfo = new OsSchemaInfo(RealmConfiguration.this.getSchemaMediator().getExpectedObjectSchemaInfoMap().values());
                        OsSharedRealm.MigrationCallback migrationCallback = null;
                        RealmMigration migration = realmMigration != null ? realmMigration : RealmConfiguration.this.getMigration();
                        if (migration != null) {
                            migrationCallback = BaseRealm.createMigrationCallback(migration);
                        }
                        OsSharedRealm instance = OsSharedRealm.getInstance(new OsRealmConfig.Builder(RealmConfiguration.this).autoUpdateNotification(false).schemaInfo(osSchemaInfo).migrationCallback(migrationCallback));
                        if (instance != null) {
                            instance.close();
                        }
                    }
                }
            });
            if (atomicBoolean.get()) {
                throw new FileNotFoundException("Cannot migrate a Realm file which doesn't exist: " + realmConfiguration.getPath());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public <T extends BaseRealm> void addListener(RealmChangeListener<T> realmChangeListener) {
        if (realmChangeListener == null) {
            throw new IllegalArgumentException("Listener should not be null");
        }
        checkIfValid();
        this.sharedRealm.capabilities.checkCanDeliverNotification(LISTENER_NOT_ALLOWED_MESSAGE);
        this.sharedRealm.realmNotifier.addChangeListener(this, realmChangeListener);
    }

    public abstract Flowable asFlowable();

    public void beginTransaction() {
        checkIfValid();
        this.sharedRealm.beginTransaction();
    }

    public void cancelTransaction() {
        checkIfValid();
        this.sharedRealm.cancelTransaction();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void checkIfInTransaction() {
        if (!this.sharedRealm.isInTransaction()) {
            throw new IllegalStateException(NOT_IN_TRANSACTION_MESSAGE);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void checkIfPartialRealm() {
        if (!(this.configuration.isSyncConfiguration() ? ObjectServerFacade.getSyncFacadeIfPossible().isPartialRealm(this.configuration) : false)) {
            throw new IllegalStateException("This method is only available on partially synchronized Realms.");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void checkIfValid() {
        if (this.sharedRealm == null || this.sharedRealm.isClosed()) {
            throw new IllegalStateException(CLOSED_REALM_MESSAGE);
        } else if (this.threadId != Thread.currentThread().getId()) {
            throw new IllegalStateException(INCORRECT_THREAD_MESSAGE);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void checkIfValidAndInTransaction() {
        if (!isInTransaction()) {
            throw new IllegalStateException(NOT_IN_TRANSACTION_MESSAGE);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void checkNotInSync() {
        if (this.configuration.isSyncConfiguration()) {
            throw new IllegalArgumentException("You cannot perform changes to a schema. Please update app and restart.");
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.threadId != Thread.currentThread().getId()) {
            throw new IllegalStateException(INCORRECT_THREAD_CLOSE_MESSAGE);
        } else if (this.realmCache != null) {
            this.realmCache.release(this);
        } else {
            doClose();
        }
    }

    public void commitTransaction() {
        checkIfValid();
        this.sharedRealm.commitTransaction();
    }

    public void deleteAll() {
        checkIfValid();
        if (this.sharedRealm.isPartial()) {
            throw new IllegalStateException(DELETE_NOT_SUPPORTED_UNDER_PARTIAL_SYNC);
        }
        boolean isPartial = this.sharedRealm.isPartial();
        for (RealmObjectSchema realmObjectSchema : getSchema().getAll()) {
            getSchema().getTable(realmObjectSchema.getClassName()).clear(isPartial);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void doClose() {
        this.realmCache = null;
        if (this.sharedRealm != null && this.shouldCloseSharedRealm) {
            this.sharedRealm.close();
            this.sharedRealm = null;
        }
    }

    protected void finalize() throws Throwable {
        if (this.shouldCloseSharedRealm && this.sharedRealm != null && !this.sharedRealm.isClosed()) {
            RealmLog.warn("Remember to call close() on all Realm instances. Realm %s is being finalized without being closed, this can lead to running out of native memory.", this.configuration.getPath());
            if (this.realmCache != null) {
                this.realmCache.leak();
            }
        }
        super.finalize();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <E extends RealmModel> E get(Class<E> cls, long j, boolean z, List<String> list) {
        return (E) this.configuration.getSchemaMediator().newInstance(cls, this, getSchema().getTable(cls).getUncheckedRow(j), getSchema().getColumnInfo(cls), z, list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <E extends RealmModel> E get(@Nullable Class<E> cls, @Nullable String str, long j) {
        DynamicRealmObject dynamicRealmObject;
        boolean z = str != null;
        Table table = z ? getSchema().getTable(str) : getSchema().getTable(cls);
        if (z) {
            dynamicRealmObject = new DynamicRealmObject(this, j != -1 ? table.getCheckedRow(j) : InvalidRow.INSTANCE);
        } else {
            dynamicRealmObject = (E) this.configuration.getSchemaMediator().newInstance(cls, this, j != -1 ? table.getUncheckedRow(j) : InvalidRow.INSTANCE, getSchema().getColumnInfo(cls), false, Collections.emptyList());
        }
        return dynamicRealmObject;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <E extends RealmModel> E get(@Nullable Class<E> cls, @Nullable String str, UncheckedRow uncheckedRow) {
        return str != null ? new DynamicRealmObject(this, CheckedRow.getFromRow(uncheckedRow)) : (E) this.configuration.getSchemaMediator().newInstance(cls, this, uncheckedRow, getSchema().getColumnInfo(cls), false, Collections.emptyList());
    }

    public RealmConfiguration getConfiguration() {
        return this.configuration;
    }

    public String getPath() {
        return this.configuration.getPath();
    }

    public abstract RealmSchema getSchema();

    /* JADX INFO: Access modifiers changed from: package-private */
    public OsSharedRealm getSharedRealm() {
        return this.sharedRealm;
    }

    public long getVersion() {
        return OsObjectStore.getSchemaVersion(this.sharedRealm);
    }

    public boolean isAutoRefresh() {
        return this.sharedRealm.isAutoRefresh();
    }

    public boolean isClosed() {
        if (this.threadId != Thread.currentThread().getId()) {
            throw new IllegalStateException(INCORRECT_THREAD_MESSAGE);
        }
        return this.sharedRealm == null || this.sharedRealm.isClosed();
    }

    public abstract boolean isEmpty();

    public boolean isInTransaction() {
        checkIfValid();
        return this.sharedRealm.isInTransaction();
    }

    public void refresh() {
        checkIfValid();
        if (isInTransaction()) {
            throw new IllegalStateException("Cannot refresh a Realm instance inside a transaction.");
        }
        this.sharedRealm.refresh();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void removeAllListeners() {
        if (isClosed()) {
            RealmLog.warn("Calling removeChangeListener on a closed Realm %s, make sure to close all listeners before closing the Realm.", this.configuration.getPath());
        }
        this.sharedRealm.realmNotifier.removeChangeListeners(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public <T extends BaseRealm> void removeListener(RealmChangeListener<T> realmChangeListener) {
        if (realmChangeListener == null) {
            throw new IllegalArgumentException("Listener should not be null");
        }
        if (isClosed()) {
            RealmLog.warn("Calling removeChangeListener on a closed Realm %s, make sure to close all listeners before closing the Realm.", this.configuration.getPath());
        }
        this.sharedRealm.realmNotifier.removeChangeListener(this, realmChangeListener);
    }

    public void setAutoRefresh(boolean z) {
        checkIfValid();
        this.sharedRealm.setAutoRefresh(z);
    }

    public void stopWaitForChange() {
        if (this.realmCache != null) {
            this.realmCache.invokeWithLock(new RealmCache.Callback0() { // from class: io.realm.BaseRealm.3
                @Override // io.realm.RealmCache.Callback0
                public void onCall() {
                    if (BaseRealm.this.sharedRealm == null || BaseRealm.this.sharedRealm.isClosed()) {
                        throw new IllegalStateException(BaseRealm.CLOSED_REALM_MESSAGE);
                    }
                    BaseRealm.this.sharedRealm.stopWaitForChange();
                }
            });
            return;
        }
        throw new IllegalStateException(CLOSED_REALM_MESSAGE);
    }

    public boolean waitForChange() {
        checkIfValid();
        if (isInTransaction()) {
            throw new IllegalStateException("Cannot wait for changes inside of a transaction.");
        } else if (Looper.myLooper() != null) {
            throw new IllegalStateException("Cannot wait for changes inside a Looper thread. Use RealmChangeListeners instead.");
        } else {
            boolean waitForChange = this.sharedRealm.waitForChange();
            if (waitForChange) {
                this.sharedRealm.refresh();
            }
            return waitForChange;
        }
    }

    public void writeCopyTo(File file) {
        if (file == null) {
            throw new IllegalArgumentException("The destination argument cannot be null");
        }
        checkIfValid();
        this.sharedRealm.writeCopy(file, null);
    }

    public void writeEncryptedCopyTo(File file, byte[] bArr) {
        if (file == null) {
            throw new IllegalArgumentException("The destination argument cannot be null");
        }
        checkIfValid();
        this.sharedRealm.writeCopy(file, bArr);
    }
}
