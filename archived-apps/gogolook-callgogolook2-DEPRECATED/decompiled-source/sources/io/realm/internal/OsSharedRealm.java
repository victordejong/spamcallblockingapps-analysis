package io.realm.internal;

import io.realm.RealmConfiguration;
import io.realm.internal.OsRealmConfig;
import io.realm.internal.OsResults;
import io.realm.internal.android.AndroidCapabilities;
import io.realm.internal.android.AndroidRealmNotifier;
import java.io.Closeable;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import javax.annotation.Nullable;
@Keep
/* loaded from: classes3-dex2jar.jar:io/realm/internal/OsSharedRealm.class */
public final class OsSharedRealm implements Closeable, NativeObject {
    public static final byte FILE_EXCEPTION_INCOMPATIBLE_SYNC_FILE = 7;
    public static final byte FILE_EXCEPTION_KIND_ACCESS_ERROR = 0;
    public static final byte FILE_EXCEPTION_KIND_BAD_HISTORY = 1;
    public static final byte FILE_EXCEPTION_KIND_EXISTS = 3;
    public static final byte FILE_EXCEPTION_KIND_FORMAT_UPGRADE_REQUIRED = 6;
    public static final byte FILE_EXCEPTION_KIND_INCOMPATIBLE_LOCK_FILE = 5;
    public static final byte FILE_EXCEPTION_KIND_NOT_FOUND = 4;
    public static final byte FILE_EXCEPTION_KIND_PERMISSION_DENIED = 2;
    public static final long nativeFinalizerPtr = nativeGetFinalizerPtr();
    public static final List<OsSharedRealm> sharedRealmsUnderConstruction = new CopyOnWriteArrayList();
    public static volatile File temporaryDirectory;
    public final Capabilities capabilities;
    public final NativeContext context;
    public final List<WeakReference<OsResults.Iterator>> iterators;
    public final long nativePtr;
    public final OsRealmConfig osRealmConfig;
    public final List<WeakReference<PendingRow>> pendingRows;
    public final RealmNotifier realmNotifier;
    public final OsSchemaInfo schemaInfo;
    public final List<OsSharedRealm> tempSharedRealmsForCallback;

    @Keep
    /* loaded from: classes3-dex2jar.jar:io/realm/internal/OsSharedRealm$InitializationCallback.class */
    public interface InitializationCallback {
        void onInit(OsSharedRealm osSharedRealm);
    }

    @Keep
    /* loaded from: classes3-dex2jar.jar:io/realm/internal/OsSharedRealm$MigrationCallback.class */
    public interface MigrationCallback {
        void onMigrationNeeded(OsSharedRealm osSharedRealm, long j, long j2);
    }

    @Keep
    /* loaded from: classes3-dex2jar.jar:io/realm/internal/OsSharedRealm$SchemaChangedCallback.class */
    public interface SchemaChangedCallback {
        void onSchemaChanged();
    }

    /* loaded from: classes3-dex2jar.jar:io/realm/internal/OsSharedRealm$VersionID.class */
    public static class VersionID implements Comparable<VersionID> {
        public final long index;
        public final long version;

        public VersionID(long j, long j2) {
            this.version = j;
            this.index = j2;
        }

        public int compareTo(VersionID versionID) {
            if (versionID != null) {
                long j = this.version;
                long j2 = versionID.version;
                if (j > j2) {
                    return 1;
                }
                return j < j2 ? -1 : 0;
            }
            throw new IllegalArgumentException("Version cannot be compared to a null value.");
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || VersionID.class != obj.getClass()) {
                return false;
            }
            VersionID versionID = (VersionID) obj;
            if (!(this.version == versionID.version && this.index == versionID.index)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            int hashCode = super.hashCode();
            long j = this.version;
            int i = (int) (j ^ (j >>> 32));
            long j2 = this.index;
            return (((hashCode * 31) + i) * 31) + ((int) (j2 ^ (j2 >>> 32)));
        }

        public String toString() {
            return "VersionID{version=" + this.version + ", index=" + this.index + '}';
        }
    }

    public OsSharedRealm(long j, OsRealmConfig osRealmConfig) {
        this.tempSharedRealmsForCallback = new ArrayList();
        this.pendingRows = new CopyOnWriteArrayList();
        this.iterators = new ArrayList();
        this.nativePtr = j;
        this.osRealmConfig = osRealmConfig;
        this.schemaInfo = new OsSchemaInfo(nativeGetSchemaInfo(this.nativePtr), this);
        this.context = osRealmConfig.getContext();
        this.context.addReference(this);
        this.capabilities = new AndroidCapabilities();
        this.realmNotifier = null;
        boolean z = false;
        nativeSetAutoRefresh(this.nativePtr, false);
        Iterator<OsSharedRealm> it = sharedRealmsUnderConstruction.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            OsSharedRealm next = it.next();
            if (next.context == osRealmConfig.getContext()) {
                z = true;
                next.tempSharedRealmsForCallback.add(this);
                break;
            }
        }
        if (!z) {
            throw new IllegalStateException("Cannot find the parent 'OsSharedRealm' which is under construction.");
        }
    }

    /* JADX WARN: Finally extract failed */
    public OsSharedRealm(OsRealmConfig osRealmConfig) {
        boolean hasNext;
        this.tempSharedRealmsForCallback = new ArrayList();
        this.pendingRows = new CopyOnWriteArrayList();
        this.iterators = new ArrayList();
        AndroidCapabilities androidCapabilities = new AndroidCapabilities();
        AndroidRealmNotifier androidRealmNotifier = new AndroidRealmNotifier(this, androidCapabilities);
        this.context = osRealmConfig.getContext();
        sharedRealmsUnderConstruction.add(this);
        try {
            this.nativePtr = nativeGetSharedRealm(osRealmConfig.getNativePtr(), androidRealmNotifier);
            this.tempSharedRealmsForCallback.clear();
            sharedRealmsUnderConstruction.remove(this);
            this.osRealmConfig = osRealmConfig;
            this.schemaInfo = new OsSchemaInfo(nativeGetSchemaInfo(this.nativePtr), this);
            this.context.addReference(this);
            this.capabilities = androidCapabilities;
            this.realmNotifier = androidRealmNotifier;
            nativeSetAutoRefresh(this.nativePtr, androidCapabilities.canDeliverNotification());
        } finally {
            try {
                while (true) {
                    if (!hasNext) {
                        break;
                    }
                }
                throw th;
            } catch (Throwable th) {
            }
        }
    }

    private void detachIterators() {
        for (WeakReference<OsResults.Iterator> weakReference : this.iterators) {
            OsResults.Iterator iterator = weakReference.get();
            if (iterator != null) {
                iterator.detach();
            }
        }
        this.iterators.clear();
    }

    private void executePendingRowQueries() {
        for (WeakReference<PendingRow> weakReference : this.pendingRows) {
            PendingRow pendingRow = weakReference.get();
            if (pendingRow != null) {
                pendingRow.executeQuery();
            }
        }
        this.pendingRows.clear();
    }

    public static OsSharedRealm getInstance(RealmConfiguration realmConfiguration) {
        return getInstance(new OsRealmConfig.Builder(realmConfiguration));
    }

    public static OsSharedRealm getInstance(OsRealmConfig.Builder builder) {
        OsRealmConfig build = builder.build();
        ObjectServerFacade.getSyncFacadeIfPossible().wrapObjectStoreSessionIfRequired(build);
        return new OsSharedRealm(build);
    }

    public static File getTemporaryDirectory() {
        return temporaryDirectory;
    }

    public static void initialize(File file) {
        if (temporaryDirectory == null) {
            String absolutePath = file.getAbsolutePath();
            if (file.isDirectory() || file.mkdirs() || file.isDirectory()) {
                String str = absolutePath;
                if (!absolutePath.endsWith("/")) {
                    str = absolutePath + "/";
                }
                nativeInit(str);
                temporaryDirectory = file;
                return;
            }
            throw new IOException("failed to create temporary directory: " + absolutePath);
        }
    }

    public static native void nativeBeginTransaction(long j);

    public static native void nativeCancelTransaction(long j);

    public static native void nativeCloseSharedRealm(long j);

    public static native void nativeCommitTransaction(long j);

    public static native boolean nativeCompact(long j);

    public static native long nativeCreateTable(long j, String str);

    public static native long nativeCreateTableWithPrimaryKeyField(long j, String str, String str2, boolean z, boolean z2);

    public static native int nativeGetClassPrivileges(long j, String str);

    public static native long nativeGetFinalizerPtr();

    public static native int nativeGetObjectPrivileges(long j, long j2);

    public static native int nativeGetRealmPrivileges(long j);

    public static native long nativeGetSchemaInfo(long j);

    public static native long nativeGetSharedRealm(long j, RealmNotifier realmNotifier);

    public static native long nativeGetTable(long j, String str);

    public static native String nativeGetTableName(long j, int i);

    public static native long[] nativeGetVersionID(long j);

    public static native boolean nativeHasTable(long j, String str);

    public static native void nativeInit(String str);

    public static native boolean nativeIsAutoRefresh(long j);

    public static native boolean nativeIsClosed(long j);

    public static native boolean nativeIsEmpty(long j);

    public static native boolean nativeIsInTransaction(long j);

    public static native boolean nativeIsPartial(long j);

    public static native void nativeRefresh(long j);

    public static native void nativeRegisterSchemaChangedCallback(long j, SchemaChangedCallback schemaChangedCallback);

    public static native void nativeRenameTable(long j, String str, String str2);

    public static native void nativeSetAutoRefresh(long j, boolean z);

    public static native long nativeSize(long j);

    public static native void nativeStopWaitForChange(long j);

    public static native boolean nativeWaitForChange(long j);

    public static native void nativeWriteCopy(long j, String str, @Nullable byte[] bArr);

    public static void runInitializationCallback(long j, OsRealmConfig osRealmConfig, InitializationCallback initializationCallback) {
        initializationCallback.onInit(new OsSharedRealm(j, osRealmConfig));
    }

    public static void runMigrationCallback(long j, OsRealmConfig osRealmConfig, MigrationCallback migrationCallback, long j2) {
        migrationCallback.onMigrationNeeded(new OsSharedRealm(j, osRealmConfig), j2, osRealmConfig.getRealmConfiguration().getSchemaVersion());
    }

    public void addIterator(OsResults.Iterator iterator) {
        this.iterators.add(new WeakReference<>(iterator));
    }

    public void addPendingRow(PendingRow pendingRow) {
        this.pendingRows.add(new WeakReference<>(pendingRow));
    }

    public void beginTransaction() {
        detachIterators();
        executePendingRowQueries();
        nativeBeginTransaction(this.nativePtr);
    }

    public void cancelTransaction() {
        nativeCancelTransaction(this.nativePtr);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        RealmNotifier realmNotifier = this.realmNotifier;
        if (realmNotifier != null) {
            realmNotifier.close();
        }
        synchronized (this.context) {
            nativeCloseSharedRealm(this.nativePtr);
        }
    }

    public void commitTransaction() {
        nativeCommitTransaction(this.nativePtr);
    }

    public boolean compact() {
        return nativeCompact(this.nativePtr);
    }

    public Table createTable(String str) {
        return new Table(this, nativeCreateTable(this.nativePtr, str));
    }

    public Table createTableWithPrimaryKey(String str, String str2, boolean z, boolean z2) {
        return new Table(this, nativeCreateTableWithPrimaryKeyField(this.nativePtr, str, str2, z, z2));
    }

    public RealmConfiguration getConfiguration() {
        return this.osRealmConfig.getRealmConfiguration();
    }

    @Override // io.realm.internal.NativeObject
    public long getNativeFinalizerPtr() {
        return nativeFinalizerPtr;
    }

    @Override // io.realm.internal.NativeObject
    public long getNativePtr() {
        return this.nativePtr;
    }

    public String getPath() {
        return this.osRealmConfig.getRealmConfiguration().getPath();
    }

    public OsSchemaInfo getSchemaInfo() {
        return this.schemaInfo;
    }

    public Table getTable(String str) {
        return new Table(this, nativeGetTable(this.nativePtr, str));
    }

    public String getTableName(int i) {
        return nativeGetTableName(this.nativePtr, i);
    }

    public VersionID getVersionID() {
        long[] nativeGetVersionID = nativeGetVersionID(this.nativePtr);
        return new VersionID(nativeGetVersionID[0], nativeGetVersionID[1]);
    }

    public boolean hasTable(String str) {
        return nativeHasTable(this.nativePtr, str);
    }

    public void invalidateIterators() {
        for (WeakReference<OsResults.Iterator> weakReference : this.iterators) {
            OsResults.Iterator iterator = weakReference.get();
            if (iterator != null) {
                iterator.invalidate();
            }
        }
        this.iterators.clear();
    }

    public boolean isAutoRefresh() {
        return nativeIsAutoRefresh(this.nativePtr);
    }

    public boolean isClosed() {
        return nativeIsClosed(this.nativePtr);
    }

    public boolean isEmpty() {
        return nativeIsEmpty(this.nativePtr);
    }

    public boolean isInTransaction() {
        return nativeIsInTransaction(this.nativePtr);
    }

    public boolean isPartial() {
        return nativeIsPartial(this.nativePtr);
    }

    public boolean isSyncRealm() {
        return this.osRealmConfig.getResolvedRealmURI() != null;
    }

    public void refresh() {
        nativeRefresh(this.nativePtr);
    }

    public void registerSchemaChangedCallback(SchemaChangedCallback schemaChangedCallback) {
        nativeRegisterSchemaChangedCallback(this.nativePtr, schemaChangedCallback);
    }

    public void removePendingRow(PendingRow pendingRow) {
        for (WeakReference<PendingRow> weakReference : this.pendingRows) {
            PendingRow pendingRow2 = weakReference.get();
            if (pendingRow2 == null || pendingRow2 == pendingRow) {
                this.pendingRows.remove(weakReference);
            }
        }
    }

    public void renameTable(String str, String str2) {
        nativeRenameTable(this.nativePtr, str, str2);
    }

    public void setAutoRefresh(boolean z) {
        this.capabilities.checkCanDeliverNotification(null);
        nativeSetAutoRefresh(this.nativePtr, z);
    }

    public long size() {
        return nativeSize(this.nativePtr);
    }

    public void stopWaitForChange() {
        nativeStopWaitForChange(this.nativePtr);
    }

    public boolean waitForChange() {
        return nativeWaitForChange(this.nativePtr);
    }

    public void writeCopy(File file, @Nullable byte[] bArr) {
        if (!file.isFile() || !file.exists()) {
            nativeWriteCopy(this.nativePtr, file.getAbsolutePath(), bArr);
            return;
        }
        throw new IllegalArgumentException("The destination file must not exist");
    }
}
