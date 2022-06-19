.class public final Lcom/facebook/ads/redexgen/X/9U;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Wv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WriteAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/9n;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A01:Lcom/facebook/ads/redexgen/X/8J;

.field public final A02:Lcom/facebook/ads/redexgen/X/9Q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/9Q<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final A03:Lcom/facebook/ads/redexgen/X/9e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/9e<",
            "Lcom/facebook/ads/redexgen/X/JQ;",
            ">;"
        }
    .end annotation
.end field

.field public final A04:Lcom/facebook/ads/redexgen/X/JQ;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "eZRg0"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "9V6E8W"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "xj5QhV"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "OA95VIvTvwhgOpg1JzD5APn5ld4Fxl09"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "KVXKxw3vFVm2nsonOqXLQ2M9"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "1wiEXg5TWKy6aTJl"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "hr3sX5JQ1zlqribj"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Vt9t5ut5ZgjhHbMTByjzA5y3IT5Rov5"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/9U;->A06:[Ljava/lang/String;

    .line 20225
    invoke-static {}, Lcom/facebook/ads/redexgen/X/9U;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/JQ;Lcom/facebook/ads/redexgen/X/9Q;Lcom/facebook/ads/redexgen/X/9e;Lcom/facebook/ads/redexgen/X/8J;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/JQ;",
            "Lcom/facebook/ads/redexgen/X/9Q<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/9e<",
            "Lcom/facebook/ads/redexgen/X/JQ;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/8J;",
            ")V"
        }
    .end annotation

    .line 20226
    .local p2, "callback":Lcom/facebook/ads/redexgen/X/9Q;, "Lcom/facebook/ads/internal/eventstorage/AdEventStorageCallback<Ljava/lang/String;>;"
    .local p3, "database":Lcom/facebook/ads/redexgen/X/9e;, "Lcom/facebook/ads/internal/eventstorage/record/RecordDatabase<Lcom/facebook/ads/internal/logging/AdEvent;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 20227
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9U;->A04:Lcom/facebook/ads/redexgen/X/JQ;

    .line 20228
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/9U;->A03:Lcom/facebook/ads/redexgen/X/9e;

    .line 20229
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/9U;->A02:Lcom/facebook/ads/redexgen/X/9Q;

    .line 20230
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/9U;->A01:Lcom/facebook/ads/redexgen/X/8J;

    .line 20231
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/9U;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x37

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private final varargs A01([Ljava/lang/Void;)Ljava/lang/String;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Kn;->A02(Ljava/lang/Object;)Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    return-object v7

    :cond_0
    move-object v5, p0

    .line 20232
    .local p0, "this":Lcom/facebook/ads/redexgen/X/9U;
    .local v1, "voids":[Ljava/lang/Void;
    const/4 v6, 0x0

    .line 20233
    .local v0, "eventId":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    .line 20234
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/9U;->A01:Lcom/facebook/ads/redexgen/X/8J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v1

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/9U;->A04:Lcom/facebook/ads/redexgen/X/JQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/JQ;->A06()Lcom/facebook/ads/redexgen/X/JW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/JW;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/8l;->A87(Ljava/lang/String;)V

    .line 20235
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/9U;->A04:Lcom/facebook/ads/redexgen/X/JQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/JQ;->A08()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20236
    return-object v7

    .line 20237
    :cond_1
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20238
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1d

    const/16 v1, 0xf

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9U;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/9U;->A04:Lcom/facebook/ads/redexgen/X/JQ;

    .line 20239
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/JQ;->A06()Lcom/facebook/ads/redexgen/X/JW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/JW;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9U;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/9U;->A04:Lcom/facebook/ads/redexgen/X/JQ;

    .line 20240
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/JQ;->A09()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20241
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/9U;
    :cond_2
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/9U;->A03:Lcom/facebook/ads/redexgen/X/9e;

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/9U;->A04:Lcom/facebook/ads/redexgen/X/JQ;

    invoke-static {v6, v0}, Lcom/facebook/ads/redexgen/X/Wv;->A08(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JQ;)[B

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/9e;->AEt([B)V

    goto :goto_0
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/9n; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20242
    .restart local v0    # "eventId":Ljava/lang/String;
    .restart local v1    # "voids":[Ljava/lang/Void;
    :catch_0
    move-exception v4

    .line 20243
    .local v7, "e":Lcom/facebook/ads/redexgen/X/9n;
    :try_start_1
    iput-object v4, v5, Lcom/facebook/ads/redexgen/X/9U;->A00:Lcom/facebook/ads/redexgen/X/9n;

    .line 20244
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/9U;->A01:Lcom/facebook/ads/redexgen/X/8J;

    .line 20245
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v3

    const/16 v2, 0x2c

    const/16 v1, 0xf

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9U;->A00(III)Ljava/lang/String;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/8m;->A29:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/8n;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/8n;-><init>(Ljava/lang/Throwable;)V

    .line 20246
    invoke-interface {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8l;->A8q(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8n;)V

    .line 20247
    .end local v7    # "e":Lcom/facebook/ads/redexgen/X/9n;
    :goto_0
    return-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "eventId":Ljava/lang/String;
    .end local v1    # "voids":[Ljava/lang/Void;
    :catchall_0
    move-exception v0

    .end local v0
    .end local v1
    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/Kn;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v7
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x3b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/9U;->A05:[B

    return-void

    :array_0
    .array-data 1
        0x1at
        0x28t
        0x1ft
        0x1ft
        0x2t
        0x1ft
        0x4dt
        0x0t
        0x8t
        0x1et
        0x1et
        0xct
        0xat
        0x8t
        0x4dt
        0xet
        0xct
        0x3t
        0x3t
        0x2t
        0x19t
        0x4dt
        0xft
        0x8t
        0x4dt
        0x3t
        0x18t
        0x1t
        0x1t
        0xdt
        0x2et
        0x26t
        0x26t
        0x28t
        0x2ft
        0x26t
        0x61t
        0x24t
        0x37t
        0x24t
        0x2ft
        0x35t
        0x7bt
        0x61t
        0x9t
        0x1et
        0x18t
        0x14t
        0x9t
        0x1ft
        0x24t
        0x1ft
        0x1at
        0xft
        0x1at
        0x19t
        0x1at
        0x8t
        0x1et
    .end array-data
.end method

.method private final A03(Ljava/lang/String;)V
    .locals 7

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Kn;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v6, p0

    .line 20248
    .local p0, "this":Lcom/facebook/ads/redexgen/X/9U;
    .local v5, "result":Ljava/lang/String;
    :try_start_0
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/9U;->A00:Lcom/facebook/ads/redexgen/X/9n;

    if-nez v0, :cond_1

    .line 20249
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/9U;->A02:Lcom/facebook/ads/redexgen/X/9Q;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/9Q;->A02(Ljava/lang/Object;)V

    goto :goto_0

    .line 20250
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/9U;
    :cond_1
    iget-object v5, v6, Lcom/facebook/ads/redexgen/X/9U;->A02:Lcom/facebook/ads/redexgen/X/9Q;

    const/4 v4, 0x0

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/9U;->A00:Lcom/facebook/ads/redexgen/X/9n;

    .line 20251
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9n;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x1

    const/16 v1, 0x1c

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9U;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/internal/util/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 20252
    invoke-virtual {v5, v4, v0}, Lcom/facebook/ads/redexgen/X/9Q;->A01(ILjava/lang/String;)V

    .line 20253
    :goto_0
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v5    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-static {v0, v6}, Lcom/facebook/ads/redexgen/X/Kn;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Kn;->A02(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    return-object v3

    :cond_0
    move-object v1, p0

    .line 20254
    .local p0, "this":Lcom/facebook/ads/redexgen/X/9U;
    :try_start_0
    check-cast p1, [Ljava/lang/Void;

    invoke-direct {v1, p1}, Lcom/facebook/ads/redexgen/X/9U;->A01([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/9U;
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Kn;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/9U;->A06:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/9U;->A06:[Ljava/lang/String;

    const-string v1, "V"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v3
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Kn;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v1, p0

    .line 20255
    .local p0, "this":Lcom/facebook/ads/redexgen/X/9U;
    :try_start_0
    check-cast p1, Ljava/lang/String;

    invoke-direct {v1, p1}, Lcom/facebook/ads/redexgen/X/9U;->A03(Ljava/lang/String;)V

    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/9U;
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Kn;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
