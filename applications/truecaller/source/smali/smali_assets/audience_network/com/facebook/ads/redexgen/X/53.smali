.class public final Lcom/facebook/ads/redexgen/X/53;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;


# instance fields
.field public A00:Z

.field public final A01:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

.field public final A02:Lcom/facebook/ads/redexgen/X/52;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "kVVxbIvKBpFLpNMn249evg7U1t5DMrkR"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "HNBIISUKPJt5lzvo"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "tha"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "s0U2IqORDUirQkjYFZUhzDbmHPDS66DK"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "4XQ6Ra6x1CsG5mP0jlsGo4Oc8x5GsOh7"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "mYQ1yQiLRLlGaSwEYEmmcgt3b9ncmm6M"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "URRMMekVjcz4ECsO2XmiMnA4WEVCe5QQ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "lW2qNIOuJVr9bvm7hZsN45J1F7Bnv3JY"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/53;->A04:[Ljava/lang/String;

    .line 13237
    invoke-static {}, Lcom/facebook/ads/redexgen/X/53;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/AudienceNetworkActivity;Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;Lcom/facebook/ads/redexgen/X/52;)V
    .locals 0

    .line 13238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13239
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/53;->A01:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    .line 13240
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/53;->A02:Lcom/facebook/ads/redexgen/X/52;

    .line 13241
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/53;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x47

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

    const/16 v0, 0x31

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/53;->A03:[B

    return-void

    :array_0
    .array-data 1
        0xct
        0x8t
        0x7t
        0x3bt
        0x2at
        0x2ft
        0x2bt
        0x34t
        0x29t
        0x2bt
        0x14t
        0x2bt
        0x3at
        0x3dt
        0x35t
        0x38t
        0x31t
        0x13t
        0x2ct
        0x23t
        0x36t
        0x2et
        0x23t
        0x21t
        0x32t
        0x23t
        0x22t
        -0x22t
        0x23t
        0x36t
        0x21t
        0x23t
        0x2et
        0x32t
        0x27t
        0x2dt
        0x2ct
        -0x14t
        -0x46t
        -0x39t
        -0x48t
        -0x46t
        -0x44t
        -0x33t
        -0x3et
        -0x31t
        -0x3et
        -0x33t
        -0x2et
    .end array-data
.end method

.method private A02(Ljava/lang/Throwable;)V
    .locals 6

    .line 13242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/53;->A00:Z

    .line 13243
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/53;->A02:Lcom/facebook/ads/redexgen/X/52;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/52;->A0J()V

    .line 13244
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/53;->finish(I)V

    .line 13245
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/53;->A02:Lcom/facebook/ads/redexgen/X/52;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/52;->A0I()Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    .line 13246
    .local p0, "logContext":Lcom/facebook/ads/redexgen/X/8J;
    if-eqz v0, :cond_0

    .line 13247
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8m;->A04:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8n;

    invoke-direct {v3, p1}, Lcom/facebook/ads/redexgen/X/8n;-><init>(Ljava/lang/Throwable;)V

    .line 13248
    const/16 v2, 0x26

    const/16 v1, 0xb

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/53;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8l;->A8q(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8n;)V

    .line 13249
    :goto_0
    return-void

    .line 13250
    :cond_0
    const/4 v2, 0x0

    const/16 v1, 0x11

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/53;->A00(III)Ljava/lang/String;

    move-result-object v5

    const/16 v4, 0x11

    const/16 v3, 0x15

    sget-object v1, Lcom/facebook/ads/redexgen/X/53;->A04:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x30

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/53;->A04:[Ljava/lang/String;

    const-string v1, "roakWe6n8CepWvGQKms2st32sM0MtJhe"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const/16 v0, 0x77

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/53;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public final finish(I)V
    .locals 1

    .line 13251
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/53;->A02:Lcom/facebook/ads/redexgen/X/52;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/52;->finish(I)V

    .line 13252
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 13253
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/53;->A00:Z

    if-eqz v0, :cond_0

    .line 13254
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/53;->A01:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onActivityResult(IILandroid/content/Intent;)V

    .line 13255
    return-void

    .line 13256
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/53;->A02:Lcom/facebook/ads/redexgen/X/52;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/52;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13257
    :catchall_0
    move-exception v0

    .line 13258
    .local p0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/53;->A02(Ljava/lang/Throwable;)V

    .line 13259
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/53;->A01:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onActivityResult(IILandroid/content/Intent;)V

    .line 13260
    return-void
.end method

.method public final onBackPressed()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 13261
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/53;->A00:Z

    if-eqz v0, :cond_0

    .line 13262
    return-void

    .line 13263
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/53;->A02:Lcom/facebook/ads/redexgen/X/52;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/52;->onBackPressed()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13264
    :catchall_0
    move-exception v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/53;->A04:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    .line 13265
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/facebook/ads/redexgen/X/53;->A04:[Ljava/lang/String;

    const-string v1, "o2QAVIvbVP3X0FiUaWNt1f6t7dHcTRBl"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "vmYtMIbIQwew4451MpW2UPrO9wIbxS87"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/53;->A02(Ljava/lang/Throwable;)V

    .line 13266
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 13267
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/53;->A00:Z

    if-eqz v0, :cond_0

    .line 13268
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/53;->A01:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 13269
    return-void

    .line 13270
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/53;->A02:Lcom/facebook/ads/redexgen/X/52;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/52;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13271
    :catchall_0
    move-exception v0

    .line 13272
    .local p0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/53;->A02(Ljava/lang/Throwable;)V

    .line 13273
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/53;->A01:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 13274
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 13275
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/53;->A01:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onCreate(Landroid/os/Bundle;)V

    .line 13276
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/53;->A02:Lcom/facebook/ads/redexgen/X/52;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/52;->onCreate(Landroid/os/Bundle;)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13277
    :catchall_0
    move-exception v0

    .line 13278
    .local p0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/53;->A02(Ljava/lang/Throwable;)V

    .line 13279
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public final onDestroy()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 13280
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/53;->A00:Z

    if-eqz v0, :cond_0

    .line 13281
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/53;->A01:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onDestroy()V

    .line 13282
    return-void

    .line 13283
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/53;->A02:Lcom/facebook/ads/redexgen/X/52;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/52;->onDestroy()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13284
    :catchall_0
    move-exception v0

    .line 13285
    .local p0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/53;->A02(Ljava/lang/Throwable;)V

    .line 13286
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/53;->A01:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onDestroy()V

    .line 13287
    return-void
.end method

.method public final onPause()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 13288
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/53;->A00:Z

    if-eqz v0, :cond_0

    .line 13289
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/53;->A01:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onPause()V

    .line 13290
    return-void

    .line 13291
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/53;->A02:Lcom/facebook/ads/redexgen/X/52;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/52;->onPause()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13292
    :catchall_0
    move-exception v0

    .line 13293
    .local p0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/53;->A02(Ljava/lang/Throwable;)V

    .line 13294
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/53;->A01:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onPause()V

    .line 13295
    return-void
.end method

.method public final onResume()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 13296
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/53;->A01:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onResume()V

    .line 13297
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/53;->A00:Z

    if-eqz v0, :cond_0

    .line 13298
    return-void

    .line 13299
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/53;->A02:Lcom/facebook/ads/redexgen/X/52;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/52;->onResume()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13300
    :catchall_0
    move-exception v0

    .line 13301
    .local p0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/53;->A02(Ljava/lang/Throwable;)V

    .line 13302
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 13303
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/53;->A01:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 13304
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/53;->A00:Z

    if-eqz v0, :cond_0

    .line 13305
    return-void

    .line 13306
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/53;->A02:Lcom/facebook/ads/redexgen/X/52;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/52;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13307
    :catchall_0
    move-exception v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/53;->A04:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    .line 13308
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/facebook/ads/redexgen/X/53;->A04:[Ljava/lang/String;

    const-string v1, "46sQaeWUXFUhhsRkoBzMlxezgaVtku4l"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/53;->A02(Ljava/lang/Throwable;)V

    .line 13309
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final onStart()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 13310
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/53;->A01:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onStart()V

    .line 13311
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/53;->A00:Z

    if-eqz v0, :cond_0

    .line 13312
    return-void

    .line 13313
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/53;->A02:Lcom/facebook/ads/redexgen/X/52;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/52;->onStart()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13314
    :catchall_0
    move-exception v0

    .line 13315
    .local p0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/53;->A02(Ljava/lang/Throwable;)V

    .line 13316
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public final onStop()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 13317
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/53;->A01:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onStop()V

    .line 13318
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/53;->A00:Z

    if-eqz v0, :cond_0

    .line 13319
    return-void

    .line 13320
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/53;->A02:Lcom/facebook/ads/redexgen/X/52;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/52;->onStop()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13321
    :catchall_0
    move-exception v0

    .line 13322
    .local p0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/53;->A02(Ljava/lang/Throwable;)V

    .line 13323
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 13324
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/53;->A00:Z

    if-eqz v0, :cond_0

    .line 13325
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/53;->A01:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 13326
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/53;->A02:Lcom/facebook/ads/redexgen/X/52;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/52;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13327
    :catchall_0
    move-exception v0

    .line 13328
    .local p0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/53;->A02(Ljava/lang/Throwable;)V

    .line 13329
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/53;->A01:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
