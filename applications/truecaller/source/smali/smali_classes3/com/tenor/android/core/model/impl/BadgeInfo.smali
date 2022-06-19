.class public Lcom/tenor/android/core/model/impl/BadgeInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x22f5b93d36f6298dL


# instance fields
.field private badges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tenor/android/core/model/impl/ItemBadge;",
            ">;"
        }
    .end annotation
.end field

.field private threshold:F
    .annotation runtime Le/m/e/d0/b;
        value = "view_acceptance_fraction"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBadges()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tenor/android/core/model/impl/ItemBadge;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/tenor/android/core/model/impl/BadgeInfo;->hasBadges()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tenor/android/core/model/impl/BadgeInfo;->badges:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getThreshold()F
    .locals 3

    .line 1
    iget v0, p0, Lcom/tenor/android/core/model/impl/BadgeInfo;->threshold:F

    const v1, 0x3c23d70a    # 0.01f

    cmpl-float v1, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-ltz v1, :cond_0

    cmpg-float v1, v0, v2

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    return v0
.end method

.method public hasBadges()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/model/impl/BadgeInfo;->badges:Ljava/util/List;

    invoke-static {v0}, Lcom/tenor/android/core/util/AbstractListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
