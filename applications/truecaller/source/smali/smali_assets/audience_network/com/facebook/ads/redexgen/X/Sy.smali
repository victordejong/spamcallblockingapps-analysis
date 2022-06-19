.class public final Lcom/facebook/ads/redexgen/X/Sy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/LR;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Sw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GameCountdownTimerListener"
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Sw;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "XQ6pDaA1rZEM"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "XoeGOYiSv0w2M1U1qXC2kK0WxpTFbq6C"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "goNPtYs5sZFfNSJyOgs171oDuCl7t69H"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "IBRmsKraW8ihcuaNuynFKjmRlH"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "udOMyB"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "k9bLdXox5SSCuqwZoRmzAy5kJm"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "rLCACxpviKCtWgunDsmekf59Ef0kXw8R"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "IiDilnQTvcIperbA6lCpmy3utrrmGEhT"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Sy;->A02:[Ljava/lang/String;

    .line 53471
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Sy;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Sw;)V
    .locals 0

    .line 53472
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Sy;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Sw;Lcom/facebook/ads/redexgen/X/T3;)V
    .locals 0

    .line 53473
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Sy;-><init>(Lcom/facebook/ads/redexgen/X/Sw;)V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Sy;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x44

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Sy;->A01:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x20t
        -0x8t
        -0x16t
        -0x18t
        -0x8t
        -0x1et
    .end array-data
.end method


# virtual methods
.method public final AAB()V
    .locals 5

    .line 53474
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0V:Lcom/facebook/ads/redexgen/X/MT;

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sy;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/MT;->setToolbarActionMessage(Ljava/lang/String;)V

    .line 53475
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sw;->A0S(Lcom/facebook/ads/redexgen/X/Sw;)V

    .line 53476
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sw;->A0b(Lcom/facebook/ads/redexgen/X/Sw;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sw;->A0g(Lcom/facebook/ads/redexgen/X/Sw;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53477
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0V:Lcom/facebook/ads/redexgen/X/MT;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MT;->setToolbarActionMode(I)V

    .line 53478
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sw;->A0f(Lcom/facebook/ads/redexgen/X/Sw;)Z

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Sy;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x6

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 53479
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0V:Lcom/facebook/ads/redexgen/X/MT;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/MT;->setToolbarActionMode(I)V

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Sy;->A02:[Ljava/lang/String;

    const-string v1, "RNuzR8"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-nez v4, :cond_2

    .line 53480
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sy;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    const/16 v0, 0x1f4

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0U(Landroid/view/ViewGroup;I)V

    .line 53481
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sw;->A0A(Lcom/facebook/ads/redexgen/X/Sw;)Lcom/facebook/ads/redexgen/X/SZ;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 53482
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sw;->A0A(Lcom/facebook/ads/redexgen/X/Sw;)Lcom/facebook/ads/redexgen/X/SZ;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/M5;->A0N(Landroid/view/View;I)V

    .line 53483
    :cond_2
    return-void
.end method

.method public final ABj(F)V
    .locals 9

    .line 53484
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sy;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    float-to-int v0, p1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Sw;->A0V(Lcom/facebook/ads/redexgen/X/Sw;I)V

    .line 53485
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sw;->A0c(Lcom/facebook/ads/redexgen/X/Sw;)Z

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_5

    .line 53486
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sw;->A0d(Lcom/facebook/ads/redexgen/X/Sw;)Z

    move-result v0

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    .line 53487
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    .line 53488
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sw;->A00(Lcom/facebook/ads/redexgen/X/Sw;)Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A02()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p1, v0

    sub-float v8, v2, v0

    .line 53489
    .local p0, "percentageOfReward":F
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sw;->A0e(Lcom/facebook/ads/redexgen/X/Sw;)Z

    move-result v0

    if-nez v0, :cond_2

    cmpl-float v0, v8, v2

    if-ltz v0, :cond_2

    .line 53490
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Sw;->A0i(Lcom/facebook/ads/redexgen/X/Sw;Z)Z

    .line 53491
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0V:Lcom/facebook/ads/redexgen/X/MT;

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x7

    invoke-static {v5, v2, v0}, Lcom/facebook/ads/redexgen/X/Sy;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/MT;->setToolbarActionMessage(Ljava/lang/String;)V

    .line 53492
    .restart local p0    # "percentageOfReward":F
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0V:Lcom/facebook/ads/redexgen/X/MT;

    mul-float/2addr v1, v8

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/MT;->setProgress(F)V

    .line 53493
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    .line 53494
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sw;->A00(Lcom/facebook/ads/redexgen/X/Sw;)Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A02()I

    move-result v0

    int-to-float v1, v0

    sub-float/2addr v1, p1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    .line 53495
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sw;->A00(Lcom/facebook/ads/redexgen/X/Sw;)Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A03()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_0

    const/4 v4, 0x1

    .line 53496
    .local p1, "canSkip":Z
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sw;->A0e(Lcom/facebook/ads/redexgen/X/Sw;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v4, :cond_1

    .line 53497
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0V:Lcom/facebook/ads/redexgen/X/MT;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/MT;->setToolbarActionMode(I)V

    .line 53498
    .end local v1
    :cond_1
    :goto_1
    return-void

    .line 53499
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/Sw;->A0i(Lcom/facebook/ads/redexgen/X/Sw;Z)Z

    .line 53500
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    .line 53501
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sw;->A00(Lcom/facebook/ads/redexgen/X/Sw;)Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    .line 53502
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0O()Lcom/facebook/ads/redexgen/X/1Z;

    move-result-object v0

    .line 53503
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1Z;->A00()Ljava/lang/String;

    move-result-object v7

    sget-object v5, Lcom/facebook/ads/redexgen/X/Sy;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v2, v5, v0

    const/4 v0, 0x6

    aget-object v5, v5, v0

    const/16 v0, 0x14

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v2, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v5, Lcom/facebook/ads/redexgen/X/Sy;->A02:[Ljava/lang/String;

    const-string v2, "16sMGD3KF8iI"

    const/4 v0, 0x0

    aput-object v2, v5, v0

    const-string v2, "yItCOMUcMHVXea4ql8lykvs7qx"

    const/4 v0, 0x5

    aput-object v2, v5, v0

    float-to-int v0, p1

    .line 53504
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    const/4 v2, 0x6

    const/16 v0, 0x41

    invoke-static {v5, v2, v0}, Lcom/facebook/ads/redexgen/X/Sy;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 53505
    .local v1, "rewardMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0V:Lcom/facebook/ads/redexgen/X/MT;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/MT;->setToolbarActionMessage(Ljava/lang/String;)V

    .line 53506
    .end local v1    # "rewardMessage":Ljava/lang/String;
    goto/16 :goto_0

    .line 53507
    .end local p0    # "percentageOfReward":F
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    .line 53508
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sw;->A00(Lcom/facebook/ads/redexgen/X/Sw;)Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A03()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p1, v0

    sub-float v8, v2, v0

    goto/16 :goto_0

    .line 53509
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sw;->A01(Lcom/facebook/ads/redexgen/X/Sw;)Lcom/facebook/ads/redexgen/X/1U;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1U;->A07()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    sub-float/2addr v2, p1

    .line 53510
    .local v1, "percentage":F
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0V:Lcom/facebook/ads/redexgen/X/MT;

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/MT;->setProgress(F)V

    goto/16 :goto_1
.end method
