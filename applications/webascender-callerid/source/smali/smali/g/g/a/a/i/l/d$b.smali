.class public final Lg/g/a/a/i/l/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/g/a/a/i/l/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private discountPercent:D

.field private discountedPriceDTO:Lg/g/a/a/i/l/l;

.field private numberOfOffers:I

.field private offerDTOList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg/g/a/a/i/l/j;",
            ">;"
        }
    .end annotation
.end field

.field private originalPriceDTO:Lg/g/a/a/i/l/l;

.field private title:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lg/g/a/a/i/l/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lg/g/a/a/i/l/d$b;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lg/g/a/a/i/l/d$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lg/g/a/a/i/l/d$b;->numberOfOffers:I

    return p0
.end method

.method static synthetic access$100(Lg/g/a/a/i/l/d$b;)Lg/g/a/a/i/l/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/l/d$b;->discountedPriceDTO:Lg/g/a/a/i/l/l;

    return-object p0
.end method

.method static synthetic access$200(Lg/g/a/a/i/l/d$b;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/l/d$b;->offerDTOList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lg/g/a/a/i/l/d$b;)Lg/g/a/a/i/l/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/l/d$b;->originalPriceDTO:Lg/g/a/a/i/l/l;

    return-object p0
.end method

.method static synthetic access$400(Lg/g/a/a/i/l/d$b;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lg/g/a/a/i/l/d$b;->discountPercent:D

    return-wide v0
.end method

.method static synthetic access$500(Lg/g/a/a/i/l/d$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/l/d$b;->title:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lg/g/a/a/i/l/d;
    .locals 2

    .line 1
    new-instance v0, Lg/g/a/a/i/l/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lg/g/a/a/i/l/d;-><init>(Lg/g/a/a/i/l/d$b;Lg/g/a/a/i/l/d$a;)V

    return-object v0
.end method

.method public withDiscountPercent(D)Lg/g/a/a/i/l/d$b;
    .locals 0

    .line 1
    iput-wide p1, p0, Lg/g/a/a/i/l/d$b;->discountPercent:D

    return-object p0
.end method

.method public withDiscountedPriceDTO(Lg/g/a/a/i/l/l;)Lg/g/a/a/i/l/d$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/l/d$b;->discountedPriceDTO:Lg/g/a/a/i/l/l;

    return-object p0
.end method

.method public withNumberOfOffers(I)Lg/g/a/a/i/l/d$b;
    .locals 0

    .line 1
    iput p1, p0, Lg/g/a/a/i/l/d$b;->numberOfOffers:I

    return-object p0
.end method

.method public withOfferDTOList(Ljava/util/List;)Lg/g/a/a/i/l/d$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lg/g/a/a/i/l/j;",
            ">;)",
            "Lg/g/a/a/i/l/d$b;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/l/d$b;->offerDTOList:Ljava/util/List;

    return-object p0
.end method

.method public withOriginalPriceDTO(Lg/g/a/a/i/l/l;)Lg/g/a/a/i/l/d$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/l/d$b;->originalPriceDTO:Lg/g/a/a/i/l/l;

    return-object p0
.end method

.method public withTitle(Ljava/lang/String;)Lg/g/a/a/i/l/d$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/l/d$b;->title:Ljava/lang/String;

    return-object p0
.end method
