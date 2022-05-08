package io.fabric.sdk.android;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import io.fabric.sdk.android.services.common.ApiKey;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.DataCollectionArbiter;
import io.fabric.sdk.android.services.common.DeliveryMechanism;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.network.DefaultHttpRequestFactory;
import io.fabric.sdk.android.services.network.HttpRequestFactory;
import io.fabric.sdk.android.services.settings.AppRequestData;
import io.fabric.sdk.android.services.settings.AppSettingsData;
import io.fabric.sdk.android.services.settings.CreateAppSpiCall;
import io.fabric.sdk.android.services.settings.IconRequest;
import io.fabric.sdk.android.services.settings.Settings;
import io.fabric.sdk.android.services.settings.SettingsData;
import io.fabric.sdk.android.services.settings.UpdateAppSpiCall;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Future;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:io/fabric/sdk/android/Onboarding.class */
public class Onboarding extends Kit<Boolean> {
    private static final String BINARY_BUILD_TYPE = "binary";
    static final String CRASHLYTICS_API_ENDPOINT = "com.crashlytics.ApiEndpoint";
    private String applicationLabel;
    private String installerPackageName;
    private final Future<Map<String, KitInfo>> kitsFinder;
    private PackageInfo packageInfo;
    private PackageManager packageManager;
    private String packageName;
    private final Collection<Kit> providedKits;
    private final HttpRequestFactory requestFactory = new DefaultHttpRequestFactory();
    private String targetAndroidSdkVersion;
    private String versionCode;
    private String versionName;

    public Onboarding(Future<Map<String, KitInfo>> future, Collection<Kit> collection) {
        this.kitsFinder = future;
        this.providedKits = collection;
    }

    private AppRequestData buildAppRequest(IconRequest iconRequest, Collection<KitInfo> collection) {
        Context context = getContext();
        return new AppRequestData(new ApiKey().getValue(context), getIdManager().getAppIdentifier(), this.versionName, this.versionCode, CommonUtils.createInstanceIdFrom(CommonUtils.resolveBuildId(context)), this.applicationLabel, DeliveryMechanism.determineFrom(this.installerPackageName).getId(), this.targetAndroidSdkVersion, "0", iconRequest, collection);
    }

    private boolean performAutoConfigure(String str, AppSettingsData appSettingsData, Collection<KitInfo> collection) {
        boolean z;
        if (AppSettingsData.STATUS_NEW.equals(appSettingsData.status)) {
            if (performCreateApp(str, appSettingsData, collection)) {
                z = Settings.getInstance().loadSettingsSkippingCache();
            } else {
                Fabric.getLogger().mo285e(Fabric.TAG, "Failed to create app with Crashlytics service.", null);
                z = false;
            }
        } else if (AppSettingsData.STATUS_CONFIGURED.equals(appSettingsData.status)) {
            z = Settings.getInstance().loadSettingsSkippingCache();
        } else {
            if (appSettingsData.updateRequired) {
                Fabric.getLogger().mo288d(Fabric.TAG, "Server says an update is required - forcing a full App update.");
                performUpdateApp(str, appSettingsData, collection);
            }
            z = true;
        }
        return z;
    }

    private boolean performCreateApp(String str, AppSettingsData appSettingsData, Collection<KitInfo> collection) {
        return new CreateAppSpiCall(this, getOverridenSpiEndpoint(), appSettingsData.url, this.requestFactory).invoke(buildAppRequest(IconRequest.build(getContext(), str), collection));
    }

    private boolean performUpdateApp(AppSettingsData appSettingsData, IconRequest iconRequest, Collection<KitInfo> collection) {
        return new UpdateAppSpiCall(this, getOverridenSpiEndpoint(), appSettingsData.url, this.requestFactory).invoke(buildAppRequest(iconRequest, collection));
    }

    private boolean performUpdateApp(String str, AppSettingsData appSettingsData, Collection<KitInfo> collection) {
        return performUpdateApp(appSettingsData, IconRequest.build(getContext(), str), collection);
    }

    private SettingsData retrieveSettingsData() {
        try {
            Settings.getInstance().initialize(this, this.idManager, this.requestFactory, this.versionCode, this.versionName, getOverridenSpiEndpoint(), DataCollectionArbiter.getInstance(getContext())).loadSettingsData();
            return Settings.getInstance().awaitSettingsData();
        } catch (Exception e) {
            Fabric.getLogger().mo285e(Fabric.TAG, "Error dealing with settings", e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.fabric.sdk.android.Kit
    public Boolean doInBackground() {
        boolean performAutoConfigure;
        String appIconHashOrNull = CommonUtils.getAppIconHashOrNull(getContext());
        SettingsData retrieveSettingsData = retrieveSettingsData();
        if (retrieveSettingsData != null) {
            try {
                performAutoConfigure = performAutoConfigure(appIconHashOrNull, retrieveSettingsData.appData, mergeKits(this.kitsFinder != null ? this.kitsFinder.get() : new HashMap<>(), this.providedKits).values());
            } catch (Exception e) {
                Fabric.getLogger().mo285e(Fabric.TAG, "Error performing auto configuration.", e);
            }
            return Boolean.valueOf(performAutoConfigure);
        }
        performAutoConfigure = false;
        return Boolean.valueOf(performAutoConfigure);
    }

    @Override // io.fabric.sdk.android.Kit
    public String getIdentifier() {
        return "io.fabric.sdk.android:fabric";
    }

    String getOverridenSpiEndpoint() {
        return CommonUtils.getStringsFileValue(getContext(), CRASHLYTICS_API_ENDPOINT);
    }

    @Override // io.fabric.sdk.android.Kit
    public String getVersion() {
        return "1.4.8.32";
    }

    Map<String, KitInfo> mergeKits(Map<String, KitInfo> map, Collection<Kit> collection) {
        for (Kit kit : collection) {
            if (!map.containsKey(kit.getIdentifier())) {
                map.put(kit.getIdentifier(), new KitInfo(kit.getIdentifier(), kit.getVersion(), "binary"));
            }
        }
        return map;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.fabric.sdk.android.Kit
    public boolean onPreExecute() {
        try {
            this.installerPackageName = getIdManager().getInstallerPackageName();
            this.packageManager = getContext().getPackageManager();
            this.packageName = getContext().getPackageName();
            this.packageInfo = this.packageManager.getPackageInfo(this.packageName, 0);
            this.versionCode = Integer.toString(this.packageInfo.versionCode);
            this.versionName = this.packageInfo.versionName == null ? IdManager.DEFAULT_VERSION_NAME : this.packageInfo.versionName;
            this.applicationLabel = this.packageManager.getApplicationLabel(getContext().getApplicationInfo()).toString();
            this.targetAndroidSdkVersion = Integer.toString(getContext().getApplicationInfo().targetSdkVersion);
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            Fabric.getLogger().mo285e(Fabric.TAG, "Failed init", e);
            return false;
        }
    }
}
