.class public final Lcom/facebook/ads/redexgen/X/62;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field public static A06:Lcom/facebook/ads/redexgen/X/6l;

.field public static A07:[B

.field public static A08:[Ljava/lang/String;

.field public static final A09:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/facebook/ads/redexgen/X/62;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/64;

.field public A01:Lcom/facebook/ads/redexgen/X/6W;

.field public final A02:Landroid/content/Context;

.field public final A03:Lcom/facebook/ads/redexgen/X/61;

.field public final A04:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/facebook/ads/redexgen/X/6H;",
            ">;"
        }
    .end annotation
.end field

.field public final A05:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/facebook/ads/redexgen/X/ad;",
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

    const-string v0, "eZKmHpMMDfaoBqW8nqrxEoXtMavqlqNM"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "AtFM24PyHDF8"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "75v22abHTVt154frUD1Ye4KyqdVteY4i"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Q1X3dzo1KUJ0DHl8HY6jDpMlStfBjogW"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "z2ZYiDayfErc"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "35EgzrmLPkhoCqMLba9eqfKFMV7fawsP"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "opJsobvHgIMCHkez4yG45JKspLs2PehX"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "oVaFSOpmfGo5v5TJJzClDpDAWRdHWsbi"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/62;->A08:[Ljava/lang/String;

    .line 14671
    invoke-static {}, Lcom/facebook/ads/redexgen/X/62;->A01()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/62;->A09:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/61;Lcom/facebook/ads/redexgen/X/6l;)V
    .locals 3

    .line 14672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14673
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/62;->A04:Ljava/util/concurrent/atomic/AtomicReference;

    .line 14674
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/62;->A05:Ljava/util/concurrent/atomic/AtomicReference;

    .line 14675
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/62;->A02:Landroid/content/Context;

    .line 14676
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/62;->A03:Lcom/facebook/ads/redexgen/X/61;

    .line 14677
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/62;->A02:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/62;->A03:Lcom/facebook/ads/redexgen/X/61;

    new-instance v0, Lcom/facebook/ads/redexgen/X/6W;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/6W;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/61;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/62;->A01:Lcom/facebook/ads/redexgen/X/6W;

    .line 14678
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/62;->A04:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 14679
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/78;->A0E(Lcom/facebook/ads/redexgen/X/6l;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14680
    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/62;->A02(Lcom/facebook/ads/redexgen/X/6l;)V

    .line 14681
    :cond_0
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/62;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x44

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

    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/62;->A07:[B

    return-void

    :array_0
    .array-data 1
        0x63t
        0x65t
        0x74t
        0x7ft
        0x19t
        0x14t
        0x5ct
        0x5at
        0x72t
        0x6dt
        0x71t
    .end array-data
.end method

.method private declared-synchronized A02(Lcom/facebook/ads/redexgen/X/6l;)V
    .locals 3

    monitor-enter p0

    .line 14682
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/62;->A04:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 14683
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/62;->A03:Lcom/facebook/ads/redexgen/X/61;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/61;->A0Z()Lcom/facebook/ads/redexgen/X/6C;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6D;->A02(Lcom/facebook/ads/redexgen/X/6C;)V

    .line 14684
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/62;->A03:Lcom/facebook/ads/redexgen/X/61;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/62;->A01:Lcom/facebook/ads/redexgen/X/6W;

    new-instance v1, Lcom/facebook/ads/redexgen/X/ad;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/ad;-><init>(Lcom/facebook/ads/redexgen/X/61;Lcom/facebook/ads/redexgen/X/6W;)V

    .line 14685
    .local p0, "intervalManager":Lcom/facebook/ads/redexgen/X/ad;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/62;->A05:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 14686
    new-instance v0, Lcom/facebook/ads/redexgen/X/64;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/64;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/62;->A00:Lcom/facebook/ads/redexgen/X/64;

    .line 14687
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/62;->A00:Lcom/facebook/ads/redexgen/X/64;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/64;->A00(Lcom/facebook/ads/redexgen/X/63;)V

    .line 14688
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/62;->A01:Lcom/facebook/ads/redexgen/X/6W;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6W;->A06()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14689
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/78;->A0E(Lcom/facebook/ads/redexgen/X/6l;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14690
    invoke-virtual {v1, p1}, Lcom/facebook/ads/redexgen/X/ad;->A05(Lcom/facebook/ads/redexgen/X/6l;)V

    .line 14691
    .end local v0
    :cond_0
    sput-object p1, Lcom/facebook/ads/redexgen/X/62;->A06:Lcom/facebook/ads/redexgen/X/6l;

    .line 14692
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/62;->A00:Lcom/facebook/ads/redexgen/X/64;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/64;->A01(Lcom/facebook/ads/redexgen/X/6l;)V

    .line 14693
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/62;->A04:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/62;->A02:Landroid/content/Context;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/62;->A03:Lcom/facebook/ads/redexgen/X/61;

    .line 14694
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/6H;->A00(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/61;)Lcom/facebook/ads/redexgen/X/6H;

    move-result-object v0

    .line 14695
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14696
    .end local p0    # "intervalManager":Lcom/facebook/ads/redexgen/X/ad;
    :cond_1
    monitor-exit p0

    return-void

    .line 14697
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/6l;)Z
    .locals 4

    .line 14698
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/78;->A0E(Lcom/facebook/ads/redexgen/X/6l;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14699
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/62;->A02(Lcom/facebook/ads/redexgen/X/6l;)V

    .line 14700
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/62;->A06:Lcom/facebook/ads/redexgen/X/6l;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/6l;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14701
    const/4 v0, 0x0

    return v0

    .line 14702
    :cond_1
    sput-object p1, Lcom/facebook/ads/redexgen/X/62;->A06:Lcom/facebook/ads/redexgen/X/6l;

    .line 14703
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/62;->A00:Lcom/facebook/ads/redexgen/X/64;

    if-eqz v0, :cond_2

    .line 14704
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/64;->A01(Lcom/facebook/ads/redexgen/X/6l;)V

    .line 14705
    :cond_2
    const/4 v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/62;->A08:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x74

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/62;->A08:[Ljava/lang/String;

    const-string v1, "al3lqCaa3X6BhafyoLSdmdZ2qZ9PyUcx"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return v3

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A04(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/6p;)Z
    .locals 3

    .line 14706
    sget-object v0, Lcom/facebook/ads/redexgen/X/62;->A06:Lcom/facebook/ads/redexgen/X/6l;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/78;->A0E(Lcom/facebook/ads/redexgen/X/6l;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/62;->A04:Ljava/util/concurrent/atomic/AtomicReference;

    .line 14707
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 14708
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 14709
    :cond_1
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/62;->A01:Lcom/facebook/ads/redexgen/X/6W;

    if-eqz v2, :cond_2

    .line 14710
    sget-object v1, Lcom/facebook/ads/redexgen/X/6n;->A02:Lcom/facebook/ads/redexgen/X/6n;

    sget-object v0, Lcom/facebook/ads/redexgen/X/62;->A06:Lcom/facebook/ads/redexgen/X/6l;

    invoke-virtual {v2, v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/6W;->A05(Lcom/facebook/ads/redexgen/X/6n;Lcom/facebook/ads/redexgen/X/6l;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/6p;)V

    .line 14711
    :cond_2
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final A05(Landroid/view/MotionEvent;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 14712
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/62;->A04:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 14713
    return-void

    .line 14714
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/62;->A04:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/6H;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/6H;->A05(Landroid/view/MotionEvent;)Z

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14715
    :catchall_0
    move-exception v0

    .line 14716
    .local p0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6D;->A03(Ljava/lang/Throwable;)V

    .line 14717
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public final declared-synchronized A06(Ljava/lang/String;)Z
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    monitor-enter p0

    .line 14718
    const/4 v7, 0x0

    .line 14719
    .local p0, "bdResponseHandled":Z
    const/4 v4, 0x0

    if-eqz p1, :cond_7

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14720
    :cond_0
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 14721
    .local v7, "rootNode":Lorg/json/JSONObject;
    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/62;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 14722
    .local v4, "bdObject":Lorg/json/JSONObject;
    if-nez v3, :cond_1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14723
    monitor-exit p0

    return v4

    .line 14724
    :cond_1
    :try_start_2
    const/4 v2, 0x6

    const/4 v1, 0x2

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/62;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14725
    const/4 v2, 0x6

    const/4 v1, 0x2

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/62;->A00(III)Ljava/lang/String;

    move-result-object v0

    .line 14726
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6l;->A00(I)Lcom/facebook/ads/redexgen/X/6l;

    move-result-object v0

    .line 14727
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/62;->A03(Lcom/facebook/ads/redexgen/X/6l;)Z

    move-result v0

    or-int/2addr v7, v0

    .line 14728
    :cond_2
    const/4 v2, 0x2

    const/4 v1, 0x2

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/62;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 14729
    .local v0, "sessionKeyArray":Lorg/json/JSONArray;
    const/16 v2, 0x8

    const/4 v1, 0x3

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/62;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 14730
    const/16 v2, 0x8

    const/4 v1, 0x3

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/62;->A00(III)Ljava/lang/String;

    move-result-object v0

    .line 14731
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 14732
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6p;->A00(I)Lcom/facebook/ads/redexgen/X/6p;

    move-result-object v3

    .line 14733
    .local p1, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v4, v0, :cond_6

    .line 14734
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 14735
    .local v2, "bdChallengeIdObject":Lorg/json/JSONObject;
    const/4 v2, 0x4

    const/4 v1, 0x2

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/62;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 14736
    :cond_3
    const/4 v2, 0x4

    const/4 v1, 0x2

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/62;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 14737
    .local v1, "bdChallengeId":Ljava/lang/String;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 14738
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/62;->A03:Lcom/facebook/ads/redexgen/X/61;

    sget-object v0, Lcom/facebook/ads/redexgen/X/68;->A04:Lcom/facebook/ads/redexgen/X/68;

    .line 14739
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/68;->A02()Ljava/lang/String;

    move-result-object v0

    .line 14740
    invoke-static {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/78;->A0B(Lcom/facebook/ads/redexgen/X/61;Ljava/lang/String;Ljava/lang/String;)V

    .line 14741
    invoke-direct {p0, v2, v3}, Lcom/facebook/ads/redexgen/X/62;->A04(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/6p;)Z

    move-result v0

    or-int/2addr v7, v0

    .line 14742
    .end local v2    # "bdChallengeIdObject":Lorg/json/JSONObject;
    .end local v1    # "bdChallengeId":Ljava/lang/String;
    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 14743
    :cond_5
    sget-object v3, Lcom/facebook/ads/redexgen/X/6p;->A04:Lcom/facebook/ads/redexgen/X/6p;

    goto :goto_0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 14744
    :catchall_0
    move-exception v0

    .line 14745
    .local p1, "t":Ljava/lang/Throwable;
    :try_start_3
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6D;->A03(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 14746
    :catch_0
    :cond_6
    monitor-exit p0

    return v7

    .line 14747
    .end local p0    # "bdResponseHandled":Z
    .end local v2
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 14748
    .restart local p0    # "bdResponseHandled":Z
    .restart local v2    # "bdChallengeIdObject":Lorg/json/JSONObject;
    :cond_7
    :goto_2
    monitor-exit p0

    return v4
.end method
