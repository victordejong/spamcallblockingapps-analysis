package com.revenuecat.purchases;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.g;
import kotlin.h;
import kotlin.w.c.k;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/Offering.class */
public final class Offering implements Parcelable {
    public static final Parcelable.Creator CREATOR = new Creator();
    private final List<Package> availablePackages;
    private final String identifier;
    private final String serverDescription;
    private final g lifetime$delegate = h.a(new lifetime.2(this));
    private final g annual$delegate = h.a(new annual.2(this));
    private final g sixMonth$delegate = h.a(new sixMonth.2(this));
    private final g threeMonth$delegate = h.a(new threeMonth.2(this));
    private final g twoMonth$delegate = h.a(new twoMonth.2(this));
    private final g monthly$delegate = h.a(new monthly.2(this));
    private final g weekly$delegate = h.a(new weekly.2(this));

    /* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/Offering$Creator.class */
    public static final class Creator implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        public final Object createFromParcel(Parcel parcel) {
            k.f(parcel, "in");
            String readString = parcel.readString();
            String readString2 = parcel.readString();
            int readInt = parcel.readInt();
            ArrayList arrayList = new ArrayList(readInt);
            while (readInt != 0) {
                arrayList.add((Package) Package.CREATOR.createFromParcel(parcel));
                readInt--;
            }
            return new Offering(readString, readString2, arrayList);
        }

        @Override // android.os.Parcelable.Creator
        public final Object[] newArray(int i) {
            return new Offering[i];
        }
    }

    public Offering(String str, String str2, List<Package> list) {
        k.f(str, "identifier");
        k.f(str2, "serverDescription");
        k.f(list, "availablePackages");
        this.identifier = str;
        this.serverDescription = str2;
        this.availablePackages = list;
    }

    public static /* synthetic */ Offering copy$default(Offering offering, String str, String str2, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            str = offering.identifier;
        }
        if ((i & 2) != 0) {
            str2 = offering.serverDescription;
        }
        if ((i & 4) != 0) {
            list = offering.availablePackages;
        }
        return offering.copy(str, str2, list);
    }

    public final Package findPackage(PackageType packageType) {
        Object obj;
        Iterator<T> it = this.availablePackages.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            Object next = it.next();
            if (k.b(((Package) next).getIdentifier(), packageType.getIdentifier())) {
                obj = next;
                break;
            }
        }
        return (Package) obj;
    }

    public static /* synthetic */ void getAnnual$annotations() {
    }

    public static /* synthetic */ void getLifetime$annotations() {
    }

    public static /* synthetic */ void getMonthly$annotations() {
    }

    public static /* synthetic */ void getSixMonth$annotations() {
    }

    public static /* synthetic */ void getThreeMonth$annotations() {
    }

    public static /* synthetic */ void getTwoMonth$annotations() {
    }

    public static /* synthetic */ void getWeekly$annotations() {
    }

    public final String component1() {
        return this.identifier;
    }

    public final String component2() {
        return this.serverDescription;
    }

    public final List<Package> component3() {
        return this.availablePackages;
    }

    public final Offering copy(String str, String str2, List<Package> list) {
        k.f(str, "identifier");
        k.f(str2, "serverDescription");
        k.f(list, "availablePackages");
        return new Offering(str, str2, list);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof Offering)) {
                return false;
            }
            Offering offering = (Offering) obj;
            return k.b(this.identifier, offering.identifier) && k.b(this.serverDescription, offering.serverDescription) && k.b(this.availablePackages, offering.availablePackages);
        }
        return true;
    }

    public final Package get(String str) {
        k.f(str, "s");
        return getPackage(str);
    }

    public final Package getAnnual() {
        return (Package) this.annual$delegate.getValue();
    }

    public final List<Package> getAvailablePackages() {
        return this.availablePackages;
    }

    public final String getIdentifier() {
        return this.identifier;
    }

    public final Package getLifetime() {
        return (Package) this.lifetime$delegate.getValue();
    }

    public final Package getMonthly() {
        return (Package) this.monthly$delegate.getValue();
    }

    public final Package getPackage(String str) {
        k.f(str, "identifier");
        for (Package r0 : this.availablePackages) {
            if (k.b(r0.getIdentifier(), str)) {
                return r0;
            }
        }
        throw new NoSuchElementException("Collection contains no element matching the predicate.");
    }

    public final String getServerDescription() {
        return this.serverDescription;
    }

    public final Package getSixMonth() {
        return (Package) this.sixMonth$delegate.getValue();
    }

    public final Package getThreeMonth() {
        return (Package) this.threeMonth$delegate.getValue();
    }

    public final Package getTwoMonth() {
        return (Package) this.twoMonth$delegate.getValue();
    }

    public final Package getWeekly() {
        return (Package) this.weekly$delegate.getValue();
    }

    public int hashCode() {
        String str = this.identifier;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.serverDescription;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        List<Package> list = this.availablePackages;
        if (list != null) {
            i = list.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        return "Offering(identifier=" + this.identifier + ", serverDescription=" + this.serverDescription + ", availablePackages=" + this.availablePackages + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        k.f(parcel, "parcel");
        parcel.writeString(this.identifier);
        parcel.writeString(this.serverDescription);
        List<Package> list = this.availablePackages;
        parcel.writeInt(list.size());
        for (Package r0 : list) {
            r0.writeToParcel(parcel, 0);
        }
    }
}
