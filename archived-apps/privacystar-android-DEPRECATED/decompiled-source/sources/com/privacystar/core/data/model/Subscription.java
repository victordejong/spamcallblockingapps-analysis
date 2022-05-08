package com.privacystar.core.data.model;

import com.privacystar.core.data.model.types.SubscriptionType;
import io.realm.RealmObject;
import io.realm.com_privacystar_core_data_model_SubscriptionRealmProxyInterface;
import io.realm.internal.RealmObjectProxy;
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/Subscription.class */
public class Subscription extends RealmObject implements com_privacystar_core_data_model_SubscriptionRealmProxyInterface {
    private Date expiration;
    private String subscriptionType;

    public Subscription() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public Date getExpiration() {
        return realmGet$expiration();
    }

    public String getSubscriptionText() {
        return realmGet$subscriptionType();
    }

    public SubscriptionType getSubscriptionType() {
        return SubscriptionType.fromString(realmGet$subscriptionType());
    }

    @Override // io.realm.com_privacystar_core_data_model_SubscriptionRealmProxyInterface
    public Date realmGet$expiration() {
        return this.expiration;
    }

    @Override // io.realm.com_privacystar_core_data_model_SubscriptionRealmProxyInterface
    public String realmGet$subscriptionType() {
        return this.subscriptionType;
    }

    @Override // io.realm.com_privacystar_core_data_model_SubscriptionRealmProxyInterface
    public void realmSet$expiration(Date date) {
        this.expiration = date;
    }

    @Override // io.realm.com_privacystar_core_data_model_SubscriptionRealmProxyInterface
    public void realmSet$subscriptionType(String str) {
        this.subscriptionType = str;
    }

    public void setExpiration(Date date) {
        realmSet$expiration(date);
    }

    public void setSubscriptionType(SubscriptionType subscriptionType) {
        realmSet$subscriptionType(subscriptionType.getDisplayName());
    }
}
