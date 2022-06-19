.class public Lg/g/a/a/i/l/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/g/a/a/i/l/e$b;
    }
.end annotation


# instance fields
.field private addressDTO:Lg/g/a/a/i/l/a;
    .annotation runtime Lcom/google/gson/v/c;
        value = "address"
    .end annotation
.end field

.field private attributionDTO:Lg/g/a/a/i/l/b;
    .annotation runtime Lcom/google/gson/v/c;
        value = "attribution"
    .end annotation
.end field

.field private businessId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "metadata"
    .end annotation
.end field

.field private businessType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "businessType"
    .end annotation
.end field

.field private coordinatesDTO:Lg/g/a/a/i/l/c;
    .annotation runtime Lcom/google/gson/v/c;
        value = "coordinates"
    .end annotation
.end field

.field private coupon:Lg/g/a/a/i/l/d;
    .annotation runtime Lcom/google/gson/v/c;
        value = "coupon"
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "description"
    .end annotation
.end field

.field private displayCategories:Ljava/util/List;
    .annotation runtime Lcom/google/gson/v/c;
        value = "displayCategories"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private displayUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "displayUrl"
    .end annotation
.end field

.field private distance:D
    .annotation runtime Lcom/google/gson/v/c;
        value = "distance"
    .end annotation
.end field

.field private dynamicButtons:Ljava/util/List;
    .annotation runtime Lcom/google/gson/v/c;
        value = "dynamicButtons"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private labels:Ljava/util/List;
    .annotation runtime Lcom/google/gson/v/c;
        value = "labels"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg/g/a/a/i/l/i;",
            ">;"
        }
    .end annotation
.end field

.field private mainImageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "mainImageUrl"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "name"
    .end annotation
.end field

.field private phoneDTOs:Ljava/util/List;
    .annotation runtime Lcom/google/gson/v/c;
        value = "phones"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg/g/a/a/i/l/k;",
            ">;"
        }
    .end annotation
.end field

.field private postbackUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "postbackUrl"
    .end annotation
.end field

.field private price:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "priceRange"
    .end annotation
.end field

.field private ratingDTO:Lg/g/a/a/i/l/m;
    .annotation runtime Lcom/google/gson/v/c;
        value = "rating"
    .end annotation
.end field

.field private richDistanceDTO:Lg/g/a/a/i/l/n;
    .annotation runtime Lcom/google/gson/v/c;
        value = "richDistance"
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lg/g/a/a/i/l/e$b;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lg/g/a/a/i/l/e$b;->access$000(Lg/g/a/a/i/l/e$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/l/e;->businessType:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lg/g/a/a/i/l/e$b;->access$100(Lg/g/a/a/i/l/e$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/l/e;->businessId:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lg/g/a/a/i/l/e$b;->access$200(Lg/g/a/a/i/l/e$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/l/e;->name:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lg/g/a/a/i/l/e$b;->access$300(Lg/g/a/a/i/l/e$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/l/e;->description:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lg/g/a/a/i/l/e$b;->access$400(Lg/g/a/a/i/l/e$b;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/l/e;->phoneDTOs:Ljava/util/List;

    .line 8
    invoke-static {p1}, Lg/g/a/a/i/l/e$b;->access$500(Lg/g/a/a/i/l/e$b;)Lg/g/a/a/i/l/a;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/l/e;->addressDTO:Lg/g/a/a/i/l/a;

    .line 9
    invoke-static {p1}, Lg/g/a/a/i/l/e$b;->access$600(Lg/g/a/a/i/l/e$b;)Lg/g/a/a/i/l/c;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/l/e;->coordinatesDTO:Lg/g/a/a/i/l/c;

    .line 10
    invoke-static {p1}, Lg/g/a/a/i/l/e$b;->access$700(Lg/g/a/a/i/l/e$b;)D

    move-result-wide v0

    iput-wide v0, p0, Lg/g/a/a/i/l/e;->distance:D

    .line 11
    invoke-static {p1}, Lg/g/a/a/i/l/e$b;->access$800(Lg/g/a/a/i/l/e$b;)Lg/g/a/a/i/l/m;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/l/e;->ratingDTO:Lg/g/a/a/i/l/m;

    .line 12
    invoke-static {p1}, Lg/g/a/a/i/l/e$b;->access$900(Lg/g/a/a/i/l/e$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/l/e;->mainImageUrl:Ljava/lang/String;

    .line 13
    invoke-static {p1}, Lg/g/a/a/i/l/e$b;->access$1000(Lg/g/a/a/i/l/e$b;)Lg/g/a/a/i/l/b;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/l/e;->attributionDTO:Lg/g/a/a/i/l/b;

    .line 14
    invoke-static {p1}, Lg/g/a/a/i/l/e$b;->access$1100(Lg/g/a/a/i/l/e$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/l/e;->price:Ljava/lang/String;

    .line 15
    invoke-static {p1}, Lg/g/a/a/i/l/e$b;->access$1200(Lg/g/a/a/i/l/e$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/l/e;->url:Ljava/lang/String;

    .line 16
    invoke-static {p1}, Lg/g/a/a/i/l/e$b;->access$1300(Lg/g/a/a/i/l/e$b;)Lg/g/a/a/i/l/d;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/l/e;->coupon:Lg/g/a/a/i/l/d;

    .line 17
    invoke-static {p1}, Lg/g/a/a/i/l/e$b;->access$1400(Lg/g/a/a/i/l/e$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/l/e;->postbackUrl:Ljava/lang/String;

    .line 18
    invoke-static {p1}, Lg/g/a/a/i/l/e$b;->access$1500(Lg/g/a/a/i/l/e$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/l/e;->displayUrl:Ljava/lang/String;

    .line 19
    invoke-static {p1}, Lg/g/a/a/i/l/e$b;->access$1600(Lg/g/a/a/i/l/e$b;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/l/e;->labels:Ljava/util/List;

    .line 20
    invoke-static {p1}, Lg/g/a/a/i/l/e$b;->access$1700(Lg/g/a/a/i/l/e$b;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/l/e;->displayCategories:Ljava/util/List;

    .line 21
    invoke-static {p1}, Lg/g/a/a/i/l/e$b;->access$1800(Lg/g/a/a/i/l/e$b;)Lg/g/a/a/i/l/n;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/l/e;->richDistanceDTO:Lg/g/a/a/i/l/n;

    .line 22
    invoke-static {p1}, Lg/g/a/a/i/l/e$b;->access$1900(Lg/g/a/a/i/l/e$b;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lg/g/a/a/i/l/e;->dynamicButtons:Ljava/util/List;

    return-void
.end method

.method public static newBuilder()Lg/g/a/a/i/l/e$b;
    .locals 2

    .line 1
    new-instance v0, Lg/g/a/a/i/l/e$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/g/a/a/i/l/e$b;-><init>(Lg/g/a/a/i/l/e$a;)V

    return-object v0
.end method


# virtual methods
.method public getAddressDTO()Lg/g/a/a/i/l/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/e;->addressDTO:Lg/g/a/a/i/l/a;

    return-object v0
.end method

.method public getAttributionDTO()Lg/g/a/a/i/l/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/e;->attributionDTO:Lg/g/a/a/i/l/b;

    return-object v0
.end method

.method public getBusinessId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/e;->businessId:Ljava/lang/String;

    return-object v0
.end method

.method public getBusinessType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/e;->businessType:Ljava/lang/String;

    return-object v0
.end method

.method public getCoordinatesDTO()Lg/g/a/a/i/l/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/e;->coordinatesDTO:Lg/g/a/a/i/l/c;

    return-object v0
.end method

.method public getCouponDTO()Lg/g/a/a/i/l/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/e;->coupon:Lg/g/a/a/i/l/d;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/e;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayCategories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/e;->displayCategories:Ljava/util/List;

    return-object v0
.end method

.method public getDisplayUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/e;->displayUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDistance()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lg/g/a/a/i/l/e;->distance:D

    return-wide v0
.end method

.method public getDynamicButtons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/e;->dynamicButtons:Ljava/util/List;

    return-object v0
.end method

.method public getLabels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lg/g/a/a/i/l/i;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/e;->labels:Ljava/util/List;

    return-object v0
.end method

.method public getMainImageUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/e;->mainImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/e;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneDTOs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lg/g/a/a/i/l/k;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/e;->phoneDTOs:Ljava/util/List;

    return-object v0
.end method

.method public getPostbackUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/e;->postbackUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/e;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getRatingDTO()Lg/g/a/a/i/l/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/e;->ratingDTO:Lg/g/a/a/i/l/m;

    return-object v0
.end method

.method public getRichDistanceDTO()Lg/g/a/a/i/l/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/e;->richDistanceDTO:Lg/g/a/a/i/l/n;

    return-object v0
.end method

.method public getType()Lg/g/a/a/i/j/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/e;->businessType:Ljava/lang/String;

    invoke-static {v0}, Lg/g/a/a/i/j/a;->from(Ljava/lang/String;)Lg/g/a/a/i/j/a;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/e;->url:Ljava/lang/String;

    return-object v0
.end method
