.class public final Lcom/truecaller/ads/provider/adunitid/AdUnitFloorConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000b\u0008\u0087\u0008\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u000c\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0005\u0012\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0016\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u00c6\u0003\u00a2\u0006\u0004\u0008\n\u0010\u000bJ4\u0010\u000f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00022\u0008\u0008\u0002\u0010\r\u001a\u00020\u00052\u000e\u0008\u0002\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u00c6\u0001\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0011\u0010\u0004J\u0010\u0010\u0013\u001a\u00020\u0012H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u001a\u0010\u0017\u001a\u00020\u00162\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R\u001f\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00088\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u000bR\u0019\u0010\u000c\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u0004R\u0019\u0010\r\u001a\u00020\u00058\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u0007\u00a8\u0006!"
    }
    d2 = {
        "Lcom/truecaller/ads/provider/adunitid/AdUnitFloorConfig;",
        "",
        "",
        "component1",
        "()Ljava/lang/String;",
        "Lcom/truecaller/ads/provider/adunitid/ExchangeConfig;",
        "component2",
        "()Lcom/truecaller/ads/provider/adunitid/ExchangeConfig;",
        "",
        "Lcom/truecaller/ads/provider/adunitid/FloorConfig;",
        "component3",
        "()Ljava/util/List;",
        "version",
        "exchange_config",
        "config",
        "copy",
        "(Ljava/lang/String;Lcom/truecaller/ads/provider/adunitid/ExchangeConfig;Ljava/util/List;)Lcom/truecaller/ads/provider/adunitid/AdUnitFloorConfig;",
        "toString",
        "",
        "hashCode",
        "()I",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Ljava/util/List;",
        "getConfig",
        "Ljava/lang/String;",
        "getVersion",
        "Lcom/truecaller/ads/provider/adunitid/ExchangeConfig;",
        "getExchange_config",
        "<init>",
        "(Ljava/lang/String;Lcom/truecaller/ads/provider/adunitid/ExchangeConfig;Ljava/util/List;)V",
        "ads_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final config:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/ads/provider/adunitid/FloorConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final exchange_config:Lcom/truecaller/ads/provider/adunitid/ExchangeConfig;

.field private final version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/truecaller/ads/provider/adunitid/ExchangeConfig;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/truecaller/ads/provider/adunitid/ExchangeConfig;",
            "Ljava/util/List<",
            "Lcom/truecaller/ads/provider/adunitid/FloorConfig;",
            ">;)V"
        }
    .end annotation

    const-string v0, "version"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exchange_config"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/ads/provider/adunitid/AdUnitFloorConfig;->version:Ljava/lang/String;

    iput-object p2, p0, Lcom/truecaller/ads/provider/adunitid/AdUnitFloorConfig;->exchange_config:Lcom/truecaller/ads/provider/adunitid/ExchangeConfig;

    iput-object p3, p0, Lcom/truecaller/ads/provider/adunitid/AdUnitFloorConfig;->config:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/truecaller/ads/provider/adunitid/AdUnitFloorConfig;Ljava/lang/String;Lcom/truecaller/ads/provider/adunitid/ExchangeConfig;Ljava/util/List;ILjava/lang/Object;)Lcom/truecaller/ads/provider/adunitid/AdUnitFloorConfig;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/truecaller/ads/provider/adunitid/AdUnitFloorConfig;->version:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/truecaller/ads/provider/adunitid/AdUnitFloorConfig;->exchange_config:Lcom/truecaller/ads/provider/adunitid/ExchangeConfig;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/truecaller/ads/provider/adunitid/AdUnitFloorConfig;->config:Ljava/util/List;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/truecaller/ads/provider/adunitid/AdUnitFloorConfig;->copy(Ljava/lang/String;Lcom/truecaller/ads/provider/adunitid/ExchangeConfig;Ljava/util/List;)Lcom/truecaller/ads/provider/adunitid/AdUnitFloorConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/ads/provider/adunitid/AdUnitFloorConfig;->version:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/truecaller/ads/provider/adunitid/ExchangeConfig;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/ads/provider/adunitid/AdUnitFloorConfig;->exchange_config:Lcom/truecaller/ads/provider/adunitid/ExchangeConfig;

    return-object v0
.end method

.method public final component3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/ads/provider/adunitid/FloorConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/truecaller/ads/provider/adunitid/AdUnitFloorConfig;->config:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/truecaller/ads/provider/adunitid/ExchangeConfig;Ljava/util/List;)Lcom/truecaller/ads/provider/adunitid/AdUnitFloorConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/truecaller/ads/provider/adunitid/ExchangeConfig;",
            "Ljava/util/List<",
            "Lcom/truecaller/ads/provider/adunitid/FloorConfig;",
            ">;)",
            "Lcom/truecaller/ads/provider/adunitid/AdUnitFloorConfig;"
        }
    .end annotation

    const-string v0, "version"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exchange_config"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/truecaller/ads/provider/adunitid/AdUnitFloorConfig;

    invoke-direct {v0, p1, p2, p3}, Lcom/truecaller/ads/provider/adunitid/AdUnitFloorConfig;-><init>(Ljava/lang/String;Lcom/truecaller/ads/provider/adunitid/ExchangeConfig;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/ads/provider/adunitid/AdUnitFloorConfig;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/ads/provider/adunitid/AdUnitFloorConfig;

    iget-object v0, p0, Lcom/truecaller/ads/provider/adunitid/AdUnitFloorConfig;->version:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/ads/provider/adunitid/AdUnitFloorConfig;->version:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/ads/provider/adunitid/AdUnitFloorConfig;->exchange_config:Lcom/truecaller/ads/provider/adunitid/ExchangeConfig;

    iget-object v1, p1, Lcom/truecaller/ads/provider/adunitid/AdUnitFloorConfig;->exchange_config:Lcom/truecaller/ads/provider/adunitid/ExchangeConfig;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/ads/provider/adunitid/AdUnitFloorConfig;->config:Ljava/util/List;

    iget-object p1, p1, Lcom/truecaller/ads/provider/adunitid/AdUnitFloorConfig;->config:Ljava/util/List;

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getConfig()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/ads/provider/adunitid/FloorConfig;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/ads/provider/adunitid/AdUnitFloorConfig;->config:Ljava/util/List;

    return-object v0
.end method

.method public final getExchange_config()Lcom/truecaller/ads/provider/adunitid/ExchangeConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/ads/provider/adunitid/AdUnitFloorConfig;->exchange_config:Lcom/truecaller/ads/provider/adunitid/ExchangeConfig;

    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/ads/provider/adunitid/AdUnitFloorConfig;->version:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/truecaller/ads/provider/adunitid/AdUnitFloorConfig;->version:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/ads/provider/adunitid/AdUnitFloorConfig;->exchange_config:Lcom/truecaller/ads/provider/adunitid/ExchangeConfig;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/truecaller/ads/provider/adunitid/ExchangeConfig;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/ads/provider/adunitid/AdUnitFloorConfig;->config:Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "AdUnitFloorConfig(version="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/ads/provider/adunitid/AdUnitFloorConfig;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", exchange_config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/ads/provider/adunitid/AdUnitFloorConfig;->exchange_config:Lcom/truecaller/ads/provider/adunitid/ExchangeConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/ads/provider/adunitid/AdUnitFloorConfig;->config:Ljava/util/List;

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->l(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
