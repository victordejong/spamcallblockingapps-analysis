.class public final Lg/g/a/a/i/l/e$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/g/a/a/i/l/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private addressDTO:Lg/g/a/a/i/l/a;

.field private attributionDTO:Lg/g/a/a/i/l/b;

.field private businessId:Ljava/lang/String;

.field private businessType:Ljava/lang/String;

.field private coordinatesDTO:Lg/g/a/a/i/l/c;

.field private coupon:Lg/g/a/a/i/l/d;

.field private description:Ljava/lang/String;

.field private displayCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private displayUrl:Ljava/lang/String;

.field private distance:D

.field private dynamicButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg/g/a/a/i/l/i;",
            ">;"
        }
    .end annotation
.end field

.field private mainImageUrl:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private phoneDTOs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg/g/a/a/i/l/k;",
            ">;"
        }
    .end annotation
.end field

.field private postbackUrl:Ljava/lang/String;

.field private price:Ljava/lang/String;

.field private ratingDTO:Lg/g/a/a/i/l/m;

.field private richDistanceDTO:Lg/g/a/a/i/l/n;

.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lg/g/a/a/i/l/e$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lg/g/a/a/i/l/e$b;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lg/g/a/a/i/l/e$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/l/e$b;->businessType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lg/g/a/a/i/l/e$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/l/e$b;->businessId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lg/g/a/a/i/l/e$b;)Lg/g/a/a/i/l/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/l/e$b;->attributionDTO:Lg/g/a/a/i/l/b;

    return-object p0
.end method

.method static synthetic access$1100(Lg/g/a/a/i/l/e$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/l/e$b;->price:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lg/g/a/a/i/l/e$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/l/e$b;->url:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lg/g/a/a/i/l/e$b;)Lg/g/a/a/i/l/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/l/e$b;->coupon:Lg/g/a/a/i/l/d;

    return-object p0
.end method

.method static synthetic access$1400(Lg/g/a/a/i/l/e$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/l/e$b;->postbackUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lg/g/a/a/i/l/e$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/l/e$b;->displayUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600(Lg/g/a/a/i/l/e$b;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/l/e$b;->labels:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1700(Lg/g/a/a/i/l/e$b;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/l/e$b;->displayCategories:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1800(Lg/g/a/a/i/l/e$b;)Lg/g/a/a/i/l/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/l/e$b;->richDistanceDTO:Lg/g/a/a/i/l/n;

    return-object p0
.end method

.method static synthetic access$1900(Lg/g/a/a/i/l/e$b;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/l/e$b;->dynamicButtons:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lg/g/a/a/i/l/e$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/l/e$b;->name:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lg/g/a/a/i/l/e$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/l/e$b;->description:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lg/g/a/a/i/l/e$b;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/l/e$b;->phoneDTOs:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lg/g/a/a/i/l/e$b;)Lg/g/a/a/i/l/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/l/e$b;->addressDTO:Lg/g/a/a/i/l/a;

    return-object p0
.end method

.method static synthetic access$600(Lg/g/a/a/i/l/e$b;)Lg/g/a/a/i/l/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/l/e$b;->coordinatesDTO:Lg/g/a/a/i/l/c;

    return-object p0
.end method

.method static synthetic access$700(Lg/g/a/a/i/l/e$b;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lg/g/a/a/i/l/e$b;->distance:D

    return-wide v0
.end method

.method static synthetic access$800(Lg/g/a/a/i/l/e$b;)Lg/g/a/a/i/l/m;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/l/e$b;->ratingDTO:Lg/g/a/a/i/l/m;

    return-object p0
.end method

.method static synthetic access$900(Lg/g/a/a/i/l/e$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/l/e$b;->mainImageUrl:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lg/g/a/a/i/l/e;
    .locals 1

    .line 1
    new-instance v0, Lg/g/a/a/i/l/e;

    invoke-direct {v0, p0}, Lg/g/a/a/i/l/e;-><init>(Lg/g/a/a/i/l/e$b;)V

    return-object v0
.end method

.method public withAddressDTO(Lg/g/a/a/i/l/a;)Lg/g/a/a/i/l/e$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/l/e$b;->addressDTO:Lg/g/a/a/i/l/a;

    return-object p0
.end method

.method public withAttributionDTO(Lg/g/a/a/i/l/b;)Lg/g/a/a/i/l/e$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/l/e$b;->attributionDTO:Lg/g/a/a/i/l/b;

    return-object p0
.end method

.method public withBusinessId(Ljava/lang/String;)Lg/g/a/a/i/l/e$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/l/e$b;->businessId:Ljava/lang/String;

    return-object p0
.end method

.method public withBusinessType(Ljava/lang/String;)Lg/g/a/a/i/l/e$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/l/e$b;->businessType:Ljava/lang/String;

    return-object p0
.end method

.method public withCoordinatesDTO(Lg/g/a/a/i/l/c;)Lg/g/a/a/i/l/e$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/l/e$b;->coordinatesDTO:Lg/g/a/a/i/l/c;

    return-object p0
.end method

.method public withCouponDTO(Lg/g/a/a/i/l/d;)Lg/g/a/a/i/l/e$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/l/e$b;->coupon:Lg/g/a/a/i/l/d;

    return-object p0
.end method

.method public withDescription(Ljava/lang/String;)Lg/g/a/a/i/l/e$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/l/e$b;->description:Ljava/lang/String;

    return-object p0
.end method

.method public withDisplayCategories(Ljava/util/List;)Lg/g/a/a/i/l/e$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lg/g/a/a/i/l/e$b;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/l/e$b;->displayCategories:Ljava/util/List;

    return-object p0
.end method

.method public withDisplayUrl(Ljava/lang/String;)Lg/g/a/a/i/l/e$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/l/e$b;->displayUrl:Ljava/lang/String;

    return-object p0
.end method

.method public withDistance(D)Lg/g/a/a/i/l/e$b;
    .locals 0

    .line 1
    iput-wide p1, p0, Lg/g/a/a/i/l/e$b;->distance:D

    return-object p0
.end method

.method public withDynamicButtons(Ljava/util/List;)Lg/g/a/a/i/l/e$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Lg/g/a/a/i/l/e$b;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/l/e$b;->dynamicButtons:Ljava/util/List;

    return-object p0
.end method

.method public withLabels(Ljava/util/List;)Lg/g/a/a/i/l/e$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lg/g/a/a/i/l/i;",
            ">;)",
            "Lg/g/a/a/i/l/e$b;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/l/e$b;->labels:Ljava/util/List;

    return-object p0
.end method

.method public withMainImageUrl(Ljava/lang/String;)Lg/g/a/a/i/l/e$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/l/e$b;->mainImageUrl:Ljava/lang/String;

    return-object p0
.end method

.method public withName(Ljava/lang/String;)Lg/g/a/a/i/l/e$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/l/e$b;->name:Ljava/lang/String;

    return-object p0
.end method

.method public withPhoneDTOs(Ljava/util/List;)Lg/g/a/a/i/l/e$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lg/g/a/a/i/l/k;",
            ">;)",
            "Lg/g/a/a/i/l/e$b;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/l/e$b;->phoneDTOs:Ljava/util/List;

    return-object p0
.end method

.method public withPostBackUrl(Ljava/lang/String;)Lg/g/a/a/i/l/e$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/l/e$b;->postbackUrl:Ljava/lang/String;

    return-object p0
.end method

.method public withPrice(Ljava/lang/String;)Lg/g/a/a/i/l/e$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/l/e$b;->price:Ljava/lang/String;

    return-object p0
.end method

.method public withRatingDTO(Lg/g/a/a/i/l/m;)Lg/g/a/a/i/l/e$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/l/e$b;->ratingDTO:Lg/g/a/a/i/l/m;

    return-object p0
.end method

.method public withRichDistanceDTO(Lg/g/a/a/i/l/n;)Lg/g/a/a/i/l/e$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/l/e$b;->richDistanceDTO:Lg/g/a/a/i/l/n;

    return-object p0
.end method

.method public withUrl(Ljava/lang/String;)Lg/g/a/a/i/l/e$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/l/e$b;->url:Ljava/lang/String;

    return-object p0
.end method
