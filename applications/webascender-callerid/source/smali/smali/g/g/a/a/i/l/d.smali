.class public Lg/g/a/a/i/l/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/g/a/a/i/l/d$b;
    }
.end annotation


# instance fields
.field private discountPercent:D
    .annotation runtime Lcom/google/gson/v/c;
        value = "discountPercentage"
    .end annotation
.end field

.field private discountedPriceDTO:Lg/g/a/a/i/l/l;
    .annotation runtime Lcom/google/gson/v/c;
        value = "discountedPrice"
    .end annotation
.end field

.field private numberOfOffers:I
    .annotation runtime Lcom/google/gson/v/c;
        value = "numberOfOffers"
    .end annotation
.end field

.field private offerDTOList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/v/c;
        value = "offers"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg/g/a/a/i/l/j;",
            ">;"
        }
    .end annotation
.end field

.field private originalPriceDTO:Lg/g/a/a/i/l/l;
    .annotation runtime Lcom/google/gson/v/c;
        value = "originalPrice"
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "title"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Lg/g/a/a/i/l/l;Ljava/util/List;Lg/g/a/a/i/l/l;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lg/g/a/a/i/l/l;",
            "Ljava/util/List<",
            "Lg/g/a/a/i/l/j;",
            ">;",
            "Lg/g/a/a/i/l/l;",
            "D)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lg/g/a/a/i/l/d;->numberOfOffers:I

    .line 4
    iput-object p3, p0, Lg/g/a/a/i/l/d;->discountedPriceDTO:Lg/g/a/a/i/l/l;

    .line 5
    iput-object p4, p0, Lg/g/a/a/i/l/d;->offerDTOList:Ljava/util/List;

    .line 6
    iput-object p5, p0, Lg/g/a/a/i/l/d;->originalPriceDTO:Lg/g/a/a/i/l/l;

    .line 7
    iput-wide p6, p0, Lg/g/a/a/i/l/d;->discountPercent:D

    .line 8
    iput-object p2, p0, Lg/g/a/a/i/l/d;->title:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lg/g/a/a/i/l/d$b;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-static {p1}, Lg/g/a/a/i/l/d$b;->access$000(Lg/g/a/a/i/l/d$b;)I

    move-result v0

    iput v0, p0, Lg/g/a/a/i/l/d;->numberOfOffers:I

    .line 11
    invoke-static {p1}, Lg/g/a/a/i/l/d$b;->access$100(Lg/g/a/a/i/l/d$b;)Lg/g/a/a/i/l/l;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/l/d;->discountedPriceDTO:Lg/g/a/a/i/l/l;

    .line 12
    invoke-static {p1}, Lg/g/a/a/i/l/d$b;->access$200(Lg/g/a/a/i/l/d$b;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/l/d;->offerDTOList:Ljava/util/List;

    .line 13
    invoke-static {p1}, Lg/g/a/a/i/l/d$b;->access$300(Lg/g/a/a/i/l/d$b;)Lg/g/a/a/i/l/l;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/l/d;->originalPriceDTO:Lg/g/a/a/i/l/l;

    .line 14
    invoke-static {p1}, Lg/g/a/a/i/l/d$b;->access$400(Lg/g/a/a/i/l/d$b;)D

    move-result-wide v0

    iput-wide v0, p0, Lg/g/a/a/i/l/d;->discountPercent:D

    .line 15
    invoke-static {p1}, Lg/g/a/a/i/l/d$b;->access$500(Lg/g/a/a/i/l/d$b;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lg/g/a/a/i/l/d;->title:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lg/g/a/a/i/l/d$b;Lg/g/a/a/i/l/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lg/g/a/a/i/l/d;-><init>(Lg/g/a/a/i/l/d$b;)V

    return-void
.end method

.method public static newBuilder()Lg/g/a/a/i/l/d$b;
    .locals 2

    .line 1
    new-instance v0, Lg/g/a/a/i/l/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/g/a/a/i/l/d$b;-><init>(Lg/g/a/a/i/l/d$a;)V

    return-object v0
.end method


# virtual methods
.method public getDiscountPercent()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lg/g/a/a/i/l/d;->discountPercent:D

    return-wide v0
.end method

.method public getDiscountedPriceDTO()Lg/g/a/a/i/l/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/d;->discountedPriceDTO:Lg/g/a/a/i/l/l;

    return-object v0
.end method

.method public getNumberOfOffers()I
    .locals 1

    .line 1
    iget v0, p0, Lg/g/a/a/i/l/d;->numberOfOffers:I

    return v0
.end method

.method public getOfferDTOList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lg/g/a/a/i/l/j;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/d;->offerDTOList:Ljava/util/List;

    return-object v0
.end method

.method public getOriginalPriceDTO()Lg/g/a/a/i/l/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/d;->originalPriceDTO:Lg/g/a/a/i/l/l;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/d;->title:Ljava/lang/String;

    return-object v0
.end method
