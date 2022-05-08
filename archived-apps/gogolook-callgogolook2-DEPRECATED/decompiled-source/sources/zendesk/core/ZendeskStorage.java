package zendesk.core;

import androidx.annotation.NonNull;
import java.util.Locale;
import p081h.p451q.p455d.C10860b;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskStorage.class */
public class ZendeskStorage implements Storage {
    public final MemoryCache memoryCache;
    public final BaseStorage sdkDetailsStorage;
    public final SessionStorage sessionStorage;
    public final SettingsStorage settingsStorage;

    public ZendeskStorage(SessionStorage sessionStorage, SettingsStorage settingsStorage, BaseStorage baseStorage, MemoryCache memoryCache) {
        this.sessionStorage = sessionStorage;
        this.settingsStorage = settingsStorage;
        this.sdkDetailsStorage = baseStorage;
        this.memoryCache = memoryCache;
    }

    @Override // zendesk.core.Storage
    public void clear() {
        this.sessionStorage.clear();
        this.settingsStorage.clear();
        this.memoryCache.clear();
    }

    @NonNull
    public final String generateSdkHash(ApplicationConfiguration applicationConfiguration) {
        return C10860b.m10396a(String.format(Locale.US, "%s_%s_%s", applicationConfiguration.getZendeskUrl().toLowerCase(Locale.US), applicationConfiguration.getApplicationId().toLowerCase(Locale.US), applicationConfiguration.getOauthClientId().toLowerCase(Locale.US)));
    }

    @Override // zendesk.core.Storage
    public SessionStorage getSessionStorage() {
        return this.sessionStorage;
    }

    @Override // zendesk.core.Storage
    public boolean hasSdkConfigChanged(ApplicationConfiguration applicationConfiguration) {
        return !generateSdkHash(applicationConfiguration).equals(this.sdkDetailsStorage.get("sdk_hash"));
    }

    @Override // zendesk.core.Storage
    public void storeSdkHash(ApplicationConfiguration applicationConfiguration) {
        this.sdkDetailsStorage.put("sdk_hash", generateSdkHash(applicationConfiguration));
    }
}
