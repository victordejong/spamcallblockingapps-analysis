.class public Lcom/tenor/android/core/model/impl/ItemBadge;
.super Lcom/tenor/android/core/model/impl/Image;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x501230c17f13d880L


# instance fields
.field private position:I

.field private provider:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tenor/android/core/model/impl/Image;-><init>()V

    return-void
.end method


# virtual methods
.method public getPosition()I
    .locals 1
    .annotation build Lcom/tenor/android/core/constant/ItemBadgePosition$Value;
    .end annotation

    .line 1
    iget v0, p0, Lcom/tenor/android/core/model/impl/ItemBadge;->position:I

    invoke-static {v0}, Lcom/tenor/android/core/constant/ItemBadgePosition;->parse(I)I

    move-result v0

    return v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/model/impl/ItemBadge;->provider:Ljava/lang/String;

    invoke-static {v0}, Lcom/tenor/android/core/constant/StringConstant;->getOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
