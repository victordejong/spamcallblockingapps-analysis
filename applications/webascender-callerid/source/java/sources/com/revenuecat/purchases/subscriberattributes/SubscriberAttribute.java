package com.revenuecat.purchases.subscriberattributes;

import com.revenuecat.purchases.common.DateProvider;
import java.util.Date;
import java.util.Map;
import java.util.Objects;
import kotlin.l;
import kotlin.p;
import kotlin.s.b0;
import kotlin.w.c.g;
import kotlin.w.c.k;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/subscriberattributes/SubscriberAttribute.class */
public final class SubscriberAttribute {
    private final DateProvider dateProvider;
    private final boolean isSynced;
    private final SubscriberAttributeKey key;
    private final Date setTime;
    private final String value;

    public SubscriberAttribute(SubscriberAttributeKey subscriberAttributeKey, String str, DateProvider dateProvider, Date date, boolean z) {
        k.f(subscriberAttributeKey, SubscriberAttributeKt.JSON_NAME_KEY);
        k.f(dateProvider, "dateProvider");
        k.f(date, "setTime");
        this.key = subscriberAttributeKey;
        this.value = str;
        this.dateProvider = dateProvider;
        this.setTime = date;
        this.isSynced = z;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ SubscriberAttribute(com.revenuecat.purchases.subscriberattributes.SubscriberAttributeKey r8, java.lang.String r9, com.revenuecat.purchases.common.DateProvider r10, java.util.Date r11, boolean r12, int r13, kotlin.w.c.g r14) {
        /*
            r7 = this;
            r0 = r13
            r1 = 4
            r0 = r0 & r1
            if (r0 == 0) goto Lf
            com.revenuecat.purchases.common.DefaultDateProvider r0 = new com.revenuecat.purchases.common.DefaultDateProvider
            r1 = r0
            r1.<init>()
            r10 = r0
        Lf:
            r0 = r13
            r1 = 8
            r0 = r0 & r1
            if (r0 == 0) goto L1f
            r0 = r10
            java.util.Date r0 = r0.getNow()
            r11 = r0
        L1f:
            r0 = r13
            r1 = 16
            r0 = r0 & r1
            if (r0 == 0) goto L2d
            r0 = 0
            r12 = r0
            goto L2d
        L2d:
            r0 = r7
            r1 = r8
            r2 = r9
            r3 = r10
            r4 = r11
            r5 = r12
            r0.<init>(r1, r2, r3, r4, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.revenuecat.purchases.subscriberattributes.SubscriberAttribute.<init>(com.revenuecat.purchases.subscriberattributes.SubscriberAttributeKey, java.lang.String, com.revenuecat.purchases.common.DateProvider, java.util.Date, boolean, int, kotlin.w.c.g):void");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SubscriberAttribute(String str, String str2, DateProvider dateProvider, Date date, boolean z) {
        this(SpecialSubscriberAttributesKt.getSubscriberAttributeKey(str), str2, (DateProvider) null, date, z, 4, (g) null);
        k.f(str, SubscriberAttributeKt.JSON_NAME_KEY);
        k.f(dateProvider, "dateProvider");
        k.f(date, "setTime");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ SubscriberAttribute(java.lang.String r8, java.lang.String r9, com.revenuecat.purchases.common.DateProvider r10, java.util.Date r11, boolean r12, int r13, kotlin.w.c.g r14) {
        /*
            r7 = this;
            r0 = r13
            r1 = 4
            r0 = r0 & r1
            if (r0 == 0) goto Lf
            com.revenuecat.purchases.common.DefaultDateProvider r0 = new com.revenuecat.purchases.common.DefaultDateProvider
            r1 = r0
            r1.<init>()
            r10 = r0
        Lf:
            r0 = r13
            r1 = 8
            r0 = r0 & r1
            if (r0 == 0) goto L1f
            r0 = r10
            java.util.Date r0 = r0.getNow()
            r11 = r0
        L1f:
            r0 = r13
            r1 = 16
            r0 = r0 & r1
            if (r0 == 0) goto L2d
            r0 = 0
            r12 = r0
            goto L2d
        L2d:
            r0 = r7
            r1 = r8
            r2 = r9
            r3 = r10
            r4 = r11
            r5 = r12
            r0.<init>(r1, r2, r3, r4, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.revenuecat.purchases.subscriberattributes.SubscriberAttribute.<init>(java.lang.String, java.lang.String, com.revenuecat.purchases.common.DateProvider, java.util.Date, boolean, int, kotlin.w.c.g):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public SubscriberAttribute(org.json.JSONObject r10) throws org.json.JSONException {
        /*
            r9 = this;
            r0 = r10
            java.lang.String r1 = "jsonObject"
            kotlin.w.c.k.f(r0, r1)
            r0 = r10
            java.lang.String r1 = "key"
            java.lang.String r0 = r0.getString(r1)
            r11 = r0
            r0 = r11
            java.lang.String r1 = "jsonObject.getString(JSON_NAME_KEY)"
            kotlin.w.c.k.e(r0, r1)
            r0 = r9
            r1 = r11
            com.revenuecat.purchases.subscriberattributes.SubscriberAttributeKey r1 = com.revenuecat.purchases.subscriberattributes.SpecialSubscriberAttributesKt.getSubscriberAttributeKey(r1)
            r2 = r10
            java.lang.String r3 = "value"
            java.lang.String r2 = com.revenuecat.purchases.utils.JSONObjectExtensionsKt.getNullableString(r2, r3)
            r3 = 0
            java.util.Date r4 = new java.util.Date
            r5 = r4
            r6 = r10
            java.lang.String r7 = "set_time"
            long r6 = r6.getLong(r7)
            r5.<init>(r6)
            r5 = r10
            java.lang.String r6 = "is_synced"
            boolean r5 = r5.getBoolean(r6)
            r6 = 4
            r7 = 0
            r0.<init>(r1, r2, r3, r4, r5, r6, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.revenuecat.purchases.subscriberattributes.SubscriberAttribute.<init>(org.json.JSONObject):void");
    }

    public static /* synthetic */ SubscriberAttribute copy$default(SubscriberAttribute subscriberAttribute, SubscriberAttributeKey subscriberAttributeKey, String str, DateProvider dateProvider, Date date, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            subscriberAttributeKey = subscriberAttribute.key;
        }
        if ((i & 2) != 0) {
            str = subscriberAttribute.value;
        }
        if ((i & 4) != 0) {
            dateProvider = subscriberAttribute.dateProvider;
        }
        if ((i & 8) != 0) {
            date = subscriberAttribute.setTime;
        }
        if ((i & 16) != 0) {
            z = subscriberAttribute.isSynced;
        }
        return subscriberAttribute.copy(subscriberAttributeKey, str, dateProvider, date, z);
    }

    public final SubscriberAttributeKey component1() {
        return this.key;
    }

    public final String component2() {
        return this.value;
    }

    public final DateProvider component3() {
        return this.dateProvider;
    }

    public final Date component4() {
        return this.setTime;
    }

    public final boolean component5() {
        return this.isSynced;
    }

    public final SubscriberAttribute copy(SubscriberAttributeKey subscriberAttributeKey, String str, DateProvider dateProvider, Date date, boolean z) {
        k.f(subscriberAttributeKey, SubscriberAttributeKt.JSON_NAME_KEY);
        k.f(dateProvider, "dateProvider");
        k.f(date, "setTime");
        return new SubscriberAttribute(subscriberAttributeKey, str, dateProvider, date, z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!k.b(SubscriberAttribute.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        Objects.requireNonNull(obj, "null cannot be cast to non-null type com.revenuecat.purchases.subscriberattributes.SubscriberAttribute");
        SubscriberAttribute subscriberAttribute = (SubscriberAttribute) obj;
        return !(k.b(this.key, subscriberAttribute.key) ^ true) && !(k.b(this.value, subscriberAttribute.value) ^ true) && !(k.b(this.setTime, subscriberAttribute.setTime) ^ true) && this.isSynced == subscriberAttribute.isSynced;
    }

    public final DateProvider getDateProvider() {
        return this.dateProvider;
    }

    public final SubscriberAttributeKey getKey() {
        return this.key;
    }

    public final Date getSetTime() {
        return this.setTime;
    }

    public final String getValue() {
        return this.value;
    }

    public int hashCode() {
        int hashCode = this.key.hashCode();
        String str = this.value;
        return (((((hashCode * 31) + (str != null ? str.hashCode() : 0)) * 31) + this.setTime.hashCode()) * 31) + Boolean.valueOf(this.isSynced).hashCode();
    }

    public final boolean isSynced() {
        return this.isSynced;
    }

    public final Map<String, Object> toBackendMap() {
        return b0.h(new l[]{p.a("value", this.value), p.a(SubscriberAttributeKt.BACKEND_NAME_TIMESTAMP, Long.valueOf(this.setTime.getTime()))});
    }

    public final JSONObject toJSONObject() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(SubscriberAttributeKt.JSON_NAME_KEY, this.key.getBackendKey());
        String str = this.value;
        if (str == null || jSONObject.put("value", str) == null) {
            jSONObject.put("value", JSONObject.NULL);
        }
        jSONObject.put(SubscriberAttributeKt.JSON_NAME_SET_TIME, this.setTime.getTime());
        jSONObject.put(SubscriberAttributeKt.JSON_NAME_IS_SYNCED, this.isSynced);
        return jSONObject;
    }

    public String toString() {
        return "SubscriberAttribute(key=" + this.key + ", value=" + this.value + ", setTime=" + this.setTime + ", isSynced=" + this.isSynced + ')';
    }
}
