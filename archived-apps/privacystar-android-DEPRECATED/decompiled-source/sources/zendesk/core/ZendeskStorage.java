package zendesk.core;

import android.support.annotation.NonNull;
import com.zendesk.util.DigestUtils;
import java.util.Locale;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskStorage.class */
class ZendeskStorage implements Storage {
    private static final String SDK_HASH_FORMAT = "%s_%s_%s";
    private static final String SDK_HASH_KEY = "sdk_hash";
    private final MemoryCache memoryCache;
    private final BaseStorage sdkDetailsStorage;
    private final SessionStorage sessionStorage;
    private final SettingsStorage settingsStorage;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ZendeskStorage(SessionStorage sessionStorage, SettingsStorage settingsStorage, BaseStorage baseStorage, MemoryCache memoryCache) {
        this.sessionStorage = sessionStorage;
        this.settingsStorage = settingsStorage;
        this.sdkDetailsStorage = baseStorage;
        this.memoryCache = memoryCache;
    }

    @NonNull
    private String generateSdkHash(ApplicationConfiguration applicationConfiguration) {
        return DigestUtils.sha1(String.format(Locale.US, SDK_HASH_FORMAT, applicationConfiguration.getZendeskUrl().toLowerCase(Locale.US), applicationConfiguration.getApplicationId().toLowerCase(Locale.US), applicationConfiguration.getOauthClientId().toLowerCase(Locale.US)));
    }

    @Override // zendesk.core.Storage
    public void clear() {
        this.sessionStorage.clear();
        this.settingsStorage.clear();
        this.memoryCache.clear();
    }

    @Override // zendesk.core.Storage
    public SessionStorage getSessionStorage() {
        return this.sessionStorage;
    }

    @Override // zendesk.core.Storage
    public boolean hasSdkConfigChanged(ApplicationConfiguration applicationConfiguration) {
        return !generateSdkHash(applicationConfiguration).equals(this.sdkDetailsStorage.get(SDK_HASH_KEY));
    }

    @Override // zendesk.core.Storage
    public void storeSdkHash(ApplicationConfiguration applicationConfiguration) {
        this.sdkDetailsStorage.put(SDK_HASH_KEY, generateSdkHash(applicationConfiguration));
    }
}
