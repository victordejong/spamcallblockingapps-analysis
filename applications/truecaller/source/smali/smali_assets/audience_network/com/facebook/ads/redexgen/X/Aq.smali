.class public final Lcom/facebook/ads/redexgen/X/Aq;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Wk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaPeriodQueueTracker"
.end annotation


# static fields
.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Ao;

.field public A01:Lcom/facebook/ads/redexgen/X/Ar;

.field public A02:Lcom/facebook/ads/redexgen/X/Ar;

.field public A03:Z

.field public final A04:Lcom/facebook/ads/redexgen/X/Am;

.field public final A05:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/Ar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "KiEP2P9b6TLdkEYwaN5ndNVtk9NQ5Y9p"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "yrQkoPMIPCp0FUw5bDslSTdDJuyK"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "OV0qCkDU4pR0s48LAW0LoXOWDo4ZunO9"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "CNzCLbPvty9jTQMUswZxpqZWQtb7JEv9"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Vf"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ol3MR5ayifXszMqJK7WjfrE4Lr8bJhi8"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Hh8EscwfVF04VFT3j4sJSJqD2SmetI3K"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "DN3PdRai96zSFxDytd4qNigxYecPuw8S"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Aq;->A06:[Ljava/lang/String;

    .line 22429
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22431
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Aq;->A05:Ljava/util/ArrayList;

    .line 22432
    new-instance v0, Lcom/facebook/ads/redexgen/X/Am;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Am;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Aq;->A04:Lcom/facebook/ads/redexgen/X/Am;

    .line 22433
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ao;->A01:Lcom/facebook/ads/redexgen/X/Ao;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Aq;->A00:Lcom/facebook/ads/redexgen/X/Ao;

    .line 22434
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/Ar;Lcom/facebook/ads/redexgen/X/Ao;)Lcom/facebook/ads/redexgen/X/Ar;
    .locals 4

    .line 22435
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Ao;->A0E()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Aq;->A00:Lcom/facebook/ads/redexgen/X/Ao;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ao;->A0E()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22436
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Aq;
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/Ar;
    .end local p2    # null:Lcom/facebook/ads/redexgen/X/Ao;
    :cond_0
    return-object p1

    .line 22437
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Aq;->A00:Lcom/facebook/ads/redexgen/X/Ao;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Ar;->A01:Lcom/facebook/ads/redexgen/X/FL;

    iget v2, v0, Lcom/facebook/ads/redexgen/X/FL;->A02:I

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Aq;->A04:Lcom/facebook/ads/redexgen/X/Am;

    const/4 v0, 0x1

    .line 22438
    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ao;->A0A(ILcom/facebook/ads/redexgen/X/Am;Z)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Am;->A03:Ljava/lang/Object;

    .line 22439
    .local p0, "uid":Ljava/lang/Object;
    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/Ao;->A04(Ljava/lang/Object;)I

    move-result v1

    .line 22440
    .local p1, "newPeriodIndex":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_2

    .line 22441
    return-object p1

    .line 22442
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Aq;->A04:Lcom/facebook/ads/redexgen/X/Am;

    invoke-virtual {p2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ao;->A09(ILcom/facebook/ads/redexgen/X/Am;)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v0

    iget v2, v0, Lcom/facebook/ads/redexgen/X/Am;->A00:I

    .line 22443
    .local p2, "newWindowIndex":I
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Ar;->A01:Lcom/facebook/ads/redexgen/X/FL;

    .line 22444
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/FL;->A00(I)Lcom/facebook/ads/redexgen/X/FL;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ar;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Ar;-><init>(ILcom/facebook/ads/redexgen/X/FL;)V

    .line 22445
    return-object v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Aq;)Ljava/util/ArrayList;
    .locals 0

    .line 22446
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Aq;->A05:Ljava/util/ArrayList;

    return-object p0
.end method

.method private A02()V
    .locals 2

    .line 22447
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Aq;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 22448
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Aq;->A05:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ar;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Aq;->A01:Lcom/facebook/ads/redexgen/X/Ar;

    .line 22449
    :cond_0
    return-void
.end method


# virtual methods
.method public final A03()Lcom/facebook/ads/redexgen/X/Ar;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 22450
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Aq;->A01:Lcom/facebook/ads/redexgen/X/Ar;

    return-object v0
.end method

.method public final A04()Lcom/facebook/ads/redexgen/X/Ar;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 22451
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Aq;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22452
    const/4 v0, 0x0

    .line 22453
    :goto_0
    return-object v0

    .line 22454
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Aq;->A05:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ar;

    goto :goto_0
.end method

.method public final A05()Lcom/facebook/ads/redexgen/X/Ar;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 22455
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Aq;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Aq;->A00:Lcom/facebook/ads/redexgen/X/Ao;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ao;->A0E()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Aq;->A03:Z

    if-eqz v0, :cond_1

    .line 22456
    :cond_0
    const/4 v0, 0x0

    .line 22457
    :goto_0
    return-object v0

    .line 22458
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Aq;->A05:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ar;

    goto :goto_0
.end method

.method public final A06()Lcom/facebook/ads/redexgen/X/Ar;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 22459
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Aq;->A02:Lcom/facebook/ads/redexgen/X/Ar;

    return-object v0
.end method

.method public final A07(I)Lcom/facebook/ads/redexgen/X/FL;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 22460
    const/4 v6, 0x0

    .line 22461
    .local p0, "match":Lcom/facebook/ads/redexgen/X/FL;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Aq;->A00:Lcom/facebook/ads/redexgen/X/Ao;

    if-eqz v0, :cond_2

    .line 22462
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ao;->A00()I

    move-result v5

    .line 22463
    .local p1, "timelinePeriodCount":I
    const/4 v4, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Aq;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_2

    .line 22464
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Aq;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Ar;

    .line 22465
    .local v0, "mediaPeriod":Lcom/facebook/ads/redexgen/X/Ar;
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Ar;->A01:Lcom/facebook/ads/redexgen/X/FL;

    iget v2, v0, Lcom/facebook/ads/redexgen/X/FL;->A02:I

    .line 22466
    .local v5, "periodIndex":I
    if-ge v2, v5, :cond_1

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Aq;->A00:Lcom/facebook/ads/redexgen/X/Ao;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Aq;->A04:Lcom/facebook/ads/redexgen/X/Am;

    .line 22467
    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Ao;->A09(ILcom/facebook/ads/redexgen/X/Am;)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Am;->A00:I

    if-ne v0, p1, :cond_1

    .line 22468
    if-eqz v6, :cond_0

    .line 22469
    const/4 v0, 0x0

    return-object v0

    .line 22470
    :cond_0
    iget-object v6, v3, Lcom/facebook/ads/redexgen/X/Ar;->A01:Lcom/facebook/ads/redexgen/X/FL;

    .line 22471
    .end local v0    # "mediaPeriod":Lcom/facebook/ads/redexgen/X/Ar;
    .end local v5    # "periodIndex":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 22472
    .end local p1    # "timelinePeriodCount":I
    .end local v6    # "i":I
    :cond_2
    return-object v6
.end method

.method public final A08()V
    .locals 1

    .line 22473
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Aq;->A03:Z

    .line 22474
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Aq;->A02()V

    .line 22475
    return-void
.end method

.method public final A09()V
    .locals 1

    .line 22476
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Aq;->A03:Z

    .line 22477
    return-void
.end method

.method public final A0A(I)V
    .locals 0

    .line 22478
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Aq;->A02()V

    .line 22479
    return-void
.end method

.method public final A0B(ILcom/facebook/ads/redexgen/X/FL;)V
    .locals 4

    .line 22480
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Aq;->A05:Ljava/util/ArrayList;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ar;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ar;-><init>(ILcom/facebook/ads/redexgen/X/FL;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22481
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Aq;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Aq;->A00:Lcom/facebook/ads/redexgen/X/Ao;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ao;->A0E()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Aq;->A06:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x55

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Aq;->A06:[Ljava/lang/String;

    const-string v1, "SFS5Xb2c2LrmqtbhPrHYALinOi1MehvJ"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-nez v3, :cond_0

    .line 22482
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Aq;->A02()V

    .line 22483
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0C(ILcom/facebook/ads/redexgen/X/FL;)V
    .locals 2

    .line 22484
    new-instance v1, Lcom/facebook/ads/redexgen/X/Ar;

    invoke-direct {v1, p1, p2}, Lcom/facebook/ads/redexgen/X/Ar;-><init>(ILcom/facebook/ads/redexgen/X/FL;)V

    .line 22485
    .local p0, "mediaPeriod":Lcom/facebook/ads/redexgen/X/Ar;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Aq;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 22486
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Aq;->A02:Lcom/facebook/ads/redexgen/X/Ar;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22487
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Aq;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Aq;->A02:Lcom/facebook/ads/redexgen/X/Ar;

    .line 22488
    :cond_0
    return-void

    .line 22489
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Aq;->A05:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ar;

    goto :goto_0
.end method

.method public final A0D(ILcom/facebook/ads/redexgen/X/FL;)V
    .locals 1

    .line 22490
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ar;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ar;-><init>(ILcom/facebook/ads/redexgen/X/FL;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Aq;->A02:Lcom/facebook/ads/redexgen/X/Ar;

    .line 22491
    return-void
.end method

.method public final A0E(Lcom/facebook/ads/redexgen/X/Ao;)V
    .locals 4

    .line 22492
    const/4 v2, 0x0

    .local p0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Aq;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 22493
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Aq;->A05:Ljava/util/ArrayList;

    .line 22494
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ar;

    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/Aq;->A00(Lcom/facebook/ads/redexgen/X/Ar;Lcom/facebook/ads/redexgen/X/Ao;)Lcom/facebook/ads/redexgen/X/Ar;

    move-result-object v0

    .line 22495
    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 22496
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 22497
    .end local p0    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Aq;->A02:Lcom/facebook/ads/redexgen/X/Ar;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Aq;->A06:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x55

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Aq;->A06:[Ljava/lang/String;

    const-string v1, "OE27bQwCbSc4SHZoCTNTYydrCDTv"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 22498
    invoke-direct {p0, v3, p1}, Lcom/facebook/ads/redexgen/X/Aq;->A00(Lcom/facebook/ads/redexgen/X/Ar;Lcom/facebook/ads/redexgen/X/Ao;)Lcom/facebook/ads/redexgen/X/Ar;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Aq;->A02:Lcom/facebook/ads/redexgen/X/Ar;

    .line 22499
    :cond_1
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Aq;->A00:Lcom/facebook/ads/redexgen/X/Ao;

    .line 22500
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Aq;->A02()V

    .line 22501
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0F()Z
    .locals 1

    .line 22502
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Aq;->A03:Z

    return v0
.end method
