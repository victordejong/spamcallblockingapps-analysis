package com.revenuecat.purchases.subscriberattributes;

import java.util.Objects;
import kotlin.w.c.g;
import kotlin.w.c.k;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey.class */
public abstract class SubscriberAttributeKey {
    private final String backendKey;

    /* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$DeviceIdentifiers.class */
    public static abstract class DeviceIdentifiers {
        private DeviceIdentifiers() {
        }
    }

    private SubscriberAttributeKey(String str) {
        this.backendKey = str;
    }

    public /* synthetic */ SubscriberAttributeKey(String str, g gVar) {
        this(str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!k.b(getClass(), obj != null ? obj.getClass() : null)) {
            return false;
        }
        Objects.requireNonNull(obj, "null cannot be cast to non-null type com.revenuecat.purchases.subscriberattributes.SubscriberAttributeKey");
        return !(k.b(this.backendKey, ((SubscriberAttributeKey) obj).backendKey) ^ true);
    }

    public final String getBackendKey() {
        return this.backendKey;
    }

    public int hashCode() {
        return this.backendKey.hashCode();
    }

    public String toString() {
        return "SubscriberAttributeKey('" + this.backendKey + "')";
    }
}
