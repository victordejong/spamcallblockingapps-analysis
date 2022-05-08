package zendesk.core;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.aotter.net.trek.model.AdFetch;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import p081h.p451q.p453b.C10845a;
import p081h.p451q.p454c.AbstractC10851a;
import p081h.p451q.p454c.AbstractC10857e;
import p081h.p451q.p454c.C10854d;
import p081h.p451q.p455d.C10862d;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskBlipsProvider.class */
public class ZendeskBlipsProvider implements BlipsProvider, BlipsCoreProvider {
    public final String appId;
    public final BlipsService blipsService;
    public final CoreSettingsStorage coreSettingsStorage;
    public final DeviceInfo deviceInfo;
    public final Executor executor;
    public final IdentityManager identityManager;
    public final Serializer serializer;

    public ZendeskBlipsProvider(BlipsService blipsService, DeviceInfo deviceInfo, Serializer serializer, IdentityManager identityManager, String str, CoreSettingsStorage coreSettingsStorage, Executor executor) {
        this.blipsService = blipsService;
        this.deviceInfo = deviceInfo;
        this.serializer = serializer;
        this.identityManager = identityManager;
        this.appId = str;
        this.coreSettingsStorage = coreSettingsStorage;
        this.executor = executor;
    }

    public final Map<String, Object> addDeviceInfoToValue(Map<String, Object> map) {
        HashMap hashMap = new HashMap();
        hashMap.put("device", this.deviceInfo.getInfo());
        if (map != null && !map.isEmpty()) {
            hashMap.put(AdFetch.AD_PAYLOAD_KEY, map);
        }
        return hashMap;
    }

    @Override // zendesk.core.BlipsCoreProvider
    public void coreInitialized() {
        HashMap hashMap = new HashMap();
        hashMap.put("code", "java");
        sendBlip(new UserAction("3.0.3", "core_sdk", "CoreSDK", "init", null, hashMap), BlipsGroup.REQUIRED);
    }

    @Override // zendesk.core.BlipsCoreProvider
    public void corePushDisabled(Long l) {
        sendBlip(BlipsGroup.REQUIRED, new UserAction("3.0.3", "core_sdk", "CoreSDK", "PushOff"), l);
    }

    @Override // zendesk.core.BlipsCoreProvider
    public void corePushEnabled() {
        sendBlip(new UserAction("3.0.3", "core_sdk", "CoreSDK", "PushOn"), BlipsGroup.REQUIRED);
    }

    public BlipsRequest createBlipsRequest(UserAction userAction, String str, String str2, Long l) {
        return BlipsRequest.buildUserAction(str, BlipsFormatHelper.nowAsString(new Date()), l, str2, userAction.getVersion(), userAction.getChannel(), userAction.getCategory(), userAction.getAction(), userAction.getLabel(), addDeviceInfoToValue(userAction.getValue()));
    }

    @VisibleForTesting
    public void dispatchBlip(final BlipsRequest blipsRequest) {
        this.executor.execute(new Runnable() { // from class: zendesk.core.ZendeskBlipsProvider.1
            @Override // java.lang.Runnable
            public void run() {
                ZendeskBlipsProvider.this.blipsService.send(ZendeskBlipsProvider.this.serializer.serialize(blipsRequest)).mo140a(new C10854d(new AbstractC10857e<Void>(this) { // from class: zendesk.core.ZendeskBlipsProvider.1.1
                    @Override // p081h.p451q.p454c.AbstractC10857e
                    public void onError(AbstractC10851a aVar) {
                        C10845a.m10422a("ZendeskBlipsProvider", "Unable to send Blip | Error: %s", aVar.mo10410a());
                    }

                    public void onSuccess(Void r2) {
                    }
                }));
            }
        });
    }

    @VisibleForTesting
    public void sendBlip(@NonNull BlipsGroup blipsGroup, @NonNull UserAction userAction, Long l) {
        if (this.coreSettingsStorage.getBlipsSettings().getBlipsPermissions().isEnabled(blipsGroup) && C10862d.m10390b(userAction.getChannel())) {
            dispatchBlip(createBlipsRequest(userAction, this.identityManager.getBlipsUuid(), this.appId, l));
        }
    }

    @Override // zendesk.core.BlipsProvider
    public void sendBlip(@NonNull UserAction userAction, @NonNull BlipsGroup blipsGroup) {
        sendBlip(blipsGroup, userAction, this.identityManager.getUserId());
    }
}
