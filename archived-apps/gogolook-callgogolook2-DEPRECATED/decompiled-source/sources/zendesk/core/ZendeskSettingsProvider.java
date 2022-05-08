package zendesk.core;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import p081h.p203i.p384e.AbstractC10104j;
import p081h.p451q.p453b.C10845a;
import p081h.p451q.p454c.AbstractC10851a;
import p081h.p451q.p454c.AbstractC10857e;
import p081h.p451q.p454c.C10854d;
import p655o.C15299r;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskSettingsProvider.class */
public class ZendeskSettingsProvider implements SettingsProvider, SdkSettingsProviderInternal {
    public final ActionHandlerRegistry actionHandlerRegistry;
    public final String applicationId;
    public final Context context;
    public final CoreSettingsStorage coreSettingsStorage;
    public final Serializer serializer;
    public final SdkSettingsService settingsService;
    public final SettingsStorage settingsStorage;
    public final ZendeskLocaleConverter zendeskLocaleConverter;

    public ZendeskSettingsProvider(SdkSettingsService sdkSettingsService, SettingsStorage settingsStorage, CoreSettingsStorage coreSettingsStorage, ActionHandlerRegistry actionHandlerRegistry, Serializer serializer, ZendeskLocaleConverter zendeskLocaleConverter, String str, Context context) {
        this.settingsService = sdkSettingsService;
        this.settingsStorage = settingsStorage;
        this.coreSettingsStorage = coreSettingsStorage;
        this.actionHandlerRegistry = actionHandlerRegistry;
        this.serializer = serializer;
        this.zendeskLocaleConverter = zendeskLocaleConverter;
        this.applicationId = str;
        this.context = context;
    }

    @NonNull
    @VisibleForTesting
    public CoreSettings extractCoreSettings(@Nullable Map<String, AbstractC10104j> map) {
        CoreSettings coreSettings = (CoreSettings) this.serializer.deserialize(map == null ? null : map.get("core"), CoreSettings.class);
        return coreSettings != null ? coreSettings : ZendeskCoreSettingsStorage.DEFAULT_CORE_SETTINGS;
    }

    @Override // zendesk.core.SdkSettingsProviderInternal
    public CoreSettings getCoreSettings() {
        if (this.settingsStorage.areSettingsUpToDate(1L, TimeUnit.HOURS)) {
            return this.coreSettingsStorage.getCoreSettings();
        }
        Map<String, AbstractC10104j> settingsInternal = getSettingsInternal(DeviceInfo.getCurrentLocale(this.context));
        if (settingsInternal.isEmpty()) {
            return new CoreSettings(new Date(0L), null);
        }
        this.actionHandlerRegistry.updateSettings(settingsInternal);
        this.settingsStorage.storeRawSettings(settingsInternal);
        return extractCoreSettings(settingsInternal);
    }

    @Override // zendesk.core.SettingsProvider
    public <E extends Settings> void getSettingsForSdk(@NonNull final String str, @NonNull final Class<E> cls, final AbstractC10857e<SettingsPack<E>> eVar) {
        if (!this.settingsStorage.areSettingsUpToDate(1L, TimeUnit.HOURS)) {
            getSettingsInternal(DeviceInfo.getCurrentLocale(this.context), new AbstractC10857e<Map<String, AbstractC10104j>>() { // from class: zendesk.core.ZendeskSettingsProvider.2
                @Override // p081h.p451q.p454c.AbstractC10857e
                public void onError(AbstractC10851a aVar) {
                    if (eVar != null) {
                        if (ZendeskSettingsProvider.this.settingsStorage.hasStoredSettings()) {
                            eVar.onSuccess(new SettingsPack(ZendeskSettingsProvider.this.coreSettingsStorage.getCoreSettings(), (Settings) ZendeskSettingsProvider.this.settingsStorage.getSettings(str, cls)));
                            return;
                        }
                        eVar.onError(aVar);
                    }
                }

                public void onSuccess(Map<String, AbstractC10104j> map) {
                    ZendeskSettingsProvider.this.actionHandlerRegistry.updateSettings(map);
                    ZendeskSettingsProvider.this.settingsStorage.storeRawSettings(map);
                    if (eVar != null) {
                        eVar.onSuccess(new SettingsPack(ZendeskSettingsProvider.this.extractCoreSettings(map), (Settings) ZendeskSettingsProvider.this.serializer.deserialize(map.get(str), cls)));
                    }
                }
            });
        } else if (eVar != null) {
            eVar.onSuccess(new SettingsPack<>(this.coreSettingsStorage.getCoreSettings(), (Settings) this.settingsStorage.getSettings(str, cls)));
        }
    }

    @NonNull
    public final Map<String, AbstractC10104j> getSettingsInternal(@Nullable Locale locale) {
        try {
            C15299r<Map<String, AbstractC10104j>> execute = this.settingsService.getSettings(this.zendeskLocaleConverter.toHelpCenterLocaleString(locale), this.applicationId).execute();
            return execute.m95a() != null ? new HashMap(execute.m95a()) : new HashMap(0);
        } catch (IOException e) {
            C10845a.m10419b("ZendeskSdkSettingsProvi", "Settings retrieval failed, returning empty map.", new Object[0]);
            return new HashMap(0);
        }
    }

    public final void getSettingsInternal(Locale locale, AbstractC10857e<Map<String, AbstractC10104j>> eVar) {
        this.settingsService.getSettings(this.zendeskLocaleConverter.toHelpCenterLocaleString(locale), this.applicationId).mo140a(new C10854d(eVar));
    }
}
