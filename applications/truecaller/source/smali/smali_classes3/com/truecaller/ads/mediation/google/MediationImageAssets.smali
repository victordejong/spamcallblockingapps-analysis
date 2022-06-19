.class public final Lcom/truecaller/ads/mediation/google/MediationImageAssets;
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
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u001b\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J(\u0010\u0008\u001a\u00020\u00002\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u00c6\u0001\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0010\u0010\u000b\u001a\u00020\nH\u00d6\u0001\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0010\u0010\u000e\u001a\u00020\rH\u00d6\u0001\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001a\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u001b\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0004R\u001b\u0010\u0006\u001a\u0004\u0018\u00010\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0014\u001a\u0004\u0008\u0016\u0010\u0004\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/truecaller/ads/mediation/google/MediationImageAssets;",
        "",
        "Le/a/i/d0/d0/m;",
        "component1",
        "()Le/a/i/d0/d0/m;",
        "component2",
        "iconDrawable",
        "imageDrawable",
        "copy",
        "(Le/a/i/d0/d0/m;Le/a/i/d0/d0/m;)Lcom/truecaller/ads/mediation/google/MediationImageAssets;",
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
        "Le/a/i/d0/d0/m;",
        "getImageDrawable",
        "getIconDrawable",
        "<init>",
        "(Le/a/i/d0/d0/m;Le/a/i/d0/d0/m;)V",
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
.field private final iconDrawable:Le/a/i/d0/d0/m;

.field private final imageDrawable:Le/a/i/d0/d0/m;


# direct methods
.method public constructor <init>(Le/a/i/d0/d0/m;Le/a/i/d0/d0/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/ads/mediation/google/MediationImageAssets;->iconDrawable:Le/a/i/d0/d0/m;

    iput-object p2, p0, Lcom/truecaller/ads/mediation/google/MediationImageAssets;->imageDrawable:Le/a/i/d0/d0/m;

    return-void
.end method

.method public static synthetic copy$default(Lcom/truecaller/ads/mediation/google/MediationImageAssets;Le/a/i/d0/d0/m;Le/a/i/d0/d0/m;ILjava/lang/Object;)Lcom/truecaller/ads/mediation/google/MediationImageAssets;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/truecaller/ads/mediation/google/MediationImageAssets;->iconDrawable:Le/a/i/d0/d0/m;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/truecaller/ads/mediation/google/MediationImageAssets;->imageDrawable:Le/a/i/d0/d0/m;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/truecaller/ads/mediation/google/MediationImageAssets;->copy(Le/a/i/d0/d0/m;Le/a/i/d0/d0/m;)Lcom/truecaller/ads/mediation/google/MediationImageAssets;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Le/a/i/d0/d0/m;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/ads/mediation/google/MediationImageAssets;->iconDrawable:Le/a/i/d0/d0/m;

    return-object v0
.end method

.method public final component2()Le/a/i/d0/d0/m;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/ads/mediation/google/MediationImageAssets;->imageDrawable:Le/a/i/d0/d0/m;

    return-object v0
.end method

.method public final copy(Le/a/i/d0/d0/m;Le/a/i/d0/d0/m;)Lcom/truecaller/ads/mediation/google/MediationImageAssets;
    .locals 1

    new-instance v0, Lcom/truecaller/ads/mediation/google/MediationImageAssets;

    invoke-direct {v0, p1, p2}, Lcom/truecaller/ads/mediation/google/MediationImageAssets;-><init>(Le/a/i/d0/d0/m;Le/a/i/d0/d0/m;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/ads/mediation/google/MediationImageAssets;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/ads/mediation/google/MediationImageAssets;

    iget-object v0, p0, Lcom/truecaller/ads/mediation/google/MediationImageAssets;->iconDrawable:Le/a/i/d0/d0/m;

    iget-object v1, p1, Lcom/truecaller/ads/mediation/google/MediationImageAssets;->iconDrawable:Le/a/i/d0/d0/m;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/ads/mediation/google/MediationImageAssets;->imageDrawable:Le/a/i/d0/d0/m;

    iget-object p1, p1, Lcom/truecaller/ads/mediation/google/MediationImageAssets;->imageDrawable:Le/a/i/d0/d0/m;

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

.method public final getIconDrawable()Le/a/i/d0/d0/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/ads/mediation/google/MediationImageAssets;->iconDrawable:Le/a/i/d0/d0/m;

    return-object v0
.end method

.method public final getImageDrawable()Le/a/i/d0/d0/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/ads/mediation/google/MediationImageAssets;->imageDrawable:Le/a/i/d0/d0/m;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/truecaller/ads/mediation/google/MediationImageAssets;->iconDrawable:Le/a/i/d0/d0/m;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/ads/mediation/google/MediationImageAssets;->imageDrawable:Le/a/i/d0/d0/m;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "MediationImageAssets(iconDrawable="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/ads/mediation/google/MediationImageAssets;->iconDrawable:Le/a/i/d0/d0/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", imageDrawable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/ads/mediation/google/MediationImageAssets;->imageDrawable:Le/a/i/d0/d0/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
