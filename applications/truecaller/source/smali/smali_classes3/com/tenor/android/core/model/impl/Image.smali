.class public Lcom/tenor/android/core/model/impl/Image;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x7793f3f381966ec1L


# instance fields
.field private dimensions:[I
    .annotation runtime Le/m/e/d0/b;
        value = "dims"
    .end annotation
.end field

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
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/tenor/android/core/model/impl/Image;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/tenor/android/core/model/impl/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x3c23d70a    # 0.01f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    const v1, 0x40a051ec    # 5.01f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x3fe39581    # 1.778f

    :goto_0
    return v0
.end method

.method public getHeight()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/model/impl/Image;->dimensions:[I

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/model/impl/Image;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/tenor/android/core/constant/StringConstant;->getOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/model/impl/Image;->dimensions:[I

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method
