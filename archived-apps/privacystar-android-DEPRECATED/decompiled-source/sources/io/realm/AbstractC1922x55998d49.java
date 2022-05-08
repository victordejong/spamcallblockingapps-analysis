package io.realm;

import com.privacystar.core.data.model.PlayStorePurchase;
/* renamed from: io.realm.com_privacystar_core_data_model_RegistrationDataRealmProxyInterface */
/* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_RegistrationDataRealmProxyInterface.class */
public interface AbstractC1922x55998d49 {
    String realmGet$cachedApkVersion();

    String realmGet$cachedMcc();

    String realmGet$cachedMnc();

    String realmGet$cachedOsVersion();

    String realmGet$cachedPhoneNumber();

    String realmGet$dataStatus();

    String realmGet$deviceId();

    String realmGet$fcmKey();

    String realmGet$packageName();

    RealmList<PlayStorePurchase> realmGet$playStorePurchases();

    void realmSet$cachedApkVersion(String str);

    void realmSet$cachedMcc(String str);

    void realmSet$cachedMnc(String str);

    void realmSet$cachedOsVersion(String str);

    void realmSet$cachedPhoneNumber(String str);

    void realmSet$dataStatus(String str);

    void realmSet$deviceId(String str);

    void realmSet$fcmKey(String str);

    void realmSet$packageName(String str);

    void realmSet$playStorePurchases(RealmList<PlayStorePurchase> realmList);
}
