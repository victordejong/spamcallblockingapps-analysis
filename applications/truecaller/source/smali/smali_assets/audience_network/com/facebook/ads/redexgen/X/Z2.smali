.class public final Lcom/facebook/ads/redexgen/X/Z2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Z0;->A0G(Ljava/util/List;)Lcom/facebook/ads/redexgen/X/6k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Z0;

.field public final synthetic A01:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "2ZaMFzGKyd9hSHjcUno1udsEhbeu09ce"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "vtEgA47YqlpfzAewuy7ISaRlDIFsO2a2"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "0pnteHQI04JELPJiiEYAY3M"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "2nICVeqwE"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Lm6L6ti1RgkYKkQwD0idrMIu4GdN9z0L"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "56JOKRJet"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "nEp6Q7dVZjXWwne9d2QyLy7miVXBQb0l"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "dXPHGnc4ncUJghGdDaugHzl"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Z2;->A02:[Ljava/lang/String;

    .line 67375
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Z0;Ljava/util/List;)V
    .locals 0

    .line 67376
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Z2;->A00:Lcom/facebook/ads/redexgen/X/Z0;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Z2;->A01:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5G()Lcom/facebook/ads/redexgen/X/6z;
    .locals 6

    .line 67377
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 67378
    .local p0, "fileInfoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/facebook/ads/internal/botdetection/signals/library/nativesignals/FileInfoSignalCollector$FileInfo;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z2;->A01:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Z2;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Z2;->A02:[Ljava/lang/String;

    const-string v1, "3z5KEoLDxtAdyJAxPBbZMV2"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "xCESy1UOQ"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/6j;

    .line 67379
    .local v0, "bundledSignalMetadata":Lcom/facebook/ads/redexgen/X/6j;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/6j;->A02()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67380
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/6j;->A01()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Z0;->A08(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 67381
    .local v5, "fileNameKey":Ljava/lang/String;
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Z0;->A04(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Z1;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Z1;-><init>(Ljava/io/File;)V

    .line 67382
    .local v4, "fileInfo":Lcom/facebook/ads/redexgen/X/Z1;
    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 67383
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z2;->A00:Lcom/facebook/ads/redexgen/X/Z0;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Z0;->A01(Lcom/facebook/ads/redexgen/X/Z0;Ljava/util/HashMap;)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
