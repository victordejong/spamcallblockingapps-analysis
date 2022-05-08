package com.revenuecat.purchases;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.w.c.k;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/Offerings.class */
public final class Offerings implements Parcelable {
    public static final Parcelable.Creator CREATOR = new Creator();
    private final Map<String, Offering> all;
    private final Offering current;

    /* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/Offerings$Creator.class */
    public static final class Creator implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        public final Object createFromParcel(Parcel parcel) {
            k.f(parcel, "in");
            Offering offering = parcel.readInt() != 0 ? (Offering) Offering.CREATOR.createFromParcel(parcel) : null;
            int readInt = parcel.readInt();
            LinkedHashMap linkedHashMap = new LinkedHashMap(readInt);
            while (readInt != 0) {
                linkedHashMap.put(parcel.readString(), (Offering) Offering.CREATOR.createFromParcel(parcel));
                readInt--;
            }
            return new Offerings(offering, linkedHashMap);
        }

        @Override // android.os.Parcelable.Creator
        public final Object[] newArray(int i) {
            return new Offerings[i];
        }
    }

    public Offerings(Offering offering, Map<String, Offering> map) {
        k.f(map, "all");
        this.current = offering;
        this.all = map;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Offerings copy$default(Offerings offerings, Offering offering, Map map, int i, Object obj) {
        if ((i & 1) != 0) {
            offering = offerings.current;
        }
        if ((i & 2) != 0) {
            map = offerings.all;
        }
        return offerings.copy(offering, map);
    }

    public final Offering component1() {
        return this.current;
    }

    public final Map<String, Offering> component2() {
        return this.all;
    }

    public final Offerings copy(Offering offering, Map<String, Offering> map) {
        k.f(map, "all");
        return new Offerings(offering, map);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Offerings)) {
            return false;
        }
        Offerings offerings = (Offerings) obj;
        return k.b(this.current, offerings.current) && k.b(this.all, offerings.all);
    }

    public final Offering get(String str) {
        k.f(str, "identifier");
        return getOffering(str);
    }

    public final Map<String, Offering> getAll() {
        return this.all;
    }

    public final Offering getCurrent() {
        return this.current;
    }

    public final Offering getOffering(String str) {
        k.f(str, "identifier");
        return this.all.get(str);
    }

    public int hashCode() {
        Offering offering = this.current;
        int i = 0;
        int hashCode = offering != null ? offering.hashCode() : 0;
        Map<String, Offering> map = this.all;
        if (map != null) {
            i = map.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        return "Offerings(current=" + this.current + ", all=" + this.all + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        k.f(parcel, "parcel");
        Offering offering = this.current;
        if (offering != null) {
            parcel.writeInt(1);
            offering.writeToParcel(parcel, 0);
        } else {
            parcel.writeInt(0);
        }
        Map<String, Offering> map = this.all;
        parcel.writeInt(map.size());
        for (Map.Entry<String, Offering> entry : map.entrySet()) {
            parcel.writeString(entry.getKey());
            entry.getValue().writeToParcel(parcel, 0);
        }
    }
}
