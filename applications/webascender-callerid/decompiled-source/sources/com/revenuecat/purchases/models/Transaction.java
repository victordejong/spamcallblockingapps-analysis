package com.revenuecat.purchases.models;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Date;
import kotlin.w.c.k;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/models/Transaction.class */
public final class Transaction implements Parcelable {
    public static final Parcelable.Creator CREATOR = new Creator();
    private final String productId;
    private final Date purchaseDate;
    private final String revenuecatId;

    /* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/models/Transaction$Creator.class */
    public static final class Creator implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        public final Object createFromParcel(Parcel parcel) {
            k.f(parcel, "in");
            return new Transaction(parcel.readString(), parcel.readString(), (Date) parcel.readSerializable());
        }

        @Override // android.os.Parcelable.Creator
        public final Object[] newArray(int i) {
            return new Transaction[i];
        }
    }

    public Transaction(String str, String str2, Date date) {
        k.f(str, "revenuecatId");
        k.f(str2, "productId");
        k.f(date, "purchaseDate");
        this.revenuecatId = str;
        this.productId = str2;
        this.purchaseDate = date;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Transaction(java.lang.String r7, org.json.JSONObject r8) {
        /*
            r6 = this;
            r0 = r7
            java.lang.String r1 = "productId"
            kotlin.w.c.k.f(r0, r1)
            r0 = r8
            java.lang.String r1 = "jsonObject"
            kotlin.w.c.k.f(r0, r1)
            r0 = r8
            java.lang.String r1 = "id"
            java.lang.String r0 = r0.getString(r1)
            r9 = r0
            r0 = r9
            java.lang.String r1 = "jsonObject.getString(\"id\")"
            kotlin.w.c.k.e(r0, r1)
            r0 = r6
            r1 = r9
            r2 = r7
            r3 = r8
            java.lang.String r4 = "purchase_date"
            java.util.Date r3 = com.revenuecat.purchases.utils.JSONObjectExtensionsKt.getDate(r3, r4)
            r0.<init>(r1, r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.revenuecat.purchases.models.Transaction.<init>(java.lang.String, org.json.JSONObject):void");
    }

    public static /* synthetic */ Transaction copy$default(Transaction transaction, String str, String str2, Date date, int i, Object obj) {
        if ((i & 1) != 0) {
            str = transaction.revenuecatId;
        }
        if ((i & 2) != 0) {
            str2 = transaction.productId;
        }
        if ((i & 4) != 0) {
            date = transaction.purchaseDate;
        }
        return transaction.copy(str, str2, date);
    }

    public final String component1() {
        return this.revenuecatId;
    }

    public final String component2() {
        return this.productId;
    }

    public final Date component3() {
        return this.purchaseDate;
    }

    public final Transaction copy(String str, String str2, Date date) {
        k.f(str, "revenuecatId");
        k.f(str2, "productId");
        k.f(date, "purchaseDate");
        return new Transaction(str, str2, date);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Transaction)) {
            return false;
        }
        Transaction transaction = (Transaction) obj;
        return k.b(this.revenuecatId, transaction.revenuecatId) && k.b(this.productId, transaction.productId) && k.b(this.purchaseDate, transaction.purchaseDate);
    }

    public final String getProductId() {
        return this.productId;
    }

    public final Date getPurchaseDate() {
        return this.purchaseDate;
    }

    public final String getRevenuecatId() {
        return this.revenuecatId;
    }

    public int hashCode() {
        String str = this.revenuecatId;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.productId;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        Date date = this.purchaseDate;
        if (date != null) {
            i = date.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        return "Transaction(revenuecatId=" + this.revenuecatId + ", productId=" + this.productId + ", purchaseDate=" + this.purchaseDate + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        k.f(parcel, "parcel");
        parcel.writeString(this.revenuecatId);
        parcel.writeString(this.productId);
        parcel.writeSerializable(this.purchaseDate);
    }
}
