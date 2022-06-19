.class public final Lcom/facebook/ads/redexgen/X/S2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/MV;
.implements Lcom/facebook/ads/redexgen/X/Ox;


# static fields
.field public static A06:[B

.field public static A07:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/52;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Lcom/facebook/ads/redexgen/X/9f;

.field public A02:Ljava/lang/String;

.field public final A03:Lcom/facebook/ads/redexgen/X/XT;

.field public final A04:Lcom/facebook/ads/redexgen/X/MU;

.field public final A05:Lcom/facebook/ads/redexgen/X/Mw;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "oiGCyLLJ3En0Vucm2lwQCmCmn0v6sJ5G"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "mjDZ5bMhh2egn3gotl5Fak9vSR0Edani"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "1hG9WDI3REfqDlfCDst9s2RoZGy9hyfa"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "soGyy3NAn5Cor38t8b"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "p7cBZk"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "O0VCEzMFnvnMCBxUoY"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "3U8Wd6"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "kV1x0xBuSb6EFvzAtfCiFjMbzzjOwzOj"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/S2;->A07:[Ljava/lang/String;

    .line 51289
    invoke-static {}, Lcom/facebook/ads/redexgen/X/S2;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/MU;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/Mw;I)V
    .locals 10
    .param p6    # I
        .annotation build Lcom/facebook/ads/internal/view/dynamiclayout/DynamicFullScreenAdView$AdFormatType;
        .end annotation
    .end param

    .line 51290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51291
    move-object v4, p1

    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/S2;->A03:Lcom/facebook/ads/redexgen/X/XT;

    .line 51292
    move-object v6, p3

    iput-object v6, p0, Lcom/facebook/ads/redexgen/X/S2;->A04:Lcom/facebook/ads/redexgen/X/MU;

    .line 51293
    move-object v8, p5

    iput-object v8, p0, Lcom/facebook/ads/redexgen/X/S2;->A05:Lcom/facebook/ads/redexgen/X/Mw;

    .line 51294
    move-object v7, p4

    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/16;->A0Y()Lorg/json/JSONObject;

    move-result-object v3

    const/16 v2, 0x9e

    const/16 v1, 0xc

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/S2;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/S2;->A02:Ljava/lang/String;

    .line 51295
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/16;->A0n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51296
    new-instance v3, Lcom/facebook/ads/redexgen/X/9f;

    move-object v5, p2

    move/from16 v9, p6

    invoke-direct/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/9f;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/MU;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/Mw;I)V

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/S2;->A01:Lcom/facebook/ads/redexgen/X/9f;

    .line 51297
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S2;->A01:Lcom/facebook/ads/redexgen/X/9f;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/9f;->setRtfActionsJavascriptListener(Lcom/facebook/ads/redexgen/X/Ox;)V

    .line 51298
    :goto_0
    return-void

    .line 51299
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/S2;->A01:Lcom/facebook/ads/redexgen/X/9f;

    goto :goto_0
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/S2;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x6f

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01()V
    .locals 6

    .line 51300
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S2;->A01:Lcom/facebook/ads/redexgen/X/9f;

    if-eqz v0, :cond_1

    .line 51301
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9f;->close()V

    .line 51302
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/S2;
    :cond_0
    :goto_0
    return-void

    .line 51303
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/S2;->A00:Lcom/facebook/ads/redexgen/X/52;

    if-eqz v1, :cond_2

    .line 51304
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/52;->finish(I)V

    goto :goto_0

    .line 51305
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S2;->A03:Lcom/facebook/ads/redexgen/X/XT;

    .line 51306
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8m;->A06:I

    const/16 v2, 0x6f

    const/16 v1, 0x20

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/S2;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/8n;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/8n;-><init>(Ljava/lang/String;)V

    .line 51307
    const/4 v2, 0x6

    const/16 v1, 0xb

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/S2;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8l;->A8q(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8n;)V

    .line 51308
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S2;->A03:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0C()Landroid/app/Activity;

    move-result-object v0

    .line 51309
    .local p0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 51310
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0xaa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/S2;->A06:[B

    return-void

    :array_0
    .array-data 1
        -0x19t
        -0xet
        -0x3t
        -0x19t
        -0x1t
        -0x7t
        0x2bt
        0x38t
        0x29t
        0x2bt
        0x2dt
        0x3et
        0x33t
        0x40t
        0x33t
        0x3et
        0x43t
        0x1dt
        0x1bt
        0x28t
        0x1dt
        0x1ft
        0x26t
        0x0t
        0xct
        0xat
        -0x35t
        0x3t
        -0x2t
        0x0t
        0x2t
        -0x1t
        0xct
        0xct
        0x8t
        -0x35t
        -0x2t
        0x12t
        0x1t
        0x6t
        0x2t
        0xbt
        0x0t
        0x2t
        0xbt
        0x2t
        0x11t
        0x14t
        0xct
        0xft
        0x8t
        -0x35t
        0xft
        0x11t
        0x3t
        -0x35t
        -0x22t
        0x12t
        0x1t
        0x6t
        0x2t
        0xbt
        0x0t
        0x2t
        -0x15t
        0x2t
        0x11t
        0x14t
        0xct
        0xft
        0x8t
        -0x11t
        0x2t
        0x14t
        -0x2t
        0xft
        0x1t
        0x2t
        0x1t
        -0xdt
        0x6t
        0x1t
        0x2t
        0xct
        -0x22t
        0x0t
        0x11t
        0x6t
        0x13t
        0x6t
        0x11t
        0x16t
        0x2dt
        0x39t
        0x37t
        -0x8t
        0x30t
        0x2bt
        0x2dt
        0x2ft
        0x2ct
        0x39t
        0x39t
        0x35t
        -0x8t
        0x35t
        0x2bt
        0x3et
        0x2bt
        0x38t
        0x2bt
        0x5at
        0x2et
        0x62t
        0x51t
        0x56t
        0x52t
        0x5bt
        0x50t
        0x52t
        0x3bt
        0x52t
        0x61t
        0x64t
        0x5ct
        0x5ft
        0x58t
        0x2et
        0x50t
        0x61t
        0x56t
        0x63t
        0x56t
        0x61t
        0x66t
        0xdt
        0x56t
        0x60t
        0xdt
        0x5bt
        0x62t
        0x59t
        0x59t
        0x39t
        0x38t
        0x2dt
        0x2ft
        -0x1ft
        -0x23t
        -0x2et
        -0x2ct
        -0x2at
        -0x22t
        -0x2at
        -0x21t
        -0x1bt
        -0x46t
        -0x4bt
        0x35t
        0x31t
        0x26t
        0x28t
        0x2at
        0x32t
        0x2at
        0x33t
        0x39t
        0x24t
        0x2et
        0x29t
    .end array-data
.end method

.method private A03()Z
    .locals 7

    .line 51311
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/S2;->A00:Lcom/facebook/ads/redexgen/X/52;

    const/4 v6, 0x0

    const/4 v2, 0x6

    const/16 v1, 0xb

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/S2;->A00(III)Ljava/lang/String;

    move-result-object v5

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/52;->A0H()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51312
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 51313
    .local p0, "intent":Landroid/content/Intent;
    const/16 v2, 0x93

    const/16 v1, 0xb

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/S2;->A00(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S2;->A02:Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51314
    const/16 v2, 0x5c

    const/16 v1, 0x13

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/S2;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x17

    const/16 v1, 0x45

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/S2;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51315
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S2;->A00:Lcom/facebook/ads/redexgen/X/52;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/52;->A0H()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v1

    const/16 v0, 0x3e9

    invoke-virtual {v1, v4, v0}, Lcom/facebook/ads/AudienceNetworkActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 51316
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S2;->A03:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->AE1()V

    .line 51317
    const/4 v0, 0x1

    return v0
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51318
    .end local p0    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 51319
    .local p0, "ex":Landroid/content/ActivityNotFoundException;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S2;->A03:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->ADv()V

    .line 51320
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S2;->A03:Lcom/facebook/ads/redexgen/X/XT;

    .line 51321
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/8m;->A0B:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/8n;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/8n;-><init>(Ljava/lang/Throwable;)V

    .line 51322
    invoke-interface {v2, v5, v1, v0}, Lcom/facebook/ads/redexgen/X/8l;->A8q(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8n;)V

    .line 51323
    return v6

    .line 51324
    .end local p0    # "ex":Landroid/content/ActivityNotFoundException;
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S2;->A03:Lcom/facebook/ads/redexgen/X/XT;

    .line 51325
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v4

    sget v3, Lcom/facebook/ads/redexgen/X/8m;->A06:I

    const/16 v2, 0x6f

    const/16 v1, 0x20

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/S2;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/8n;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/8n;-><init>(Ljava/lang/String;)V

    .line 51326
    invoke-interface {v4, v5, v3, v0}, Lcom/facebook/ads/redexgen/X/8l;->A8q(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8n;)V

    .line 51327
    return v6
.end method


# virtual methods
.method public final A7t(Ljava/lang/String;)V
    .locals 7

    .line 51328
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S2;->A03:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v3, Lcom/facebook/ads/redexgen/X/MO;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/MO;-><init>(Landroid/content/Context;)V

    .line 51329
    .local p0, "params":Lcom/facebook/ads/redexgen/X/MO;
    const/16 v2, 0x8f

    const/4 v1, 0x4

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/S2;->A00(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v2, 0x0

    const/4 v1, 0x6

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/S2;->A00(III)Ljava/lang/String;

    move-result-object v4

    if-nez v6, :cond_1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    sget-object v2, Lcom/facebook/ads/redexgen/X/S2;->A07:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/S2;->A07:[Ljava/lang/String;

    const-string v1, "HXT1N9aUFCiTX8IjAD"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "Hjw6INOHlWjDRzMVan"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v6, :cond_2

    .line 51330
    :cond_1
    invoke-virtual {v3, p1}, Lcom/facebook/ads/redexgen/X/MO;->A03(Ljava/lang/String;)V

    .line 51331
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/S2;->A07:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x69

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 51332
    :cond_2
    const/16 v2, 0x11

    const/4 v1, 0x6

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/S2;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 51333
    invoke-virtual {v3, p1}, Lcom/facebook/ads/redexgen/X/MO;->A03(Ljava/lang/String;)V

    .line 51334
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S2;->A03:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->ADw()V

    .line 51335
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/S2;->A01()V

    goto :goto_1

    .line 51336
    :cond_3
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/S2;->A01()V

    goto :goto_1

    .line 51337
    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/S2;->A07:[Ljava/lang/String;

    const-string v1, "ID97lvjCTklEU0mENKFZ0jCzQAEYbfvd"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_8

    .line 51338
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/S2;->A03:Lcom/facebook/ads/redexgen/X/XT;

    sget-object v2, Lcom/facebook/ads/redexgen/X/S2;->A07:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/S2;->A07:[Ljava/lang/String;

    const-string v1, "BoqZ4wfC0SiK5tBsDvOnRbTPQI0SuSvi"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->ADy()V

    .line 51339
    :cond_5
    :goto_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/S2;->A03()Z

    move-result v0

    if-nez v0, :cond_6

    .line 51340
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/S2;->A01()V

    .line 51341
    :cond_6
    :goto_1
    return-void

    :cond_7
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->ADy()V

    goto :goto_0

    .line 51342
    :cond_8
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 51343
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S2;->A03:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->ADx()V

    goto :goto_0
.end method

.method public final A8e(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/52;)V
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 51344
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/S2;->A00:Lcom/facebook/ads/redexgen/X/52;

    .line 51345
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S2;->A01:Lcom/facebook/ads/redexgen/X/9f;

    if-eqz v0, :cond_0

    .line 51346
    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/9f;->A8e(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/52;)V

    .line 51347
    return-void

    .line 51348
    :cond_0
    if-nez p2, :cond_1

    .line 51349
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/S2;->A03()Z

    move-result v0

    if-nez v0, :cond_1

    .line 51350
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/S2;->A01()V

    .line 51351
    :cond_1
    return-void
.end method

.method public final ABU(Z)V
    .locals 1

    .line 51352
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S2;->A01:Lcom/facebook/ads/redexgen/X/9f;

    if-eqz v0, :cond_0

    .line 51353
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/9f;->ABU(Z)V

    .line 51354
    return-void

    .line 51355
    :cond_0
    return-void
.end method

.method public final ABt(Z)V
    .locals 1

    .line 51356
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S2;->A01:Lcom/facebook/ads/redexgen/X/9f;

    if-eqz v0, :cond_0

    .line 51357
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/9f;->ABt(Z)V

    .line 51358
    return-void

    .line 51359
    :cond_0
    return-void
.end method

.method public final AE6(Landroid/os/Bundle;)V
    .locals 1

    .line 51360
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S2;->A01:Lcom/facebook/ads/redexgen/X/9f;

    if-eqz v0, :cond_0

    .line 51361
    return-void

    .line 51362
    :cond_0
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)Z
    .locals 3

    .line 51363
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_4

    .line 51364
    new-instance v2, Lcom/facebook/ads/redexgen/X/KH;

    invoke-direct {v2, p3}, Lcom/facebook/ads/redexgen/X/KH;-><init>(Landroid/content/Intent;)V

    .line 51365
    .local p0, "result":Lcom/facebook/ads/redexgen/X/KH;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/KH;->A03()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    .line 51366
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S2;->A03:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v1, Lcom/facebook/ads/redexgen/X/MO;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/MO;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MO;->A04(Ljava/lang/String;)V

    .line 51367
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/S2;->A01()V

    .line 51368
    const/4 v0, 0x1

    return v0

    .line 51369
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S2;->A03:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v1, Lcom/facebook/ads/redexgen/X/MO;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/MO;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/KH;->A03()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MO;->A04(Ljava/lang/String;)V

    .line 51370
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/KH;->A02()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 51371
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/S2;->A04:Lcom/facebook/ads/redexgen/X/MU;

    .line 51372
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/KH;->A02()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 51373
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S2;->A05:Lcom/facebook/ads/redexgen/X/Mw;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Mw;->A7M()Ljava/lang/String;

    move-result-object v0

    .line 51374
    :goto_1
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/MU;->A3q(Ljava/lang/String;)V

    .line 51375
    :cond_2
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/KH;->A04()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51376
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/S2;->A04:Lcom/facebook/ads/redexgen/X/MU;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S2;->A05:Lcom/facebook/ads/redexgen/X/Mw;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Mw;->A5X()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/MU;->A3q(Ljava/lang/String;)V

    goto :goto_0

    .line 51377
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S2;->A05:Lcom/facebook/ads/redexgen/X/Mw;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Mw;->A7L()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 51378
    .end local p0    # "result":Lcom/facebook/ads/redexgen/X/KH;
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S2;->A01:Lcom/facebook/ads/redexgen/X/9f;

    if-eqz v0, :cond_5

    .line 51379
    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/9f;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    return v0

    .line 51380
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method public final onDestroy()V
    .locals 1

    .line 51381
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S2;->A01:Lcom/facebook/ads/redexgen/X/9f;

    if-eqz v0, :cond_0

    .line 51382
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9f;->onDestroy()V

    .line 51383
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/S2;->A01:Lcom/facebook/ads/redexgen/X/9f;

    .line 51384
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/S2;->A00:Lcom/facebook/ads/redexgen/X/52;

    .line 51385
    return-void
.end method
