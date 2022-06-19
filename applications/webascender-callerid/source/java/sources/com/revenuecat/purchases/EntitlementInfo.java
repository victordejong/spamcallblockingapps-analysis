package com.revenuecat.purchases;

import android.os.Parcel;
import android.os.Parcelable;
import com.appsflyer.internal.referrer.Payload;
import java.util.Date;
import java.util.Objects;
import kotlin.w.c.k;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/EntitlementInfo.class */
public final class EntitlementInfo implements Parcelable {
    public static final Parcelable.Creator CREATOR = new Creator();
    private final Date billingIssueDetectedAt;
    private final Date expirationDate;
    private final String identifier;
    private final boolean isActive;
    private final boolean isSandbox;
    private final Date latestPurchaseDate;
    private final Date originalPurchaseDate;
    private final PeriodType periodType;
    private final String productIdentifier;
    private final Store store;
    private final Date unsubscribeDetectedAt;
    private final boolean willRenew;

    /* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/EntitlementInfo$Creator.class */
    public static final class Creator implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        public final Object createFromParcel(Parcel parcel) {
            k.f(parcel, "in");
            return new EntitlementInfo(parcel.readString(), parcel.readInt() != 0, parcel.readInt() != 0, (PeriodType) Enum.valueOf(PeriodType.class, parcel.readString()), (Date) parcel.readSerializable(), (Date) parcel.readSerializable(), (Date) parcel.readSerializable(), (Store) Enum.valueOf(Store.class, parcel.readString()), parcel.readString(), parcel.readInt() != 0, (Date) parcel.readSerializable(), (Date) parcel.readSerializable());
        }

        @Override // android.os.Parcelable.Creator
        public final Object[] newArray(int i) {
            return new EntitlementInfo[i];
        }
    }

    public EntitlementInfo(String str, boolean z, boolean z2, PeriodType periodType, Date date, Date date2, Date date3, Store store, String str2, boolean z3, Date date4, Date date5) {
        k.f(str, "identifier");
        k.f(periodType, "periodType");
        k.f(date, "latestPurchaseDate");
        k.f(date2, "originalPurchaseDate");
        k.f(store, Payload.TYPE_STORE);
        k.f(str2, "productIdentifier");
        this.identifier = str;
        this.isActive = z;
        this.willRenew = z2;
        this.periodType = periodType;
        this.latestPurchaseDate = date;
        this.originalPurchaseDate = date2;
        this.expirationDate = date3;
        this.store = store;
        this.productIdentifier = str2;
        this.isSandbox = z3;
        this.unsubscribeDetectedAt = date4;
        this.billingIssueDetectedAt = date5;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!k.b(EntitlementInfo.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        Objects.requireNonNull(obj, "null cannot be cast to non-null type com.revenuecat.purchases.EntitlementInfo");
        EntitlementInfo entitlementInfo = (EntitlementInfo) obj;
        return !(k.b(this.identifier, entitlementInfo.identifier) ^ true) && this.isActive == entitlementInfo.isActive && this.willRenew == entitlementInfo.willRenew && this.periodType == entitlementInfo.periodType && !(k.b(this.latestPurchaseDate, entitlementInfo.latestPurchaseDate) ^ true) && !(k.b(this.originalPurchaseDate, entitlementInfo.originalPurchaseDate) ^ true) && !(k.b(this.expirationDate, entitlementInfo.expirationDate) ^ true) && this.store == entitlementInfo.store && !(k.b(this.productIdentifier, entitlementInfo.productIdentifier) ^ true) && this.isSandbox == entitlementInfo.isSandbox && !(k.b(this.unsubscribeDetectedAt, entitlementInfo.unsubscribeDetectedAt) ^ true) && !(k.b(this.billingIssueDetectedAt, entitlementInfo.billingIssueDetectedAt) ^ true);
    }

    public final Date getBillingIssueDetectedAt() {
        return this.billingIssueDetectedAt;
    }

    public final Date getExpirationDate() {
        return this.expirationDate;
    }

    public final String getIdentifier() {
        return this.identifier;
    }

    public final Date getLatestPurchaseDate() {
        return this.latestPurchaseDate;
    }

    public final Date getOriginalPurchaseDate() {
        return this.originalPurchaseDate;
    }

    public final PeriodType getPeriodType() {
        return this.periodType;
    }

    public final String getProductIdentifier() {
        return this.productIdentifier;
    }

    public final Store getStore() {
        return this.store;
    }

    public final Date getUnsubscribeDetectedAt() {
        return this.unsubscribeDetectedAt;
    }

    public final boolean getWillRenew() {
        return this.willRenew;
    }

    public int hashCode() {
        int hashCode = this.identifier.hashCode();
        int hashCode2 = Boolean.valueOf(this.isActive).hashCode();
        int hashCode3 = Boolean.valueOf(this.willRenew).hashCode();
        int hashCode4 = this.periodType.hashCode();
        int hashCode5 = this.latestPurchaseDate.hashCode();
        int hashCode6 = this.originalPurchaseDate.hashCode();
        Date date = this.expirationDate;
        int i = 0;
        int hashCode7 = date != null ? date.hashCode() : 0;
        int hashCode8 = this.store.hashCode();
        int hashCode9 = this.productIdentifier.hashCode();
        int hashCode10 = Boolean.valueOf(this.isSandbox).hashCode();
        Date date2 = this.unsubscribeDetectedAt;
        int hashCode11 = date2 != null ? date2.hashCode() : 0;
        Date date3 = this.billingIssueDetectedAt;
        if (date3 != null) {
            i = date3.hashCode();
        }
        return (((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode10) * 31) + hashCode11) * 31) + i;
    }

    public final boolean isActive() {
        return this.isActive;
    }

    public final boolean isSandbox() {
        return this.isSandbox;
    }

    public String toString() {
        return "EntitlementInfo(identifier='" + this.identifier + "', isActive=" + this.isActive + ", willRenew=" + this.willRenew + ", periodType=" + this.periodType + ", latestPurchaseDate=" + this.latestPurchaseDate + ", originalPurchaseDate=" + this.originalPurchaseDate + ", expirationDate=" + this.expirationDate + ", store=" + this.store + ", productIdentifier='" + this.productIdentifier + "', isSandbox=" + this.isSandbox + ", unsubscribeDetectedAt=" + this.unsubscribeDetectedAt + ", billingIssueDetectedAt=" + this.billingIssueDetectedAt + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        k.f(parcel, "parcel");
        parcel.writeString(this.identifier);
        parcel.writeInt(this.isActive ? 1 : 0);
        parcel.writeInt(this.willRenew ? 1 : 0);
        parcel.writeString(this.periodType.name());
        parcel.writeSerializable(this.latestPurchaseDate);
        parcel.writeSerializable(this.originalPurchaseDate);
        parcel.writeSerializable(this.expirationDate);
        parcel.writeString(this.store.name());
        parcel.writeString(this.productIdentifier);
        parcel.writeInt(this.isSandbox ? 1 : 0);
        parcel.writeSerializable(this.unsubscribeDetectedAt);
        parcel.writeSerializable(this.billingIssueDetectedAt);
    }
}
