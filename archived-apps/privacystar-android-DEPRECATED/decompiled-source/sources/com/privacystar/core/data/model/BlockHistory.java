package com.privacystar.core.data.model;

import com.privacystar.core.data.call.caller.PhoneEventType;
import io.realm.RealmObject;
import io.realm.annotations.Index;
import io.realm.com_privacystar_core_data_model_BlockHistoryRealmProxyInterface;
import io.realm.internal.RealmObjectProxy;
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/BlockHistory.class */
public class BlockHistory extends RealmObject implements com_privacystar_core_data_model_BlockHistoryRealmProxyInterface {
    private String eventType;
    private String name;
    @Index
    private String number;
    private Date time;
    private Date uploaded;

    public BlockHistory() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public PhoneEventType getCallerType() {
        return realmGet$eventType() != null ? PhoneEventType.valueOf(realmGet$eventType()) : null;
    }

    public String getEventType() {
        return realmGet$eventType();
    }

    public String getName() {
        return realmGet$name();
    }

    public String getNumber() {
        return realmGet$number();
    }

    public Date getTime() {
        return realmGet$time();
    }

    public Date getUploaded() {
        return realmGet$uploaded();
    }

    @Override // io.realm.com_privacystar_core_data_model_BlockHistoryRealmProxyInterface
    public String realmGet$eventType() {
        return this.eventType;
    }

    @Override // io.realm.com_privacystar_core_data_model_BlockHistoryRealmProxyInterface
    public String realmGet$name() {
        return this.name;
    }

    @Override // io.realm.com_privacystar_core_data_model_BlockHistoryRealmProxyInterface
    public String realmGet$number() {
        return this.number;
    }

    @Override // io.realm.com_privacystar_core_data_model_BlockHistoryRealmProxyInterface
    public Date realmGet$time() {
        return this.time;
    }

    @Override // io.realm.com_privacystar_core_data_model_BlockHistoryRealmProxyInterface
    public Date realmGet$uploaded() {
        return this.uploaded;
    }

    @Override // io.realm.com_privacystar_core_data_model_BlockHistoryRealmProxyInterface
    public void realmSet$eventType(String str) {
        this.eventType = str;
    }

    @Override // io.realm.com_privacystar_core_data_model_BlockHistoryRealmProxyInterface
    public void realmSet$name(String str) {
        this.name = str;
    }

    @Override // io.realm.com_privacystar_core_data_model_BlockHistoryRealmProxyInterface
    public void realmSet$number(String str) {
        this.number = str;
    }

    @Override // io.realm.com_privacystar_core_data_model_BlockHistoryRealmProxyInterface
    public void realmSet$time(Date date) {
        this.time = date;
    }

    @Override // io.realm.com_privacystar_core_data_model_BlockHistoryRealmProxyInterface
    public void realmSet$uploaded(Date date) {
        this.uploaded = date;
    }

    public void setCallerType(PhoneEventType phoneEventType) {
        realmSet$eventType(phoneEventType.toString());
    }

    public void setEventType(String str) {
        realmSet$eventType(str);
    }

    public void setName(String str) {
        realmSet$name(str);
    }

    public void setNumber(String str) {
        realmSet$number(str);
    }

    public void setTime(Date date) {
        realmSet$time(date);
    }

    public void setUploaded(Date date) {
        realmSet$uploaded(date);
    }
}
