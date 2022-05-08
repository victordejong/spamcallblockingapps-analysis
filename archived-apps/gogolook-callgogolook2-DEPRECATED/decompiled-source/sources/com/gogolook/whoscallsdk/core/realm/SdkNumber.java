package com.gogolook.whoscallsdk.core.realm;

import io.realm.RealmObject;
import io.realm.annotations.Required;
import io.realm.com_gogolook_whoscallsdk_core_realm_SdkNumberRealmProxyInterface;
import io.realm.internal.RealmObjectProxy;
/* loaded from: classes2-dex2jar.jar:com/gogolook/whoscallsdk/core/realm/SdkNumber.class */
public class SdkNumber extends RealmObject implements com_gogolook_whoscallsdk_core_realm_SdkNumberRealmProxyInterface {
    @Required
    public String data;
    @Required
    public String e164;
    @Required
    public String etag;
    public long expiredtime;

    public SdkNumber() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    @Override // io.realm.com_gogolook_whoscallsdk_core_realm_SdkNumberRealmProxyInterface
    public String realmGet$data() {
        return this.data;
    }

    @Override // io.realm.com_gogolook_whoscallsdk_core_realm_SdkNumberRealmProxyInterface
    public String realmGet$e164() {
        return this.e164;
    }

    @Override // io.realm.com_gogolook_whoscallsdk_core_realm_SdkNumberRealmProxyInterface
    public String realmGet$etag() {
        return this.etag;
    }

    @Override // io.realm.com_gogolook_whoscallsdk_core_realm_SdkNumberRealmProxyInterface
    public long realmGet$expiredtime() {
        return this.expiredtime;
    }

    @Override // io.realm.com_gogolook_whoscallsdk_core_realm_SdkNumberRealmProxyInterface
    public void realmSet$data(String str) {
        this.data = str;
    }

    @Override // io.realm.com_gogolook_whoscallsdk_core_realm_SdkNumberRealmProxyInterface
    public void realmSet$e164(String str) {
        this.e164 = str;
    }

    @Override // io.realm.com_gogolook_whoscallsdk_core_realm_SdkNumberRealmProxyInterface
    public void realmSet$etag(String str) {
        this.etag = str;
    }

    @Override // io.realm.com_gogolook_whoscallsdk_core_realm_SdkNumberRealmProxyInterface
    public void realmSet$expiredtime(long j) {
        this.expiredtime = j;
    }
}
