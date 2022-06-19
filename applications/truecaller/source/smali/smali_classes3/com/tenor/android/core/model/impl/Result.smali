.class public Lcom/tenor/android/core/model/impl/Result;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tenor/android/core/model/IGif;


# static fields
.field private static final serialVersionUID:J = -0x38088e615571cc5bL


# instance fields
.field private aspectRatio:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "aspect_ratio"
    .end annotation
.end field

.field private badgeInfo:Lcom/tenor/android/core/model/impl/BadgeInfo;
    .annotation runtime Le/m/e/d0/b;
        value = "badge_info"
    .end annotation
.end field

.field private composite:Lcom/tenor/android/core/model/impl/Media;

.field private created:D

.field private featuredInfo:Lcom/tenor/android/core/model/impl/FeaturedInfo;
    .annotation runtime Le/m/e/d0/b;
        value = "feature_info"
    .end annotation
.end field

.field private hasAudio:Z
    .annotation runtime Le/m/e/d0/b;
        value = "hasaudio"
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private itemurl:Ljava/lang/String;

.field private medias:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tenor/android/core/model/impl/MediaCollection;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/m/e/d0/b;
        value = "media"
    .end annotation
.end field

.field private placeholderColor:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "bg_color"
    .end annotation
.end field

.field private shares:I

.field private sourceId:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "source_id"
    .end annotation
.end field

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAspectRatio()F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/model/impl/Result;->aspectRatio:Ljava/lang/String;

    const v1, 0x3fe38ef3    # 1.7778f

    invoke-static {v0, v1}, Lcom/tenor/android/core/validator/FloatString;->parse(Ljava/lang/String;F)F

    move-result v0

    const v2, 0x3c23d70a    # 0.01f

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_0

    const v2, 0x40a051ec    # 5.01f

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public getBadgeInfo()Lcom/tenor/android/core/model/impl/BadgeInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/model/impl/Result;->badgeInfo:Lcom/tenor/android/core/model/impl/BadgeInfo;

    return-object v0
.end method

.method public getComposite()Lcom/tenor/android/core/model/impl/Media;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/model/impl/Result;->composite:Lcom/tenor/android/core/model/impl/Media;

    return-object v0
.end method

.method public getCreated()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tenor/android/core/model/impl/Result;->created:D

    return-wide v0
.end method

.method public getFeaturedInfo()Lcom/tenor/android/core/model/impl/FeaturedInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/model/impl/Result;->featuredInfo:Lcom/tenor/android/core/model/impl/FeaturedInfo;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/model/impl/Result;->id:Ljava/lang/String;

    invoke-static {v0}, Lcom/tenor/android/core/constant/StringConstant;->getOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/model/impl/Result;->itemurl:Ljava/lang/String;

    return-object v0
.end method

.method public getMedias()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tenor/android/core/model/impl/MediaCollection;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/model/impl/Result;->medias:Ljava/util/List;

    invoke-static {v0}, Lcom/tenor/android/core/util/AbstractListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tenor/android/core/model/impl/Result;->medias:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/model/impl/Result;->title:Ljava/lang/String;

    invoke-static {v0}, Lcom/tenor/android/core/constant/StringConstant;->getOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlaceholderColorHex()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/model/impl/Result;->placeholderColor:Ljava/lang/String;

    const-string v1, "#000000"

    invoke-static {v0, v1}, Lcom/tenor/android/core/validator/ColorHex;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShares()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tenor/android/core/model/impl/Result;->shares:I

    return v0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/model/impl/Result;->sourceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/tenor/android/core/constant/StringConstant;->getOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/model/impl/Result;->tags:Ljava/util/List;

    invoke-static {v0}, Lcom/tenor/android/core/util/AbstractListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tenor/android/core/model/impl/Result;->tags:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/model/impl/Result;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/model/impl/Result;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hasBadgeInfo()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/model/impl/Result;->badgeInfo:Lcom/tenor/android/core/model/impl/BadgeInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFeaturedInfo()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/model/impl/Result;->featuredInfo:Lcom/tenor/android/core/model/impl/FeaturedInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSourceId()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/model/impl/Result;->sourceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isHasAudio()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tenor/android/core/model/impl/Result;->hasAudio:Z

    return v0
.end method
