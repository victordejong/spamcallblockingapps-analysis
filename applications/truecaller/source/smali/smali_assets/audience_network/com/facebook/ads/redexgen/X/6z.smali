.class public abstract Lcom/facebook/ads/redexgen/X/6z;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/6y;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;

.field public static final A06:Ljava/lang/String;


# instance fields
.field public final A00:J

.field public final A01:Lcom/facebook/ads/redexgen/X/6x;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A02:Lcom/facebook/ads/redexgen/X/6y;

.field public final A03:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "IPzGtGdAf7dMWjoiAfsJwT8MSbfW"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "XMCeZkZyu3cdrivUr2jZRBASAtioBKsk"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "M9df3TmYW4NVaJXwV617xCLf0ka0RL"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "QgNQyFbsObpuCkNzfa3XkTwr8fWterHM"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "OM6XrXF8htknNzzoWXy"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "2umg9hNEEJctkPlZR8BXtgIxIwG9FY0j"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "MjJVouBCVmg2kVwWDhDqrlmadtoLZ7M"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "22y3hOnyLMExHbJepmdK5jKs80KnwphC"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/6z;->A05:[Ljava/lang/String;

    .line 16250
    invoke-static {}, Lcom/facebook/ads/redexgen/X/6z;->A04()V

    const-class v0, Lcom/facebook/ads/redexgen/X/6z;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/6z;->A06:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLcom/facebook/ads/redexgen/X/6x;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/6y;)V
    .locals 0
    .param p3    # Lcom/facebook/ads/redexgen/X/6x;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/facebook/ads/redexgen/X/6x;",
            "TT;",
            "Lcom/facebook/ads/redexgen/X/6y;",
            ")V"
        }
    .end annotation

    .line 16251
    .local p0, "this":Lcom/facebook/ads/redexgen/X/6z;, "Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/SignalValueTypeDef<TT;>;"
    .local p4, "signalValue":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16252
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/6z;->A00:J

    .line 16253
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/6z;->A01:Lcom/facebook/ads/redexgen/X/6x;

    .line 16254
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/6z;->A03:Ljava/lang/Object;

    .line 16255
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/6z;->A02:Lcom/facebook/ads/redexgen/X/6y;

    .line 16256
    return-void
.end method

.method private final A00()J
    .locals 2

    .line 16257
    .local p0, "this":Lcom/facebook/ads/redexgen/X/6z;, "Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/SignalValueTypeDef<TT;>;"
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/6z;->A00:J

    return-wide v0
.end method

.method private final A01()Lcom/facebook/ads/redexgen/X/6x;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 16258
    .local v0, "this":Lcom/facebook/ads/redexgen/X/6z;, "Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/SignalValueTypeDef<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6z;->A01:Lcom/facebook/ads/redexgen/X/6x;

    return-object v0
.end method

.method private final A02()Lcom/facebook/ads/redexgen/X/6y;
    .locals 1

    .line 16259
    .local v0, "this":Lcom/facebook/ads/redexgen/X/6z;, "Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/SignalValueTypeDef<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6z;->A02:Lcom/facebook/ads/redexgen/X/6y;

    return-object v0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/6z;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A04()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/6z;->A04:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x69t
        0x7et
        0x72t
        0x28t
        0x7ct
    .end array-data
.end method


# virtual methods
.method public final A05()I
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 16260
    .local v0, "this":Lcom/facebook/ads/redexgen/X/6z;, "Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/SignalValueTypeDef<TT;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6z;->A01()Lcom/facebook/ads/redexgen/X/6x;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16261
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6z;->A01()Lcom/facebook/ads/redexgen/X/6x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6x;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    .line 16262
    :goto_0
    add-int/lit8 v1, v0, 0x8

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 16263
    .local p0, "sizeOfIdAndContext":I
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6z;->A06()I

    move-result v0

    add-int/2addr v0, v1

    return v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16264
    :catch_0
    move-exception v0

    .line 16265
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6D;->A03(Ljava/lang/Throwable;)V

    .line 16266
    .end local v0    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public abstract A06()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final A07()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 16267
    .local v0, "this":Lcom/facebook/ads/redexgen/X/6z;, "Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/SignalValueTypeDef<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6z;->A03:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract A08(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public final A09(Z)Lorg/json/JSONObject;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-android.util.Log.e",
            "CatchGeneralException"
        }
    .end annotation

    .line 16268
    .local v1, "this":Lcom/facebook/ads/redexgen/X/6z;, "Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/SignalValueTypeDef<TT;>;"
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 16269
    .local p0, "object":Lorg/json/JSONObject;
    if-eqz p1, :cond_0

    .line 16270
    :try_start_0
    const/4 v2, 0x4

    const/4 v1, 0x1

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6z;->A03(III)Ljava/lang/String;

    move-result-object v2

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/6z;->A00:J

    long-to-float v1, v4

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr v1, v0

    float-to-double v0, v1

    invoke-virtual {v3, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 16271
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6z;->A01:Lcom/facebook/ads/redexgen/X/6x;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 16272
    const/4 v2, 0x0

    const/4 v1, 0x3

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6z;->A03(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6z;->A01:Lcom/facebook/ads/redexgen/X/6x;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6x;->A03()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16273
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6z;->A02:Lcom/facebook/ads/redexgen/X/6y;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6y;->A04:Lcom/facebook/ads/redexgen/X/6y;

    if-eq v1, v0, :cond_2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6z;->A07()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 16274
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/6z;->A08(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    goto :goto_0

    .line 16275
    :cond_2
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/6z;->A02:Lcom/facebook/ads/redexgen/X/6y;

    sget-object v4, Lcom/facebook/ads/redexgen/X/6y;->A04:Lcom/facebook/ads/redexgen/X/6y;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x3

    sget-object v1, Lcom/facebook/ads/redexgen/X/6z;->A05:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6e

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/6z;->A05:[Ljava/lang/String;

    const-string v1, "j6hvLenmhks7DifvzYp6ZMm4s1P7WZuQ"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/4 v1, 0x1

    const/16 v0, 0x47

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/6z;->A03(III)Ljava/lang/String;

    move-result-object v2

    if-ne v5, v4, :cond_4

    .line 16276
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6z;->A03:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/6w;

    .line 16277
    .local p1, "signalErrorValueTypeDef":Lcom/facebook/ads/redexgen/X/6w;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6w;->A08()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 16278
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6z;->A03:Ljava/lang/Object;

    if-nez v0, :cond_5

    .line 16279
    sget-object v1, Lcom/facebook/ads/redexgen/X/6v;->A07:Lcom/facebook/ads/redexgen/X/6v;

    new-instance v0, Lcom/facebook/ads/redexgen/X/6w;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/6w;-><init>(Lcom/facebook/ads/redexgen/X/6v;)V

    .line 16280
    .restart local p1    # "signalErrorValueTypeDef":Lcom/facebook/ads/redexgen/X/6w;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6w;->A08()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16281
    :catchall_0
    move-exception v0

    .line 16282
    .local p1, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6D;->A03(Ljava/lang/Throwable;)V

    .line 16283
    .end local p1    # "t":Ljava/lang/Throwable;
    :cond_5
    :goto_0
    return-object v3
.end method

.method public abstract A0A(Lcom/facebook/ads/redexgen/X/6z;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/6z<",
            "TT;>;)Z"
        }
    .end annotation
.end method

.method public final A0B(Lcom/facebook/ads/redexgen/X/6z;Ljava/util/EnumSet;)Z
    .locals 8
    .param p1    # Lcom/facebook/ads/redexgen/X/6z;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/6z<",
            "TT;>;",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/redexgen/X/6o;",
            ">;)Z"
        }
    .end annotation

    .line 16284
    .local v0, "this":Lcom/facebook/ads/redexgen/X/6z;, "Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/SignalValueTypeDef<TT;>;"
    .local v6, "newSignalValueTypeDef":Lcom/facebook/ads/redexgen/X/6z;, "Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/SignalValueTypeDef<TT;>;"
    .local v0, "signalFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/internal/botdetection/signals/model/SignalFlagsEnum;>;"
    const/4 v7, 0x0

    if-nez p1, :cond_0

    .line 16285
    return v7

    .line 16286
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6z;->A02()Lcom/facebook/ads/redexgen/X/6y;

    move-result-object v1

    invoke-direct {p1}, Lcom/facebook/ads/redexgen/X/6z;->A02()Lcom/facebook/ads/redexgen/X/6y;

    move-result-object v0

    if-eq v1, v0, :cond_1

    .line 16287
    return v7

    .line 16288
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6z;->A02()Lcom/facebook/ads/redexgen/X/6y;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/6y;->A04:Lcom/facebook/ads/redexgen/X/6y;

    if-ne v1, v0, :cond_2

    .line 16289
    invoke-direct {p1}, Lcom/facebook/ads/redexgen/X/6z;->A02()Lcom/facebook/ads/redexgen/X/6y;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/6y;->A04:Lcom/facebook/ads/redexgen/X/6y;

    if-ne v1, v0, :cond_2

    .line 16290
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/6z;->A0A(Lcom/facebook/ads/redexgen/X/6z;)Z

    move-result v0

    return v0

    .line 16291
    :cond_2
    const/4 v6, 0x0

    .line 16292
    .local p1, "comparisonResult":Z
    sget-object v0, Lcom/facebook/ads/redexgen/X/6o;->A0E:Lcom/facebook/ads/redexgen/X/6o;

    invoke-virtual {p2, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16293
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/6z;->A0A(Lcom/facebook/ads/redexgen/X/6z;)Z

    move-result v6

    .line 16294
    :cond_3
    sget-object v0, Lcom/facebook/ads/redexgen/X/6o;->A0C:Lcom/facebook/ads/redexgen/X/6o;

    invoke-virtual {p2, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 16295
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6z;->A01()Lcom/facebook/ads/redexgen/X/6x;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 16296
    invoke-direct {p1}, Lcom/facebook/ads/redexgen/X/6z;->A01()Lcom/facebook/ads/redexgen/X/6x;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 16297
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6z;->A01()Lcom/facebook/ads/redexgen/X/6x;

    move-result-object v0

    .line 16298
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6x;->A02()Ljava/lang/String;

    move-result-object v1

    .line 16299
    invoke-direct {p1}, Lcom/facebook/ads/redexgen/X/6z;->A01()Lcom/facebook/ads/redexgen/X/6x;

    move-result-object v0

    .line 16300
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6x;->A02()Ljava/lang/String;

    move-result-object v0

    .line 16301
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_0
    and-int/2addr v6, v0

    .line 16302
    :cond_4
    sget-object v0, Lcom/facebook/ads/redexgen/X/6o;->A0D:Lcom/facebook/ads/redexgen/X/6o;

    invoke-virtual {p2, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 16303
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6z;->A02()Lcom/facebook/ads/redexgen/X/6y;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/6y;->A0D:Lcom/facebook/ads/redexgen/X/6y;

    if-eq v1, v0, :cond_5

    .line 16304
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6z;->A02()Lcom/facebook/ads/redexgen/X/6y;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/6y;->A0B:Lcom/facebook/ads/redexgen/X/6y;

    if-ne v1, v0, :cond_8

    .line 16305
    :cond_5
    invoke-static {}, Lcom/facebook/ads/redexgen/X/61;->A08()J

    move-result-wide v4

    .line 16306
    .local v1, "epsilon":J
    :goto_1
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/6z;->A00:J

    .line 16307
    invoke-direct {p1}, Lcom/facebook/ads/redexgen/X/6z;->A00()J

    move-result-wide v0

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    cmp-long v0, v1, v4

    if-gez v0, :cond_6

    const/4 v7, 0x1

    :cond_6
    and-int/2addr v6, v7

    .line 16308
    .end local v1    # "epsilon":J
    :cond_7
    return v6

    .line 16309
    :cond_8
    invoke-static {}, Lcom/facebook/ads/redexgen/X/61;->A09()J

    move-result-wide v4

    goto :goto_1

    .line 16310
    :cond_9
    const/4 v0, 0x0

    goto :goto_0
.end method
