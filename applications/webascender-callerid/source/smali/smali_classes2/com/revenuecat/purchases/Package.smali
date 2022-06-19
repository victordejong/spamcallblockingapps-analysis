.class public final Lcom/revenuecat/purchases/Package;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/revenuecat/purchases/Package$Creator;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final identifier:Ljava/lang/String;

.field private final offering:Ljava/lang/String;

.field private final packageType:Lcom/revenuecat/purchases/PackageType;

.field private final product:Lcom/android/billingclient/api/SkuDetails;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/revenuecat/purchases/Package$Creator;

    invoke-direct {v0}, Lcom/revenuecat/purchases/Package$Creator;-><init>()V

    sput-object v0, Lcom/revenuecat/purchases/Package;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/revenuecat/purchases/PackageType;Lcom/android/billingclient/api/SkuDetails;Ljava/lang/String;)V
    .locals 1

    const-string v0, "identifier"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageType"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "product"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offering"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/revenuecat/purchases/Package;->identifier:Ljava/lang/String;

    iput-object p2, p0, Lcom/revenuecat/purchases/Package;->packageType:Lcom/revenuecat/purchases/PackageType;

    iput-object p3, p0, Lcom/revenuecat/purchases/Package;->product:Lcom/android/billingclient/api/SkuDetails;

    iput-object p4, p0, Lcom/revenuecat/purchases/Package;->offering:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/revenuecat/purchases/Package;Ljava/lang/String;Lcom/revenuecat/purchases/PackageType;Lcom/android/billingclient/api/SkuDetails;Ljava/lang/String;ILjava/lang/Object;)Lcom/revenuecat/purchases/Package;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/revenuecat/purchases/Package;->identifier:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/revenuecat/purchases/Package;->packageType:Lcom/revenuecat/purchases/PackageType;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/revenuecat/purchases/Package;->product:Lcom/android/billingclient/api/SkuDetails;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/revenuecat/purchases/Package;->offering:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/revenuecat/purchases/Package;->copy(Ljava/lang/String;Lcom/revenuecat/purchases/PackageType;Lcom/android/billingclient/api/SkuDetails;Ljava/lang/String;)Lcom/revenuecat/purchases/Package;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/revenuecat/purchases/Package;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/revenuecat/purchases/PackageType;
    .locals 1

    iget-object v0, p0, Lcom/revenuecat/purchases/Package;->packageType:Lcom/revenuecat/purchases/PackageType;

    return-object v0
.end method

.method public final component3()Lcom/android/billingclient/api/SkuDetails;
    .locals 1

    iget-object v0, p0, Lcom/revenuecat/purchases/Package;->product:Lcom/android/billingclient/api/SkuDetails;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/revenuecat/purchases/Package;->offering:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/revenuecat/purchases/PackageType;Lcom/android/billingclient/api/SkuDetails;Ljava/lang/String;)Lcom/revenuecat/purchases/Package;
    .locals 1

    const-string v0, "identifier"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageType"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "product"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offering"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/revenuecat/purchases/Package;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/revenuecat/purchases/Package;-><init>(Ljava/lang/String;Lcom/revenuecat/purchases/PackageType;Lcom/android/billingclient/api/SkuDetails;Ljava/lang/String;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/revenuecat/purchases/Package;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/revenuecat/purchases/Package;

    iget-object v0, p0, Lcom/revenuecat/purchases/Package;->identifier:Ljava/lang/String;

    iget-object v1, p1, Lcom/revenuecat/purchases/Package;->identifier:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revenuecat/purchases/Package;->packageType:Lcom/revenuecat/purchases/PackageType;

    iget-object v1, p1, Lcom/revenuecat/purchases/Package;->packageType:Lcom/revenuecat/purchases/PackageType;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revenuecat/purchases/Package;->product:Lcom/android/billingclient/api/SkuDetails;

    iget-object v1, p1, Lcom/revenuecat/purchases/Package;->product:Lcom/android/billingclient/api/SkuDetails;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revenuecat/purchases/Package;->offering:Ljava/lang/String;

    iget-object p1, p1, Lcom/revenuecat/purchases/Package;->offering:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getIdentifier()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/Package;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public final getOffering()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/Package;->offering:Ljava/lang/String;

    return-object v0
.end method

.method public final getPackageType()Lcom/revenuecat/purchases/PackageType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/Package;->packageType:Lcom/revenuecat/purchases/PackageType;

    return-object v0
.end method

.method public final getProduct()Lcom/android/billingclient/api/SkuDetails;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/Package;->product:Lcom/android/billingclient/api/SkuDetails;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/revenuecat/purchases/Package;->identifier:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/revenuecat/purchases/Package;->packageType:Lcom/revenuecat/purchases/PackageType;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/revenuecat/purchases/Package;->product:Lcom/android/billingclient/api/SkuDetails;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/revenuecat/purchases/Package;->offering:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package(identifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/revenuecat/purchases/Package;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", packageType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/revenuecat/purchases/Package;->packageType:Lcom/revenuecat/purchases/PackageType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", product="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/revenuecat/purchases/Package;->product:Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", offering="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/revenuecat/purchases/Package;->offering:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/revenuecat/purchases/Package;->identifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/revenuecat/purchases/Package;->packageType:Lcom/revenuecat/purchases/PackageType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/revenuecat/purchases/Package;->product:Lcom/android/billingclient/api/SkuDetails;

    sget-object v1, Lcom/revenuecat/purchases/parceler/SkuDetailsParceler;->INSTANCE:Lcom/revenuecat/purchases/parceler/SkuDetailsParceler;

    invoke-interface {v1, v0, p1, p2}, Lk/a/a/a;->write(Ljava/lang/Object;Landroid/os/Parcel;I)V

    iget-object p2, p0, Lcom/revenuecat/purchases/Package;->offering:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
