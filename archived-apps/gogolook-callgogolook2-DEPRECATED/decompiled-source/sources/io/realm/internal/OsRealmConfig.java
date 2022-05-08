package io.realm.internal;

import io.realm.CompactOnLaunchCallback;
import io.realm.RealmConfiguration;
import io.realm.internal.OsSharedRealm;
import io.realm.log.RealmLog;
import java.io.File;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Map;
import javax.annotation.Nullable;
/* loaded from: classes3-dex2jar.jar:io/realm/internal/OsRealmConfig.class */
public class OsRealmConfig implements NativeObject {
    public static final byte SCHEMA_MODE_VALUE_ADDITIVE = 4;
    public static final byte SCHEMA_MODE_VALUE_AUTOMATIC = 0;
    public static final byte SCHEMA_MODE_VALUE_IMMUTABLE = 1;
    public static final byte SCHEMA_MODE_VALUE_MANUAL = 5;
    public static final byte SCHEMA_MODE_VALUE_READONLY = 2;
    public static final byte SCHEMA_MODE_VALUE_RESET_FILE = 3;
    public static final byte SYNCSESSION_STOP_POLICY_VALUE_AFTER_CHANGES_UPLOADED = 2;
    public static final byte SYNCSESSION_STOP_POLICY_VALUE_IMMEDIATELY = 0;
    public static final byte SYNCSESSION_STOP_POLICY_VALUE_LIVE_INDEFINETELY = 1;
    public static final long nativeFinalizerPtr = nativeGetFinalizerPtr();
    public final CompactOnLaunchCallback compactOnLaunchCallback;
    public final NativeContext context;
    public final OsSharedRealm.InitializationCallback initializationCallback;
    public final OsSharedRealm.MigrationCallback migrationCallback;
    public final long nativePtr;
    public final RealmConfiguration realmConfiguration;
    public final URI resolvedRealmURI;

    /* loaded from: classes3-dex2jar.jar:io/realm/internal/OsRealmConfig$Builder.class */
    public static class Builder {
        public RealmConfiguration configuration;
        public OsSchemaInfo schemaInfo = null;
        public OsSharedRealm.MigrationCallback migrationCallback = null;
        public OsSharedRealm.InitializationCallback initializationCallback = null;
        public boolean autoUpdateNotification = false;
        public String fifoFallbackDir = "";

        public Builder(RealmConfiguration realmConfiguration) {
            this.configuration = realmConfiguration;
        }

        public Builder autoUpdateNotification(boolean z) {
            this.autoUpdateNotification = z;
            return this;
        }

        public OsRealmConfig build() {
            return new OsRealmConfig(this.configuration, this.fifoFallbackDir, this.autoUpdateNotification, this.schemaInfo, this.migrationCallback, this.initializationCallback);
        }

        public Builder fifoFallbackDir(File file) {
            this.fifoFallbackDir = file.getAbsolutePath();
            return this;
        }

        public Builder initializationCallback(@Nullable OsSharedRealm.InitializationCallback initializationCallback) {
            this.initializationCallback = initializationCallback;
            return this;
        }

        public Builder migrationCallback(@Nullable OsSharedRealm.MigrationCallback migrationCallback) {
            this.migrationCallback = migrationCallback;
            return this;
        }

        public Builder schemaInfo(@Nullable OsSchemaInfo osSchemaInfo) {
            this.schemaInfo = osSchemaInfo;
            return this;
        }
    }

    /* loaded from: classes3-dex2jar.jar:io/realm/internal/OsRealmConfig$Durability.class */
    public enum Durability {
        FULL(0),
        MEM_ONLY(1);
        
        public final int value;

        Durability(int i) {
            this.value = i;
        }
    }

    /* loaded from: classes3-dex2jar.jar:io/realm/internal/OsRealmConfig$SchemaMode.class */
    public enum SchemaMode {
        SCHEMA_MODE_AUTOMATIC((byte) 0),
        SCHEMA_MODE_IMMUTABLE((byte) 1),
        SCHEMA_MODE_READONLY((byte) 2),
        SCHEMA_MODE_RESET_FILE((byte) 3),
        SCHEMA_MODE_ADDITIVE((byte) 4),
        SCHEMA_MODE_MANUAL((byte) 5);
        
        public final byte value;

        SchemaMode(byte b) {
            this.value = b;
        }

        public byte getNativeValue() {
            return this.value;
        }
    }

    /* loaded from: classes3-dex2jar.jar:io/realm/internal/OsRealmConfig$SyncSessionStopPolicy.class */
    public enum SyncSessionStopPolicy {
        IMMEDIATELY((byte) 0),
        LIVE_INDEFINITELY((byte) 1),
        AFTER_CHANGES_UPLOADED((byte) 2);
        
        public final byte value;

        SyncSessionStopPolicy(byte b) {
            this.value = b;
        }

        public byte getNativeValue() {
            return this.value;
        }
    }

    public OsRealmConfig(RealmConfiguration realmConfiguration, String str, boolean z, @Nullable OsSchemaInfo osSchemaInfo, @Nullable OsSharedRealm.MigrationCallback migrationCallback, @Nullable OsSharedRealm.InitializationCallback initializationCallback) {
        this.context = new NativeContext();
        this.realmConfiguration = realmConfiguration;
        boolean z2 = true;
        this.nativePtr = nativeCreate(realmConfiguration.getPath(), str, false, true);
        NativeContext.dummyContext.addReference(this);
        Object[] syncConfigurationOptions = ObjectServerFacade.getSyncFacadeIfPossible().getSyncConfigurationOptions(this.realmConfiguration);
        String str2 = (String) syncConfigurationOptions[0];
        String str3 = (String) syncConfigurationOptions[1];
        String str4 = (String) syncConfigurationOptions[2];
        String str5 = (String) syncConfigurationOptions[3];
        boolean equals = Boolean.TRUE.equals(syncConfigurationOptions[4]);
        String str6 = (String) syncConfigurationOptions[5];
        Byte b = (Byte) syncConfigurationOptions[6];
        boolean equals2 = Boolean.TRUE.equals(syncConfigurationOptions[7]);
        String str7 = (String) syncConfigurationOptions[8];
        String str8 = (String) syncConfigurationOptions[9];
        Map map = (Map) syncConfigurationOptions[10];
        String[] strArr = new String[map != null ? map.size() * 2 : 0];
        if (map != null) {
            int i = 0;
            for (Map.Entry entry : map.entrySet()) {
                strArr[i] = (String) entry.getKey();
                strArr[i + 1] = (String) entry.getValue();
                i += 2;
            }
        }
        byte[] encryptionKey = realmConfiguration.getEncryptionKey();
        if (encryptionKey != null) {
            nativeSetEncryptionKey(this.nativePtr, encryptionKey);
        }
        nativeSetInMemory(this.nativePtr, realmConfiguration.getDurability() != Durability.MEM_ONLY ? false : z2);
        nativeEnableChangeNotification(this.nativePtr, z);
        SchemaMode schemaMode = SchemaMode.SCHEMA_MODE_MANUAL;
        if (realmConfiguration.isRecoveryConfiguration()) {
            schemaMode = SchemaMode.SCHEMA_MODE_IMMUTABLE;
        } else if (realmConfiguration.isReadOnly()) {
            schemaMode = SchemaMode.SCHEMA_MODE_READONLY;
        } else if (str3 != null) {
            schemaMode = SchemaMode.SCHEMA_MODE_ADDITIVE;
        } else if (realmConfiguration.shouldDeleteRealmIfMigrationNeeded()) {
            schemaMode = SchemaMode.SCHEMA_MODE_RESET_FILE;
        }
        long schemaVersion = realmConfiguration.getSchemaVersion();
        long nativePtr = osSchemaInfo == null ? 0L : osSchemaInfo.getNativePtr();
        this.migrationCallback = migrationCallback;
        nativeSetSchemaConfig(this.nativePtr, schemaMode.getNativeValue(), schemaVersion, nativePtr, migrationCallback);
        this.compactOnLaunchCallback = realmConfiguration.getCompactOnLaunchCallback();
        CompactOnLaunchCallback compactOnLaunchCallback = this.compactOnLaunchCallback;
        if (compactOnLaunchCallback != null) {
            nativeSetCompactOnLaunchCallback(this.nativePtr, compactOnLaunchCallback);
        }
        this.initializationCallback = initializationCallback;
        if (initializationCallback != null) {
            nativeSetInitializationCallback(this.nativePtr, initializationCallback);
        }
        URI uri = null;
        uri = null;
        if (str3 != null) {
            try {
                uri = new URI(nativeCreateAndSetSyncConfig(this.nativePtr, str3, str4, str2, str5, equals2, b.byteValue(), str7, str8, strArr));
            } catch (URISyntaxException e) {
                RealmLog.error(e, "Cannot create a URI from the Realm URL address", new Object[0]);
            }
            nativeSetSyncConfigSslSettings(this.nativePtr, equals, str6);
        }
        this.resolvedRealmURI = uri;
    }

    public static native long nativeCreate(String str, String str2, boolean z, boolean z2);

    public static native String nativeCreateAndSetSyncConfig(long j, String str, String str2, String str3, String str4, boolean z, byte b, String str5, String str6, String[] strArr);

    public static native void nativeEnableChangeNotification(long j, boolean z);

    public static native long nativeGetFinalizerPtr();

    public static native void nativeSetCompactOnLaunchCallback(long j, CompactOnLaunchCallback compactOnLaunchCallback);

    public static native void nativeSetEncryptionKey(long j, byte[] bArr);

    public static native void nativeSetInMemory(long j, boolean z);

    private native void nativeSetInitializationCallback(long j, OsSharedRealm.InitializationCallback initializationCallback);

    private native void nativeSetSchemaConfig(long j, byte b, long j2, long j3, @Nullable OsSharedRealm.MigrationCallback migrationCallback);

    public static native void nativeSetSyncConfigSslSettings(long j, boolean z, String str);

    public NativeContext getContext() {
        return this.context;
    }

    @Override // io.realm.internal.NativeObject
    public long getNativeFinalizerPtr() {
        return nativeFinalizerPtr;
    }

    @Override // io.realm.internal.NativeObject
    public long getNativePtr() {
        return this.nativePtr;
    }

    public RealmConfiguration getRealmConfiguration() {
        return this.realmConfiguration;
    }

    public URI getResolvedRealmURI() {
        return this.resolvedRealmURI;
    }
}
