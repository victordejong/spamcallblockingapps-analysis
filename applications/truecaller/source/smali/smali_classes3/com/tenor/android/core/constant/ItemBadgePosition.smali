.class public Lcom/tenor/android/core/constant/ItemBadgePosition;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tenor/android/core/constant/ItemBadgePosition$Value;
    }
.end annotation


# static fields
.field public static final EXTERIOR_BOTTOM_LEFT:I = 0x8

.field public static final EXTERIOR_BOTTOM_RIGHT:I = 0x7

.field public static final EXTERIOR_TOP_LEFT:I = 0x5

.field public static final EXTERIOR_TOP_RIGHT:I = 0x6

.field public static final INTERIOR_BOTTOM_LEFT:I = 0x4

.field public static final INTERIOR_BOTTOM_RIGHT:I = 0x3

.field public static final INTERIOR_TOP_LEFT:I = 0x1

.field public static final INTERIOR_TOP_RIGHT:I = 0x2

.field public static final NONE:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isExterior(I)Z
    .locals 1
    .param p0    # I
        .annotation build Lcom/tenor/android/core/constant/ItemBadgePosition$Value;
        .end annotation
    .end param

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isExterior(Lcom/tenor/android/core/model/impl/ItemBadge;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/tenor/android/core/model/impl/ItemBadge;->getPosition()I

    move-result p0

    invoke-static {p0}, Lcom/tenor/android/core/constant/ItemBadgePosition;->isExterior(I)Z

    move-result p0

    return p0
.end method

.method public static isInterior(I)Z
    .locals 2
    .param p0    # I
        .annotation build Lcom/tenor/android/core/constant/ItemBadgePosition$Value;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static isInterior(Lcom/tenor/android/core/model/impl/ItemBadge;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/tenor/android/core/model/impl/ItemBadge;->getPosition()I

    move-result p0

    invoke-static {p0}, Lcom/tenor/android/core/constant/ItemBadgePosition;->isInterior(I)Z

    move-result p0

    return p0
.end method

.method public static isLeft(I)Z
    .locals 2
    .param p0    # I
        .annotation build Lcom/tenor/android/core/constant/ItemBadgePosition$Value;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/16 v1, 0x8

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static isLeft(Lcom/tenor/android/core/model/impl/ItemBadge;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/tenor/android/core/model/impl/ItemBadge;->getPosition()I

    move-result p0

    invoke-static {p0}, Lcom/tenor/android/core/constant/ItemBadgePosition;->isLeft(I)Z

    move-result p0

    return p0
.end method

.method public static isRight(I)Z
    .locals 1
    .param p0    # I
        .annotation build Lcom/tenor/android/core/constant/ItemBadgePosition$Value;
        .end annotation
    .end param

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isRight(Lcom/tenor/android/core/model/impl/ItemBadge;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/tenor/android/core/model/impl/ItemBadge;->getPosition()I

    move-result p0

    invoke-static {p0}, Lcom/tenor/android/core/constant/ItemBadgePosition;->isRight(I)Z

    move-result p0

    return p0
.end method

.method public static parse(I)I
    .locals 0
    .annotation build Lcom/tenor/android/core/constant/ItemBadgePosition$Value;
    .end annotation

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0x8

    return p0

    :pswitch_1
    const/4 p0, 0x7

    return p0

    :pswitch_2
    const/4 p0, 0x6

    return p0

    :pswitch_3
    const/4 p0, 0x5

    return p0

    :pswitch_4
    const/4 p0, 0x4

    return p0

    :pswitch_5
    const/4 p0, 0x3

    return p0

    :pswitch_6
    const/4 p0, 0x2

    return p0

    :pswitch_7
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
