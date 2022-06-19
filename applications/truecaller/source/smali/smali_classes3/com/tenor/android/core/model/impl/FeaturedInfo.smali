.class public Lcom/tenor/android/core/model/impl/FeaturedInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x14a28a21f867cdfaL


# instance fields
.field private mButtonLink:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "button_link"
    .end annotation
.end field

.field private mButtonText:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "button_text"
    .end annotation
.end field

.field private mFeatureText:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "feature_text"
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
.method public getButtonLink()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/model/impl/FeaturedInfo;->mButtonLink:Ljava/lang/String;

    invoke-static {v0}, Lcom/tenor/android/core/constant/StringConstant;->getOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getButtonText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/model/impl/FeaturedInfo;->mButtonText:Ljava/lang/String;

    invoke-static {v0}, Lcom/tenor/android/core/constant/StringConstant;->getOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFeatureText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/model/impl/FeaturedInfo;->mFeatureText:Ljava/lang/String;

    invoke-static {v0}, Lcom/tenor/android/core/constant/StringConstant;->getOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
