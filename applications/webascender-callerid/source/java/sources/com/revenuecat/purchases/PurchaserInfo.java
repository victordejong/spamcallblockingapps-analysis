package com.revenuecat.purchases;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.revenuecat.purchases.models.Transaction;
import com.revenuecat.purchases.parceler.JSONObjectParceler;
import java.util.ArrayList;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import kotlin.g;
import kotlin.h;
import kotlin.p;
import kotlin.s.b0;
import kotlin.w.c.k;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/PurchaserInfo.class */
public final class PurchaserInfo implements Parcelable {
    public static final Parcelable.Creator CREATOR = new Creator();
    private final Map<String, Date> allExpirationDatesByProduct;
    private final Map<String, Date> allPurchaseDatesByProduct;
    private final EntitlementInfos entitlements;
    private final Date firstSeen;
    private final JSONObject jsonObject;
    private final Uri managementURL;
    private final String originalAppUserId;
    private final Date originalPurchaseDate;
    private final Set<String> purchasedNonSubscriptionSkus;
    private final Date requestDate;
    private final int schemaVersion;
    private final JSONObject subscriberJSONObject;
    private final g activeSubscriptions$delegate = h.a(new activeSubscriptions.2(this));
    private final g allPurchasedSkus$delegate = h.a(new allPurchasedSkus.2(this));
    private final g latestExpirationDate$delegate = h.a(new latestExpirationDate.2(this));
    private final g nonSubscriptionTransactions$delegate = h.a(new nonSubscriptionTransactions.2(this));

    /* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/PurchaserInfo$Creator.class */
    public static final class Creator implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        public final Object createFromParcel(Parcel parcel) {
            k.f(parcel, "in");
            EntitlementInfos entitlementInfos = (EntitlementInfos) EntitlementInfos.CREATOR.createFromParcel(parcel);
            int readInt = parcel.readInt();
            LinkedHashSet linkedHashSet = new LinkedHashSet(readInt);
            while (readInt != 0) {
                linkedHashSet.add(parcel.readString());
                readInt--;
            }
            int readInt2 = parcel.readInt();
            LinkedHashMap linkedHashMap = new LinkedHashMap(readInt2);
            while (readInt2 != 0) {
                linkedHashMap.put(parcel.readString(), (Date) parcel.readSerializable());
                readInt2--;
            }
            int readInt3 = parcel.readInt();
            LinkedHashMap linkedHashMap2 = new LinkedHashMap(readInt3);
            while (readInt3 != 0) {
                linkedHashMap2.put(parcel.readString(), (Date) parcel.readSerializable());
                readInt3--;
            }
            return new PurchaserInfo(entitlementInfos, linkedHashSet, linkedHashMap, linkedHashMap2, (Date) parcel.readSerializable(), (JSONObject) JSONObjectParceler.INSTANCE.create(parcel), parcel.readInt(), (Date) parcel.readSerializable(), parcel.readString(), (Uri) parcel.readParcelable(PurchaserInfo.class.getClassLoader()), (Date) parcel.readSerializable());
        }

        @Override // android.os.Parcelable.Creator
        public final Object[] newArray(int i) {
            return new PurchaserInfo[i];
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PurchaserInfo(EntitlementInfos entitlementInfos, Set<String> set, Map<String, ? extends Date> map, Map<String, ? extends Date> map2, Date date, JSONObject jSONObject, int i, Date date2, String str, Uri uri, Date date3) {
        k.f(entitlementInfos, "entitlements");
        k.f(set, "purchasedNonSubscriptionSkus");
        k.f(map, "allExpirationDatesByProduct");
        k.f(map2, "allPurchaseDatesByProduct");
        k.f(date, "requestDate");
        k.f(jSONObject, "jsonObject");
        k.f(date2, "firstSeen");
        k.f(str, "originalAppUserId");
        this.entitlements = entitlementInfos;
        this.purchasedNonSubscriptionSkus = set;
        this.allExpirationDatesByProduct = map;
        this.allPurchaseDatesByProduct = map2;
        this.requestDate = date;
        this.jsonObject = jSONObject;
        this.schemaVersion = i;
        this.firstSeen = date2;
        this.originalAppUserId = str;
        this.managementURL = uri;
        this.originalPurchaseDate = date3;
        this.subscriberJSONObject = jSONObject.getJSONObject("subscriber");
    }

    public final Set<String> activeIdentifiers(Map<String, ? extends Date> map) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, ? extends Date> entry : map.entrySet()) {
            Date value = entry.getValue();
            if (value == null || value.after(this.requestDate)) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        return linkedHashMap.keySet();
    }

    public static /* synthetic */ PurchaserInfo copy$default(PurchaserInfo purchaserInfo, EntitlementInfos entitlementInfos, Set set, Map map, Map map2, Date date, JSONObject jSONObject, int i, Date date2, String str, Uri uri, Date date3, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            entitlementInfos = purchaserInfo.entitlements;
        }
        if ((i2 & 2) != 0) {
            set = purchaserInfo.purchasedNonSubscriptionSkus;
        }
        if ((i2 & 4) != 0) {
            map = purchaserInfo.allExpirationDatesByProduct;
        }
        if ((i2 & 8) != 0) {
            map2 = purchaserInfo.allPurchaseDatesByProduct;
        }
        if ((i2 & 16) != 0) {
            date = purchaserInfo.requestDate;
        }
        if ((i2 & 32) != 0) {
            jSONObject = purchaserInfo.jsonObject;
        }
        if ((i2 & 64) != 0) {
            i = purchaserInfo.schemaVersion;
        }
        if ((i2 & 128) != 0) {
            date2 = purchaserInfo.firstSeen;
        }
        if ((i2 & 256) != 0) {
            str = purchaserInfo.originalAppUserId;
        }
        if ((i2 & 512) != 0) {
            uri = purchaserInfo.managementURL;
        }
        if ((i2 & 1024) != 0) {
            date3 = purchaserInfo.originalPurchaseDate;
        }
        return purchaserInfo.copy(entitlementInfos, set, map, map2, date, jSONObject, i, date2, str, uri, date3);
    }

    public static /* synthetic */ void getActiveSubscriptions$annotations() {
    }

    public static /* synthetic */ void getAllPurchasedSkus$annotations() {
    }

    public static /* synthetic */ void getLatestExpirationDate$annotations() {
    }

    public static /* synthetic */ void getNonSubscriptionTransactions$annotations() {
    }

    public static /* synthetic */ void getPurchasedNonSubscriptionSkus$annotations() {
    }

    private static /* synthetic */ void getSubscriberJSONObject$annotations() {
    }

    public final EntitlementInfos component1() {
        return this.entitlements;
    }

    public final Uri component10() {
        return this.managementURL;
    }

    public final Date component11() {
        return this.originalPurchaseDate;
    }

    public final Set<String> component2() {
        return this.purchasedNonSubscriptionSkus;
    }

    public final Map<String, Date> component3() {
        return this.allExpirationDatesByProduct;
    }

    public final Map<String, Date> component4() {
        return this.allPurchaseDatesByProduct;
    }

    public final Date component5() {
        return this.requestDate;
    }

    public final JSONObject component6() {
        return this.jsonObject;
    }

    public final int component7() {
        return this.schemaVersion;
    }

    public final Date component8() {
        return this.firstSeen;
    }

    public final String component9() {
        return this.originalAppUserId;
    }

    public final PurchaserInfo copy(EntitlementInfos entitlementInfos, Set<String> set, Map<String, ? extends Date> map, Map<String, ? extends Date> map2, Date date, JSONObject jSONObject, int i, Date date2, String str, Uri uri, Date date3) {
        k.f(entitlementInfos, "entitlements");
        k.f(set, "purchasedNonSubscriptionSkus");
        k.f(map, "allExpirationDatesByProduct");
        k.f(map2, "allPurchaseDatesByProduct");
        k.f(date, "requestDate");
        k.f(jSONObject, "jsonObject");
        k.f(date2, "firstSeen");
        k.f(str, "originalAppUserId");
        return new PurchaserInfo(entitlementInfos, set, map, map2, date, jSONObject, i, date2, str, uri, date3);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!k.b(PurchaserInfo.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        Objects.requireNonNull(obj, "null cannot be cast to non-null type com.revenuecat.purchases.PurchaserInfo");
        PurchaserInfo purchaserInfo = (PurchaserInfo) obj;
        return !(k.b(getNonSubscriptionTransactions(), purchaserInfo.getNonSubscriptionTransactions()) ^ true) && !(k.b(this.allExpirationDatesByProduct, purchaserInfo.allExpirationDatesByProduct) ^ true) && !(k.b(this.allPurchaseDatesByProduct, purchaserInfo.allPurchaseDatesByProduct) ^ true) && !(k.b(this.entitlements, purchaserInfo.entitlements) ^ true) && this.schemaVersion == purchaserInfo.schemaVersion && !(k.b(this.firstSeen, purchaserInfo.firstSeen) ^ true) && !(k.b(this.originalAppUserId, purchaserInfo.originalAppUserId) ^ true);
    }

    public final Set<String> getActiveSubscriptions() {
        return (Set) this.activeSubscriptions$delegate.getValue();
    }

    public final Map<String, Date> getAllExpirationDatesByProduct() {
        return this.allExpirationDatesByProduct;
    }

    public final Map<String, Date> getAllPurchaseDatesByProduct() {
        return this.allPurchaseDatesByProduct;
    }

    public final Set<String> getAllPurchasedSkus() {
        return (Set) this.allPurchasedSkus$delegate.getValue();
    }

    public final EntitlementInfos getEntitlements() {
        return this.entitlements;
    }

    public final Date getExpirationDateForEntitlement(String str) {
        k.f(str, "entitlement");
        EntitlementInfo entitlementInfo = this.entitlements.getAll().get(str);
        return entitlementInfo != null ? entitlementInfo.getExpirationDate() : null;
    }

    public final Date getExpirationDateForSku(String str) {
        k.f(str, "sku");
        return this.allExpirationDatesByProduct.get(str);
    }

    public final Date getFirstSeen() {
        return this.firstSeen;
    }

    public final JSONObject getJsonObject() {
        return this.jsonObject;
    }

    public final Date getLatestExpirationDate() {
        return (Date) this.latestExpirationDate$delegate.getValue();
    }

    public final Uri getManagementURL() {
        return this.managementURL;
    }

    public final List<Transaction> getNonSubscriptionTransactions() {
        return (List) this.nonSubscriptionTransactions$delegate.getValue();
    }

    public final String getOriginalAppUserId() {
        return this.originalAppUserId;
    }

    public final Date getOriginalPurchaseDate() {
        return this.originalPurchaseDate;
    }

    public final Date getPurchaseDateForEntitlement(String str) {
        k.f(str, "entitlement");
        EntitlementInfo entitlementInfo = this.entitlements.getAll().get(str);
        return entitlementInfo != null ? entitlementInfo.getLatestPurchaseDate() : null;
    }

    public final Date getPurchaseDateForSku(String str) {
        k.f(str, "sku");
        return this.allPurchaseDatesByProduct.get(str);
    }

    public final Set<String> getPurchasedNonSubscriptionSkus() {
        return this.purchasedNonSubscriptionSkus;
    }

    public final Date getRequestDate() {
        return this.requestDate;
    }

    public final int getSchemaVersion() {
        return this.schemaVersion;
    }

    public int hashCode() {
        return (((((((((((((((this.entitlements.hashCode() * 31) + getNonSubscriptionTransactions().hashCode()) * 31) + this.allExpirationDatesByProduct.hashCode()) * 31) + this.allPurchaseDatesByProduct.hashCode()) * 31) + this.requestDate.hashCode()) * 31) + this.jsonObject.hashCode()) * 31) + this.schemaVersion) * 31) + this.firstSeen.hashCode()) * 31) + this.originalAppUserId.hashCode();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("<PurchaserInfo\n ");
        sb.append("latestExpirationDate: ");
        sb.append(getLatestExpirationDate());
        sb.append('\n');
        sb.append("activeSubscriptions:  ");
        Set<String> activeSubscriptions = getActiveSubscriptions();
        ArrayList arrayList = new ArrayList(kotlin.s.k.q(activeSubscriptions, 10));
        for (String str : activeSubscriptions) {
            arrayList.add(p.a(str, b0.c(p.a("expiresDate", getExpirationDateForSku(str)))));
        }
        sb.append(b0.p(arrayList));
        sb.append(",\n");
        sb.append("activeEntitlements: ");
        Map<String, EntitlementInfo> active = this.entitlements.getActive();
        ArrayList arrayList2 = new ArrayList(active.size());
        for (Map.Entry<String, EntitlementInfo> entry : active.entrySet()) {
            arrayList2.add(entry.toString());
        }
        sb.append(arrayList2);
        sb.append(",\n");
        sb.append("entitlements: ");
        Map<String, EntitlementInfo> all = this.entitlements.getAll();
        ArrayList arrayList3 = new ArrayList(all.size());
        for (Map.Entry<String, EntitlementInfo> entry2 : all.entrySet()) {
            arrayList3.add(entry2.toString());
        }
        sb.append(arrayList3);
        sb.append(",\n");
        sb.append("nonSubscriptionTransactions: ");
        sb.append(getNonSubscriptionTransactions());
        sb.append(",\n");
        sb.append("requestDate: ");
        sb.append(this.requestDate);
        sb.append("\n>");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        k.f(parcel, "parcel");
        this.entitlements.writeToParcel(parcel, 0);
        Set<String> set = this.purchasedNonSubscriptionSkus;
        parcel.writeInt(set.size());
        for (String str : set) {
            parcel.writeString(str);
        }
        Map<String, Date> map = this.allExpirationDatesByProduct;
        parcel.writeInt(map.size());
        for (Map.Entry<String, Date> entry : map.entrySet()) {
            parcel.writeString(entry.getKey());
            parcel.writeSerializable(entry.getValue());
        }
        Map<String, Date> map2 = this.allPurchaseDatesByProduct;
        parcel.writeInt(map2.size());
        for (Map.Entry<String, Date> entry2 : map2.entrySet()) {
            parcel.writeString(entry2.getKey());
            parcel.writeSerializable(entry2.getValue());
        }
        parcel.writeSerializable(this.requestDate);
        JSONObjectParceler.INSTANCE.write(this.jsonObject, parcel, i);
        parcel.writeInt(this.schemaVersion);
        parcel.writeSerializable(this.firstSeen);
        parcel.writeString(this.originalAppUserId);
        parcel.writeParcelable(this.managementURL, i);
        parcel.writeSerializable(this.originalPurchaseDate);
    }
}
