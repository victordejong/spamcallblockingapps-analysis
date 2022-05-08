package com.privacystar.core.data.model;

import com.privacystar.core.data.model.types.RegistrationDataStatus;
import io.realm.AbstractC1922x55998d49;
import io.realm.RealmList;
import io.realm.RealmObject;
import io.realm.annotations.PrimaryKey;
import io.realm.internal.RealmObjectProxy;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/RegistrationData.class */
public class RegistrationData extends RealmObject implements AbstractC1922x55998d49 {
    private String cachedApkVersion;
    private String cachedMcc;
    private String cachedMnc;
    private String cachedOsVersion;
    private String cachedPhoneNumber;
    @PrimaryKey
    private String dataStatus;
    private String deviceId;
    private String fcmKey;
    private String packageName;
    private RealmList<PlayStorePurchase> playStorePurchases;

    public RegistrationData() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public String getCachedApkVersion() {
        return realmGet$cachedApkVersion();
    }

    public String getCachedMcc() {
        return realmGet$cachedMcc();
    }

    public String getCachedMnc() {
        return realmGet$cachedMnc();
    }

    public String getCachedOsVersion() {
        return realmGet$cachedOsVersion();
    }

    public String getCachedPhoneNumber() {
        return realmGet$cachedPhoneNumber();
    }

    public String getDataStatus() {
        return realmGet$dataStatus();
    }

    public String getDeviceId() {
        return realmGet$deviceId();
    }

    public String getFcmKey() {
        return realmGet$fcmKey();
    }

    public String getPackageName() {
        return realmGet$packageName();
    }

    public RealmList<PlayStorePurchase> getPlayStorePurchases() {
        return realmGet$playStorePurchases();
    }

    public RegistrationDataStatus getRegistrationDataStatus() {
        return RegistrationDataStatus.getFromValue(realmGet$dataStatus());
    }

    @Override // io.realm.AbstractC1922x55998d49
    public String realmGet$cachedApkVersion() {
        return this.cachedApkVersion;
    }

    @Override // io.realm.AbstractC1922x55998d49
    public String realmGet$cachedMcc() {
        return this.cachedMcc;
    }

    @Override // io.realm.AbstractC1922x55998d49
    public String realmGet$cachedMnc() {
        return this.cachedMnc;
    }

    @Override // io.realm.AbstractC1922x55998d49
    public String realmGet$cachedOsVersion() {
        return this.cachedOsVersion;
    }

    @Override // io.realm.AbstractC1922x55998d49
    public String realmGet$cachedPhoneNumber() {
        return this.cachedPhoneNumber;
    }

    @Override // io.realm.AbstractC1922x55998d49
    public String realmGet$dataStatus() {
        return this.dataStatus;
    }

    @Override // io.realm.AbstractC1922x55998d49
    public String realmGet$deviceId() {
        return this.deviceId;
    }

    @Override // io.realm.AbstractC1922x55998d49
    public String realmGet$fcmKey() {
        return this.fcmKey;
    }

    @Override // io.realm.AbstractC1922x55998d49
    public String realmGet$packageName() {
        return this.packageName;
    }

    @Override // io.realm.AbstractC1922x55998d49
    public RealmList realmGet$playStorePurchases() {
        return this.playStorePurchases;
    }

    @Override // io.realm.AbstractC1922x55998d49
    public void realmSet$cachedApkVersion(String str) {
        this.cachedApkVersion = str;
    }

    @Override // io.realm.AbstractC1922x55998d49
    public void realmSet$cachedMcc(String str) {
        this.cachedMcc = str;
    }

    @Override // io.realm.AbstractC1922x55998d49
    public void realmSet$cachedMnc(String str) {
        this.cachedMnc = str;
    }

    @Override // io.realm.AbstractC1922x55998d49
    public void realmSet$cachedOsVersion(String str) {
        this.cachedOsVersion = str;
    }

    @Override // io.realm.AbstractC1922x55998d49
    public void realmSet$cachedPhoneNumber(String str) {
        this.cachedPhoneNumber = str;
    }

    @Override // io.realm.AbstractC1922x55998d49
    public void realmSet$dataStatus(String str) {
        this.dataStatus = str;
    }

    @Override // io.realm.AbstractC1922x55998d49
    public void realmSet$deviceId(String str) {
        this.deviceId = str;
    }

    @Override // io.realm.AbstractC1922x55998d49
    public void realmSet$fcmKey(String str) {
        this.fcmKey = str;
    }

    @Override // io.realm.AbstractC1922x55998d49
    public void realmSet$packageName(String str) {
        this.packageName = str;
    }

    @Override // io.realm.AbstractC1922x55998d49
    public void realmSet$playStorePurchases(RealmList realmList) {
        this.playStorePurchases = realmList;
    }

    public void setCachedApkVersion(String str) {
        realmSet$cachedApkVersion(str);
    }

    public void setCachedMcc(String str) {
        realmSet$cachedMcc(str);
    }

    public void setCachedMnc(String str) {
        realmSet$cachedMnc(str);
    }

    public void setCachedOsVersion(String str) {
        realmSet$cachedOsVersion(str);
    }

    public void setCachedPhoneNumber(String str) {
        realmSet$cachedPhoneNumber(str);
    }

    public void setDataStatus(RegistrationDataStatus registrationDataStatus) {
        realmSet$dataStatus(registrationDataStatus.getStatus());
    }

    public void setDataStatus(String str) {
        realmSet$dataStatus(str);
    }

    public void setDeviceId(String str) {
        realmSet$deviceId(str);
    }

    public void setFcmKey(String str) {
        realmSet$fcmKey(str);
    }

    public void setPackageName(String str) {
        realmSet$packageName(str);
    }

    public void setPlayStorePurchases(RealmList<PlayStorePurchase> realmList) {
        realmSet$playStorePurchases(realmList);
    }
}
