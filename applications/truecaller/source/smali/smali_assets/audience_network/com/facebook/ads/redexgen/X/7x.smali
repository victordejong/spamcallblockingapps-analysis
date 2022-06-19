.class public final Lcom/facebook/ads/redexgen/X/7x;
.super Lcom/facebook/ads/redexgen/X/Ms;
.source ""


# instance fields
.field public A00:I

.field public A01:Z

.field public final A02:Lcom/facebook/ads/redexgen/X/9P;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/9P<",
            "Lcom/facebook/ads/redexgen/X/7v;",
            ">;"
        }
    .end annotation
.end field

.field public final A03:Lcom/facebook/ads/redexgen/X/9P;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/9P<",
            "Lcom/facebook/ads/redexgen/X/7u;",
            ">;"
        }
    .end annotation
.end field

.field public final A04:Lcom/facebook/ads/redexgen/X/9P;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/9P<",
            "Lcom/facebook/ads/redexgen/X/Kr;",
            ">;"
        }
    .end annotation
.end field

.field public final A05:Lcom/facebook/ads/redexgen/X/9P;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/9P<",
            "Lcom/facebook/ads/redexgen/X/7t;",
            ">;"
        }
    .end annotation
.end field

.field public final A06:Lcom/facebook/ads/redexgen/X/9P;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/9P<",
            "Lcom/facebook/ads/redexgen/X/Ke;",
            ">;"
        }
    .end annotation
.end field

.field public final A07:Lcom/facebook/ads/redexgen/X/9P;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/9P<",
            "Lcom/facebook/ads/redexgen/X/KR;",
            ">;"
        }
    .end annotation
.end field

.field public final A08:Lcom/facebook/ads/redexgen/X/9P;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/9P<",
            "Lcom/facebook/ads/redexgen/X/KQ;",
            ">;"
        }
    .end annotation
.end field

.field public final A09:Lcom/facebook/ads/redexgen/X/9P;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/9P<",
            "Lcom/facebook/ads/redexgen/X/KL;",
            ">;"
        }
    .end annotation
.end field

.field public final A0A:Lcom/facebook/ads/redexgen/X/9P;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/9P<",
            "Lcom/facebook/ads/redexgen/X/KK;",
            ">;"
        }
    .end annotation
.end field

.field public final A0B:Lcom/facebook/ads/redexgen/X/Po;

.field public final A0C:Lcom/facebook/ads/redexgen/X/Kk;

.field public final A0D:Lcom/facebook/ads/redexgen/X/KM;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/Po;Ljava/lang/String;)V
    .locals 6

    .line 17431
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move-object v2, p2

    move-object v1, p1

    move-object v5, p4

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/7x;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/Po;Ljava/util/List;Ljava/lang/String;)V

    .line 17432
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/Po;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8
    .param p5    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 17433
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v1, p1

    move-object v3, p3

    move-object v6, p5

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/7x;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/Po;Ljava/util/List;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;)V

    .line 17434
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/Po;Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .param p5    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/XT;",
            "Lcom/facebook/ads/redexgen/X/JT;",
            "Lcom/facebook/ads/redexgen/X/Po;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 17435
    .local v7, "extraParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v1, p1

    move-object v3, p3

    move-object v7, p5

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/7x;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/Po;Ljava/util/List;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;)V

    .line 17436
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/Po;Ljava/util/List;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/XT;",
            "Lcom/facebook/ads/redexgen/X/JT;",
            "Lcom/facebook/ads/redexgen/X/Po;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/27;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 17437
    .local v9, "adQualityRules":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adquality/AdQualityRule;>;"
    move-object v8, p3

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Po;->A0h()Z

    move-result v0

    .line 17438
    const/4 v4, 0x1

    xor-int/lit8 v11, v0, 0x1

    move-object v5, p0

    move-object v7, p2

    move-object v6, p1

    move-object/from16 v10, p5

    move-object/from16 v9, p4

    invoke-direct/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/Ms;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/Pd;Ljava/util/List;Ljava/lang/String;Z)V

    .line 17439
    new-instance v0, Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7y;-><init>(Lcom/facebook/ads/redexgen/X/7x;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7x;->A0D:Lcom/facebook/ads/redexgen/X/KM;

    .line 17440
    new-instance v0, Lcom/facebook/ads/redexgen/X/PY;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/PY;-><init>(Lcom/facebook/ads/redexgen/X/7x;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7x;->A07:Lcom/facebook/ads/redexgen/X/9P;

    .line 17441
    new-instance v0, Lcom/facebook/ads/redexgen/X/PA;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/PA;-><init>(Lcom/facebook/ads/redexgen/X/7x;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7x;->A03:Lcom/facebook/ads/redexgen/X/9P;

    .line 17442
    new-instance v0, Lcom/facebook/ads/redexgen/X/P9;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/P9;-><init>(Lcom/facebook/ads/redexgen/X/7x;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7x;->A04:Lcom/facebook/ads/redexgen/X/9P;

    .line 17443
    new-instance v0, Lcom/facebook/ads/redexgen/X/OT;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/OT;-><init>(Lcom/facebook/ads/redexgen/X/7x;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7x;->A05:Lcom/facebook/ads/redexgen/X/9P;

    .line 17444
    new-instance v0, Lcom/facebook/ads/redexgen/X/OF;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/OF;-><init>(Lcom/facebook/ads/redexgen/X/7x;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7x;->A02:Lcom/facebook/ads/redexgen/X/9P;

    .line 17445
    new-instance v0, Lcom/facebook/ads/redexgen/X/OE;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/OE;-><init>(Lcom/facebook/ads/redexgen/X/7x;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7x;->A06:Lcom/facebook/ads/redexgen/X/9P;

    .line 17446
    new-instance v0, Lcom/facebook/ads/redexgen/X/Nw;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Nw;-><init>(Lcom/facebook/ads/redexgen/X/7x;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7x;->A09:Lcom/facebook/ads/redexgen/X/9P;

    .line 17447
    new-instance v0, Lcom/facebook/ads/redexgen/X/Nd;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Nd;-><init>(Lcom/facebook/ads/redexgen/X/7x;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7x;->A0A:Lcom/facebook/ads/redexgen/X/9P;

    .line 17448
    new-instance v0, Lcom/facebook/ads/redexgen/X/Pn;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Pn;-><init>(Lcom/facebook/ads/redexgen/X/7x;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7x;->A08:Lcom/facebook/ads/redexgen/X/9P;

    .line 17449
    new-instance v0, Lcom/facebook/ads/redexgen/X/81;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/81;-><init>(Lcom/facebook/ads/redexgen/X/7x;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7x;->A0C:Lcom/facebook/ads/redexgen/X/Kk;

    .line 17450
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/7x;->A01:Z

    .line 17451
    iput-object v8, p0, Lcom/facebook/ads/redexgen/X/7x;->A0B:Lcom/facebook/ads/redexgen/X/Po;

    .line 17452
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7x;->A0B:Lcom/facebook/ads/redexgen/X/Po;

    .line 17453
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Po;->getEventBus()Lcom/facebook/ads/redexgen/X/9O;

    move-result-object v3

    const/16 v0, 0xb

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/9P;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7x;->A0D:Lcom/facebook/ads/redexgen/X/KM;

    aput-object v0, v2, v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7x;->A05:Lcom/facebook/ads/redexgen/X/9P;

    aput-object v0, v2, v4

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7x;->A07:Lcom/facebook/ads/redexgen/X/9P;

    aput-object v0, v2, v1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7x;->A04:Lcom/facebook/ads/redexgen/X/9P;

    aput-object v0, v2, v1

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7x;->A03:Lcom/facebook/ads/redexgen/X/9P;

    aput-object v0, v2, v1

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7x;->A02:Lcom/facebook/ads/redexgen/X/9P;

    aput-object v0, v2, v1

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7x;->A06:Lcom/facebook/ads/redexgen/X/9P;

    aput-object v0, v2, v1

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7x;->A09:Lcom/facebook/ads/redexgen/X/9P;

    aput-object v0, v2, v1

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7x;->A0A:Lcom/facebook/ads/redexgen/X/9P;

    aput-object v0, v2, v1

    const/16 v1, 0x9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7x;->A0C:Lcom/facebook/ads/redexgen/X/Kk;

    aput-object v0, v2, v1

    const/16 v1, 0xa

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7x;->A08:Lcom/facebook/ads/redexgen/X/9P;

    aput-object v0, v2, v1

    .line 17454
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/9O;->A03([Lcom/facebook/ads/redexgen/X/9P;)V

    .line 17455
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/Po;Ljava/util/List;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;)V
    .locals 15
    .param p6    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/XT;",
            "Lcom/facebook/ads/redexgen/X/JT;",
            "Lcom/facebook/ads/redexgen/X/Po;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/27;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 17456
    .local v9, "adQualityRules":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adquality/AdQualityRule;>;"
    .local v13, "extraParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v3, p0

    .line 17457
    move-object/from16 v9, p3

    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/Po;->A0h()Z

    move-result v0

    .line 17458
    const/4 v5, 0x1

    xor-int/lit8 v12, v0, 0x1

    move-object v6, p0

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v13, p6

    move-object/from16 v7, p1

    move-object/from16 v14, p7

    move-object/from16 v8, p2

    invoke-direct/range {v6 .. v14}, Lcom/facebook/ads/redexgen/X/Ms;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/Pd;Ljava/util/List;Ljava/lang/String;ZLandroid/os/Bundle;Ljava/util/Map;)V

    .line 17459
    new-instance v0, Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7y;-><init>(Lcom/facebook/ads/redexgen/X/7x;)V

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/7x;->A0D:Lcom/facebook/ads/redexgen/X/KM;

    .line 17460
    new-instance v0, Lcom/facebook/ads/redexgen/X/PY;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/PY;-><init>(Lcom/facebook/ads/redexgen/X/7x;)V

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/7x;->A07:Lcom/facebook/ads/redexgen/X/9P;

    .line 17461
    new-instance v0, Lcom/facebook/ads/redexgen/X/PA;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/PA;-><init>(Lcom/facebook/ads/redexgen/X/7x;)V

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/7x;->A03:Lcom/facebook/ads/redexgen/X/9P;

    .line 17462
    new-instance v0, Lcom/facebook/ads/redexgen/X/P9;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/P9;-><init>(Lcom/facebook/ads/redexgen/X/7x;)V

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/7x;->A04:Lcom/facebook/ads/redexgen/X/9P;

    .line 17463
    new-instance v0, Lcom/facebook/ads/redexgen/X/OT;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/OT;-><init>(Lcom/facebook/ads/redexgen/X/7x;)V

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/7x;->A05:Lcom/facebook/ads/redexgen/X/9P;

    .line 17464
    new-instance v0, Lcom/facebook/ads/redexgen/X/OF;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/OF;-><init>(Lcom/facebook/ads/redexgen/X/7x;)V

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/7x;->A02:Lcom/facebook/ads/redexgen/X/9P;

    .line 17465
    new-instance v0, Lcom/facebook/ads/redexgen/X/OE;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/OE;-><init>(Lcom/facebook/ads/redexgen/X/7x;)V

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/7x;->A06:Lcom/facebook/ads/redexgen/X/9P;

    .line 17466
    new-instance v0, Lcom/facebook/ads/redexgen/X/Nw;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Nw;-><init>(Lcom/facebook/ads/redexgen/X/7x;)V

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/7x;->A09:Lcom/facebook/ads/redexgen/X/9P;

    .line 17467
    new-instance v0, Lcom/facebook/ads/redexgen/X/Nd;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Nd;-><init>(Lcom/facebook/ads/redexgen/X/7x;)V

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/7x;->A0A:Lcom/facebook/ads/redexgen/X/9P;

    .line 17468
    new-instance v0, Lcom/facebook/ads/redexgen/X/Pn;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Pn;-><init>(Lcom/facebook/ads/redexgen/X/7x;)V

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/7x;->A08:Lcom/facebook/ads/redexgen/X/9P;

    .line 17469
    new-instance v0, Lcom/facebook/ads/redexgen/X/81;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/81;-><init>(Lcom/facebook/ads/redexgen/X/7x;)V

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/7x;->A0C:Lcom/facebook/ads/redexgen/X/Kk;

    .line 17470
    const/4 v1, 0x0

    iput-boolean v1, v3, Lcom/facebook/ads/redexgen/X/7x;->A01:Z

    .line 17471
    iput-object v9, v3, Lcom/facebook/ads/redexgen/X/7x;->A0B:Lcom/facebook/ads/redexgen/X/Po;

    .line 17472
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/7x;->A0B:Lcom/facebook/ads/redexgen/X/Po;

    .line 17473
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Po;->getEventBus()Lcom/facebook/ads/redexgen/X/9O;

    move-result-object v4

    const/16 v0, 0xa

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/9P;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/7x;->A0D:Lcom/facebook/ads/redexgen/X/KM;

    aput-object v0, v2, v1

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/7x;->A05:Lcom/facebook/ads/redexgen/X/9P;

    aput-object v0, v2, v5

    const/4 v1, 0x2

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/7x;->A07:Lcom/facebook/ads/redexgen/X/9P;

    aput-object v0, v2, v1

    const/4 v1, 0x3

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/7x;->A04:Lcom/facebook/ads/redexgen/X/9P;

    aput-object v0, v2, v1

    const/4 v1, 0x4

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/7x;->A03:Lcom/facebook/ads/redexgen/X/9P;

    aput-object v0, v2, v1

    const/4 v1, 0x5

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/7x;->A02:Lcom/facebook/ads/redexgen/X/9P;

    aput-object v0, v2, v1

    const/4 v1, 0x6

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/7x;->A06:Lcom/facebook/ads/redexgen/X/9P;

    aput-object v0, v2, v1

    const/4 v1, 0x7

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/7x;->A09:Lcom/facebook/ads/redexgen/X/9P;

    aput-object v0, v2, v1

    const/16 v1, 0x8

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/7x;->A0A:Lcom/facebook/ads/redexgen/X/9P;

    aput-object v0, v2, v1

    const/16 v1, 0x9

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/7x;->A08:Lcom/facebook/ads/redexgen/X/9P;

    aput-object v0, v2, v1

    .line 17474
    invoke-virtual {v4, v2}, Lcom/facebook/ads/redexgen/X/9O;->A03([Lcom/facebook/ads/redexgen/X/9P;)V

    .line 17475
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/7x;)Lcom/facebook/ads/redexgen/X/9P;
    .locals 0

    .line 17476
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7x;->A0A:Lcom/facebook/ads/redexgen/X/9P;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/7x;)Lcom/facebook/ads/redexgen/X/9P;
    .locals 0

    .line 17477
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7x;->A08:Lcom/facebook/ads/redexgen/X/9P;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/7x;)Lcom/facebook/ads/redexgen/X/9P;
    .locals 0

    .line 17478
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7x;->A05:Lcom/facebook/ads/redexgen/X/9P;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/7x;)Lcom/facebook/ads/redexgen/X/9P;
    .locals 0

    .line 17479
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7x;->A07:Lcom/facebook/ads/redexgen/X/9P;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/7x;)Lcom/facebook/ads/redexgen/X/9P;
    .locals 0

    .line 17480
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7x;->A04:Lcom/facebook/ads/redexgen/X/9P;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/7x;)Lcom/facebook/ads/redexgen/X/9P;
    .locals 0

    .line 17481
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7x;->A03:Lcom/facebook/ads/redexgen/X/9P;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/7x;)Lcom/facebook/ads/redexgen/X/9P;
    .locals 0

    .line 17482
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7x;->A02:Lcom/facebook/ads/redexgen/X/9P;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/7x;)Lcom/facebook/ads/redexgen/X/9P;
    .locals 0

    .line 17483
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7x;->A06:Lcom/facebook/ads/redexgen/X/9P;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/7x;)Lcom/facebook/ads/redexgen/X/9P;
    .locals 0

    .line 17484
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7x;->A09:Lcom/facebook/ads/redexgen/X/9P;

    return-object p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/7x;)Lcom/facebook/ads/redexgen/X/Po;
    .locals 0

    .line 17485
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7x;->A0B:Lcom/facebook/ads/redexgen/X/Po;

    return-object p0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/7x;)Lcom/facebook/ads/redexgen/X/Kk;
    .locals 0

    .line 17486
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7x;->A0C:Lcom/facebook/ads/redexgen/X/Kk;

    return-object p0
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/7x;)Lcom/facebook/ads/redexgen/X/KM;
    .locals 0

    .line 17487
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7x;->A0D:Lcom/facebook/ads/redexgen/X/KM;

    return-object p0
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/7x;)Z
    .locals 0

    .line 17488
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/7x;->A01:Z

    return p0
.end method

.method public static synthetic A0D(Lcom/facebook/ads/redexgen/X/7x;Z)Z
    .locals 0

    .line 17489
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/7x;->A01:Z

    return p1
.end method


# virtual methods
.method public final A0g()V
    .locals 2

    .line 17490
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7x;->A0B:Lcom/facebook/ads/redexgen/X/Po;

    .line 17491
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Po;->getStateHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Pc;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Pc;-><init>(Lcom/facebook/ads/redexgen/X/7x;)V

    .line 17492
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17493
    return-void
.end method
