.class public final Lcom/facebook/ads/redexgen/X/Ws;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/9e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Wt;,
        Lcom/facebook/ads/redexgen/X/9i;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/redexgen/X/9e<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static A06:[B

.field public static A07:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/9W;

.field public A01:Lcom/facebook/ads/redexgen/X/9W;

.field public A02:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Ws<",
            "TT;>.RecordFileBasedFetch;>;"
        }
    .end annotation
.end field

.field public A03:Z

.field public final A04:Lcom/facebook/ads/redexgen/X/9V;

.field public final A05:Lcom/facebook/ads/redexgen/X/9l;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "qjHjxJEnKto6KXykxGUV"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "2zWwgsdc0YI2n1wuHJ0aHIsPzdmfxqsH"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "nH8zlfZwPcU2YCM90OUKaCidDMv0PXY6"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "9v530zo2HQQRKyJKvzn5HrUNTPRL7Myp"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "K3vwlAe6bCWVMYHegp9FYHqzcyyslUPY"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "TkUFKGPVf3MACXJSEel58pLd1ZQWiXgG"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "k6Fq1"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "q4H6OwDTyeTkPN5vSxQjqxUvCkQfNX6D"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ws;->A07:[Ljava/lang/String;

    .line 65198
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ws;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9b;Lcom/facebook/ads/redexgen/X/9j;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65199
    .local v1, "this":Lcom/facebook/ads/redexgen/X/Ws;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65200
    const/16 v2, 0x203

    const/4 v1, 0x4

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ws;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/9b;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/9b;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9l;

    invoke-direct {v0, v1, p2}, Lcom/facebook/ads/redexgen/X/9l;-><init>(Lcom/facebook/ads/redexgen/X/9b;Lcom/facebook/ads/redexgen/X/9j;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ws;->A05:Lcom/facebook/ads/redexgen/X/9l;

    .line 65201
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/9b;->A05()Ljava/io/File;

    move-result-object v3

    const/16 v2, 0x1fd

    const/4 v1, 0x6

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ws;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/9V;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9V;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ws;->A04:Lcom/facebook/ads/redexgen/X/9V;

    .line 65202
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ws;->A04:Lcom/facebook/ads/redexgen/X/9V;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9V;->A03()Lcom/facebook/ads/redexgen/X/9W;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ws;->A00:Lcom/facebook/ads/redexgen/X/9W;

    .line 65203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ws;->A02:Ljava/util/List;

    .line 65204
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/Ws;->A05(Lcom/facebook/ads/redexgen/X/9j;)V

    .line 65205
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ws;->A00:Lcom/facebook/ads/redexgen/X/9W;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ws;->A01:Lcom/facebook/ads/redexgen/X/9W;

    .line 65206
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ws;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x62

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

    const/16 v0, 0x207

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ws;->A06:[B

    return-void

    :array_0
    .array-data 1
        -0x1ct
        0x2t
        0xft
        -0x3ft
        0x10t
        0xft
        0xdt
        0x1at
        -0x3ft
        0x5t
        0x6t
        0xdt
        0x6t
        0x15t
        0x6t
        -0x3ft
        0x4t
        0x16t
        0x13t
        0x14t
        0x10t
        0x13t
        0x14t
        -0x3ft
        0x11t
        0x10t
        0xat
        0xft
        0x15t
        0xat
        0xft
        0x8t
        -0x3ft
        0x2t
        0x15t
        -0x3ft
        0x15t
        0x9t
        0x6t
        -0x3ft
        0x5t
        0x2t
        0x15t
        0x2t
        0x3t
        0x2t
        0x14t
        0x6t
        -0x3ft
        0x14t
        0x15t
        0x2t
        0x13t
        0x15t
        -0x26t
        0xct
        0x9t
        0xat
        0x6t
        0x9t
        -0x49t
        0x7t
        0x6t
        0xat
        0x0t
        0xbt
        0x0t
        0x6t
        0x5t
        -0x49t
        0x0t
        0xat
        -0x49t
        -0x8t
        0xbt
        -0x49t
        -0x41t
        -0x44t
        -0x5t
        -0x3dt
        -0x44t
        -0x5t
        -0x40t
        -0x3dt
        -0x49t
        -0x8t
        0x5t
        -0x5t
        -0x49t
        0x9t
        -0x4t
        -0x6t
        0x6t
        0x9t
        -0x5t
        -0x49t
        -0x3t
        0x0t
        0x3t
        -0x4t
        -0x49t
        0xat
        -0x4t
        0x8t
        0xct
        -0x4t
        0x5t
        -0x6t
        -0x4t
        -0x49t
        0xat
        0xbt
        -0x8t
        0x9t
        0xbt
        0xat
        -0x49t
        -0x8t
        0xbt
        -0x49t
        -0x41t
        -0x44t
        -0x5t
        -0x3dt
        -0x44t
        -0x5t
        -0x40t
        -0x2ft
        -0x49t
        -0x5t
        -0x8t
        0xbt
        -0x8t
        -0x49t
        -0x1t
        -0x8t
        0xat
        -0x49t
        0x7t
        0x9t
        0x6t
        -0x7t
        -0x8t
        -0x7t
        0x3t
        0x10t
        -0x49t
        -0x7t
        -0x4t
        -0x4t
        0x5t
        -0x49t
        0x3t
        0x6t
        0xat
        0xbt
        -0x4et
        -0x1ct
        -0x1ft
        -0x1et
        -0x22t
        -0x1ft
        -0x71t
        -0x21t
        -0x22t
        -0x1et
        -0x28t
        -0x1dt
        -0x28t
        -0x22t
        -0x23t
        -0x71t
        -0x28t
        -0x1et
        -0x71t
        -0x30t
        -0x1dt
        -0x71t
        -0x69t
        -0x6ct
        -0x2dt
        -0x65t
        -0x6ct
        -0x2dt
        -0x68t
        -0x65t
        -0x71t
        -0x2ft
        -0x1ct
        -0x1dt
        -0x71t
        -0x1ft
        -0x2ct
        -0x2et
        -0x22t
        -0x1ft
        -0x2dt
        -0x71t
        -0x2bt
        -0x28t
        -0x25t
        -0x2ct
        -0x71t
        -0x1et
        -0x2ct
        -0x20t
        -0x1ct
        -0x2ct
        -0x23t
        -0x2et
        -0x2ct
        -0x71t
        -0x22t
        -0x23t
        -0x25t
        -0x18t
        -0x71t
        -0x29t
        -0x30t
        -0x1et
        -0x71t
        -0x2bt
        -0x28t
        -0x25t
        -0x2ct
        -0x71t
        -0x6ct
        -0x2dt
        -0x57t
        -0x71t
        -0x2dt
        -0x30t
        -0x1dt
        -0x30t
        -0x71t
        -0x29t
        -0x30t
        -0x1et
        -0x71t
        -0x21t
        -0x1ft
        -0x22t
        -0x2ft
        -0x30t
        -0x2ft
        -0x25t
        -0x18t
        -0x71t
        -0x2ft
        -0x2ct
        -0x2ct
        -0x23t
        -0x71t
        -0x25t
        -0x22t
        -0x1et
        -0x1dt
        -0x1bt
        0x0t
        0x8t
        0xbt
        0x4t
        0x3t
        -0x41t
        0x13t
        0xet
        -0x41t
        0x0t
        0x3t
        0x3t
        -0x41t
        0x3t
        0x0t
        0x13t
        0x0t
        -0x41t
        0x13t
        0xet
        -0x41t
        0xbt
        0xet
        0x6t
        -0x48t
        -0x2dt
        -0x25t
        -0x22t
        -0x29t
        -0x2at
        -0x6et
        -0x1at
        -0x1ft
        -0x6et
        -0x2bt
        -0x22t
        -0x29t
        -0x2dt
        -0x1ct
        -0x6et
        -0x2at
        -0x2dt
        -0x1at
        -0x2dt
        -0x2ct
        -0x2dt
        -0x1bt
        -0x29t
        -0x9t
        0x12t
        0x1at
        0x1dt
        0x16t
        0x15t
        -0x2ft
        0x25t
        0x20t
        -0x2ft
        0x17t
        0x16t
        0x25t
        0x14t
        0x19t
        -0x2ft
        0x15t
        0x12t
        0x25t
        0x12t
        -0x2ft
        0x17t
        0x23t
        0x20t
        0x1et
        -0x2ft
        0x1dt
        0x20t
        0x18t
        0x22t
        0x3dt
        0x45t
        0x48t
        0x41t
        0x40t
        -0x4t
        0x50t
        0x4bt
        -0x4t
        0x43t
        0x41t
        0x50t
        -0x4t
        0x4et
        0x41t
        0x3ft
        0x4bt
        0x4et
        0x40t
        -0x4t
        0x3ft
        0x4bt
        0x51t
        0x4at
        0x50t
        0x5t
        0x20t
        0x28t
        0x2bt
        0x24t
        0x23t
        -0x21t
        0x33t
        0x2et
        -0x21t
        0x34t
        0x2ft
        0x23t
        0x20t
        0x33t
        0x24t
        -0x21t
        0x25t
        0x28t
        0x2bt
        0x24t
        -0x21t
        0x32t
        0x24t
        0x30t
        0x34t
        0x24t
        0x2dt
        0x22t
        0x24t
        0x2bt
        0x3et
        0x3ct
        0x48t
        0x4bt
        0x3dt
        0x1ft
        0x42t
        0x45t
        0x3et
        0x1bt
        0x3at
        0x4ct
        0x3et
        0x3dt
        0x2bt
        0x3et
        0x3ct
        0x48t
        0x4bt
        0x3dt
        0x1dt
        0x3at
        0x4dt
        0x3at
        0x3bt
        0x3at
        0x4ct
        0x3et
        -0x7t
        0x3ct
        0x45t
        0x48t
        0x4ct
        0x3et
        0x3dt
        -0x8t
        0xbt
        0x9t
        0x15t
        0x18t
        0xat
        -0x14t
        0xft
        0x12t
        0xbt
        -0x18t
        0x7t
        0x19t
        0xbt
        0xat
        -0x8t
        0xbt
        0x9t
        0x15t
        0x18t
        0xat
        -0x16t
        0x7t
        0x1at
        0x7t
        0x8t
        0x7t
        0x19t
        0xbt
        -0x3at
        0xft
        0x19t
        -0x3at
        0x9t
        0x12t
        0x15t
        0x19t
        0xbt
        0xat
        -0x18t
        0x1t
        -0x2t
        0x1t
        0x2t
        0xat
        0x1t
        -0x4dt
        -0x1bt
        -0x8t
        -0xat
        0x2t
        0x5t
        -0x9t
        -0x27t
        -0x4t
        -0x1t
        -0x8t
        -0x2bt
        -0xct
        0x6t
        -0x8t
        -0x9t
        -0x1bt
        -0x8t
        -0xat
        0x2t
        0x5t
        -0x9t
        -0x29t
        -0xct
        0x7t
        -0xct
        -0xbt
        -0xct
        0x6t
        -0x8t
        -0x4dt
        -0x7t
        -0x8t
        0x7t
        -0xat
        -0x5t
        0xbt
        0x1dt
        0x1at
        0x1bt
        0x17t
        0x1at
        0x5t
        0x2t
        0x15t
        0x2t
    .end array-data
.end method

.method private A02(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65207
    .local p2, "this":Lcom/facebook/ads/redexgen/X/Ws;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/9W;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/9W;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ws;->A00:Lcom/facebook/ads/redexgen/X/9W;

    .line 65208
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ws;->A04:Lcom/facebook/ads/redexgen/X/9V;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ws;->A00:Lcom/facebook/ads/redexgen/X/9W;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9V;->A04(Lcom/facebook/ads/redexgen/X/9W;)V

    .line 65209
    return-void
.end method

.method private declared-synchronized A03(Lcom/facebook/ads/redexgen/X/Wt;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Ws<",
            "TT;>.RecordFileBasedFetch;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9n;
        }
    .end annotation

    .local v0, "this":Lcom/facebook/ads/redexgen/X/Ws;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    .local v1, "fetch":Lcom/facebook/ads/redexgen/X/Wt;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>.RecordFileBasedFetch;"
    monitor-enter p0

    .line 65210
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ws;->A03:Z

    if-nez v0, :cond_6

    .line 65211
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ws;->A06(Lcom/facebook/ads/redexgen/X/Wt;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 65212
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Wt;->A5K()I

    move-result v0

    if-nez v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65213
    monitor-exit p0

    return-void

    .line 65214
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ws;->A00:Lcom/facebook/ads/redexgen/X/9W;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Wt;->A00()Lcom/facebook/ads/redexgen/X/9i;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9i;->A02:Lcom/facebook/ads/redexgen/X/9W;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9W;->A04(Lcom/facebook/ads/redexgen/X/9W;)I

    move-result v0

    if-nez v0, :cond_4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65215
    :try_start_2
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Wt;->A00:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9i;

    .line 65216
    .local p1, "location":Lcom/facebook/ads/redexgen/X/9i;
    iget v1, v0, Lcom/facebook/ads/redexgen/X/9i;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ws;->A05:Lcom/facebook/ads/redexgen/X/9l;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9l;->A07()I

    move-result v0

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ws;->A05:Lcom/facebook/ads/redexgen/X/9l;

    .line 65217
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9l;->A0D()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65218
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ws;->A05:Lcom/facebook/ads/redexgen/X/9l;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9l;->A06()I

    move-result v1

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Ws;->A02(II)V

    goto :goto_0

    .line 65219
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/Ws;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    .restart local p1    # "location":Lcom/facebook/ads/redexgen/X/9i;
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ws;->A05:Lcom/facebook/ads/redexgen/X/9l;

    .line 65220
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9l;->A06()I

    move-result v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Wt;->A00()Lcom/facebook/ads/redexgen/X/9i;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/9i;->A00:I

    .line 65221
    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Ws;->A02(II)V

    .line 65222
    .end local p1    # "location":Lcom/facebook/ads/redexgen/X/9i;
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ws;->A01:Lcom/facebook/ads/redexgen/X/9W;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ws;->A00:Lcom/facebook/ads/redexgen/X/9W;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9W;->A04(Lcom/facebook/ads/redexgen/X/9W;)I

    move-result v0

    if-gez v0, :cond_3

    .line 65223
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ws;->A00:Lcom/facebook/ads/redexgen/X/9W;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ws;->A01:Lcom/facebook/ads/redexgen/X/9W;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65224
    :cond_3
    monitor-exit p0

    return-void

    .line 65225
    :catch_0
    move-exception v3

    .line 65226
    :try_start_3
    const/16 v2, 0x169

    const/16 v1, 0x1e

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ws;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9n;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/9n;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 65227
    :cond_4
    const/4 v2, 0x0

    const/16 v1, 0x36

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ws;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9n;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9n;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65228
    :cond_5
    const/16 v2, 0x1d2

    const/16 v1, 0x2b

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ws;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9n;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9n;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65229
    :cond_6
    const/16 v2, 0x1ab

    const/16 v1, 0x27

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ws;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9n;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9n;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 65230
    .end local v1    # "fetch":Lcom/facebook/ads/redexgen/X/Wt;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>.RecordFileBasedFetch;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/Ws;Lcom/facebook/ads/redexgen/X/Wt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9n;
        }
    .end annotation

    .line 65231
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ws;->A03(Lcom/facebook/ads/redexgen/X/Wt;)V

    return-void
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/9j;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65232
    .local v4, "this":Lcom/facebook/ads/redexgen/X/Ws;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ws;->A05:Lcom/facebook/ads/redexgen/X/9l;

    .line 65233
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9l;->A06()I

    move-result v0

    const/4 v5, 0x0

    new-instance v3, Lcom/facebook/ads/redexgen/X/9W;

    invoke-direct {v3, v0, v5}, Lcom/facebook/ads/redexgen/X/9W;-><init>(II)V

    .line 65234
    .local p0, "recordSequenceStart":Lcom/facebook/ads/redexgen/X/9W;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ws;->A00:Lcom/facebook/ads/redexgen/X/9W;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/9W;->A04(Lcom/facebook/ads/redexgen/X/9W;)I

    move-result v0

    const/4 v4, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    if-lez v0, :cond_1

    .line 65235
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x4

    new-array v6, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ws;->A00:Lcom/facebook/ads/redexgen/X/9W;

    .line 65236
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9W;->A02()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ws;->A00:Lcom/facebook/ads/redexgen/X/9W;

    .line 65237
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9W;->A03()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v8

    .line 65238
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/9W;->A02()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v9

    .line 65239
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/9W;->A03()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v4

    .line 65240
    const/16 v2, 0x36

    const/16 v1, 0x66

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ws;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 65241
    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/9j;->ADk(Ljava/lang/String;)V

    .line 65242
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Ws;->A00:Lcom/facebook/ads/redexgen/X/9W;

    .line 65243
    :cond_0
    return-void

    .line 65244
    :cond_1
    :goto_0
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/9W;->A02()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ws;->A00:Lcom/facebook/ads/redexgen/X/9W;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9W;->A02()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 65245
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ws;->A05:Lcom/facebook/ads/redexgen/X/9l;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9l;->A0D()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65246
    new-instance v3, Lcom/facebook/ads/redexgen/X/9W;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ws;->A05:Lcom/facebook/ads/redexgen/X/9l;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9l;->A06()I

    move-result v0

    invoke-direct {v3, v0, v5}, Lcom/facebook/ads/redexgen/X/9W;-><init>(II)V

    goto :goto_0

    .line 65247
    :cond_2
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v4, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ws;->A00:Lcom/facebook/ads/redexgen/X/9W;

    .line 65248
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9W;->A02()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ws;->A00:Lcom/facebook/ads/redexgen/X/9W;

    .line 65249
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9W;->A03()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v8

    .line 65250
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/9W;->A02()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v9

    .line 65251
    const/16 v2, 0x9c

    const/16 v1, 0x65

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ws;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 65252
    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/9j;->ADk(Ljava/lang/String;)V

    .line 65253
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ws;->A05:Lcom/facebook/ads/redexgen/X/9l;

    .line 65254
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9l;->A06()I

    move-result v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ws;->A05:Lcom/facebook/ads/redexgen/X/9l;

    .line 65255
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9l;->A07()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9W;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/9W;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ws;->A00:Lcom/facebook/ads/redexgen/X/9W;

    .line 65256
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ws;->A04:Lcom/facebook/ads/redexgen/X/9V;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ws;->A00:Lcom/facebook/ads/redexgen/X/9W;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9V;->A04(Lcom/facebook/ads/redexgen/X/9W;)V

    goto :goto_0
.end method

.method private declared-synchronized A06(Lcom/facebook/ads/redexgen/X/Wt;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Ws<",
            "TT;>.RecordFileBasedFetch;)Z"
        }
    .end annotation

    .local v0, "this":Lcom/facebook/ads/redexgen/X/Ws;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    .local v0, "fetch":Lcom/facebook/ads/redexgen/X/Wt;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>.RecordFileBasedFetch;"
    monitor-enter p0

    .line 65257
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ws;->A02:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 65258
    .local p0, "removed":Z
    if-nez v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65259
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 65260
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Wt;->A5K()I

    move-result v0

    if-lez v0, :cond_1

    .line 65261
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Wt;->A01()Lcom/facebook/ads/redexgen/X/9i;

    move-result-object v0

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/9i;->A02:Lcom/facebook/ads/redexgen/X/9W;

    .line 65262
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Wt;->A01()Lcom/facebook/ads/redexgen/X/9i;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/9i;->A01:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9W;->A05(I)Lcom/facebook/ads/redexgen/X/9W;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ws;->A01:Lcom/facebook/ads/redexgen/X/9W;

    .line 65263
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9W;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65264
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Wt;->A00()Lcom/facebook/ads/redexgen/X/9i;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9i;->A02:Lcom/facebook/ads/redexgen/X/9W;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ws;->A01:Lcom/facebook/ads/redexgen/X/9W;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65265
    .end local v0    # "fetch":Lcom/facebook/ads/redexgen/X/Wt;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>.RecordFileBasedFetch;"
    :cond_1
    const/4 v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ws;->A07:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ws;->A07:[Ljava/lang/String;

    const-string v1, "RJmBk8mp9ukvkOiT1GdeN9JCmreSI8hk"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    monitor-exit p0

    return v3

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 65266
    .end local p0    # "removed":Z
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/Ws;Lcom/facebook/ads/redexgen/X/Wt;)Z
    .locals 0

    .line 65267
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ws;->A06(Lcom/facebook/ads/redexgen/X/Wt;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final declared-synchronized A5J([B[I)Lcom/facebook/ads/redexgen/X/9d;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9n;
        }
    .end annotation

    .local v0, "this":Lcom/facebook/ads/redexgen/X/Ws;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    monitor-enter p0

    .line 65268
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ws;->A03:Z

    if-nez v0, :cond_5

    .line 65269
    const/4 v9, 0x0

    .line 65270
    .local p0, "storageOffset":I
    const/4 v11, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65271
    .local v8, "countsOffset":I
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 65272
    .local v10, "individualFileFetches":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/eventstorage/record/FileSequenceFetchResult;>;"
    const/4 v3, 0x1

    .line 65273
    .local v9, "mayHaveMoreData":Z
    :goto_0
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Ws;->A05:Lcom/facebook/ads/redexgen/X/9l;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ws;->A01:Lcom/facebook/ads/redexgen/X/9W;

    .line 65274
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9W;->A02()I

    move-result v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ws;->A01:Lcom/facebook/ads/redexgen/X/9W;

    .line 65275
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9W;->A03()I

    move-result v7

    .line 65276
    move-object v8, p1

    move-object v10, p2

    invoke-virtual/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/9l;->A0A(II[BI[II)Lcom/facebook/ads/redexgen/X/9Z;

    move-result-object v5

    .line 65277
    .local v11, "sequenceFetchResult":Lcom/facebook/ads/redexgen/X/9Z;
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/9Z;->A01()Lcom/facebook/ads/redexgen/X/9Y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9Y;->A00()I

    move-result v2

    .line 65278
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/9Z;->A01()Lcom/facebook/ads/redexgen/X/9Y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9Y;->A01()I

    move-result v0

    sub-int/2addr v2, v0

    .line 65279
    .local v4, "fetchedRecords":I
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/9Z;->A01()Lcom/facebook/ads/redexgen/X/9Y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9Y;->A02()I

    move-result v0

    add-int/2addr v9, v0

    .line 65280
    add-int/2addr v11, v2

    .line 65281
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/9Z;->A01()Lcom/facebook/ads/redexgen/X/9Y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9Y;->A03()Lcom/facebook/ads/redexgen/X/9X;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/9X;->A02:Lcom/facebook/ads/redexgen/X/9X;

    if-ne v1, v0, :cond_0

    .line 65282
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65283
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/Ws;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    :cond_0
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/9Z;->A01()Lcom/facebook/ads/redexgen/X/9Y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9Y;->A03()Lcom/facebook/ads/redexgen/X/9X;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/9X;->A03:Lcom/facebook/ads/redexgen/X/9X;

    if-ne v1, v0, :cond_1

    .line 65284
    .end local v11    # "sequenceFetchResult":Lcom/facebook/ads/redexgen/X/9Z;
    .end local v4    # "fetchedRecords":I
    :goto_1
    new-instance v2, Lcom/facebook/ads/redexgen/X/Wt;

    invoke-direct {v2, p0, v4, v3}, Lcom/facebook/ads/redexgen/X/Wt;-><init>(Lcom/facebook/ads/redexgen/X/Ws;Ljava/util/List;Z)V

    .line 65285
    .local v0, "fetch":Lcom/facebook/ads/redexgen/X/Wt;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>.RecordFileBasedFetch;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ws;->A02:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65286
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 65287
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Wt;->A01()Lcom/facebook/ads/redexgen/X/9i;

    move-result-object v0

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/9i;->A02:Lcom/facebook/ads/redexgen/X/9W;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Wt;->A01()Lcom/facebook/ads/redexgen/X/9i;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/9i;->A01:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9W;->A05(I)Lcom/facebook/ads/redexgen/X/9W;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ws;->A01:Lcom/facebook/ads/redexgen/X/9W;

    goto :goto_2

    .line 65288
    :cond_1
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/9Z;->A01()Lcom/facebook/ads/redexgen/X/9Y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9Y;->A03()Lcom/facebook/ads/redexgen/X/9X;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/9X;->A04:Lcom/facebook/ads/redexgen/X/9X;

    if-ne v1, v0, :cond_3

    .line 65289
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ws;->A05:Lcom/facebook/ads/redexgen/X/9l;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9l;->A06()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ws;->A05:Lcom/facebook/ads/redexgen/X/9l;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9l;->A08()I

    move-result v0

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ws;->A01:Lcom/facebook/ads/redexgen/X/9W;

    .line 65290
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9W;->A02()I

    move-result v0

    add-int/2addr v0, v3

    if-ne v1, v0, :cond_2

    .line 65291
    const/4 v3, 0x0

    .line 65292
    goto :goto_1

    .line 65293
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ws;->A01:Lcom/facebook/ads/redexgen/X/9W;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9W;->A02()I

    move-result v2

    add-int/2addr v2, v3

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/9W;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/9W;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ws;->A01:Lcom/facebook/ads/redexgen/X/9W;

    goto/16 :goto_0

    .line 65294
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ws;->A01:Lcom/facebook/ads/redexgen/X/9W;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/9W;->A05(I)Lcom/facebook/ads/redexgen/X/9W;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ws;->A01:Lcom/facebook/ads/redexgen/X/9W;

    goto/16 :goto_0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65295
    :cond_4
    :goto_2
    monitor-exit p0

    return-object v2

    .line 65296
    .end local p0    # "storageOffset":I
    .end local v8    # "countsOffset":I
    .end local v10    # "individualFileFetches":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/eventstorage/record/FileSequenceFetchResult;>;"
    .end local v9    # "mayHaveMoreData":Z
    :catch_0
    move-exception v3

    .line 65297
    :try_start_2
    const/16 v2, 0x132

    const/16 v1, 0x1d

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ws;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9n;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/9n;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 65298
    :cond_5
    const/16 v2, 0x187

    const/16 v1, 0x24

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ws;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9n;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9n;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65299
    .end local v7
    .end local v8
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A7C()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9n;
        }
    .end annotation

    .local v2, "this":Lcom/facebook/ads/redexgen/X/Ws;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    monitor-enter p0

    .line 65300
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ws;->A03:Z

    if-nez v0, :cond_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65301
    .local p0, "count":I
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ws;->A05:Lcom/facebook/ads/redexgen/X/9l;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9l;->A09()I

    move-result v2

    .line 65302
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ws;->A00:Lcom/facebook/ads/redexgen/X/9W;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9W;->A02()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ws;->A05:Lcom/facebook/ads/redexgen/X/9l;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9l;->A06()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 65303
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ws;->A00:Lcom/facebook/ads/redexgen/X/9W;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9W;->A03()I

    move-result v0

    sub-int/2addr v2, v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65304
    .end local v2    # "this":Lcom/facebook/ads/redexgen/X/Ws;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    :cond_0
    monitor-exit p0

    return v2

    .line 65305
    :catch_0
    move-exception v3

    .line 65306
    :try_start_2
    const/16 v2, 0x14f

    const/16 v1, 0x1a

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ws;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9n;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/9n;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 65307
    :cond_1
    const/16 v2, 0x1ab

    const/16 v1, 0x27

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ws;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9n;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9n;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65308
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized AEt([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9n;
        }
    .end annotation

    .local v0, "this":Lcom/facebook/ads/redexgen/X/Ws;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    monitor-enter p0

    .line 65309
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ws;->A03:Z

    if-nez v0, :cond_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65310
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ws;->A05:Lcom/facebook/ads/redexgen/X/9l;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/9l;->A0C([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65311
    monitor-exit p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ws;->A07:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ws;->A07:[Ljava/lang/String;

    const-string v1, "aLWzj"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return-void

    .line 65312
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/Ws;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    :catch_0
    move-exception v3

    .line 65313
    :try_start_2
    const/16 v2, 0x101

    const/16 v1, 0x19

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ws;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9n;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/9n;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 65314
    :cond_1
    const/16 v2, 0x1ab

    const/16 v1, 0x27

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ws;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9n;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9n;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65315
    .end local v2
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized clear()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9n;
        }
    .end annotation

    .local v1, "this":Lcom/facebook/ads/redexgen/X/Ws;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    monitor-enter p0

    .line 65316
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ws;->A05:Lcom/facebook/ads/redexgen/X/9l;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9l;->A0B()V

    .line 65317
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ws;->A05:Lcom/facebook/ads/redexgen/X/9l;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9l;->A06()I

    move-result v1

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Ws;->A02(II)V

    .line 65318
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ws;->A02:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65319
    monitor-exit p0

    return-void

    .line 65320
    :catch_0
    move-exception v3

    .line 65321
    :try_start_1
    const/16 v2, 0x11a

    const/16 v1, 0x18

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ws;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9n;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/9n;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65322
    .end local v1    # "this":Lcom/facebook/ads/redexgen/X/Ws;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    :catchall_0
    move-exception v0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Ws;
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .local v0, "this":Lcom/facebook/ads/redexgen/X/Ws;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    monitor-enter p0

    .line 65323
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ws;->A03:Z

    if-eqz v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65324
    monitor-exit p0

    return-void

    .line 65325
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ws;->A03:Z

    .line 65326
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ws;->A02:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 65327
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ws;->A04:Lcom/facebook/ads/redexgen/X/9V;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9V;->close()V

    .line 65328
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ws;->A05:Lcom/facebook/ads/redexgen/X/9l;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9l;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65329
    monitor-exit p0

    return-void

    .line 65330
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/Ws;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
