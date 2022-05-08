package com.privacystar.core.data.model;

import com.privacystar.core.util.Text;
import io.realm.AbstractC1914x8c8cddf0;
import io.realm.RealmObject;
import io.realm.internal.RealmObjectProxy;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/DeviceExclusion.class */
public class DeviceExclusion extends RealmObject implements AbstractC1914x8c8cddf0 {
    private String make;
    private String model;

    /* renamed from: os */
    private String f256os;

    public DeviceExclusion() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public DeviceExclusion(String str, String str2, String str3) {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$make(str);
        realmSet$model(str2);
        realmSet$os(str3);
    }

    private boolean stringPatternMatches(String str, String str2) {
        return Text.isBlank(str) || str.equalsIgnoreCase(str2);
    }

    public String getMake() {
        return realmGet$make();
    }

    public String getModel() {
        return realmGet$model();
    }

    public String getOs() {
        return realmGet$os();
    }

    public boolean matchesPattern(DeviceExclusion deviceExclusion) {
        return stringPatternMatches(deviceExclusion.realmGet$make(), realmGet$make()) && stringPatternMatches(deviceExclusion.realmGet$model(), realmGet$model()) && stringPatternMatches(deviceExclusion.realmGet$os(), realmGet$os());
    }

    @Override // io.realm.AbstractC1914x8c8cddf0
    public String realmGet$make() {
        return this.make;
    }

    @Override // io.realm.AbstractC1914x8c8cddf0
    public String realmGet$model() {
        return this.model;
    }

    @Override // io.realm.AbstractC1914x8c8cddf0
    public String realmGet$os() {
        return this.f256os;
    }

    @Override // io.realm.AbstractC1914x8c8cddf0
    public void realmSet$make(String str) {
        this.make = str;
    }

    @Override // io.realm.AbstractC1914x8c8cddf0
    public void realmSet$model(String str) {
        this.model = str;
    }

    @Override // io.realm.AbstractC1914x8c8cddf0
    public void realmSet$os(String str) {
        this.f256os = str;
    }

    public void setMake(String str) {
        realmSet$make(str);
    }

    public void setModel(String str) {
        realmSet$model(str);
    }

    public void setOs(String str) {
        realmSet$os(str);
    }
}
