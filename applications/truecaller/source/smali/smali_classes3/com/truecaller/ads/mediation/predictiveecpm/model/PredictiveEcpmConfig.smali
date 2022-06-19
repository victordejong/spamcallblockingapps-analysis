.class public final Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmConfig;
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
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\n\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0016\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u0007\u001a\u00020\u0006H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J*\u0010\u000b\u001a\u00020\u00002\u000e\u0008\u0002\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0008\u0008\u0002\u0010\n\u001a\u00020\u0006H\u00c6\u0001\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0010\u0010\u000e\u001a\u00020\rH\u00d6\u0001\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0010\u0010\u0011\u001a\u00020\u0010H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u001a\u0010\u0015\u001a\u00020\u00142\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\"\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0005R\u0019\u0010\n\u001a\u00020\u00068\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u0008\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmConfig;",
        "",
        "",
        "Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmPlacementConfig;",
        "component1",
        "()Ljava/util/List;",
        "",
        "component2",
        "()J",
        "placementConfigs",
        "ttl",
        "copy",
        "(Ljava/util/List;J)Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmConfig;",
        "",
        "toString",
        "()Ljava/lang/String;",
        "",
        "hashCode",
        "()I",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Ljava/util/List;",
        "getPlacementConfigs",
        "J",
        "getTtl",
        "<init>",
        "(Ljava/util/List;J)V",
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
.field private final placementConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmPlacementConfig;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/m/e/d0/b;
        value = "placements"
    .end annotation
.end field

.field private final ttl:J


# direct methods
.method public constructor <init>(Ljava/util/List;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmPlacementConfig;",
            ">;J)V"
        }
    .end annotation

    const-string v0, "placementConfigs"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmConfig;->placementConfigs:Ljava/util/List;

    iput-wide p2, p0, Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmConfig;->ttl:J

    return-void
.end method

.method public static synthetic copy$default(Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmConfig;Ljava/util/List;JILjava/lang/Object;)Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmConfig;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmConfig;->placementConfigs:Ljava/util/List;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    iget-wide p2, p0, Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmConfig;->ttl:J

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmConfig;->copy(Ljava/util/List;J)Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmPlacementConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmConfig;->placementConfigs:Ljava/util/List;

    return-object v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmConfig;->ttl:J

    return-wide v0
.end method

.method public final copy(Ljava/util/List;J)Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmPlacementConfig;",
            ">;J)",
            "Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmConfig;"
        }
    .end annotation

    const-string v0, "placementConfigs"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmConfig;

    invoke-direct {v0, p1, p2, p3}, Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmConfig;-><init>(Ljava/util/List;J)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmConfig;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmConfig;

    iget-object v0, p0, Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmConfig;->placementConfigs:Ljava/util/List;

    iget-object v1, p1, Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmConfig;->placementConfigs:Ljava/util/List;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmConfig;->ttl:J

    iget-wide v2, p1, Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmConfig;->ttl:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getPlacementConfigs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmPlacementConfig;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmConfig;->placementConfigs:Ljava/util/List;

    return-object v0
.end method

.method public final getTtl()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmConfig;->ttl:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmConfig;->placementConfigs:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmConfig;->ttl:J

    invoke-static {v1, v2}, Ld;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "PredictiveEcpmConfig(placementConfigs="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmConfig;->placementConfigs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ttl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmConfig;->ttl:J

    const-string v3, ")"

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->K2(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
