package zendesk.core;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import com.google.gson.JsonElement;
import com.zendesk.logger.Logger;
import com.zendesk.service.ErrorResponse;
import com.zendesk.service.RetrofitZendeskCallbackAdapter;
import com.zendesk.service.ZendeskCallback;
import com.zendesk.util.LocaleUtil;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import retrofit2.Response;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskSettingsProvider.class */
public class ZendeskSettingsProvider implements SettingsProvider, SdkSettingsProviderInternal {
    private static final String LOG_TAG = "ZendeskSdkSettingsProvi";
    static final int SDK_SETTINGS_MAX_AGE_HOURS = 1;
    private final String applicationId;
    private final Context context;
    private final CoreSettingsStorage coreSettingsStorage;
    private final Serializer serializer;
    private final SdkSettingsService settingsService;
    private final SettingsStorage settingsStorage;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ZendeskSettingsProvider(SdkSettingsService sdkSettingsService, SettingsStorage settingsStorage, CoreSettingsStorage coreSettingsStorage, Serializer serializer, String str, Context context) {
        this.settingsService = sdkSettingsService;
        this.settingsStorage = settingsStorage;
        this.coreSettingsStorage = coreSettingsStorage;
        this.serializer = serializer;
        this.applicationId = str;
        this.context = context;
    }

    @NonNull
    private Map<String, JsonElement> getSettingsInternal(@Nullable Locale locale) {
        try {
            Response<Map<String, JsonElement>> execute = this.settingsService.getSettings(LocaleUtil.toLanguageTag(locale), this.applicationId).execute();
            return execute.body() != null ? new HashMap(execute.body()) : new HashMap(0);
        } catch (IOException e) {
            Logger.m295e(LOG_TAG, "Settings retrieval failed, returning empty map.", new Object[0]);
            return new HashMap(0);
        }
    }

    private void getSettingsInternal(Locale locale, ZendeskCallback<Map<String, JsonElement>> zendeskCallback) {
        this.settingsService.getSettings(LocaleUtil.toLanguageTag(locale), this.applicationId).enqueue(new RetrofitZendeskCallbackAdapter(zendeskCallback));
    }

    @VisibleForTesting
    @NonNull
    CoreSettings extractCoreSettings(@Nullable Map<String, JsonElement> map) {
        CoreSettings coreSettings = (CoreSettings) this.serializer.deserialize(map == null ? null : map.get("core"), CoreSettings.class);
        return coreSettings != null ? coreSettings : ZendeskCoreSettingsStorage.DEFAULT_CORE_SETTINGS;
    }

    @Override // zendesk.core.SdkSettingsProviderInternal
    public BlipsSettings getBlipsSettings() {
        return this.coreSettingsStorage.getBlipsSettings();
    }

    @Override // zendesk.core.SdkSettingsProviderInternal
    public CoreSettings getCoreSettings() {
        if (this.settingsStorage.areSettingsUpToDate(1L, TimeUnit.HOURS)) {
            return this.coreSettingsStorage.getCoreSettings();
        }
        Map<String, JsonElement> settingsInternal = getSettingsInternal(DeviceInfo.getCurrentLocale(this.context));
        if (settingsInternal.isEmpty()) {
            return new CoreSettings(new Date(0L), null);
        }
        this.settingsStorage.storeRawSettings(settingsInternal);
        return extractCoreSettings(settingsInternal);
    }

    @Override // zendesk.core.SettingsProvider
    public void getCoreSettings(@Nullable final ZendeskCallback<CoreSettings> zendeskCallback) {
        if (!this.settingsStorage.areSettingsUpToDate(1L, TimeUnit.HOURS)) {
            getSettingsInternal(DeviceInfo.getCurrentLocale(this.context), new ZendeskCallback<Map<String, JsonElement>>() { // from class: zendesk.core.ZendeskSettingsProvider.1
                @Override // com.zendesk.service.ZendeskCallback
                public void onError(ErrorResponse errorResponse) {
                    if (zendeskCallback != null) {
                        zendeskCallback.onSuccess(ZendeskSettingsProvider.this.coreSettingsStorage.getCoreSettings());
                    }
                }

                public void onSuccess(Map<String, JsonElement> map) {
                    ZendeskSettingsProvider.this.settingsStorage.storeRawSettings(map);
                    if (zendeskCallback != null) {
                        zendeskCallback.onSuccess(ZendeskSettingsProvider.this.extractCoreSettings(map));
                    }
                }
            });
        } else if (zendeskCallback != null) {
            zendeskCallback.onSuccess(this.coreSettingsStorage.getCoreSettings());
        }
    }

    @Override // zendesk.core.SettingsProvider
    public <E extends Settings> void getSettingsForSdk(@NonNull final String str, @NonNull final Class<E> cls, final ZendeskCallback<SettingsPack<E>> zendeskCallback) {
        if (!this.settingsStorage.areSettingsUpToDate(1L, TimeUnit.HOURS)) {
            getSettingsInternal(DeviceInfo.getCurrentLocale(this.context), new ZendeskCallback<Map<String, JsonElement>>() { // from class: zendesk.core.ZendeskSettingsProvider.2
                @Override // com.zendesk.service.ZendeskCallback
                public void onError(ErrorResponse errorResponse) {
                    if (zendeskCallback != null) {
                        if (ZendeskSettingsProvider.this.settingsStorage.hasStoredSettings()) {
                            zendeskCallback.onSuccess(new SettingsPack(ZendeskSettingsProvider.this.coreSettingsStorage.getCoreSettings(), (Settings) ZendeskSettingsProvider.this.settingsStorage.getSettings(str, cls)));
                            return;
                        }
                        zendeskCallback.onError(errorResponse);
                    }
                }

                public void onSuccess(Map<String, JsonElement> map) {
                    ZendeskSettingsProvider.this.settingsStorage.storeRawSettings(map);
                    if (zendeskCallback != null) {
                        zendeskCallback.onSuccess(new SettingsPack(ZendeskSettingsProvider.this.extractCoreSettings(map), (Settings) ZendeskSettingsProvider.this.serializer.deserialize(map.get(str), cls)));
                    }
                }
            });
        } else if (zendeskCallback != null) {
            zendeskCallback.onSuccess(new SettingsPack<>(this.coreSettingsStorage.getCoreSettings(), (Settings) this.settingsStorage.getSettings(str, cls)));
        }
    }
}
