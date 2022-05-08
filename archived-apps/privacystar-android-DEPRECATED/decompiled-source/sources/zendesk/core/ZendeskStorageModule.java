package zendesk.core;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.gson.Gson;
import dagger.Module;
import dagger.Provides;
import java.io.File;
import java.util.Locale;
import javax.inject.Named;
import javax.inject.Singleton;
import okhttp3.Cache;
@Module
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskStorageModule.class */
class ZendeskStorageModule {
    private static final String BASE_STORAGE_ADDITIONAL_SDK = "base_storage_additional_sdk";
    static final String BASE_STORAGE_DISK_LRU = "base_storage_disk_lru";
    private static final String BASE_STORAGE_IDENTITY = "base_storage_identity";
    private static final String BASE_STORAGE_LEGACY_IDENTITY = "base_storage_legacy_identity";
    private static final String BASE_STORAGE_LEGACY_PUSH = "base_storage_legacy_push";
    private static final String BASE_STORAGE_SDK = "base_storage_sdk";
    private static final String BASE_STORAGE_SETTINGS = "base_storage_settings";
    private static final String BELVEDERE_DIR = "belvedere_dir";
    private static final String CACHE_DIR = "cache_dir";
    private static final String DATA_DIR = "data_dir";
    static final String GSON_SERIALIZER = "gson_serializer";
    private static final String LEGACY_IDENTITY_STORAGE_FILE_NAME = "zendesk-token";
    private static final String LEGACY_PUSH_ID_STORAGE_FILE_NAME = "zendesk-push-token";
    private static final int MAX_CACHE_SIZE = 20971520;
    private static final String STORAGE_NAME_ADDITIONAL_SDK = "additional_sdk";
    private static final String STORAGE_NAME_CORE_SDK = "sdk";
    private static final String STORAGE_NAME_IDENTITY = "identity";
    private static final String STORAGE_NAME_MEDIA_CACHE = "media_cache";
    private static final String STORAGE_NAME_RESPONSE_CACHE = "response_cache";
    private static final String STORAGE_NAME_SETTINGS = "settings";
    private static final String ZENDESK_DIR_NAME = "zendesk";
    private static final String STORAGE_BELVEDERE_CACHE = "belvedere-data-v2" + File.separator + "user" + File.separator + ZENDESK_DIR_NAME;

    ZendeskStorageModule() {
    }

    private static SharedPreferences getSharedPrefs(Context context, String str) {
        return context.getSharedPreferences(str, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Singleton
    @Named(BASE_STORAGE_ADDITIONAL_SDK)
    public static BaseStorage provideAdditionalSdkBaseStorage(@Named("application_context") Context context, @Named("gson_serializer") Serializer serializer) {
        return new SharedPreferencesStorage(getSharedPrefs(context, storageName(STORAGE_NAME_ADDITIONAL_SDK)), serializer);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Singleton
    public static AuthenticationProvider provideAuthProvider(IdentityManager identityManager) {
        return new ZendeskAuthenticationProvider(identityManager);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Singleton
    public static Cache provideCache(@Named("cache_dir") File file) {
        return new Cache(new File(file, storageName(STORAGE_NAME_RESPONSE_CACHE)), 20971520L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Singleton
    public static CoreSettingsStorage provideCoreSettingsStorage(SettingsStorage settingsStorage) {
        return new ZendeskCoreSettingsStorage(settingsStorage);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Singleton
    @Named(BASE_STORAGE_IDENTITY)
    public static BaseStorage provideIdentityBaseStorage(@Named("application_context") Context context, @Named("gson_serializer") Serializer serializer) {
        return new SharedPreferencesStorage(getSharedPrefs(context, storageName(STORAGE_NAME_IDENTITY)), serializer);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Singleton
    public static IdentityManager provideIdentityManager(IdentityStorage identityStorage) {
        return new ZendeskIdentityManager(identityStorage);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Singleton
    public static IdentityStorage provideIdentityStorage(@Named("base_storage_identity") BaseStorage baseStorage) {
        return new ZendeskIdentityStorage(baseStorage);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Singleton
    @Named(BASE_STORAGE_LEGACY_IDENTITY)
    public static SharedPreferencesStorage provideLegacyIdentityBaseStorage(@Named("application_context") Context context, @Named("gson_serializer") Serializer serializer) {
        return new SharedPreferencesStorage(getSharedPrefs(context, LEGACY_IDENTITY_STORAGE_FILE_NAME), serializer);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Singleton
    public static LegacyIdentityMigrator provideLegacyIdentityStorage(@Named("base_storage_legacy_identity") SharedPreferencesStorage sharedPreferencesStorage, @Named("base_storage_legacy_push") SharedPreferencesStorage sharedPreferencesStorage2, IdentityStorage identityStorage, IdentityManager identityManager, PushDeviceIdStorage pushDeviceIdStorage) {
        return new LegacyIdentityMigrator(sharedPreferencesStorage, sharedPreferencesStorage2, identityStorage, identityManager, pushDeviceIdStorage);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Singleton
    @Named(BASE_STORAGE_LEGACY_PUSH)
    public static SharedPreferencesStorage provideLegacyPushBaseStorage(@Named("application_context") Context context, @Named("gson_serializer") Serializer serializer) {
        return new SharedPreferencesStorage(getSharedPrefs(context, LEGACY_PUSH_ID_STORAGE_FILE_NAME), serializer);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Singleton
    public static MemoryCache provideMemoryCache() {
        return new ZendeskLruMemoryCache();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Singleton
    public static PushDeviceIdStorage providePushDeviceIdStorage(@Named("base_storage_additional_sdk") BaseStorage baseStorage) {
        return new ZendeskPushDeviceIdStorage(baseStorage);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Singleton
    @Named(BASE_STORAGE_SDK)
    public static BaseStorage provideSdkBaseStorage(@Named("application_context") Context context, @Named("gson_serializer") Serializer serializer) {
        return new SharedPreferencesStorage(getSharedPrefs(context, storageName("sdk")), serializer);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Singleton
    public static Storage provideSdkStorage(SettingsStorage settingsStorage, SessionStorage sessionStorage, @Named("base_storage_sdk") BaseStorage baseStorage, MemoryCache memoryCache) {
        return new ZendeskStorage(sessionStorage, settingsStorage, baseStorage, memoryCache);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Singleton
    @Named(GSON_SERIALIZER)
    public static Serializer provideSerializer(Gson gson) {
        return new GsonSerializer(gson);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Singleton
    public static SessionStorage provideSessionStorage(IdentityStorage identityStorage, @Named("base_storage_additional_sdk") BaseStorage baseStorage, @Named("base_storage_disk_lru") BaseStorage baseStorage2, Cache cache, @Named("cache_dir") File file, @Named("data_dir") File file2, @Named("belvedere_dir") File file3) {
        return new ZendeskSessionStorage(identityStorage, baseStorage, cache, baseStorage2, file, file2, file3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Singleton
    @Named(BASE_STORAGE_SETTINGS)
    public static BaseStorage provideSettingsBaseStorage(@Named("application_context") Context context, @Named("gson_serializer") Serializer serializer) {
        return new SharedPreferencesStorage(getSharedPrefs(context, storageName(STORAGE_NAME_SETTINGS)), serializer);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Singleton
    public static SettingsStorage provideSettingsStorage(@Named("base_storage_settings") BaseStorage baseStorage) {
        return new ZendeskSettingsStorage(baseStorage);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Singleton
    @Named(BELVEDERE_DIR)
    public static File providesBelvedereDir(@Named("application_context") Context context) {
        return new File(context.getCacheDir(), STORAGE_BELVEDERE_CACHE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Singleton
    @Named(CACHE_DIR)
    public static File providesCacheDir(@Named("application_context") Context context) {
        return new File(context.getCacheDir(), ZENDESK_DIR_NAME);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Singleton
    @Named(DATA_DIR)
    public static File providesDataDir(@Named("application_context") Context context) {
        return new File(context.getFilesDir(), ZENDESK_DIR_NAME);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Singleton
    @Named(BASE_STORAGE_DISK_LRU)
    public static BaseStorage providesDiskLruStorage(@Named("cache_dir") File file, @Named("gson_serializer") Serializer serializer) {
        return new ZendeskDiskLruCache(new File(file, storageName(STORAGE_NAME_MEDIA_CACHE)), serializer, MAX_CACHE_SIZE);
    }

    private static String storageName(String str) {
        return String.format(Locale.US, "zendesk_%s", str);
    }
}
