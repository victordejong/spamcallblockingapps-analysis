.class public final Lcom/facebook/ads/redexgen/X/KF;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Pk;


# static fields
.field public static A0C:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/Po;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Z

.field public A03:Z

.field public A04:Z

.field public final A05:Landroid/os/Handler;

.field public final A06:Lcom/facebook/ads/redexgen/X/Mi;

.field public final A07:Lcom/facebook/ads/redexgen/X/L3;

.field public final A08:Lcom/facebook/ads/redexgen/X/Kq;

.field public final A09:Lcom/facebook/ads/redexgen/X/Kh;

.field public final A0A:Lcom/facebook/ads/redexgen/X/KO;

.field public final A0B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Q6;",
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

    const-string v0, "ua4Z1F3Vn1tdURaP0tTj5Z"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "VlqKJtfjGqtNso0qX2A6lmnvOZsZ2xTE"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "1pb0xsuTqC4ySw1JjiCpjHk6a0KK"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "HW9a8amQa56v9usqS4J3KzzxMBRp7oUY"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "lzg290ZQq0ECc78zj7A2Pt"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "9JBQniCNh78hbF6UnJo6"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "DIRAqcjzgSQz4x9q8OrEXdtc6Zce0V5V"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "FPN1H6gS7aT4O5CCkRk249I"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/KF;->A0C:[Ljava/lang/String;

    .line 41361
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 41362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41363
    new-instance v0, Lcom/facebook/ads/redexgen/X/7s;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7s;-><init>(Lcom/facebook/ads/redexgen/X/KF;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KF;->A07:Lcom/facebook/ads/redexgen/X/L3;

    .line 41364
    new-instance v0, Lcom/facebook/ads/redexgen/X/7r;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7r;-><init>(Lcom/facebook/ads/redexgen/X/KF;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KF;->A06:Lcom/facebook/ads/redexgen/X/Mi;

    .line 41365
    new-instance v0, Lcom/facebook/ads/redexgen/X/7q;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7q;-><init>(Lcom/facebook/ads/redexgen/X/KF;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KF;->A08:Lcom/facebook/ads/redexgen/X/Kq;

    .line 41366
    new-instance v0, Lcom/facebook/ads/redexgen/X/7p;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7p;-><init>(Lcom/facebook/ads/redexgen/X/KF;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KF;->A09:Lcom/facebook/ads/redexgen/X/Kh;

    .line 41367
    new-instance v0, Lcom/facebook/ads/redexgen/X/7o;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7o;-><init>(Lcom/facebook/ads/redexgen/X/KF;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KF;->A0A:Lcom/facebook/ads/redexgen/X/KO;

    .line 41368
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KF;->A05:Landroid/os/Handler;

    .line 41369
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KF;->A0B:Ljava/util/List;

    .line 41370
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/KF;->A00:I

    .line 41371
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/KF;->A02:Z

    .line 41372
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/KF;)I
    .locals 0

    .line 41373
    iget p0, p0, Lcom/facebook/ads/redexgen/X/KF;->A00:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/KF;)Landroid/os/Handler;
    .locals 0

    .line 41374
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/KF;->A05:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/KF;)Lcom/facebook/ads/redexgen/X/Po;
    .locals 0

    .line 41375
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/KF;->A01:Lcom/facebook/ads/redexgen/X/Po;

    return-object p0
.end method

.method private A03()V
    .locals 5

    .line 41376
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KF;->A05:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 41377
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KF;->A0B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/KF;->A0C:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/KF;->A0C:[Ljava/lang/String;

    const-string v1, "SzC94btdcN1119JNHgRanzsWdfoutew0"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Q6;

    .line 41378
    .local v1, "animation":Lcom/facebook/ads/redexgen/X/Q6;
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Q6;->cancel()V

    .line 41379
    .end local v1    # "animation":Lcom/facebook/ads/redexgen/X/Q6;
    goto :goto_0

    .line 41380
    :cond_1
    return-void
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/KF;)V
    .locals 0

    .line 41381
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KF;->A03()V

    return-void
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/KF;ZZ)V
    .locals 0

    .line 41382
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/KF;->A06(ZZ)V

    return-void
.end method

.method private A06(ZZ)V
    .locals 5

    .line 41383
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KF;->A0B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Q6;

    sget-object v1, Lcom/facebook/ads/redexgen/X/KF;->A0C:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 41384
    .local p1, "animation":Lcom/facebook/ads/redexgen/X/Q6;
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/KF;->A0C:[Ljava/lang/String;

    const-string v1, "qWrr7wKcnD6M25Nm7U3j0NNRElcnIA4d"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-interface {v3, p1, p2}, Lcom/facebook/ads/redexgen/X/Q6;->A3L(ZZ)V

    .line 41385
    .end local p1    # "animation":Lcom/facebook/ads/redexgen/X/Q6;
    goto :goto_0

    .line 41386
    :cond_1
    return-void
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/KF;)Z
    .locals 0

    .line 41387
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/KF;->A03:Z

    return p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/KF;)Z
    .locals 0

    .line 41388
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/KF;->A02:Z

    return p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/KF;)Z
    .locals 0

    .line 41389
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/KF;->A04:Z

    return p0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/KF;Lcom/facebook/ads/redexgen/X/Q5;)Z
    .locals 0

    .line 41390
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KF;->A0D(Lcom/facebook/ads/redexgen/X/Q5;)Z

    move-result p0

    return p0
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/KF;Z)Z
    .locals 0

    .line 41391
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/KF;->A03:Z

    return p1
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/KF;Z)Z
    .locals 0

    .line 41392
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/KF;->A04:Z

    return p1
.end method

.method private A0D(Lcom/facebook/ads/redexgen/X/Q5;)Z
    .locals 2

    .line 41393
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KF;->A0B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Q6;

    .line 41394
    .local p1, "animation":Lcom/facebook/ads/redexgen/X/Q6;
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Q6;->A7R()Lcom/facebook/ads/redexgen/X/Q5;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 41395
    const/4 v0, 0x0

    return v0

    .line 41396
    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final A0E()V
    .locals 1

    .line 41397
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KF;->A0B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 41398
    return-void
.end method

.method public final A0F()V
    .locals 2

    .line 41399
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KF;->A02:Z

    if-eqz v0, :cond_0

    .line 41400
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KF;->A05:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 41401
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KF;->A02:Z

    .line 41402
    :cond_0
    return-void
.end method

.method public final A0G()V
    .locals 1

    .line 41403
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KF;->A04:Z

    .line 41404
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KF;->A03:Z

    .line 41405
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/facebook/ads/redexgen/X/KF;->A06(ZZ)V

    .line 41406
    return-void
.end method

.method public final A0H(I)V
    .locals 0

    .line 41407
    iput p1, p0, Lcom/facebook/ads/redexgen/X/KF;->A00:I

    .line 41408
    return-void
.end method

.method public final A0I(Lcom/facebook/ads/redexgen/X/Q6;)V
    .locals 1

    .line 41409
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KF;->A0B:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41410
    return-void
.end method

.method public final A0J()Z
    .locals 1

    .line 41411
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KF;->A02:Z

    return v0
.end method

.method public final A8f(Lcom/facebook/ads/redexgen/X/Po;)V
    .locals 4

    .line 41412
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/KF;->A01:Lcom/facebook/ads/redexgen/X/Po;

    .line 41413
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Po;->getEventBus()Lcom/facebook/ads/redexgen/X/9O;

    move-result-object v3

    const/4 v0, 0x5

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/9P;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KF;->A07:Lcom/facebook/ads/redexgen/X/L3;

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KF;->A0A:Lcom/facebook/ads/redexgen/X/KO;

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KF;->A08:Lcom/facebook/ads/redexgen/X/Kq;

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KF;->A09:Lcom/facebook/ads/redexgen/X/Kh;

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KF;->A06:Lcom/facebook/ads/redexgen/X/Mi;

    const/4 v0, 0x4

    aput-object v1, v2, v0

    .line 41414
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/9O;->A03([Lcom/facebook/ads/redexgen/X/9P;)V

    .line 41415
    return-void
.end method

.method public final AF4(Lcom/facebook/ads/redexgen/X/Po;)V
    .locals 4

    .line 41416
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KF;->A03()V

    .line 41417
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Po;->getEventBus()Lcom/facebook/ads/redexgen/X/9O;

    move-result-object v3

    const/4 v0, 0x5

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/9P;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KF;->A06:Lcom/facebook/ads/redexgen/X/Mi;

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KF;->A0A:Lcom/facebook/ads/redexgen/X/KO;

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KF;->A08:Lcom/facebook/ads/redexgen/X/Kq;

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KF;->A09:Lcom/facebook/ads/redexgen/X/Kh;

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KF;->A07:Lcom/facebook/ads/redexgen/X/L3;

    const/4 v0, 0x4

    aput-object v1, v2, v0

    .line 41418
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/9O;->A04([Lcom/facebook/ads/redexgen/X/9P;)V

    .line 41419
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KF;->A01:Lcom/facebook/ads/redexgen/X/Po;

    .line 41420
    return-void
.end method
